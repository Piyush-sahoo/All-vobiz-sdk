using System;
using System.Net.Http;
using System.Text;
using System.Text.Json;
using System.Threading.Tasks;

/// <summary>
/// Vobiz C# SDK - Full Call Flow Integration Test (12 steps)
/// Uses HttpClient directly for call_uuid operations.
/// Run: dotnet run --project src/Vobiz.IntegrationTests/
/// </summary>
var authId         = Environment.GetEnvironmentVariable("VOBIZ_AUTH_ID")         ?? "";
var authToken      = Environment.GetEnvironmentVariable("VOBIZ_AUTH_TOKEN")       ?? "";
var fromNumber     = Environment.GetEnvironmentVariable("VOBIZ_FROM_NUMBER")      ?? "";
var toNumber       = Environment.GetEnvironmentVariable("VOBIZ_TO_NUMBER")        ?? "";
var transferNumber = Environment.GetEnvironmentVariable("VOBIZ_TRANSFER_NUMBER")  ?? "";

if (string.IsNullOrEmpty(authId) || string.IsNullOrEmpty(authToken) ||
    string.IsNullOrEmpty(fromNumber) || string.IsNullOrEmpty(toNumber))
{
    Console.WriteLine("SKIP: VOBIZ_AUTH_ID, VOBIZ_AUTH_TOKEN, VOBIZ_FROM_NUMBER, VOBIZ_TO_NUMBER required");
    return 0;
}

const string AUDIO_URL    = "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3";
const string ANSWER_URL   = "https://internal-test-xml.vobiz.ai/answer";
const string HANGUP_URL   = "https://internal-test-xml.vobiz.ai/hangup";
const string TRANSFER_URL = "https://internal-test-xml.vobiz.ai/answer";
const string BASE_URL     = "https://api.vobiz.ai";

var httpClient = new HttpClient();
httpClient.DefaultRequestHeaders.Add("X-Auth-ID", authId);
httpClient.DefaultRequestHeaders.Add("X-Auth-Token", authToken);

int passed = 0, failed = 0;
string requestUUID = "";

async Task<(int status, JsonDocument? doc)> VobizRequest(string method, string path, object? body = null)
{
    var url = BASE_URL + path;
    HttpContent? content = null;
    if (body != null)
        content = new StringContent(JsonSerializer.Serialize(body), Encoding.UTF8, "application/json");

    var request = new HttpRequestMessage(new HttpMethod(method), url) { Content = content };
    var response = await httpClient.SendAsync(request);
    var raw = await response.Content.ReadAsStringAsync();
    JsonDocument? doc = null;
    try { doc = JsonDocument.Parse(raw); } catch {}
    return ((int)response.StatusCode, doc);
}

async Task Step(string name, Func<Task> fn)
{
    try { await fn(); Console.WriteLine($"[C#] PASS: {name}"); passed++; }
    catch (Exception ex) { Console.WriteLine($"[C#] FAIL: {name} - {ex.Message}"); failed++; }
}

// STEP 1: Make outbound call
Console.WriteLine("\n[C#] STEP 1: Making outbound call...");
await Step("Make Call", async () =>
{
    var (status, doc) = await VobizRequest("POST", $"/api/v1/Account/{authId}/Call/", new
    {
        from = fromNumber, to = toNumber,
        answer_url = ANSWER_URL, answer_method = "POST",
        hangup_url = HANGUP_URL, hangup_method = "POST"
    });

    if (doc != null)
    {
        if (doc.RootElement.TryGetProperty("request_uuid", out var uuidProp))
            requestUUID = uuidProp.GetString() ?? "";
        else if (doc.RootElement.TryGetProperty("objects", out var objs) && objs.GetArrayLength() > 0)
            requestUUID = objs[0].GetProperty("request_uuid").GetString() ?? "";
    }

    if (string.IsNullOrEmpty(requestUUID))
        throw new Exception($"No request_uuid in response. HTTP {status}");

    Console.WriteLine($"  -> HTTP {status}, request_uuid = {requestUUID}");
});

if (string.IsNullOrEmpty(requestUUID)) { Console.WriteLine("[C#] Cannot continue"); return 1; }
await Task.Delay(5000);

await Step("List Live Calls", async () => {
    var (s, _) = await VobizRequest("GET", $"/api/v1/Account/{authId}/Call/?status=live");
    Console.WriteLine($"  -> HTTP {s}");
});
await Task.Delay(5000);

await Step("Get Single Live Call", async () => {
    var (s, _) = await VobizRequest("GET", $"/api/v1/Account/{authId}/Call/{requestUUID}/?status=live");
    Console.WriteLine($"  -> HTTP {s}");
});
await Task.Delay(5000);

await Step("Speak TTS", async () => {
    var (s, _) = await VobizRequest("POST", $"/api/v1/Account/{authId}/Call/{requestUUID}/Speak/",
        new { text = "Hello from Vobiz C# SDK.", voice = "WOMAN", language = "en-US", legs = "aleg" });
    Console.WriteLine($"  -> HTTP {s}");
});
await Task.Delay(5000);

await Step("Stop TTS", async () => {
    var (s, _) = await VobizRequest("DELETE", $"/api/v1/Account/{authId}/Call/{requestUUID}/Speak/");
    Console.WriteLine($"  -> HTTP {s}");
});

await Step("Play Audio", async () => {
    var (s, _) = await VobizRequest("POST", $"/api/v1/Account/{authId}/Call/{requestUUID}/Play/",
        new { urls = new[] { AUDIO_URL }, legs = "aleg", loop = false, mix = true });
    Console.WriteLine($"  -> HTTP {s}");
});
await Task.Delay(5000);

await Step("Stop Audio", async () => {
    var (s, _) = await VobizRequest("DELETE", $"/api/v1/Account/{authId}/Call/{requestUUID}/Play/");
    Console.WriteLine($"  -> HTTP {s}");
});

await Step("Start Recording", async () => {
    var (s, _) = await VobizRequest("POST", $"/api/v1/Account/{authId}/Call/{requestUUID}/Record/",
        new { time_limit = 60, file_format = "mp3" });
    Console.WriteLine($"  -> HTTP {s}");
});
await Task.Delay(5000);

await Step("Send DTMF", async () => {
    var (s, _) = await VobizRequest("POST", $"/api/v1/Account/{authId}/Call/{requestUUID}/DTMF/",
        new { digits = "1234", leg = "aleg" });
    Console.WriteLine($"  -> HTTP {s}");
});

await Step("Stop Recording", async () => {
    var (s, _) = await VobizRequest("DELETE", $"/api/v1/Account/{authId}/Call/{requestUUID}/Record/");
    Console.WriteLine($"  -> HTTP {s}");
});

await Step("Transfer Call", async () => {
    var transferTo = TRANSFER_URL + (!string.IsNullOrEmpty(transferNumber) ? $"?to={transferNumber}" : "");
    var (s, _) = await VobizRequest("POST", $"/api/v1/Account/{authId}/Call/{requestUUID}/",
        new { legs = "aleg", aleg_url = transferTo, aleg_method = "POST" });
    Console.WriteLine($"  -> HTTP {s}");
});
await Task.Delay(5000);

await Step("Hang Up Call", async () => {
    var (s, _) = await VobizRequest("DELETE", $"/api/v1/Account/{authId}/Call/{requestUUID}/");
    Console.WriteLine($"  -> HTTP {s}");
});

Console.WriteLine($"\n[C#] Call flow COMPLETE: {passed} passed, {failed} failed");
return failed > 0 ? 1 : 0;
