<?php
/**
 * Vobiz PHP SDK - Full Call Flow Integration Test (12 steps)
 * Uses Guzzle directly for all HTTP calls to correctly inject call_uuid into URLs.
 * Run: php test/Integration/CallFlowTest.php
 */

require_once __DIR__ . '/../../vendor/autoload.php';

use GuzzleHttp\Client;
use GuzzleHttp\Exception\GuzzleException;

$authId         = getenv('VOBIZ_AUTH_ID');
$authToken      = getenv('VOBIZ_AUTH_TOKEN');
$fromNumber     = getenv('VOBIZ_FROM_NUMBER');
$toNumber       = getenv('VOBIZ_TO_NUMBER');
$transferNumber = getenv('VOBIZ_TRANSFER_NUMBER');

if (!$authId || !$authToken || !$fromNumber || !$toNumber) {
    echo "SKIP: VOBIZ_AUTH_ID, VOBIZ_AUTH_TOKEN, VOBIZ_FROM_NUMBER, VOBIZ_TO_NUMBER required\n";
    exit(0);
}

define('AUDIO_URL',    'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3');
define('ANSWER_URL',   'https://internal-test-xml.vobiz.ai/answer');
define('HANGUP_URL',   'https://internal-test-xml.vobiz.ai/hangup');
define('TRANSFER_URL', 'https://internal-test-xml.vobiz.ai/answer');
define('BASE_URL',     'https://api.vobiz.ai');

$guzzle  = new Client(['base_uri' => BASE_URL, 'http_errors' => false]);
$headers = [
    'X-Auth-ID'    => $authId,
    'X-Auth-Token' => $authToken,
    'Content-Type' => 'application/json',
];

$passed  = 0;
$failed  = 0;

function vobizRequest(Client $client, string $method, string $path, array $headers, ?array $json = null): array {
    $options = ['headers' => $headers];
    if ($json !== null) $options['json'] = $json;
    $response = $client->request($method, $path, $options);
    $data = json_decode((string) $response->getBody(), true) ?? [];
    return ['status' => $response->getStatusCode(), 'data' => $data];
}

function step(string $name, callable $fn): void {
    global $passed, $failed;
    try {
        $fn();
        echo "[PHP] PASS: $name\n";
        $passed++;
    } catch (Exception $e) {
        echo "[PHP] FAIL: $name - " . $e->getMessage() . "\n";
        $failed++;
    }
}

// STEP 1: Make outbound call
echo "\n[PHP] STEP 1: Making outbound call...\n";
$requestUUID = null;
step('Make Call', function() use ($guzzle, $headers, $fromNumber, $toNumber, $authId, &$requestUUID) {
    $res = vobizRequest($guzzle, 'POST', "/api/v1/Account/{$authId}/Call/", $headers, [
        'from'          => $fromNumber,
        'to'            => $toNumber,
        'answer_url'    => ANSWER_URL,
        'answer_method' => 'POST',
        'hangup_url'    => HANGUP_URL,
        'hangup_method' => 'POST',
    ]);
    $requestUUID = $res['data']['request_uuid']
        ?? ($res['data']['objects'][0]['request_uuid'] ?? null);
    if (!$requestUUID) throw new Exception("No request_uuid. HTTP {$res['status']}: " . json_encode($res['data']));
    echo "  -> HTTP {$res['status']}, request_uuid = $requestUUID\n";
});

if (!$requestUUID) { echo "[PHP] Cannot continue without request_uuid\n"; exit(1); }
sleep(5);

// STEP 2: List all live calls
step('List Live Calls', function() use ($guzzle, $headers, $authId) {
    $res = vobizRequest($guzzle, 'GET', "/api/v1/Account/{$authId}/Call/?status=live", $headers);
    echo "  -> HTTP {$res['status']}\n";
});
sleep(5);

// STEP 3: Get single live call
step('Get Single Live Call', function() use ($guzzle, $headers, $authId, $requestUUID) {
    $res = vobizRequest($guzzle, 'GET', "/api/v1/Account/{$authId}/Call/{$requestUUID}/?status=live", $headers);
    echo "  -> HTTP {$res['status']}\n";
});
sleep(5);

// STEP 4: Speak TTS
step('Speak TTS', function() use ($guzzle, $headers, $authId, $requestUUID) {
    $res = vobizRequest($guzzle, 'POST', "/api/v1/Account/{$authId}/Call/{$requestUUID}/Speak/", $headers, [
        'text' => 'Hello from Vobiz PHP SDK.', 'voice' => 'WOMAN', 'language' => 'en-US', 'legs' => 'aleg'
    ]);
    echo "  -> HTTP {$res['status']}\n";
});
sleep(5);

// STEP 5: Stop TTS
step('Stop TTS', function() use ($guzzle, $headers, $authId, $requestUUID) {
    $res = vobizRequest($guzzle, 'DELETE', "/api/v1/Account/{$authId}/Call/{$requestUUID}/Speak/", $headers);
    echo "  -> HTTP {$res['status']}\n";
});

// STEP 6: Play audio
step('Play Audio', function() use ($guzzle, $headers, $authId, $requestUUID) {
    $res = vobizRequest($guzzle, 'POST', "/api/v1/Account/{$authId}/Call/{$requestUUID}/Play/", $headers, [
        'urls' => [AUDIO_URL], 'legs' => 'aleg', 'loop' => false, 'mix' => true
    ]);
    echo "  -> HTTP {$res['status']}\n";
});
sleep(5);

// STEP 7: Stop audio
step('Stop Audio', function() use ($guzzle, $headers, $authId, $requestUUID) {
    $res = vobizRequest($guzzle, 'DELETE', "/api/v1/Account/{$authId}/Call/{$requestUUID}/Play/", $headers);
    echo "  -> HTTP {$res['status']}\n";
});

// STEP 8: Start recording
step('Start Recording', function() use ($guzzle, $headers, $authId, $requestUUID) {
    $res = vobizRequest($guzzle, 'POST', "/api/v1/Account/{$authId}/Call/{$requestUUID}/Record/", $headers, [
        'time_limit' => 60, 'file_format' => 'mp3'
    ]);
    echo "  -> HTTP {$res['status']}\n";
});
sleep(5);

// STEP 9: Send DTMF
step('Send DTMF', function() use ($guzzle, $headers, $authId, $requestUUID) {
    $res = vobizRequest($guzzle, 'POST', "/api/v1/Account/{$authId}/Call/{$requestUUID}/DTMF/", $headers, [
        'digits' => '1234', 'leg' => 'aleg'
    ]);
    echo "  -> HTTP {$res['status']}\n";
});

// STEP 10: Stop recording
step('Stop Recording', function() use ($guzzle, $headers, $authId, $requestUUID) {
    $res = vobizRequest($guzzle, 'DELETE', "/api/v1/Account/{$authId}/Call/{$requestUUID}/Record/", $headers);
    echo "  -> HTTP {$res['status']}\n";
});

// STEP 11: Transfer call
step('Transfer Call', function() use ($guzzle, $headers, $authId, $requestUUID, $transferNumber) {
    $transferTo = TRANSFER_URL . ($transferNumber ? "?to=$transferNumber" : '');
    $res = vobizRequest($guzzle, 'POST', "/api/v1/Account/{$authId}/Call/{$requestUUID}/", $headers, [
        'legs' => 'aleg', 'aleg_url' => $transferTo, 'aleg_method' => 'POST'
    ]);
    echo "  -> HTTP {$res['status']}\n";
});
sleep(5);

// STEP 12: Hang up
step('Hang Up', function() use ($guzzle, $headers, $authId, $requestUUID) {
    $res = vobizRequest($guzzle, 'DELETE', "/api/v1/Account/{$authId}/Call/{$requestUUID}/", $headers);
    echo "  -> HTTP {$res['status']}\n";
});

echo "\n[PHP] Call flow COMPLETE: $passed passed, $failed failed\n";
exit($failed > 0 ? 1 : 0);
