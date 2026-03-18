# Vobiz\PhoneNumbersApi



All URIs are relative to https://api.vobiz.ai, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**apiV1AccountAuthIdInventoryNumbersGet()**](PhoneNumbersApi.md#apiV1AccountAuthIdInventoryNumbersGet) | **GET** /api/v1/account/{auth_id}/inventory/numbers | List Inventory Numbers |
| [**apiV1AccountAuthIdNumbersE164NumberDelete()**](PhoneNumbersApi.md#apiV1AccountAuthIdNumbersE164NumberDelete) | **DELETE** /api/v1/account/{auth_id}/numbers/:e164_number | Unrent a Phone Number |
| [**apiV1AccountAuthIdNumbersGet()**](PhoneNumbersApi.md#apiV1AccountAuthIdNumbersGet) | **GET** /api/v1/account/{auth_id}/numbers | List Account Phone Numbers |
| [**apiV1AccountAuthIdNumbersPurchaseFromInventoryPost()**](PhoneNumbersApi.md#apiV1AccountAuthIdNumbersPurchaseFromInventoryPost) | **POST** /api/v1/account/{auth_id}/numbers/purchase-from-inventory | Purchase from Inventory |


## `apiV1AccountAuthIdInventoryNumbersGet()`

```php
apiV1AccountAuthIdInventoryNumbersGet($auth_id, $x_auth_id, $x_auth_token, $content_type, $country, $page, $per_page)
```

List Inventory Numbers

Browse available phone numbers in inventory for purchase.

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


$apiInstance = new Vobiz\Api\PhoneNumbersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$auth_id = 'auth_id_example'; // string
$x_auth_id = {{auth_id}}; // string
$x_auth_token = {{auth_token}}; // string
$content_type = application/json; // string
$country = US; // string | Filter by country code
$page = 1; // int | Page number
$per_page = 20; // int | Results per page

try {
    $apiInstance->apiV1AccountAuthIdInventoryNumbersGet($auth_id, $x_auth_id, $x_auth_token, $content_type, $country, $page, $per_page);
} catch (Exception $e) {
    echo 'Exception when calling PhoneNumbersApi->apiV1AccountAuthIdInventoryNumbersGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **auth_id** | **string**|  | |
| **x_auth_id** | **string**|  | [optional] |
| **x_auth_token** | **string**|  | [optional] |
| **content_type** | **string**|  | [optional] |
| **country** | **string**| Filter by country code | [optional] |
| **page** | **int**| Page number | [optional] |
| **per_page** | **int**| Results per page | [optional] |

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

## `apiV1AccountAuthIdNumbersE164NumberDelete()`

```php
apiV1AccountAuthIdNumbersE164NumberDelete($auth_id, $x_auth_id, $x_auth_token, $content_type)
```

Unrent a Phone Number

Release (unrent) a phone number from your account.

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


$apiInstance = new Vobiz\Api\PhoneNumbersApi(
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
    $apiInstance->apiV1AccountAuthIdNumbersE164NumberDelete($auth_id, $x_auth_id, $x_auth_token, $content_type);
} catch (Exception $e) {
    echo 'Exception when calling PhoneNumbersApi->apiV1AccountAuthIdNumbersE164NumberDelete: ', $e->getMessage(), PHP_EOL;
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

## `apiV1AccountAuthIdNumbersGet()`

```php
apiV1AccountAuthIdNumbersGet($auth_id, $x_auth_id, $x_auth_token, $content_type)
```

List Account Phone Numbers

Retrieve all phone numbers associated with your account.

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


$apiInstance = new Vobiz\Api\PhoneNumbersApi(
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
    $apiInstance->apiV1AccountAuthIdNumbersGet($auth_id, $x_auth_id, $x_auth_token, $content_type);
} catch (Exception $e) {
    echo 'Exception when calling PhoneNumbersApi->apiV1AccountAuthIdNumbersGet: ', $e->getMessage(), PHP_EOL;
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

## `apiV1AccountAuthIdNumbersPurchaseFromInventoryPost()`

```php
apiV1AccountAuthIdNumbersPurchaseFromInventoryPost($auth_id, $x_auth_id, $x_auth_token, $content_type, $body)
```

Purchase from Inventory

Purchase a phone number from available inventory.

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


$apiInstance = new Vobiz\Api\PhoneNumbersApi(
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
    $apiInstance->apiV1AccountAuthIdNumbersPurchaseFromInventoryPost($auth_id, $x_auth_id, $x_auth_token, $content_type, $body);
} catch (Exception $e) {
    echo 'Exception when calling PhoneNumbersApi->apiV1AccountAuthIdNumbersPurchaseFromInventoryPost: ', $e->getMessage(), PHP_EOL;
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
