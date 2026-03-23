# Vobiz Java SDK

Official Java SDK for the [Vobiz](https://vobiz.ai) Voice & Telephony API.

Make outbound calls, manage SIP trunks, phone numbers, conferences, recordings, and build dynamic call flows — all from Java.

---

## Installation

### Maven

```xml
<dependency>
  <groupId>ai.vobiz</groupId>
  <artifactId>vobiz-sdk</artifactId>
  <version>1.0.0</version>
</dependency>
```

### Gradle

```groovy
implementation 'ai.vobiz:vobiz-sdk:1.0.0'
```

---

## Authentication

```java
import ai.vobiz.ApiClient;

ApiClient client = new ApiClient();
client.addDefaultHeader("X-Auth-ID", "YOUR_AUTH_ID");
client.addDefaultHeader("X-Auth-Token", "YOUR_AUTH_TOKEN");
```

---

## Quick Start

### Make an Outbound Call

```java
import ai.vobiz.ApiClient;
import ai.vobiz.api.CallApi;
import java.util.Map;

ApiClient client = new ApiClient();
client.addDefaultHeader("X-Auth-ID", "YOUR_AUTH_ID");
client.addDefaultHeader("X-Auth-Token", "YOUR_AUTH_TOKEN");

String authId    = "YOUR_AUTH_ID";
String authToken = "YOUR_AUTH_TOKEN";

CallApi callApi = new CallApi(client);
callApi.apiV1AccountAuthIdCallPost(
    authId, authId, authToken, "application/json",
    Map.of(
        "from",          "+1xxxxxxxxxx",
        "to",            "+1xxxxxxxxxx",
        "answer_url",    "https://yourserver.com/answer",
        "answer_method", "POST",
        "hangup_url",    "https://yourserver.com/hangup",
        "hangup_method", "POST"
    )
);
System.out.println("Call initiated successfully");
```

---

## Features

### Calls

```java
CallApi api = new CallApi(client);

// List live calls
api.apiV1AccountAuthIdCallGet(authId, authId, authToken, "application/json", "live");

// Speak TTS
api.apiV1AccountAuthIdCallSpeakPost(authId, authId, authToken, "application/json",
    Map.of("text", "Hello!", "voice", "WOMAN", "language", "en-US", "legs", "aleg"));

// Play audio
api.apiV1AccountAuthIdCallPlayPost(authId, authId, authToken, "application/json",
    Map.of("urls", List.of("https://example.com/audio.mp3"), "legs", "aleg"));

// Start recording
api.apiV1AccountAuthIdCallRecordPost(authId, authId, authToken, "application/json",
    Map.of("time_limit", 60, "file_format", "mp3"));

// Send DTMF
api.apiV1AccountAuthIdCallDTMFPost(authId, authId, authToken, "application/json",
    Map.of("digits", "1234", "leg", "aleg"));

// Stop recording
api.apiV1AccountAuthIdCallRecordDelete(authId, authId, authToken, "application/json");

// Transfer call
api.apiV1AccountAuthIdCallPost_2(authId, authId, authToken, "application/json",
    Map.of("legs", "aleg", "aleg_url", "https://yourserver.com/transfer", "aleg_method", "POST"));

// Hang up
api.apiV1AccountAuthIdCallDelete(authId, authId, authToken, "application/json");
```

### Conferences

```java
ConferenceApi api = new ConferenceApi(client);

// List conferences
api.apiV1AccountAuthIdConferenceGet(authId, authId, authToken, "application/json");

// Kick a member
api.apiV1AccountAuthIdConferenceConferenceNameMemberMemberIdDelete(
    authId, "conference-name", "member-id", authId, authToken, "application/json");

// Record a conference
api.apiV1AccountAuthIdConferenceConferenceNameRecordPost(
    authId, "conference-name", authId, authToken, "application/json",
    Map.of("file_format", "mp3"));
```

### Recordings

```java
RecordingApi api = new RecordingApi(client);

// List recordings
api.apiV1AccountAccountIdRecordingGet(authId, authId, authToken, "application/json", 20, 0, null, null);

// Delete a recording
api.apiV1AccountAccountIdRecordingRecordingIdDelete(
    authId, "recording-uuid", authId, authToken, "application/json");
```

### Account

```java
AccountApi api = new AccountApi(client);

// Get account details
api.apiV1AuthMeGet(authId, authToken, "application/json");
```

### Applications

```java
ApplicationApi api = new ApplicationApi(client);

// Create application
api.apiV1AccountAuthIdApplicationPost(authId, authId, authToken, "application/json",
    Map.of("app_name", "My App", "answer_url", "https://yourserver.com/answer"));

// List applications
api.apiV1AccountAuthIdApplicationGet(authId, authId, authToken, "application/json", 20, 0);

// Delete application
api.apiV1AccountAuthIdApplicationAppIdDelete(authId, "app-uuid", authId, authToken, "application/json");
```

### Phone Numbers

```java
PhoneNumbersApi api = new PhoneNumbersApi(client);

// List owned numbers
api.apiV1AccountAuthIdNumberGet(authId, authId, authToken, "application/json");

// Purchase a number
api.apiV1AccountAuthIdNumberBuyNumberPost(authId, "+1xxxxxxxxxx", authId, authToken, "application/json");
```

---

## Error Handling

```java
try {
    api.apiV1AccountAuthIdCallPost(...);
} catch (ApiException e) {
    System.out.println("Error " + e.getCode() + ": " + e.getMessage());
}
```

---

## Requirements

- Java 11+
- Maven 3.6+ or Gradle 7+

---

## Support

- Docs: [https://docs.vobiz.ai](https://docs.vobiz.ai)
- Console: [https://console.vobiz.ai](https://console.vobiz.ai)
- Email: support@vobiz.ai
