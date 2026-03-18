# Vobiz\RecordingApi

Manage call recordings: list, retrieve, delete, bulk delete, and export.

All URIs are relative to https://api.vobiz.ai, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**apiV1AccountAccountIdRecordingGet()**](RecordingApi.md#apiV1AccountAccountIdRecordingGet) | **GET** /api/v1/Account/{account_id}/Recording/ | List All Recordings |
| [**apiV1AccountAuthIdExportRecordingPost()**](RecordingApi.md#apiV1AccountAuthIdExportRecordingPost) | **POST** /api/v1/Account/{auth_id}/export/recording/ | Export Historical Recordings |
| [**apiV1AccountAuthIdRecordingBulkDeleteDelete()**](RecordingApi.md#apiV1AccountAuthIdRecordingBulkDeleteDelete) | **DELETE** /api/v1/Account/{auth_id}/Recording/BulkDelete/ | Bulk Delete Recordings |
| [**apiV1AccountAuthIdRecordingDelete()**](RecordingApi.md#apiV1AccountAuthIdRecordingDelete) | **DELETE** /api/v1/Account/{auth_id}/Recording/{}/ | Delete a Recording |
| [**apiV1AccountAuthIdRecordingGet()**](RecordingApi.md#apiV1AccountAuthIdRecordingGet) | **GET** /api/v1/Account/{auth_id}/Recording/{}/ | Retrieve a Recording |


## `apiV1AccountAccountIdRecordingGet()`

```php
apiV1AccountAccountIdRecordingGet($account_id, $x_auth_id, $x_auth_token, $content_type, $limit, $offset, $call_uuid, $recording_type)
```

List All Recordings

Retrieve a paginated list of call recordings for your account.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ApiKeyAuthID
$config = Vobiz\Configuration::getDefaultConfiguration()->setApiKey('X-Auth-ID', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Vobiz\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-Auth-ID', 'Bearer');

// Configure API key authorization: ApiKeyAuthToken
$config = Vobiz\Configuration::getDefaultConfiguration()->setApiKey('X-Auth-Token', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Vobiz\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-Auth-Token', 'Bearer');


$apiInstance = new Vobiz\Api\RecordingApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$account_id = 'account_id_example'; // string
$x_auth_id = {{auth_id}}; // string
$x_auth_token = {{auth_token}}; // string
$content_type = application/json; // string
$limit = 20; // int | Records per request (default: 20, max: 100)
$offset = 0; // int | Pagination offset (default: 0)
$call_uuid = 'call_uuid_example'; // string | Filter by specific call UUID
$recording_type = 'recording_type_example'; // string | Filter by type: trunk or extension

try {
    $apiInstance->apiV1AccountAccountIdRecordingGet($account_id, $x_auth_id, $x_auth_token, $content_type, $limit, $offset, $call_uuid, $recording_type);
} catch (Exception $e) {
    echo 'Exception when calling RecordingApi->apiV1AccountAccountIdRecordingGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **account_id** | **string**|  | |
| **x_auth_id** | **string**|  | [optional] |
| **x_auth_token** | **string**|  | [optional] |
| **content_type** | **string**|  | [optional] |
| **limit** | **int**| Records per request (default: 20, max: 100) | [optional] |
| **offset** | **int**| Pagination offset (default: 0) | [optional] |
| **call_uuid** | **string**| Filter by specific call UUID | [optional] |
| **recording_type** | **string**| Filter by type: trunk or extension | [optional] |

### Return type

void (empty response body)

### Authorization

[ApiKeyAuthID](../../README.md#ApiKeyAuthID), [ApiKeyAuthToken](../../README.md#ApiKeyAuthToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `apiV1AccountAuthIdExportRecordingPost()`

```php
apiV1AccountAuthIdExportRecordingPost($auth_id, $x_auth_id, $x_auth_token, $content_type, $body)
```

Export Historical Recordings

Export recordings as a downloadable archive sent via email (async). Returns 202 Accepted.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ApiKeyAuthID
$config = Vobiz\Configuration::getDefaultConfiguration()->setApiKey('X-Auth-ID', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Vobiz\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-Auth-ID', 'Bearer');

// Configure API key authorization: ApiKeyAuthToken
$config = Vobiz\Configuration::getDefaultConfiguration()->setApiKey('X-Auth-Token', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Vobiz\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-Auth-Token', 'Bearer');


$apiInstance = new Vobiz\Api\RecordingApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$auth_id = 'auth_id_example'; // string
$x_auth_id = {{auth_id}}; // string
$x_auth_token = {{auth_token}}; // string
$content_type = application/json; // string
$body = array('key' => new \stdClass); // object

try {
    $apiInstance->apiV1AccountAuthIdExportRecordingPost($auth_id, $x_auth_id, $x_auth_token, $content_type, $body);
} catch (Exception $e) {
    echo 'Exception when calling RecordingApi->apiV1AccountAuthIdExportRecordingPost: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **auth_id** | **string**|  | |
| **x_auth_id** | **string**|  | [optional] |
| **x_auth_token** | **string**|  | [optional] |
| **content_type** | **string**|  | [optional] |
| **body** | **object**|  | [optional] |

### Return type

void (empty response body)

### Authorization

[ApiKeyAuthID](../../README.md#ApiKeyAuthID), [ApiKeyAuthToken](../../README.md#ApiKeyAuthToken)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `apiV1AccountAuthIdRecordingBulkDeleteDelete()`

```php
apiV1AccountAuthIdRecordingBulkDeleteDelete($auth_id, $x_auth_id, $x_auth_token, $content_type, $add_time__gte, $add_time__lte, $call_uuid, $from_number, $to_number, $recording_format)
```

Bulk Delete Recordings

Delete multiple recordings matching filter criteria (async operation). Returns 202 Accepted.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ApiKeyAuthID
$config = Vobiz\Configuration::getDefaultConfiguration()->setApiKey('X-Auth-ID', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Vobiz\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-Auth-ID', 'Bearer');

// Configure API key authorization: ApiKeyAuthToken
$config = Vobiz\Configuration::getDefaultConfiguration()->setApiKey('X-Auth-Token', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Vobiz\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-Auth-Token', 'Bearer');


$apiInstance = new Vobiz\Api\RecordingApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$auth_id = 'auth_id_example'; // string
$x_auth_id = {{auth_id}}; // string
$x_auth_token = {{auth_token}}; // string
$content_type = application/json; // string
$add_time__gte = 'add_time__gte_example'; // string | Delete recordings on/after this date (YYYY-MM-DD HH:MM:SS)
$add_time__lte = 'add_time__lte_example'; // string | Delete recordings on/before this date
$call_uuid = 'call_uuid_example'; // string | Delete recordings for specific call UUID
$from_number = 'from_number_example'; // string | Delete by caller number (partial match)
$to_number = 'to_number_example'; // string | Delete by destination number (partial match)
$recording_format = 'recording_format_example'; // string | mp3 or wav

try {
    $apiInstance->apiV1AccountAuthIdRecordingBulkDeleteDelete($auth_id, $x_auth_id, $x_auth_token, $content_type, $add_time__gte, $add_time__lte, $call_uuid, $from_number, $to_number, $recording_format);
} catch (Exception $e) {
    echo 'Exception when calling RecordingApi->apiV1AccountAuthIdRecordingBulkDeleteDelete: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **auth_id** | **string**|  | |
| **x_auth_id** | **string**|  | [optional] |
| **x_auth_token** | **string**|  | [optional] |
| **content_type** | **string**|  | [optional] |
| **add_time__gte** | **string**| Delete recordings on/after this date (YYYY-MM-DD HH:MM:SS) | [optional] |
| **add_time__lte** | **string**| Delete recordings on/before this date | [optional] |
| **call_uuid** | **string**| Delete recordings for specific call UUID | [optional] |
| **from_number** | **string**| Delete by caller number (partial match) | [optional] |
| **to_number** | **string**| Delete by destination number (partial match) | [optional] |
| **recording_format** | **string**| mp3 or wav | [optional] |

### Return type

void (empty response body)

### Authorization

[ApiKeyAuthID](../../README.md#ApiKeyAuthID), [ApiKeyAuthToken](../../README.md#ApiKeyAuthToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `apiV1AccountAuthIdRecordingDelete()`

```php
apiV1AccountAuthIdRecordingDelete($auth_id, $x_auth_id, $x_auth_token, $content_type)
```

Delete a Recording

Permanently delete a specific recording. Returns 204 No Content.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ApiKeyAuthID
$config = Vobiz\Configuration::getDefaultConfiguration()->setApiKey('X-Auth-ID', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Vobiz\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-Auth-ID', 'Bearer');

// Configure API key authorization: ApiKeyAuthToken
$config = Vobiz\Configuration::getDefaultConfiguration()->setApiKey('X-Auth-Token', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Vobiz\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-Auth-Token', 'Bearer');


$apiInstance = new Vobiz\Api\RecordingApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$auth_id = 'auth_id_example'; // string
$x_auth_id = {{auth_id}}; // string
$x_auth_token = {{auth_token}}; // string
$content_type = application/json; // string

try {
    $apiInstance->apiV1AccountAuthIdRecordingDelete($auth_id, $x_auth_id, $x_auth_token, $content_type);
} catch (Exception $e) {
    echo 'Exception when calling RecordingApi->apiV1AccountAuthIdRecordingDelete: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **auth_id** | **string**|  | |
| **x_auth_id** | **string**|  | [optional] |
| **x_auth_token** | **string**|  | [optional] |
| **content_type** | **string**|  | [optional] |

### Return type

void (empty response body)

### Authorization

[ApiKeyAuthID](../../README.md#ApiKeyAuthID), [ApiKeyAuthToken](../../README.md#ApiKeyAuthToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `apiV1AccountAuthIdRecordingGet()`

```php
apiV1AccountAuthIdRecordingGet($auth_id, $x_auth_id, $x_auth_token, $content_type)
```

Retrieve a Recording

Get detailed information about a specific recording.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ApiKeyAuthID
$config = Vobiz\Configuration::getDefaultConfiguration()->setApiKey('X-Auth-ID', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Vobiz\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-Auth-ID', 'Bearer');

// Configure API key authorization: ApiKeyAuthToken
$config = Vobiz\Configuration::getDefaultConfiguration()->setApiKey('X-Auth-Token', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Vobiz\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-Auth-Token', 'Bearer');


$apiInstance = new Vobiz\Api\RecordingApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$auth_id = 'auth_id_example'; // string
$x_auth_id = {{auth_id}}; // string
$x_auth_token = {{auth_token}}; // string
$content_type = application/json; // string

try {
    $apiInstance->apiV1AccountAuthIdRecordingGet($auth_id, $x_auth_id, $x_auth_token, $content_type);
} catch (Exception $e) {
    echo 'Exception when calling RecordingApi->apiV1AccountAuthIdRecordingGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **auth_id** | **string**|  | |
| **x_auth_id** | **string**|  | [optional] |
| **x_auth_token** | **string**|  | [optional] |
| **content_type** | **string**|  | [optional] |

### Return type

void (empty response body)

### Authorization

[ApiKeyAuthID](../../README.md#ApiKeyAuthID), [ApiKeyAuthToken](../../README.md#ApiKeyAuthToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
