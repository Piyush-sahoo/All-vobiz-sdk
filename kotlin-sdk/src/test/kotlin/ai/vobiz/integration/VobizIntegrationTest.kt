package ai.vobiz.integration

import ai.vobiz.apis.*
import ai.vobiz.infrastructure.ApiClient

/**
 * Vobiz Kotlin SDK - Integration Tests (Read-Only)
 * Auth passed per-call via xAuthID/xAuthToken params.
 */
fun main() {
    val authId    = System.getenv("VOBIZ_AUTH_ID")    ?: ""
    val authToken = System.getenv("VOBIZ_AUTH_TOKEN") ?: ""

    if (authId.isEmpty() || authToken.isEmpty()) {
        println("SKIP: VOBIZ_AUTH_ID or VOBIZ_AUTH_TOKEN not set")
        return
    }

    val client = ApiClient(baseUrl = "https://api.vobiz.ai")
    var passed = 0
    var failed = 0

    fun runTest(name: String, block: () -> Unit) {
        try { block(); println("[Kotlin] PASS: $name"); passed++ }
        catch (e: Exception) { println("[Kotlin] FAIL: $name - ${e.message}"); failed++ }
    }

    runTest("GetAccountDetails") {
        AccountApi(client).apiV1AuthMeGet(xAuthID = authId, xAuthToken = authToken)
        println("  -> OK")
    }
    runTest("GetLiveCalls") {
        CallApi(client).apiV1AccountAuthIdCallGet(authId, xAuthID = authId, xAuthToken = authToken, status = "live")
        println("  -> OK")
    }
    runTest("ListRecordings") {
        RecordingApi(client).apiV1AccountAccountIdRecordingGet(authId, xAuthID = authId, xAuthToken = authToken)
        println("  -> OK")
    }
    runTest("ListConferences") {
        ConferenceApi(client).apiV1AccountAuthIdConferenceGet(authId, xAuthID = authId, xAuthToken = authToken)
        println("  -> OK")
    }
    runTest("ListApplications") {
        ApplicationApi(client).apiV1AccountAuthIdApplicationGet(authId, xAuthID = authId, xAuthToken = authToken)
        println("  -> OK")
    }

    println("\n[Kotlin] Results: $passed passed, $failed failed")
    if (failed > 0) System.exit(1)
}
