# vobiz.api.EndpointApi

## Load the API package
```dart
import 'package:vobiz/api.dart';
```

All URIs are relative to *https://api.vobiz.ai*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV1AccountAuthIdEndpointDelete**](EndpointApi.md#apiv1accountauthidendpointdelete) | **DELETE** /api/v1/Account/{auth_id}/Endpoint/{}/ | Delete an Endpoint
[**apiV1AccountAuthIdEndpointGet**](EndpointApi.md#apiv1accountauthidendpointget) | **GET** /api/v1/Account/{auth_id}/Endpoint/ | List All Endpoints
[**apiV1AccountAuthIdEndpointGet_0**](EndpointApi.md#apiv1accountauthidendpointget_0) | **GET** /api/v1/Account/{auth_id}/Endpoint/{}/ | Retrieve an Endpoint
[**apiV1AccountAuthIdEndpointPost**](EndpointApi.md#apiv1accountauthidendpointpost) | **POST** /api/v1/Account/{auth_id}/Endpoint/ | Create Endpoint
[**apiV1AccountAuthIdEndpointPost_0**](EndpointApi.md#apiv1accountauthidendpointpost_0) | **POST** /api/v1/Account/{auth_id}/Endpoint/{}/ | Update an Endpoint


# **apiV1AccountAuthIdEndpointDelete**
> apiV1AccountAuthIdEndpointDelete(authId, xAuthID, xAuthToken, contentType)

Delete an Endpoint

Delete an endpoint. Returns 204 No Content.

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

final api_instance = EndpointApi();
final authId = authId_example; // String | 
final xAuthID = {{auth_id}}; // String | 
final xAuthToken = {{auth_token}}; // String | 
final contentType = application/json; // String | 

try {
    api_instance.apiV1AccountAuthIdEndpointDelete(authId, xAuthID, xAuthToken, contentType);
} catch (e) {
    print('Exception when calling EndpointApi->apiV1AccountAuthIdEndpointDelete: $e\n');
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

# **apiV1AccountAuthIdEndpointGet**
> apiV1AccountAuthIdEndpointGet(authId, xAuthID, xAuthToken, contentType, limit, offset)

List All Endpoints

Retrieve all endpoints with pagination.

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

final api_instance = EndpointApi();
final authId = authId_example; // String | 
final xAuthID = {{auth_id}}; // String | 
final xAuthToken = {{auth_token}}; // String | 
final contentType = application/json; // String | 
final limit = 20; // int | Results per page
final offset = 0; // int | Pagination offset

try {
    api_instance.apiV1AccountAuthIdEndpointGet(authId, xAuthID, xAuthToken, contentType, limit, offset);
} catch (e) {
    print('Exception when calling EndpointApi->apiV1AccountAuthIdEndpointGet: $e\n');
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

# **apiV1AccountAuthIdEndpointGet_0**
> apiV1AccountAuthIdEndpointGet_0(authId, xAuthID, xAuthToken, contentType)

Retrieve an Endpoint

Get details of a specific endpoint.

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

final api_instance = EndpointApi();
final authId = authId_example; // String | 
final xAuthID = {{auth_id}}; // String | 
final xAuthToken = {{auth_token}}; // String | 
final contentType = application/json; // String | 

try {
    api_instance.apiV1AccountAuthIdEndpointGet_0(authId, xAuthID, xAuthToken, contentType);
} catch (e) {
    print('Exception when calling EndpointApi->apiV1AccountAuthIdEndpointGet_0: $e\n');
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

# **apiV1AccountAuthIdEndpointPost**
> apiV1AccountAuthIdEndpointPost(authId, xAuthID, xAuthToken, contentType, body)

Create Endpoint

Create a new SIP endpoint.

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

final api_instance = EndpointApi();
final authId = authId_example; // String | 
final xAuthID = {{auth_id}}; // String | 
final xAuthToken = {{auth_token}}; // String | 
final contentType = application/json; // String | 
final body = Object(); // Object | 

try {
    api_instance.apiV1AccountAuthIdEndpointPost(authId, xAuthID, xAuthToken, contentType, body);
} catch (e) {
    print('Exception when calling EndpointApi->apiV1AccountAuthIdEndpointPost: $e\n');
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

# **apiV1AccountAuthIdEndpointPost_0**
> apiV1AccountAuthIdEndpointPost_0(authId, xAuthID, xAuthToken, contentType, body)

Update an Endpoint

Update an existing endpoint's configuration.

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

final api_instance = EndpointApi();
final authId = authId_example; // String | 
final xAuthID = {{auth_id}}; // String | 
final xAuthToken = {{auth_token}}; // String | 
final contentType = application/json; // String | 
final body = Object(); // Object | 

try {
    api_instance.apiV1AccountAuthIdEndpointPost_0(authId, xAuthID, xAuthToken, contentType, body);
} catch (e) {
    print('Exception when calling EndpointApi->apiV1AccountAuthIdEndpointPost_0: $e\n');
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

