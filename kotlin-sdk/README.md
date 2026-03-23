# Vobiz Kotlin SDK

Official Kotlin SDK for the [Vobiz](https://vobiz.ai) Voice & Telephony API.

Make outbound calls, manage SIP trunks, phone numbers, conferences, recordings, and build dynamic call flows — all from Kotlin.

---

## Installation

### Gradle (Kotlin DSL)

```kotlin
implementation("ai.vobiz:vobiz-sdk:1.0.0")
```

### Gradle (Groovy)

```groovy
implementation 'ai.vobiz:vobiz-sdk:1.0.0'
```

### Maven

```xml
<dependency>
  <groupId>ai.vobiz</groupId>
  <artifactId>vobiz-sdk</artifactId>
  <version>1.0.0</version>
</dependency>
```

---

## Authentication

```kotlin
import ai.vobiz.infrastructure.ApiClient

val client = ApiClient(baseUrl = "https://api.vobiz.ai")

val authId    = "YOUR_AUTH_ID"
val authToken = "YOUR_AUTH_TOKEN"
// Pass authId and authToken as parameters per API call
```

---

## Quick Start

### Make an Outbound Call

```kotlin
import ai.vobiz.apis.CallApi
import ai.vobiz.infrastructure.ApiClient

val authId    = "YOUR_AUTH_ID"
val authToken = "YOUR_AUTH_TOKEN"
val client    = ApiClient(baseUrl = "https://api.vobiz.ai")
val api       = CallApi(client)

api.apiV1AccountAuthIdCallPost(
    authId, authId, authToken, "application/json",
    mapOf(
        "from"          to "+1xxxxxxxxxx",
        "to"            to "+1xxxxxxxxxx",
        "answer_url"    to "https://yourserver.com/answer",
        "answer_method" to "POST",
        "hangup_url"    to "https://yourserver.com/hangup",
        "hangup_method" to "POST"
    )
)
println("Call initiated successfully")
```

---

## Features

### Calls

```kotlin
val api = CallApi(client)

// List live calls
api.apiV1AccountAuthIdCallGet(authId, authId, authToken, "application/json", status = "live")

// Speak TTS
api.apiV1AccountAuthIdCallSpeakPost(authId, authId, authToken, "application/json",
    mapOf("text" to "Hello!", "voice" to "WOMAN", "language" to "en-US", "legs" to "aleg"))

// Play audio
api.apiV1AccountAuthIdCallPlayPost(authId, authId, authToken, "application/json",
    mapOf("urls" to listOf("https://example.com/audio.mp3"), "legs" to "aleg"))

// Start recording
api.apiV1AccountAuthIdCallRecordPost(authId, authId, authToken, "application/json",
    mapOf("time_limit" to 60, "file_format" to "mp3"))

// Send DTMF
api.apiV1AccountAuthIdCallDTMFPost(authId, authId, authToken, "application/json",
    mapOf("digits" to "1234", "leg" to "aleg"))

// Transfer call
api.apiV1AccountAuthIdCallPost_2(authId, authId, authToken, "application/json",
    mapOf("legs" to "aleg", "aleg_url" to "https://yourserver.com/transfer", "aleg_method" to "POST"))

// Hang up
api.apiV1AccountAuthIdCallDelete(authId, authId, authToken, "application/json")
```

### Conferences

```kotlin
val api = ConferenceApi(client)

// List conferences
api.apiV1AccountAuthIdConferenceGet(authId, xAuthID = authId, xAuthToken = authToken)

// Mute a member
api.apiV1AccountAuthIdConferenceConferenceNameMemberMemberIdPost(
    authId, "conference-name", "member-id",
    xAuthID = authId, xAuthToken = authToken,
    body = mapOf("action" to "mute"))
```

### Recordings

```kotlin
val api = RecordingApi(client)

// List recordings
api.apiV1AccountAccountIdRecordingGet(authId, xAuthID = authId, xAuthToken = authToken)

// Delete recording
api.apiV1AccountAccountIdRecordingRecordingIdDelete(
    authId, "recording-uuid", xAuthID = authId, xAuthToken = authToken)
```

### Account

```kotlin
val api = AccountApi(client)

// Get account details
api.apiV1AuthMeGet(xAuthID = authId, xAuthToken = authToken)
```

### Applications

```kotlin
val api = ApplicationApi(client)

// Create application
api.apiV1AccountAuthIdApplicationPost(authId, authId, authToken, "application/json",
    mapOf("app_name" to "My App", "answer_url" to "https://yourserver.com/answer"))

// List applications
api.apiV1AccountAuthIdApplicationGet(authId, authId, authToken, "application/json", 20, 0)
```

---

## Error Handling

```kotlin
try {
    api.apiV1AccountAuthIdCallPost(...)
} catch (e: ClientException) {
    println("API Error ${e.statusCode}: ${e.message}")
}
```

---

## Requirements

- Kotlin 1.8+
- JVM 11+
- Gradle 7+

---

## Support

- Docs: [https://docs.vobiz.ai](https://docs.vobiz.ai)
- Console: [https://console.vobiz.ai](https://console.vobiz.ai)
- Email: support@vobiz.ai
