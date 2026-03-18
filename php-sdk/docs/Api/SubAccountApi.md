# Vobiz\SubAccountApi



All URIs are relative to https://api.vobiz.ai, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**apiV1AccountsAccountIdSubAccountsGet()**](SubAccountApi.md#apiV1AccountsAccountIdSubAccountsGet) | **GET** /api/v1/accounts/{account_id}/sub-accounts/ | List All Sub-Accounts |
| [**apiV1AccountsAccountIdSubAccountsPost()**](SubAccountApi.md#apiV1AccountsAccountIdSubAccountsPost) | **POST** /api/v1/accounts/{account_id}/sub-accounts/ | Create Sub-Account |
| [**apiV1AccountsAccountIdSubAccountsSubAccountIdDelete()**](SubAccountApi.md#apiV1AccountsAccountIdSubAccountsSubAccountIdDelete) | **DELETE** /api/v1/accounts/{account_id}/sub-accounts/:sub_account_id | Delete a Sub-Account |
| [**apiV1AccountsAccountIdSubAccountsSubAccountIdGet()**](SubAccountApi.md#apiV1AccountsAccountIdSubAccountsSubAccountIdGet) | **GET** /api/v1/accounts/{account_id}/sub-accounts/:sub_account_id | Retrieve a Sub-Account |
| [**apiV1AccountsAccountIdSubAccountsSubAccountIdPut()**](SubAccountApi.md#apiV1AccountsAccountIdSubAccountsSubAccountIdPut) | **PUT** /api/v1/accounts/{account_id}/sub-accounts/:sub_account_id | Update a Sub-Account |


## `apiV1AccountsAccountIdSubAccountsGet()`

```php
apiV1AccountsAccountIdSubAccountsGet($account_id, $x_auth_id, $x_auth_token, $content_type, $page, $size, $active_only)
```

List All Sub-Accounts

Retrieve all sub-accounts.

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


$apiInstance = new Vobiz\Api\SubAccountApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$account_id = 'account_id_example'; // string
$x_auth_id = {{auth_id}}; // string
$x_auth_token = {{auth_token}}; // string
$content_type = application/json; // string
$page = 1; // int | Page number
$size = 20; // int | Results per page
$active_only = true; // bool | Filter active sub-accounts only

try {
    $apiInstance->apiV1AccountsAccountIdSubAccountsGet($account_id, $x_auth_id, $x_auth_token, $content_type, $page, $size, $active_only);
} catch (Exception $e) {
    echo 'Exception when calling SubAccountApi->apiV1AccountsAccountIdSubAccountsGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **account_id** | **string**|  | |
| **x_auth_id** | **string**|  | [optional] |
| **x_auth_token** | **string**|  | [optional] |
| **content_type** | **string**|  | [optional] |
| **page** | **int**| Page number | [optional] |
| **size** | **int**| Results per page | [optional] |
| **active_only** | **bool**| Filter active sub-accounts only | [optional] |

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

## `apiV1AccountsAccountIdSubAccountsPost()`

```php
apiV1AccountsAccountIdSubAccountsPost($account_id, $x_auth_id, $x_auth_token, $content_type, $body)
```

Create Sub-Account

Create a new sub-account under the master account.

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


$apiInstance = new Vobiz\Api\SubAccountApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$account_id = 'account_id_example'; // string
$x_auth_id = {{auth_id}}; // string
$x_auth_token = {{auth_token}}; // string
$content_type = application/json; // string
$body = array('key' => new \stdClass); // object

try {
    $apiInstance->apiV1AccountsAccountIdSubAccountsPost($account_id, $x_auth_id, $x_auth_token, $content_type, $body);
} catch (Exception $e) {
    echo 'Exception when calling SubAccountApi->apiV1AccountsAccountIdSubAccountsPost: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **account_id** | **string**|  | |
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

## `apiV1AccountsAccountIdSubAccountsSubAccountIdDelete()`

```php
apiV1AccountsAccountIdSubAccountsSubAccountIdDelete($account_id, $x_auth_id, $x_auth_token, $content_type)
```

Delete a Sub-Account

Delete a sub-account. Returns 204 No Content.

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


$apiInstance = new Vobiz\Api\SubAccountApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$account_id = 'account_id_example'; // string
$x_auth_id = {{auth_id}}; // string
$x_auth_token = {{auth_token}}; // string
$content_type = application/json; // string

try {
    $apiInstance->apiV1AccountsAccountIdSubAccountsSubAccountIdDelete($account_id, $x_auth_id, $x_auth_token, $content_type);
} catch (Exception $e) {
    echo 'Exception when calling SubAccountApi->apiV1AccountsAccountIdSubAccountsSubAccountIdDelete: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **account_id** | **string**|  | |
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

## `apiV1AccountsAccountIdSubAccountsSubAccountIdGet()`

```php
apiV1AccountsAccountIdSubAccountsSubAccountIdGet($account_id, $x_auth_id, $x_auth_token, $content_type)
```

Retrieve a Sub-Account

Get details of a specific sub-account.

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


$apiInstance = new Vobiz\Api\SubAccountApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$account_id = 'account_id_example'; // string
$x_auth_id = {{auth_id}}; // string
$x_auth_token = {{auth_token}}; // string
$content_type = application/json; // string

try {
    $apiInstance->apiV1AccountsAccountIdSubAccountsSubAccountIdGet($account_id, $x_auth_id, $x_auth_token, $content_type);
} catch (Exception $e) {
    echo 'Exception when calling SubAccountApi->apiV1AccountsAccountIdSubAccountsSubAccountIdGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **account_id** | **string**|  | |
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

## `apiV1AccountsAccountIdSubAccountsSubAccountIdPut()`

```php
apiV1AccountsAccountIdSubAccountsSubAccountIdPut($account_id, $x_auth_id, $x_auth_token, $content_type, $body)
```

Update a Sub-Account

Update sub-account settings.

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


$apiInstance = new Vobiz\Api\SubAccountApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$account_id = 'account_id_example'; // string
$x_auth_id = {{auth_id}}; // string
$x_auth_token = {{auth_token}}; // string
$content_type = application/json; // string
$body = array('key' => new \stdClass); // object

try {
    $apiInstance->apiV1AccountsAccountIdSubAccountsSubAccountIdPut($account_id, $x_auth_id, $x_auth_token, $content_type, $body);
} catch (Exception $e) {
    echo 'Exception when calling SubAccountApi->apiV1AccountsAccountIdSubAccountsSubAccountIdPut: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **account_id** | **string**|  | |
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
