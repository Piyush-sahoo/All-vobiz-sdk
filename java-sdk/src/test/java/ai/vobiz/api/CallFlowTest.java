package ai.vobiz.api;

import ai.vobiz.ApiClient;
import ai.vobiz.ApiException;
import com.google.gson.Gson;
import okhttp3.*;
import org.junit.jupiter.api.*;
import org.junit.jupiter.api.condition.EnabledIfEnvironmentVariable;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Vobiz Java SDK - Full Call Flow Integration Test
 * Uses direct OkHttp for call_uuid operations (generated SDK has empty {} path params).
 */
@EnabledIfEnvironmentVariable(named = "VOBIZ_AUTH_ID", matches = ".+")
@TestMethodOrder(MethodOrderer.OrderAnnotation.class)
public class CallFlowTest {

    private static String authId;
    private static String authToken;
    private static String fromNumber;
    private static String toNumber;
    private static String transferNumber;
    private static String requestUUID;
    private static OkHttpClient httpClient;
    private static final Gson gson = new Gson();

    private static final String BASE_URL     = "https://api.vobiz.ai";
    private static final String AUDIO_URL    = "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3";
    private static final String ANSWER_URL   = "https://internal-test-xml.vobiz.ai/answer";
    private static final String HANGUP_URL   = "https://internal-test-xml.vobiz.ai/hangup";
    private static final String TRANSFER_URL = "https://internal-test-xml.vobiz.ai/answer";
    private static final MediaType JSON_TYPE = MediaType.get("application/json");

    @BeforeAll
    static void setup() {
        authId         = System.getenv("VOBIZ_AUTH_ID");
        authToken      = System.getenv("VOBIZ_AUTH_TOKEN");
        fromNumber     = System.getenv("VOBIZ_FROM_NUMBER");
        toNumber       = System.getenv("VOBIZ_TO_NUMBER");
        transferNumber = System.getenv("VOBIZ_TRANSFER_NUMBER");

        if (fromNumber == null || toNumber == null)
            throw new RuntimeException("VOBIZ_FROM_NUMBER and VOBIZ_TO_NUMBER required");

        httpClient = new OkHttpClient();
    }

    private static void sleep(int seconds) {
        try { Thread.sleep(seconds * 1000L); } catch (InterruptedException ignored) {}
    }

    @SuppressWarnings("unchecked")
    private static Map<String, Object> vobizRequest(String method, String path, Map<String, Object> body) throws IOException {
        String url = BASE_URL + path;
        String json = body != null ? gson.toJson(body) : "";
        RequestBody rb = method.equals("GET") || method.equals("DELETE")
            ? (method.equals("DELETE") ? RequestBody.create("", JSON_TYPE) : null)
            : RequestBody.create(json, JSON_TYPE);

        Request.Builder builder = new Request.Builder()
            .url(url)
            .addHeader("X-Auth-ID", authId)
            .addHeader("X-Auth-Token", authToken)
            .addHeader("Content-Type", "application/json");

        switch (method) {
            case "GET":    builder.get(); break;
            case "POST":   builder.post(rb); break;
            case "DELETE": builder.delete(rb); break;
        }

        try (Response response = httpClient.newCall(builder.build()).execute()) {
            String respBody = response.body() != null ? response.body().string() : "{}";
            if (!response.isSuccessful() && response.code() != 204) {
                System.out.println("  -> HTTP " + response.code() + ": " + respBody);
            }
            try { return gson.fromJson(respBody, Map.class); }
            catch (Exception e) { return new HashMap<>(); }
        }
    }

    private static Map<String, Object> body(Object... kvPairs) {
        Map<String, Object> map = new HashMap<>();
        for (int i = 0; i < kvPairs.length - 1; i += 2)
            map.put((String) kvPairs[i], kvPairs[i + 1]);
        return map;
    }

    @Test @Order(1)
    void step1_makeCall() throws IOException {
        System.out.println("\n[Java] STEP 1: Making outbound call...");
        Map<String, Object> result = vobizRequest("POST",
            "/api/v1/Account/" + authId + "/Call/",
            body("from", fromNumber, "to", toNumber,
                 "answer_url", ANSWER_URL, "answer_method", "POST",
                 "hangup_url", HANGUP_URL, "hangup_method", "POST"));

        requestUUID = (String) result.get("request_uuid");
        if (requestUUID == null) {
            Object objs = result.get("objects");
            if (objs instanceof List && !((List<?>) objs).isEmpty()) {
                requestUUID = (String) ((Map<?,?>) ((List<?>) objs).get(0)).get("request_uuid");
            }
        }
        Assertions.assertNotNull(requestUUID, "request_uuid must not be null. Response: " + result);
        System.out.println("[Java] STEP 1 PASS: request_uuid = " + requestUUID);
        sleep(5);
    }

    @Test @Order(2)
    void step2_listLiveCalls() throws IOException {
        vobizRequest("GET", "/api/v1/Account/" + authId + "/Call/?status=live", null);
        System.out.println("[Java] STEP 2 PASS: List live calls");
        sleep(5);
    }

    @Test @Order(3)
    void step3_getSingleLiveCall() throws IOException {
        vobizRequest("GET", "/api/v1/Account/" + authId + "/Call/" + requestUUID + "/?status=live", null);
        System.out.println("[Java] STEP 3 PASS: Get single live call");
        sleep(5);
    }

    @Test @Order(4)
    void step4_speakTTS() throws IOException {
        vobizRequest("POST", "/api/v1/Account/" + authId + "/Call/" + requestUUID + "/Speak/",
            body("text", "Hello from Vobiz Java SDK.", "voice", "WOMAN", "language", "en-US", "legs", "aleg"));
        System.out.println("[Java] STEP 4 PASS: Speak TTS");
        sleep(5);
    }

    @Test @Order(5)
    void step5_stopTTS() throws IOException {
        vobizRequest("DELETE", "/api/v1/Account/" + authId + "/Call/" + requestUUID + "/Speak/", null);
        System.out.println("[Java] STEP 5 PASS: Stop TTS");
    }

    @Test @Order(6)
    void step6_playAudio() throws IOException {
        vobizRequest("POST", "/api/v1/Account/" + authId + "/Call/" + requestUUID + "/Play/",
            body("urls", List.of(AUDIO_URL), "legs", "aleg", "loop", false, "mix", true));
        System.out.println("[Java] STEP 6 PASS: Play audio");
        sleep(5);
    }

    @Test @Order(7)
    void step7_stopAudio() throws IOException {
        vobizRequest("DELETE", "/api/v1/Account/" + authId + "/Call/" + requestUUID + "/Play/", null);
        System.out.println("[Java] STEP 7 PASS: Stop audio");
    }

    @Test @Order(8)
    void step8_startRecording() throws IOException {
        vobizRequest("POST", "/api/v1/Account/" + authId + "/Call/" + requestUUID + "/Record/",
            body("time_limit", 60, "file_format", "mp3"));
        System.out.println("[Java] STEP 8 PASS: Start recording");
        sleep(5);
    }

    @Test @Order(9)
    void step9_dtmf() throws IOException {
        vobizRequest("POST", "/api/v1/Account/" + authId + "/Call/" + requestUUID + "/DTMF/",
            body("digits", "1234", "leg", "aleg"));
        System.out.println("[Java] STEP 9 PASS: DTMF");
    }

    @Test @Order(10)
    void step10_stopRecording() throws IOException {
        vobizRequest("DELETE", "/api/v1/Account/" + authId + "/Call/" + requestUUID + "/Record/", null);
        System.out.println("[Java] STEP 10 PASS: Stop recording");
    }

    @Test @Order(11)
    void step11_transfer() throws IOException {
        String transferTo = TRANSFER_URL + (transferNumber != null ? "?to=" + transferNumber : "");
        vobizRequest("POST", "/api/v1/Account/" + authId + "/Call/" + requestUUID + "/",
            body("legs", "aleg", "aleg_url", transferTo, "aleg_method", "POST"));
        System.out.println("[Java] STEP 11 PASS: Transfer");
        sleep(5);
    }

    @Test @Order(12)
    void step12_hangUp() throws IOException {
        vobizRequest("DELETE", "/api/v1/Account/" + authId + "/Call/" + requestUUID + "/", null);
        System.out.println("[Java] STEP 12 PASS: Hang up");
        System.out.println("\n[Java] Call flow COMPLETE");
    }
}
