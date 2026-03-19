package ai.vobiz.integration

import okhttp3.*
import okhttp3.MediaType.Companion.toMediaType
import okhttp3.RequestBody.Companion.toRequestBody
import org.json.JSONObject
import org.json.JSONArray

/**
 * Vobiz Kotlin SDK - Full Call Flow Integration Test
 * Uses direct OkHttp calls for call_uuid operations.
 */
fun main() {
    val authId         = System.getenv("VOBIZ_AUTH_ID")         ?: ""
    val authToken      = System.getenv("VOBIZ_AUTH_TOKEN")      ?: ""
    val fromNumber     = System.getenv("VOBIZ_FROM_NUMBER")     ?: ""
    val toNumber       = System.getenv("VOBIZ_TO_NUMBER")       ?: ""
    val transferNumber = System.getenv("VOBIZ_TRANSFER_NUMBER") ?: ""

    if (authId.isEmpty() || authToken.isEmpty() || fromNumber.isEmpty() || toNumber.isEmpty()) {
        println("SKIP: VOBIZ_AUTH_ID, VOBIZ_AUTH_TOKEN, VOBIZ_FROM_NUMBER, VOBIZ_TO_NUMBER required")
        return
    }

    val AUDIO_URL    = "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3"
    val ANSWER_URL   = "https://internal-test-xml.vobiz.ai/answer"
    val HANGUP_URL   = "https://internal-test-xml.vobiz.ai/hangup"
    val TRANSFER_URL = "https://internal-test-xml.vobiz.ai/answer"
    val BASE_URL     = "https://api.vobiz.ai"
    val JSON_TYPE    = "application/json".toMediaType()

    val http = OkHttpClient()

    fun vobizRequest(method: String, path: String, body: Map<String, Any?>? = null): Pair<Int, JSONObject> {
        val payload = if (body != null) JSONObject(body).toString() else ""
        val rb: RequestBody? = when (method) {
            "POST"   -> payload.toRequestBody(JSON_TYPE)
            "DELETE" -> "".toRequestBody(JSON_TYPE)
            else     -> null
        }
        val req = Request.Builder()
            .url(BASE_URL + path)
            .addHeader("X-Auth-ID", authId)
            .addHeader("X-Auth-Token", authToken)
            .addHeader("Content-Type", "application/json")
            .apply {
                when (method) {
                    "GET"    -> get()
                    "POST"   -> post(rb!!)
                    "DELETE" -> delete(rb!!)
                }
            }.build()

        http.newCall(req).execute().use { resp ->
            val respBody = resp.body?.string() ?: "{}"
            val json = try { JSONObject(respBody) } catch (e: Exception) { JSONObject() }
            return Pair(resp.code, json)
        }
    }

    fun sleep(sec: Long) = Thread.sleep(sec * 1000)

    var passed = 0
    var failed = 0

    fun step(name: String, block: () -> Unit) {
        try { block(); println("[Kotlin] PASS: $name"); passed++ }
        catch (e: Exception) { println("[Kotlin] FAIL: $name - ${e.message}"); failed++ }
    }

    // STEP 1: Make outbound call
    println("\n[Kotlin] STEP 1: Making outbound call...")
    var requestUUID = ""
    step("Make Call") {
        val (status, data) = vobizRequest("POST", "/api/v1/Account/$authId/Call/", mapOf(
            "from" to fromNumber, "to" to toNumber,
            "answer_url" to ANSWER_URL, "answer_method" to "POST",
            "hangup_url" to HANGUP_URL, "hangup_method" to "POST"
        ))
        requestUUID = data.optString("request_uuid", "")
        if (requestUUID.isEmpty()) {
            val objects = data.optJSONArray("objects")
            if (objects != null && objects.length() > 0)
                requestUUID = objects.getJSONObject(0).optString("request_uuid", "")
        }
        if (requestUUID.isEmpty()) throw Exception("No request_uuid in: $data")
        println("  -> HTTP $status, request_uuid = $requestUUID")
    }
    if (requestUUID.isEmpty()) { println("[Kotlin] Cannot continue"); return }
    sleep(5)

    step("List Live Calls") {
        val (s, _) = vobizRequest("GET", "/api/v1/Account/$authId/Call/?status=live")
        println("  -> HTTP $s")
    }
    sleep(5)

    step("Get Single Live Call") {
        val (s, _) = vobizRequest("GET", "/api/v1/Account/$authId/Call/$requestUUID/?status=live")
        println("  -> HTTP $s")
    }
    sleep(5)

    step("Speak TTS") {
        val (s, _) = vobizRequest("POST", "/api/v1/Account/$authId/Call/$requestUUID/Speak/",
            mapOf("text" to "Hello from Vobiz Kotlin SDK.", "voice" to "WOMAN", "language" to "en-US", "legs" to "aleg"))
        println("  -> HTTP $s")
    }
    sleep(5)

    step("Stop TTS") {
        val (s, _) = vobizRequest("DELETE", "/api/v1/Account/$authId/Call/$requestUUID/Speak/")
        println("  -> HTTP $s")
    }

    step("Play Audio") {
        val (s, _) = vobizRequest("POST", "/api/v1/Account/$authId/Call/$requestUUID/Play/",
            mapOf("urls" to listOf(AUDIO_URL), "legs" to "aleg", "loop" to false, "mix" to true))
        println("  -> HTTP $s")
    }
    sleep(5)

    step("Stop Audio") {
        val (s, _) = vobizRequest("DELETE", "/api/v1/Account/$authId/Call/$requestUUID/Play/")
        println("  -> HTTP $s")
    }

    step("Start Recording") {
        val (s, _) = vobizRequest("POST", "/api/v1/Account/$authId/Call/$requestUUID/Record/",
            mapOf("time_limit" to 60, "file_format" to "mp3"))
        println("  -> HTTP $s")
    }
    sleep(5)

    step("Send DTMF") {
        val (s, _) = vobizRequest("POST", "/api/v1/Account/$authId/Call/$requestUUID/DTMF/",
            mapOf("digits" to "1234", "leg" to "aleg"))
        println("  -> HTTP $s")
    }

    step("Stop Recording") {
        val (s, _) = vobizRequest("DELETE", "/api/v1/Account/$authId/Call/$requestUUID/Record/")
        println("  -> HTTP $s")
    }

    step("Transfer Call") {
        val transferTo = TRANSFER_URL + if (transferNumber.isNotEmpty()) "?to=$transferNumber" else ""
        val (s, _) = vobizRequest("POST", "/api/v1/Account/$authId/Call/$requestUUID/",
            mapOf("legs" to "aleg", "aleg_url" to transferTo, "aleg_method" to "POST"))
        println("  -> HTTP $s")
    }
    sleep(5)

    step("Hang Up") {
        val (s, _) = vobizRequest("DELETE", "/api/v1/Account/$authId/Call/$requestUUID/")
        println("  -> HTTP $s")
    }

    println("\n[Kotlin] Call flow COMPLETE: $passed passed, $failed failed")
    if (failed > 0) System.exit(1)
}
