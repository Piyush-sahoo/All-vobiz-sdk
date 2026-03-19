<?php
/**
 * Vobiz PHP SDK - Integration Tests (Read-Only)
 * Run: php test/Integration/VobizIntegrationTest.php
 * Requires: VOBIZ_AUTH_ID and VOBIZ_AUTH_TOKEN env vars
 */

require_once __DIR__ . '/../../vendor/autoload.php';

use Vobiz\Configuration;
use Vobiz\ApiException;
use Vobiz\VobizApi\AccountApi;
use Vobiz\VobizApi\CallApi;
use Vobiz\VobizApi\RecordingApi;
use Vobiz\VobizApi\ConferenceApi;
use Vobiz\VobizApi\ApplicationApi;

$authId    = getenv('VOBIZ_AUTH_ID');
$authToken = getenv('VOBIZ_AUTH_TOKEN');

if (!$authId || !$authToken) {
    echo "SKIP: VOBIZ_AUTH_ID or VOBIZ_AUTH_TOKEN not set\n";
    exit(0);
}

$config = new Configuration();
$config->setApiKey('X-Auth-ID', $authId);
$config->setApiKey('X-Auth-Token', $authToken);

$passed = 0;
$failed = 0;

function runTest(string $name, callable $fn): void {
    global $passed, $failed;
    try {
        $fn();
        echo "[PHP] PASS: $name\n";
        $passed++;
    } catch (ApiException $e) {
        echo "[PHP] FAIL: $name - HTTP {$e->getCode()}: {$e->getMessage()}\n";
        $failed++;
    } catch (Exception $e) {
        echo "[PHP] FAIL: $name - {$e->getMessage()}\n";
        $failed++;
    }
}

// Test 1: Get Account Details
runTest('GetAccountDetails', function() use ($config, $authId, $authToken) {
    $api = new AccountApi(null, $config);
    $api->apiV1AuthMeGet($authId, $authToken, 'application/json');
    echo "  -> Response received OK\n";
});

// Test 2: Get Live Calls
runTest('GetLiveCalls', function() use ($config, $authId, $authToken) {
    $api = new CallApi(null, $config);
    $api->apiV1AccountAuthIdCallGet($authId, $authId, $authToken, 'application/json', 'live');
    echo "  -> Response received OK\n";
});

// Test 3: List Recordings
runTest('ListRecordings', function() use ($config, $authId, $authToken) {
    $api = new RecordingApi(null, $config);
    $api->apiV1AccountAccountIdRecordingGet($authId, $authId, $authToken, 'application/json', 20, 0);
    echo "  -> Response received OK\n";
});

// Test 4: List Conferences
runTest('ListConferences', function() use ($config, $authId, $authToken) {
    $api = new ConferenceApi(null, $config);
    $api->apiV1AccountAuthIdConferenceGet($authId, $authId, $authToken, 'application/json');
    echo "  -> Response received OK\n";
});

// Test 5: List Applications
runTest('ListApplications', function() use ($config, $authId, $authToken) {
    $api = new ApplicationApi(null, $config);
    $api->apiV1AccountAuthIdApplicationGet($authId, $authId, $authToken, 'application/json', 20, 0);
    echo "  -> Response received OK\n";
});

echo "\n[PHP] Results: $passed passed, $failed failed\n";
exit($failed > 0 ? 1 : 0);
