# Vobiz Dart SDK

Official Dart SDK for the [Vobiz](https://vobiz.ai) Voice & Telephony API.

Make outbound calls, manage SIP trunks, phone numbers, conferences, recordings, and build dynamic call flows — all from Dart and Flutter.

---

## Installation

Add to your `pubspec.yaml`:

```yaml
dependencies:
  vobiz: ^1.0.0
```

Then run:

```bash
dart pub get
```

---

## Authentication

```dart
import 'package:vobiz/api.dart';

final client = ApiClient(basePath: 'https://api.vobiz.ai');
client.addDefaultHeader('X-Auth-ID', 'YOUR_AUTH_ID');
client.addDefaultHeader('X-Auth-Token', 'YOUR_AUTH_TOKEN');
```

---

## Quick Start

### Make an Outbound Call

```dart
import 'package:vobiz/api.dart';

void main() async {
  final client = ApiClient(basePath: 'https://api.vobiz.ai');
  client.addDefaultHeader('X-Auth-ID', 'YOUR_AUTH_ID');
  client.addDefaultHeader('X-Auth-Token', 'YOUR_AUTH_TOKEN');

  final api = CallApi(client);

  await api.apiV1AccountAuthIdCallPost(
    'YOUR_AUTH_ID',
    xAuthId: 'YOUR_AUTH_ID',
    xAuthToken: 'YOUR_AUTH_TOKEN',
    body: {
      'from':          '+1xxxxxxxxxx',
      'to':            '+1xxxxxxxxxx',
      'answer_url':    'https://yourserver.com/answer',
      'answer_method': 'POST',
      'hangup_url':    'https://yourserver.com/hangup',
      'hangup_method': 'POST',
    },
  );

  print('Call initiated successfully');
}
```

---

## Features

### Calls

```dart
final api = CallApi(client);

// List live calls
await api.apiV1AccountAuthIdCallGet(authId,
    xAuthId: authId, xAuthToken: authToken, status: 'live');

// Speak TTS on a live call
await api.apiV1AccountAuthIdCallSpeakPost(authId,
    xAuthId: authId, xAuthToken: authToken,
    body: {'text': 'Hello!', 'voice': 'WOMAN', 'language': 'en-US', 'legs': 'aleg'});

// Play audio
await api.apiV1AccountAuthIdCallPlayPost(authId,
    xAuthId: authId, xAuthToken: authToken,
    body: {'urls': ['https://example.com/audio.mp3'], 'legs': 'aleg'});

// Start recording
await api.apiV1AccountAuthIdCallRecordPost(authId,
    xAuthId: authId, xAuthToken: authToken,
    body: {'time_limit': 60, 'file_format': 'mp3'});

// Send DTMF
await api.apiV1AccountAuthIdCallDTMFPost(authId,
    xAuthId: authId, xAuthToken: authToken,
    body: {'digits': '1234', 'leg': 'aleg'});

// Transfer call
await api.apiV1AccountAuthIdCallPost0(authId,
    xAuthId: authId, xAuthToken: authToken,
    body: {'legs': 'aleg', 'aleg_url': 'https://yourserver.com/transfer', 'aleg_method': 'POST'});

// Hang up
await api.apiV1AccountAuthIdCallDelete(authId,
    xAuthId: authId, xAuthToken: authToken);
```

### Conferences

```dart
final api = ConferenceApi(client);

// List conferences
await api.apiV1AccountAuthIdConferenceGet(authId,
    xAuthId: authId, xAuthToken: authToken);

// Mute a member
await api.apiV1AccountAuthIdConferenceConferenceNameMemberMemberIdPost(
    authId, 'conference-name', 'member-id',
    xAuthId: authId, xAuthToken: authToken,
    body: {'action': 'mute'});
```

### Recordings

```dart
final api = RecordingApi(client);

// List recordings
await api.apiV1AccountAccountIdRecordingGet(authId,
    xAuthId: authId, xAuthToken: authToken);

// Delete recording
await api.apiV1AccountAccountIdRecordingRecordingIdDelete(
    authId, 'recording-uuid',
    xAuthId: authId, xAuthToken: authToken);
```

### Account

```dart
final api = AccountApi(client);

// Get account details
await api.apiV1AuthMeGet(xAuthId: authId, xAuthToken: authToken);
```

### Applications

```dart
final api = ApplicationApi(client);

// Create application
await api.apiV1AccountAuthIdApplicationPost(authId,
    xAuthId: authId, xAuthToken: authToken,
    body: {'app_name': 'My App', 'answer_url': 'https://yourserver.com/answer'});

// List applications
await api.apiV1AccountAuthIdApplicationGet(authId,
    xAuthId: authId, xAuthToken: authToken);
```

---

## Flutter Usage

```dart
class VobizService {
  final ApiClient _client;

  VobizService(String authId, String authToken)
      : _client = ApiClient(basePath: 'https://api.vobiz.ai') {
    _client.addDefaultHeader('X-Auth-ID', authId);
    _client.addDefaultHeader('X-Auth-Token', authToken);
  }

  Future<void> makeCall(String from, String to) async {
    final api = CallApi(_client);
    await api.apiV1AccountAuthIdCallPost(
      _client.basePath,
      body: {'from': from, 'to': to, 'answer_url': 'https://yourserver.com/answer'},
    );
  }
}
```

---

## Requirements

- Dart 3.0+ / Flutter 3.10+

---

## Support

- Docs: [https://docs.vobiz.ai](https://docs.vobiz.ai)
- Console: [https://console.vobiz.ai](https://console.vobiz.ai)
- Email: support@vobiz.ai
