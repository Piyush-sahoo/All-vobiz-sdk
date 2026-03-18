# Vobiz\CDRApi

Call Detail Records for reporting and analytics.

All URIs are relative to https://api.vobiz.ai, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**apiV1AccountAccountIdCdrGet()**](CDRApi.md#apiV1AccountAccountIdCdrGet) | **GET** /api/v1/account/{account_id}/cdr | Get Call Detail Records |


## `apiV1AccountAccountIdCdrGet()`

```php
apiV1AccountAccountIdCdrGet($account_id, $x_auth_id, $x_auth_token, $content_type, $start_date, $end_date, $per_page, $page)
```

Get Call Detail Records

Retrieve call detail records with filtering and pagination.

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


$apiInstance = new Vobiz\Api\CDRApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$account_id = 'account_id_example'; // string
$x_auth_id = {{auth_id}}; // string
$x_auth_token = {{auth_token}}; // string
$content_type = application/json; // string
$start_date = 2026-01-01; // string | Start date (YYYY-MM-DD)
$end_date = 2026-01-31; // string | End date (YYYY-MM-DD)
$per_page = 50; // int | Results per page
$page = 1; // int | Page number

try {
    $apiInstance->apiV1AccountAccountIdCdrGet($account_id, $x_auth_id, $x_auth_token, $content_type, $start_date, $end_date, $per_page, $page);
} catch (Exception $e) {
    echo 'Exception when calling CDRApi->apiV1AccountAccountIdCdrGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **account_id** | **string**|  | |
| **x_auth_id** | **string**|  | [optional] |
| **x_auth_token** | **string**|  | [optional] |
| **content_type** | **string**|  | [optional] |
| **start_date** | **string**| Start date (YYYY-MM-DD) | [optional] |
| **end_date** | **string**| End date (YYYY-MM-DD) | [optional] |
| **per_page** | **int**| Results per page | [optional] |
| **page** | **int**| Page number | [optional] |

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
