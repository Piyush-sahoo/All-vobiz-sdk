# vobiz.api.ApplicationApi

## Load the API package
```dart
import 'package:vobiz/api.dart';
```

All URIs are relative to *https://api.vobiz.ai*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV1AccountAuthIdApplicationDelete**](ApplicationApi.md#apiv1accountauthidapplicationdelete) | **DELETE** /api/v1/Account/{auth_id}/Application/{}/ | Delete an Application
[**apiV1AccountAuthIdApplicationGet**](ApplicationApi.md#apiv1accountauthidapplicationget) | **GET** /api/v1/Account/{auth_id}/Application/ | List All Applications
[**apiV1AccountAuthIdApplicationGet_0**](ApplicationApi.md#apiv1accountauthidapplicationget_0) | **GET** /api/v1/Account/{auth_id}/Application/{}/ | Retrieve an Application
[**apiV1AccountAuthIdApplicationPost**](ApplicationApi.md#apiv1accountauthidapplicationpost) | **POST** /api/v1/Account/{auth_id}/Application/ | Create Application
[**apiV1AccountAuthIdApplicationPost_0**](ApplicationApi.md#apiv1accountauthidapplicationpost_0) | **POST** /api/v1/Account/{auth_id}/Application/{}/ | Update an Application
[**apiV1AccountAuthIdNumbersApplicationDelete**](ApplicationApi.md#apiv1accountauthidnumbersapplicationdelete) | **DELETE** /api/v1/account/{auth_id}/numbers/{}/application | Unlink Number from Application
[**apiV1AccountAuthIdNumbersApplicationPost**](ApplicationApi.md#apiv1accountauthidnumbersapplicationpost) | **POST** /api/v1/account/{auth_id}/numbers/{}/application | Link Number to Application


# **apiV1AccountAuthIdApplicationDelete**
> apiV1AccountAuthIdApplicationDelete(authId, xAuthID, xAuthToken, contentType)

Delete an Application

Delete an application. Returns 204 No Content.

### Example
```dart
import 'package:vobiz/api.dart';
// TODO Configure API key authorization: ApiKeyAuthID
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthID').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthID').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: ApiKeyAuthToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthToken').apiKeyPrefix = 'Bearer';

final api_instance = ApplicationApi();
final authId = authId_example; // String | 
final xAuthID = {{auth_id}}; // String | 
final xAuthToken = {{auth_token}}; // String | 
final contentType = application/json; // String | 

try {
    api_instance.apiV1AccountAuthIdApplicationDelete(authId, xAuthID, xAuthToken, contentType);
} catch (e) {
    print('Exception when calling ApplicationApi->apiV1AccountAuthIdApplicationDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authId** | **String**|  | 
 **xAuthID** | **String**|  | [optional] 
 **xAuthToken** | **String**|  | [optional] 
 **contentType** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[ApiKeyAuthID](../README.md#ApiKeyAuthID), [ApiKeyAuthToken](../README.md#ApiKeyAuthToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1AccountAuthIdApplicationGet**
> apiV1AccountAuthIdApplicationGet(authId, xAuthID, xAuthToken, contentType, limit, offset)

List All Applications

Retrieve all applications with pagination.

### Example
```dart
import 'package:vobiz/api.dart';
// TODO Configure API key authorization: ApiKeyAuthID
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthID').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthID').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: ApiKeyAuthToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthToken').apiKeyPrefix = 'Bearer';

final api_instance = ApplicationApi();
final authId = authId_example; // String | 
final xAuthID = {{auth_id}}; // String | 
final xAuthToken = {{auth_token}}; // String | 
final contentType = application/json; // String | 
final limit = 20; // int | Results per page
final offset = 0; // int | Pagination offset

try {
    api_instance.apiV1AccountAuthIdApplicationGet(authId, xAuthID, xAuthToken, contentType, limit, offset);
} catch (e) {
    print('Exception when calling ApplicationApi->apiV1AccountAuthIdApplicationGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authId** | **String**|  | 
 **xAuthID** | **String**|  | [optional] 
 **xAuthToken** | **String**|  | [optional] 
 **contentType** | **String**|  | [optional] 
 **limit** | **int**| Results per page | [optional] 
 **offset** | **int**| Pagination offset | [optional] 

### Return type

void (empty response body)

### Authorization

[ApiKeyAuthID](../README.md#ApiKeyAuthID), [ApiKeyAuthToken](../README.md#ApiKeyAuthToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1AccountAuthIdApplicationGet_0**
> apiV1AccountAuthIdApplicationGet_0(authId, xAuthID, xAuthToken, contentType)

Retrieve an Application

Get details of a specific application by its ID.

### Example
```dart
import 'package:vobiz/api.dart';
// TODO Configure API key authorization: ApiKeyAuthID
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthID').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthID').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: ApiKeyAuthToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthToken').apiKeyPrefix = 'Bearer';

final api_instance = ApplicationApi();
final authId = authId_example; // String | 
final xAuthID = {{auth_id}}; // String | 
final xAuthToken = {{auth_token}}; // String | 
final contentType = application/json; // String | 

try {
    api_instance.apiV1AccountAuthIdApplicationGet_0(authId, xAuthID, xAuthToken, contentType);
} catch (e) {
    print('Exception when calling ApplicationApi->apiV1AccountAuthIdApplicationGet_0: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authId** | **String**|  | 
 **xAuthID** | **String**|  | [optional] 
 **xAuthToken** | **String**|  | [optional] 
 **contentType** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[ApiKeyAuthID](../README.md#ApiKeyAuthID), [ApiKeyAuthToken](../README.md#ApiKeyAuthToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1AccountAuthIdApplicationPost**
> apiV1AccountAuthIdApplicationPost(authId, xAuthID, xAuthToken, contentType, body)

Create Application

Create a new application with call handling URLs.

### Example
```dart
import 'package:vobiz/api.dart';
// TODO Configure API key authorization: ApiKeyAuthID
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthID').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthID').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: ApiKeyAuthToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthToken').apiKeyPrefix = 'Bearer';

final api_instance = ApplicationApi();
final authId = authId_example; // String | 
final xAuthID = {{auth_id}}; // String | 
final xAuthToken = {{auth_token}}; // String | 
final contentType = application/json; // String | 
final body = Object(); // Object | 

try {
    api_instance.apiV1AccountAuthIdApplicationPost(authId, xAuthID, xAuthToken, contentType, body);
} catch (e) {
    print('Exception when calling ApplicationApi->apiV1AccountAuthIdApplicationPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authId** | **String**|  | 
 **xAuthID** | **String**|  | [optional] 
 **xAuthToken** | **String**|  | [optional] 
 **contentType** | **String**|  | [optional] 
 **body** | **Object**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[ApiKeyAuthID](../README.md#ApiKeyAuthID), [ApiKeyAuthToken](../README.md#ApiKeyAuthToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1AccountAuthIdApplicationPost_0**
> apiV1AccountAuthIdApplicationPost_0(authId, xAuthID, xAuthToken, contentType, body)

Update an Application

Update an existing application's settings.

### Example
```dart
import 'package:vobiz/api.dart';
// TODO Configure API key authorization: ApiKeyAuthID
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthID').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthID').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: ApiKeyAuthToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthToken').apiKeyPrefix = 'Bearer';

final api_instance = ApplicationApi();
final authId = authId_example; // String | 
final xAuthID = {{auth_id}}; // String | 
final xAuthToken = {{auth_token}}; // String | 
final contentType = application/json; // String | 
final body = Object(); // Object | 

try {
    api_instance.apiV1AccountAuthIdApplicationPost_0(authId, xAuthID, xAuthToken, contentType, body);
} catch (e) {
    print('Exception when calling ApplicationApi->apiV1AccountAuthIdApplicationPost_0: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authId** | **String**|  | 
 **xAuthID** | **String**|  | [optional] 
 **xAuthToken** | **String**|  | [optional] 
 **contentType** | **String**|  | [optional] 
 **body** | **Object**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[ApiKeyAuthID](../README.md#ApiKeyAuthID), [ApiKeyAuthToken](../README.md#ApiKeyAuthToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1AccountAuthIdNumbersApplicationDelete**
> apiV1AccountAuthIdNumbersApplicationDelete(authId, xAuthID, xAuthToken, contentType)

Unlink Number from Application

Remove association between a phone number and application.

### Example
```dart
import 'package:vobiz/api.dart';
// TODO Configure API key authorization: ApiKeyAuthID
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthID').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthID').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: ApiKeyAuthToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthToken').apiKeyPrefix = 'Bearer';

final api_instance = ApplicationApi();
final authId = authId_example; // String | 
final xAuthID = {{auth_id}}; // String | 
final xAuthToken = {{auth_token}}; // String | 
final contentType = application/json; // String | 

try {
    api_instance.apiV1AccountAuthIdNumbersApplicationDelete(authId, xAuthID, xAuthToken, contentType);
} catch (e) {
    print('Exception when calling ApplicationApi->apiV1AccountAuthIdNumbersApplicationDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authId** | **String**|  | 
 **xAuthID** | **String**|  | [optional] 
 **xAuthToken** | **String**|  | [optional] 
 **contentType** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[ApiKeyAuthID](../README.md#ApiKeyAuthID), [ApiKeyAuthToken](../README.md#ApiKeyAuthToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1AccountAuthIdNumbersApplicationPost**
> apiV1AccountAuthIdNumbersApplicationPost(authId, xAuthID, xAuthToken, contentType, body)

Link Number to Application

Associate a phone number with an application.

### Example
```dart
import 'package:vobiz/api.dart';
// TODO Configure API key authorization: ApiKeyAuthID
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthID').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthID').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: ApiKeyAuthToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthToken').apiKeyPrefix = 'Bearer';

final api_instance = ApplicationApi();
final authId = authId_example; // String | 
final xAuthID = {{auth_id}}; // String | 
final xAuthToken = {{auth_token}}; // String | 
final contentType = application/json; // String | 
final body = Object(); // Object | 

try {
    api_instance.apiV1AccountAuthIdNumbersApplicationPost(authId, xAuthID, xAuthToken, contentType, body);
} catch (e) {
    print('Exception when calling ApplicationApi->apiV1AccountAuthIdNumbersApplicationPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authId** | **String**|  | 
 **xAuthID** | **String**|  | [optional] 
 **xAuthToken** | **String**|  | [optional] 
 **contentType** | **String**|  | [optional] 
 **body** | **Object**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[ApiKeyAuthID](../README.md#ApiKeyAuthID), [ApiKeyAuthToken](../README.md#ApiKeyAuthToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

