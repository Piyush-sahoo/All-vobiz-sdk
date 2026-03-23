# Vobiz Swift SDK

Official Swift SDK for the [Vobiz](https://vobiz.ai) Voice & Telephony API.

Make outbound calls, manage SIP trunks, phone numbers, conferences, recordings, and build dynamic call flows — all from Swift on iOS, macOS, and server-side Swift.

---

## Installation

### Swift Package Manager

Add to your `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/vobiz-ai/Vobiz-Swift-SDK.git", from: "1.0.0")
],
targets: [
    .target(name: "YourTarget", dependencies: ["VobizSDK"])
]
```

Or in Xcode: **File → Add Packages** → enter the repo URL.

### CocoaPods

```ruby
pod 'VobizSDK', '~> 1.0.0'
```

---

## Authentication

```swift
import VobizSDK

VobizSDKAPI.customHeaders = [
    "X-Auth-ID":    "YOUR_AUTH_ID",
    "X-Auth-Token": "YOUR_AUTH_TOKEN"
]
VobizSDKAPI.basePath = "https://api.vobiz.ai"
```

---

## Quick Start

### Make an Outbound Call

```swift
import VobizSDK

VobizSDKAPI.customHeaders = [
    "X-Auth-ID":    "YOUR_AUTH_ID",
    "X-Auth-Token": "YOUR_AUTH_TOKEN"
]

CallAPI.apiV1AccountAuthIdCallPost(
    authId:     "YOUR_AUTH_ID",
    xAuthID:    "YOUR_AUTH_ID",
    xAuthToken: "YOUR_AUTH_TOKEN",
    body: [
        "from":          "+1xxxxxxxxxx",
        "to":            "+1xxxxxxxxxx",
        "answer_url":    "https://yourserver.com/answer",
        "answer_method": "POST",
        "hangup_url":    "https://yourserver.com/hangup",
        "hangup_method": "POST"
    ]
) { _, error in
    if let error = error { print("Error: \(error)"); return }
    print("Call initiated successfully")
}
```

---

## Features

### Calls

```swift
// List live calls
CallAPI.apiV1AccountAuthIdCallGet(authId: authId, status: "live") { response, error in
    print("Live calls: \(response ?? [:])")
}

// Speak TTS on a live call
CallAPI.apiV1AccountAuthIdCallSpeakPost(
    authId: authId,
    body: ["text": "Hello!", "voice": "WOMAN", "language": "en-US", "legs": "aleg"]
) { _, error in }

// Play audio
CallAPI.apiV1AccountAuthIdCallPlayPost(
    authId: authId,
    body: ["urls": ["https://example.com/audio.mp3"], "legs": "aleg"]
) { _, error in }

// Start recording
CallAPI.apiV1AccountAuthIdCallRecordPost(
    authId: authId,
    body: ["time_limit": 60, "file_format": "mp3"]
) { _, error in }

// Send DTMF
CallAPI.apiV1AccountAuthIdCallDTMFPost(
    authId: authId,
    body: ["digits": "1234", "leg": "aleg"]
) { _, error in }

// Transfer call
CallAPI.apiV1AccountAuthIdCallPost(
    authId: authId,
    body: ["legs": "aleg", "aleg_url": "https://yourserver.com/transfer", "aleg_method": "POST"]
) { _, error in }

// Hang up
CallAPI.apiV1AccountAuthIdCallDelete(authId: authId) { _, error in }
```

### Conferences

```swift
ConferenceAPI.apiV1AccountAuthIdConferenceGet(authId: authId) { response, error in
    print("Conferences: \(response ?? [:])")
}
```

### Recordings

```swift
// List recordings
RecordingAPI.apiV1AccountAccountIdRecordingGet(accountId: authId) { response, error in
    print("Recordings: \(response ?? [:])")
}

// Delete a recording
RecordingAPI.apiV1AccountAccountIdRecordingRecordingIdDelete(
    accountId: authId, recordingId: "recording-uuid"
) { _, error in }
```

### Account

```swift
AccountAPI.apiV1AuthMeGet { response, error in
    print("Account: \(response ?? [:])")
}
```

### Applications

```swift
// Create an application
ApplicationAPI.apiV1AccountAuthIdApplicationPost(authId: authId, body: [
    "app_name":   "My App",
    "answer_url": "https://yourserver.com/answer"
]) { _, error in }

// List applications
ApplicationAPI.apiV1AccountAuthIdApplicationGet(authId: authId) { response, error in }
```

---

## Async/Await (Swift 5.5+)

```swift
Task {
    do {
        try await CallAPI.apiV1AccountAuthIdCallPost(
            authId: authId,
            body: [
                "from": "+1xxx", "to": "+1yyy",
                "answer_url": "https://yourserver.com/answer"
            ]
        )
        print("Call created")
    } catch {
        print("Error: \(error)")
    }
}
```

---

## Requirements

- Swift 5.5+
- iOS 13+ / macOS 11+

---

## Support

- Docs: [https://docs.vobiz.ai](https://docs.vobiz.ai)
- Console: [https://console.vobiz.ai](https://console.vobiz.ai)
- Email: support@vobiz.ai
