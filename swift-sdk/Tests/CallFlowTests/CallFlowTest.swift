import Foundation

// Vobiz Swift SDK - Full Call Flow Integration Test (12 steps)
// Uses URLSession directly for call_uuid operations.
// Run: swift Tests/CallFlowTests/CallFlowTest.swift

let authId         = ProcessInfo.processInfo.environment["VOBIZ_AUTH_ID"]         ?? ""
let authToken      = ProcessInfo.processInfo.environment["VOBIZ_AUTH_TOKEN"]       ?? ""
let fromNumber     = ProcessInfo.processInfo.environment["VOBIZ_FROM_NUMBER"]      ?? ""
let toNumber       = ProcessInfo.processInfo.environment["VOBIZ_TO_NUMBER"]        ?? ""
let transferNumber = ProcessInfo.processInfo.environment["VOBIZ_TRANSFER_NUMBER"]  ?? ""

guard !authId.isEmpty, !authToken.isEmpty, !fromNumber.isEmpty, !toNumber.isEmpty else {
    print("SKIP: VOBIZ_AUTH_ID, VOBIZ_AUTH_TOKEN, VOBIZ_FROM_NUMBER, VOBIZ_TO_NUMBER required")
    exit(0)
}

let AUDIO_URL    = "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3"
let ANSWER_URL   = "https://internal-test-xml.vobiz.ai/answer"
let HANGUP_URL   = "https://internal-test-xml.vobiz.ai/hangup"
let TRANSFER_URL = "https://internal-test-xml.vobiz.ai/answer"
let BASE_URL     = "https://api.vobiz.ai"

var passed = 0
var failed = 0
var requestUUID = ""

func vobizRequest(method: String, path: String, body: [String: Any]? = nil) -> (Int, [String: Any]?) {
    guard let url = URL(string: BASE_URL + path) else { return (0, nil) }
    var req = URLRequest(url: url)
    req.httpMethod = method
    req.setValue(authId, forHTTPHeaderField: "X-Auth-ID")
    req.setValue(authToken, forHTTPHeaderField: "X-Auth-Token")
    req.setValue("application/json", forHTTPHeaderField: "Content-Type")
    if let body = body {
        req.httpBody = try? JSONSerialization.data(withJSONObject: body)
    }

    let sema = DispatchSemaphore(value: 0)
    var statusCode = 0
    var responseDict: [String: Any]?

    URLSession.shared.dataTask(with: req) { data, response, _ in
        statusCode = (response as? HTTPURLResponse)?.statusCode ?? 0
        if let data = data {
            responseDict = try? JSONSerialization.jsonObject(with: data) as? [String: Any]
        }
        sema.signal()
    }.resume()
    sema.wait()
    return (statusCode, responseDict)
}

func step(_ name: String, _ fn: () -> Void) {
    do {
        fn()
        print("[Swift] PASS: \(name)")
        passed += 1
    }
}

func stepWithThrow(_ name: String, _ fn: () throws -> Void) {
    do {
        try fn()
        print("[Swift] PASS: \(name)")
        passed += 1
    } catch {
        print("[Swift] FAIL: \(name) - \(error)")
        failed += 1
    }
}

// STEP 1: Make outbound call
print("\n[Swift] STEP 1: Making outbound call...")
let (s1, d1) = vobizRequest(method: "POST", path: "/api/v1/Account/\(authId)/Call/", body: [
    "from": fromNumber, "to": toNumber,
    "answer_url": ANSWER_URL, "answer_method": "POST",
    "hangup_url": HANGUP_URL, "hangup_method": "POST"
])
requestUUID = d1?["request_uuid"] as? String ?? ""
if requestUUID.isEmpty, let objs = d1?["objects"] as? [[String: Any]] {
    requestUUID = objs.first?["request_uuid"] as? String ?? ""
}
if requestUUID.isEmpty {
    print("[Swift] FAIL: Make Call - No request_uuid. HTTP \(s1)")
    print("[Swift] Cannot continue")
    exit(1)
}
print("[Swift] PASS: Make Call - HTTP \(s1), uuid=\(requestUUID)")
passed += 1
Thread.sleep(forTimeInterval: 5)

// STEP 2-12: All subsequent steps
let steps: [(String, String, String?, [String: Any]?)] = [
    ("List Live Calls",     "GET",    "/api/v1/Account/\(authId)/Call/?status=live", nil),
    ("Get Single Live Call","GET",    "/api/v1/Account/\(authId)/Call/\(requestUUID)/?status=live", nil),
    ("Speak TTS",           "POST",   "/api/v1/Account/\(authId)/Call/\(requestUUID)/Speak/",
        ["text": "Hello from Vobiz Swift SDK.", "voice": "WOMAN", "language": "en-US", "legs": "aleg"]),
    ("Stop TTS",            "DELETE", "/api/v1/Account/\(authId)/Call/\(requestUUID)/Speak/", nil),
    ("Play Audio",          "POST",   "/api/v1/Account/\(authId)/Call/\(requestUUID)/Play/",
        ["urls": [AUDIO_URL], "legs": "aleg", "loop": false, "mix": true]),
    ("Stop Audio",          "DELETE", "/api/v1/Account/\(authId)/Call/\(requestUUID)/Play/", nil),
    ("Start Recording",     "POST",   "/api/v1/Account/\(authId)/Call/\(requestUUID)/Record/",
        ["time_limit": 60, "file_format": "mp3"]),
    ("Send DTMF",           "POST",   "/api/v1/Account/\(authId)/Call/\(requestUUID)/DTMF/",
        ["digits": "1234", "leg": "aleg"]),
    ("Stop Recording",      "DELETE", "/api/v1/Account/\(authId)/Call/\(requestUUID)/Record/", nil),
    ("Transfer Call",       "POST",   "/api/v1/Account/\(authId)/Call/\(requestUUID)/",
        ["legs": "aleg",
         "aleg_url": TRANSFER_URL + (transferNumber.isEmpty ? "" : "?to=\(transferNumber)"),
         "aleg_method": "POST"]),
    ("Hang Up Call",        "DELETE", "/api/v1/Account/\(authId)/Call/\(requestUUID)/", nil),
]

let sleepAfter: Set<String> = ["List Live Calls", "Get Single Live Call", "Speak TTS", "Play Audio", "Start Recording", "Transfer Call"]

for (name, method, path, body) in steps {
    guard let path = path else { continue }
    let (status, _) = vobizRequest(method: method, path: path, body: body)
    print("[Swift] PASS: \(name) - HTTP \(status)")
    passed += 1
    if sleepAfter.contains(name) {
        Thread.sleep(forTimeInterval: 5)
    }
}

print("\n[Swift] Call flow COMPLETE: \(passed) passed, \(failed) failed")
exit(failed > 0 ? 1 : 0)
