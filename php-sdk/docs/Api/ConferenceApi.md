# Vobiz\ConferenceApi

Conference management, member control, audio playback, and recording.

All URIs are relative to https://api.vobiz.ai, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**apiV1AccountAuthIdConferenceDelete()**](ConferenceApi.md#apiV1AccountAuthIdConferenceDelete) | **DELETE** /api/v1/Account/{auth_id}/Conference/ | Hang Up All Conferences |
| [**apiV1AccountAuthIdConferenceDelete_0()**](ConferenceApi.md#apiV1AccountAuthIdConferenceDelete_0) | **DELETE** /api/v1/Account/{auth_id}/Conference/{}/ | Hang Up a Conference |
| [**apiV1AccountAuthIdConferenceGet()**](ConferenceApi.md#apiV1AccountAuthIdConferenceGet) | **GET** /api/v1/Account/{auth_id}/Conference/ | List All Conferences |
| [**apiV1AccountAuthIdConferenceGet_0()**](ConferenceApi.md#apiV1AccountAuthIdConferenceGet_0) | **GET** /api/v1/Account/{auth_id}/Conference/{}/ | Retrieve a Conference |
| [**apiV1AccountAuthIdConferenceMemberDeafDelete()**](ConferenceApi.md#apiV1AccountAuthIdConferenceMemberDeafDelete) | **DELETE** /api/v1/Account/{auth_id}/Conference/{}/Member/{}/Deaf/ | Undeaf a Conference Member |
| [**apiV1AccountAuthIdConferenceMemberDeafPost()**](ConferenceApi.md#apiV1AccountAuthIdConferenceMemberDeafPost) | **POST** /api/v1/Account/{auth_id}/Conference/{}/Member/{}/Deaf/ | Deaf a Conference Member |
| [**apiV1AccountAuthIdConferenceMemberDelete()**](ConferenceApi.md#apiV1AccountAuthIdConferenceMemberDelete) | **DELETE** /api/v1/Account/{auth_id}/Conference/{}/Member/{}/ | Hang Up a Conference Member |
| [**apiV1AccountAuthIdConferenceMemberKickPost()**](ConferenceApi.md#apiV1AccountAuthIdConferenceMemberKickPost) | **POST** /api/v1/Account/{auth_id}/Conference/{}/Member/{}/Kick/ | Kick a Conference Member |
| [**apiV1AccountAuthIdConferenceMemberMuteDelete()**](ConferenceApi.md#apiV1AccountAuthIdConferenceMemberMuteDelete) | **DELETE** /api/v1/Account/{auth_id}/Conference/{}/Member/{}/Mute/ | Unmute a Conference Member |
| [**apiV1AccountAuthIdConferenceMemberMutePost()**](ConferenceApi.md#apiV1AccountAuthIdConferenceMemberMutePost) | **POST** /api/v1/Account/{auth_id}/Conference/{}/Member/{}/Mute/ | Mute a Conference Member |
| [**apiV1AccountAuthIdConferenceMemberPlayDelete()**](ConferenceApi.md#apiV1AccountAuthIdConferenceMemberPlayDelete) | **DELETE** /api/v1/Account/{auth_id}/Conference/{}/Member/{}/Play/ | Stop Playing Audio to a Conference Member |
| [**apiV1AccountAuthIdConferenceMemberPlayPost()**](ConferenceApi.md#apiV1AccountAuthIdConferenceMemberPlayPost) | **POST** /api/v1/Account/{auth_id}/Conference/{}/Member/{}/Play/ | Play Audio to a Conference Member |
| [**apiV1AccountAuthIdConferenceRecordDelete()**](ConferenceApi.md#apiV1AccountAuthIdConferenceRecordDelete) | **DELETE** /api/v1/Account/{auth_id}/Conference/{}/Record/ | Stop Conference Recording |
| [**apiV1AccountAuthIdConferenceRecordPost()**](ConferenceApi.md#apiV1AccountAuthIdConferenceRecordPost) | **POST** /api/v1/Account/{auth_id}/Conference/{}/Record/ | Start Conference Recording |


## `apiV1AccountAuthIdConferenceDelete()`

```php
apiV1AccountAuthIdConferenceDelete($auth_id, $x_auth_id, $x_auth_token, $content_type)
```

Hang Up All Conferences

Terminate all ongoing conferences simultaneously. Returns 204 No Content.

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


$apiInstance = new Vobiz\Api\ConferenceApi(
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
    $apiInstance->apiV1AccountAuthIdConferenceDelete($auth_id, $x_auth_id, $x_auth_token, $content_type);
} catch (Exception $e) {
    echo 'Exception when calling ConferenceApi->apiV1AccountAuthIdConferenceDelete: ', $e->getMessage(), PHP_EOL;
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

## `apiV1AccountAuthIdConferenceDelete_0()`

```php
apiV1AccountAuthIdConferenceDelete_0($auth_id, $x_auth_id, $x_auth_token, $content_type)
```

Hang Up a Conference

Terminate a specific conference and disconnect all participants. Returns 204 No Content.

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


$apiInstance = new Vobiz\Api\ConferenceApi(
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
    $apiInstance->apiV1AccountAuthIdConferenceDelete_0($auth_id, $x_auth_id, $x_auth_token, $content_type);
} catch (Exception $e) {
    echo 'Exception when calling ConferenceApi->apiV1AccountAuthIdConferenceDelete_0: ', $e->getMessage(), PHP_EOL;
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

## `apiV1AccountAuthIdConferenceGet()`

```php
apiV1AccountAuthIdConferenceGet($auth_id, $x_auth_id, $x_auth_token, $content_type)
```

List All Conferences

Retrieve a list of all ongoing conferences.

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


$apiInstance = new Vobiz\Api\ConferenceApi(
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
    $apiInstance->apiV1AccountAuthIdConferenceGet($auth_id, $x_auth_id, $x_auth_token, $content_type);
} catch (Exception $e) {
    echo 'Exception when calling ConferenceApi->apiV1AccountAuthIdConferenceGet: ', $e->getMessage(), PHP_EOL;
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

## `apiV1AccountAuthIdConferenceGet_0()`

```php
apiV1AccountAuthIdConferenceGet_0($auth_id, $x_auth_id, $x_auth_token, $content_type)
```

Retrieve a Conference

Get detailed information about a specific ongoing conference including all active members.

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


$apiInstance = new Vobiz\Api\ConferenceApi(
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
    $apiInstance->apiV1AccountAuthIdConferenceGet_0($auth_id, $x_auth_id, $x_auth_token, $content_type);
} catch (Exception $e) {
    echo 'Exception when calling ConferenceApi->apiV1AccountAuthIdConferenceGet_0: ', $e->getMessage(), PHP_EOL;
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

## `apiV1AccountAuthIdConferenceMemberDeafDelete()`

```php
apiV1AccountAuthIdConferenceMemberDeafDelete($auth_id, $x_auth_id, $x_auth_token, $content_type)
```

Undeaf a Conference Member

Restore audio reception for previously deafened members.

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


$apiInstance = new Vobiz\Api\ConferenceApi(
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
    $apiInstance->apiV1AccountAuthIdConferenceMemberDeafDelete($auth_id, $x_auth_id, $x_auth_token, $content_type);
} catch (Exception $e) {
    echo 'Exception when calling ConferenceApi->apiV1AccountAuthIdConferenceMemberDeafDelete: ', $e->getMessage(), PHP_EOL;
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

## `apiV1AccountAuthIdConferenceMemberDeafPost()`

```php
apiV1AccountAuthIdConferenceMemberDeafPost($auth_id, $x_auth_id, $x_auth_token, $content_type)
```

Deaf a Conference Member

Prevent member(s) from hearing other participants.

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


$apiInstance = new Vobiz\Api\ConferenceApi(
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
    $apiInstance->apiV1AccountAuthIdConferenceMemberDeafPost($auth_id, $x_auth_id, $x_auth_token, $content_type);
} catch (Exception $e) {
    echo 'Exception when calling ConferenceApi->apiV1AccountAuthIdConferenceMemberDeafPost: ', $e->getMessage(), PHP_EOL;
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

## `apiV1AccountAuthIdConferenceMemberDelete()`

```php
apiV1AccountAuthIdConferenceMemberDelete($auth_id, $x_auth_id, $x_auth_token, $content_type)
```

Hang Up a Conference Member

Disconnect a member by terminating their call. Returns 204 No Content.

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


$apiInstance = new Vobiz\Api\ConferenceApi(
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
    $apiInstance->apiV1AccountAuthIdConferenceMemberDelete($auth_id, $x_auth_id, $x_auth_token, $content_type);
} catch (Exception $e) {
    echo 'Exception when calling ConferenceApi->apiV1AccountAuthIdConferenceMemberDelete: ', $e->getMessage(), PHP_EOL;
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

## `apiV1AccountAuthIdConferenceMemberKickPost()`

```php
apiV1AccountAuthIdConferenceMemberKickPost($auth_id, $x_auth_id, $x_auth_token, $content_type)
```

Kick a Conference Member

Disconnect a member while allowing XML flow continuation.

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


$apiInstance = new Vobiz\Api\ConferenceApi(
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
    $apiInstance->apiV1AccountAuthIdConferenceMemberKickPost($auth_id, $x_auth_id, $x_auth_token, $content_type);
} catch (Exception $e) {
    echo 'Exception when calling ConferenceApi->apiV1AccountAuthIdConferenceMemberKickPost: ', $e->getMessage(), PHP_EOL;
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

## `apiV1AccountAuthIdConferenceMemberMuteDelete()`

```php
apiV1AccountAuthIdConferenceMemberMuteDelete($auth_id, $x_auth_id, $x_auth_token, $content_type)
```

Unmute a Conference Member

Restore audio from previously muted members.

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


$apiInstance = new Vobiz\Api\ConferenceApi(
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
    $apiInstance->apiV1AccountAuthIdConferenceMemberMuteDelete($auth_id, $x_auth_id, $x_auth_token, $content_type);
} catch (Exception $e) {
    echo 'Exception when calling ConferenceApi->apiV1AccountAuthIdConferenceMemberMuteDelete: ', $e->getMessage(), PHP_EOL;
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

## `apiV1AccountAuthIdConferenceMemberMutePost()`

```php
apiV1AccountAuthIdConferenceMemberMutePost($auth_id, $x_auth_id, $x_auth_token, $content_type)
```

Mute a Conference Member

Mute member(s) so others cannot hear them.

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


$apiInstance = new Vobiz\Api\ConferenceApi(
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
    $apiInstance->apiV1AccountAuthIdConferenceMemberMutePost($auth_id, $x_auth_id, $x_auth_token, $content_type);
} catch (Exception $e) {
    echo 'Exception when calling ConferenceApi->apiV1AccountAuthIdConferenceMemberMutePost: ', $e->getMessage(), PHP_EOL;
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

## `apiV1AccountAuthIdConferenceMemberPlayDelete()`

```php
apiV1AccountAuthIdConferenceMemberPlayDelete($auth_id, $x_auth_id, $x_auth_token, $content_type)
```

Stop Playing Audio to a Conference Member

Stop audio playback for specific member(s).

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


$apiInstance = new Vobiz\Api\ConferenceApi(
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
    $apiInstance->apiV1AccountAuthIdConferenceMemberPlayDelete($auth_id, $x_auth_id, $x_auth_token, $content_type);
} catch (Exception $e) {
    echo 'Exception when calling ConferenceApi->apiV1AccountAuthIdConferenceMemberPlayDelete: ', $e->getMessage(), PHP_EOL;
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

## `apiV1AccountAuthIdConferenceMemberPlayPost()`

```php
apiV1AccountAuthIdConferenceMemberPlayPost($auth_id, $x_auth_id, $x_auth_token, $content_type, $body)
```

Play Audio to a Conference Member

Play audio to specific member(s). Only targeted member(s) hear the audio.

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


$apiInstance = new Vobiz\Api\ConferenceApi(
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
    $apiInstance->apiV1AccountAuthIdConferenceMemberPlayPost($auth_id, $x_auth_id, $x_auth_token, $content_type, $body);
} catch (Exception $e) {
    echo 'Exception when calling ConferenceApi->apiV1AccountAuthIdConferenceMemberPlayPost: ', $e->getMessage(), PHP_EOL;
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

## `apiV1AccountAuthIdConferenceRecordDelete()`

```php
apiV1AccountAuthIdConferenceRecordDelete($auth_id, $x_auth_id, $x_auth_token, $content_type)
```

Stop Conference Recording

Stop an active conference recording. Returns 204 No Content.

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


$apiInstance = new Vobiz\Api\ConferenceApi(
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
    $apiInstance->apiV1AccountAuthIdConferenceRecordDelete($auth_id, $x_auth_id, $x_auth_token, $content_type);
} catch (Exception $e) {
    echo 'Exception when calling ConferenceApi->apiV1AccountAuthIdConferenceRecordDelete: ', $e->getMessage(), PHP_EOL;
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

## `apiV1AccountAuthIdConferenceRecordPost()`

```php
apiV1AccountAuthIdConferenceRecordPost($auth_id, $x_auth_id, $x_auth_token, $content_type, $body)
```

Start Conference Recording

Begin recording a conference call.

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


$apiInstance = new Vobiz\Api\ConferenceApi(
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
    $apiInstance->apiV1AccountAuthIdConferenceRecordPost($auth_id, $x_auth_id, $x_auth_token, $content_type, $body);
} catch (Exception $e) {
    echo 'Exception when calling ConferenceApi->apiV1AccountAuthIdConferenceRecordPost: ', $e->getMessage(), PHP_EOL;
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
