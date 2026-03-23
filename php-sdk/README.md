# Vobiz PHP SDK

Official PHP SDK for the [Vobiz](https://vobiz.ai) Voice & Telephony API.

Make outbound calls, manage SIP trunks, phone numbers, conferences, recordings, and build dynamic call flows — all from PHP.

---

## Installation

```bash
composer require vobiz/vobiz-sdk
```

---

## Authentication

```php
<?php
require_once 'vendor/autoload.php';

use Vobiz\Configuration;

$config = new Configuration();
$config->setApiKey('X-Auth-ID', 'YOUR_AUTH_ID');
$config->setApiKey('X-Auth-Token', 'YOUR_AUTH_TOKEN');

$authId    = 'YOUR_AUTH_ID';
$authToken = 'YOUR_AUTH_TOKEN';
```

---

## Quick Start

### Make an Outbound Call

```php
<?php
require_once 'vendor/autoload.php';

use GuzzleHttp\Client;

$authId    = 'YOUR_AUTH_ID';
$authToken = 'YOUR_AUTH_TOKEN';

$client   = new Client();
$response = $client->post("https://api.vobiz.ai/api/v1/Account/{$authId}/Call/", [
    'headers' => [
        'X-Auth-ID'    => $authId,
        'X-Auth-Token' => $authToken,
        'Content-Type' => 'application/json',
    ],
    'json' => [
        'from'          => '+1xxxxxxxxxx',
        'to'            => '+1xxxxxxxxxx',
        'answer_url'    => 'https://yourserver.com/answer',
        'answer_method' => 'POST',
        'hangup_url'    => 'https://yourserver.com/hangup',
        'hangup_method' => 'POST',
    ],
]);

$data = json_decode($response->getBody(), true);
echo "Call UUID: " . $data['request_uuid'];
```

---

## Features

### Calls

```php
use Vobiz\VobizApi\CallApi;

$api = new CallApi(null, $config);

// List live calls
$api->apiV1AccountAuthIdCallGet($authId, $authId, $authToken, 'application/json', 'live');

// Speak TTS on a live call
$api->apiV1AccountAuthIdCallSpeakPost($authId, $authId, $authToken, 'application/json', [
    'text'     => 'Hello from Vobiz!',
    'voice'    => 'WOMAN',
    'language' => 'en-US',
    'legs'     => 'aleg',
]);

// Play audio
$api->apiV1AccountAuthIdCallPlayPost($authId, $authId, $authToken, 'application/json', [
    'urls' => ['https://example.com/audio.mp3'],
    'legs' => 'aleg',
]);

// Start recording
$api->apiV1AccountAuthIdCallRecordPost($authId, $authId, $authToken, 'application/json', [
    'time_limit'  => 60,
    'file_format' => 'mp3',
]);

// Send DTMF
$api->apiV1AccountAuthIdCallDTMFPost($authId, $authId, $authToken, 'application/json', [
    'digits' => '1234',
    'leg'    => 'aleg',
]);

// Stop recording
$api->apiV1AccountAuthIdCallRecordDelete($authId, $authId, $authToken, 'application/json');

// Transfer call
$api->apiV1AccountAuthIdCallPost_0($authId, $authId, $authToken, 'application/json', [
    'legs'        => 'aleg',
    'aleg_url'    => 'https://yourserver.com/transfer',
    'aleg_method' => 'POST',
]);

// Hang up
$api->apiV1AccountAuthIdCallDelete($authId, $authId, $authToken, 'application/json');
```

### Conferences

```php
use Vobiz\VobizApi\ConferenceApi;

$api = new ConferenceApi(null, $config);

// List conferences
$api->apiV1AccountAuthIdConferenceGet($authId, $authId, $authToken, 'application/json');

// Kick a member
$api->apiV1AccountAuthIdConferenceConferenceNameMemberMemberIdDelete(
    $authId, 'conference-name', 'member-id', $authId, $authToken, 'application/json');

// Record a conference
$api->apiV1AccountAuthIdConferenceConferenceNameRecordPost(
    $authId, 'conference-name', $authId, $authToken, 'application/json',
    ['file_format' => 'mp3']);
```

### Recordings

```php
use Vobiz\VobizApi\RecordingApi;

$api = new RecordingApi(null, $config);

// List recordings
$api->apiV1AccountAccountIdRecordingGet($authId, $authId, $authToken, 'application/json', 20, 0);

// Delete a recording
$api->apiV1AccountAccountIdRecordingRecordingIdDelete(
    $authId, 'recording-uuid', $authId, $authToken, 'application/json');
```

### Account

```php
use Vobiz\VobizApi\AccountApi;

$api = new AccountApi(null, $config);

// Get account details
$api->apiV1AuthMeGet($authId, $authToken, 'application/json');
```

### Applications

```php
use Vobiz\VobizApi\ApplicationApi;

$api = new ApplicationApi(null, $config);

// Create application
$api->apiV1AccountAuthIdApplicationPost($authId, $authId, $authToken, 'application/json', [
    'app_name'   => 'My App',
    'answer_url' => 'https://yourserver.com/answer',
]);

// List applications
$api->apiV1AccountAuthIdApplicationGet($authId, $authId, $authToken, 'application/json', 20, 0);

// Delete application
$api->apiV1AccountAuthIdApplicationAppIdDelete(
    $authId, 'app-uuid', $authId, $authToken, 'application/json');
```

### Phone Numbers

```php
use Vobiz\VobizApi\PhoneNumbersApi;

$api = new PhoneNumbersApi(null, $config);

// List owned numbers
$api->apiV1AccountAuthIdNumberGet($authId, $authId, $authToken, 'application/json');

// Purchase a number
$api->apiV1AccountAuthIdNumberBuyNumberPost(
    $authId, '+1xxxxxxxxxx', $authId, $authToken, 'application/json');
```

---

## Error Handling

```php
use Vobiz\ApiException;

try {
    $api->apiV1AccountAuthIdCallPost(...);
} catch (ApiException $e) {
    echo "API Error {$e->getCode()}: {$e->getMessage()}";
}
```

---

## Requirements

- PHP 8.0+
- Composer

---

## Support

- Docs: [https://docs.vobiz.ai](https://docs.vobiz.ai)
- Console: [https://console.vobiz.ai](https://console.vobiz.ai)
- Email: support@vobiz.ai
