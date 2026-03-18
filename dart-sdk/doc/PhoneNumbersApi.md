# vobiz.api.PhoneNumbersApi

## Load the API package
```dart
import 'package:vobiz/api.dart';
```

All URIs are relative to *https://api.vobiz.ai*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV1AccountAuthIdInventoryNumbersGet**](PhoneNumbersApi.md#apiv1accountauthidinventorynumbersget) | **GET** /api/v1/account/{auth_id}/inventory/numbers | List Inventory Numbers
[**apiV1AccountAuthIdNumbersE164NumberDelete**](PhoneNumbersApi.md#apiv1accountauthidnumberse164numberdelete) | **DELETE** /api/v1/account/{auth_id}/numbers/:e164_number | Unrent a Phone Number
[**apiV1AccountAuthIdNumbersGet**](PhoneNumbersApi.md#apiv1accountauthidnumbersget) | **GET** /api/v1/account/{auth_id}/numbers | List Account Phone Numbers
[**apiV1AccountAuthIdNumbersPurchaseFromInventoryPost**](PhoneNumbersApi.md#apiv1accountauthidnumberspurchasefrominventorypost) | **POST** /api/v1/account/{auth_id}/numbers/purchase-from-inventory | Purchase from Inventory


# **apiV1AccountAuthIdInventoryNumbersGet**
> apiV1AccountAuthIdInventoryNumbersGet(authId, xAuthID, xAuthToken, contentType, country, page, perPage)

List Inventory Numbers

Browse available phone numbers in inventory for purchase.

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

final api_instance = PhoneNumbersApi();
final authId = authId_example; // String | 
final xAuthID = {{auth_id}}; // String | 
final xAuthToken = {{auth_token}}; // String | 
final contentType = application/json; // String | 
final country = US; // String | Filter by country code
final page = 1; // int | Page number
final perPage = 20; // int | Results per page

try {
    api_instance.apiV1AccountAuthIdInventoryNumbersGet(authId, xAuthID, xAuthToken, contentType, country, page, perPage);
} catch (e) {
    print('Exception when calling PhoneNumbersApi->apiV1AccountAuthIdInventoryNumbersGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authId** | **String**|  | 
 **xAuthID** | **String**|  | [optional] 
 **xAuthToken** | **String**|  | [optional] 
 **contentType** | **String**|  | [optional] 
 **country** | **String**| Filter by country code | [optional] 
 **page** | **int**| Page number | [optional] 
 **perPage** | **int**| Results per page | [optional] 

### Return type

void (empty response body)

### Authorization

[ApiKeyAuthID](../README.md#ApiKeyAuthID), [ApiKeyAuthToken](../README.md#ApiKeyAuthToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1AccountAuthIdNumbersE164NumberDelete**
> apiV1AccountAuthIdNumbersE164NumberDelete(authId, xAuthID, xAuthToken, contentType)

Unrent a Phone Number

Release (unrent) a phone number from your account.

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

final api_instance = PhoneNumbersApi();
final authId = authId_example; // String | 
final xAuthID = {{auth_id}}; // String | 
final xAuthToken = {{auth_token}}; // String | 
final contentType = application/json; // String | 

try {
    api_instance.apiV1AccountAuthIdNumbersE164NumberDelete(authId, xAuthID, xAuthToken, contentType);
} catch (e) {
    print('Exception when calling PhoneNumbersApi->apiV1AccountAuthIdNumbersE164NumberDelete: $e\n');
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

# **apiV1AccountAuthIdNumbersGet**
> apiV1AccountAuthIdNumbersGet(authId, xAuthID, xAuthToken, contentType)

List Account Phone Numbers

Retrieve all phone numbers associated with your account.

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

final api_instance = PhoneNumbersApi();
final authId = authId_example; // String | 
final xAuthID = {{auth_id}}; // String | 
final xAuthToken = {{auth_token}}; // String | 
final contentType = application/json; // String | 

try {
    api_instance.apiV1AccountAuthIdNumbersGet(authId, xAuthID, xAuthToken, contentType);
} catch (e) {
    print('Exception when calling PhoneNumbersApi->apiV1AccountAuthIdNumbersGet: $e\n');
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

# **apiV1AccountAuthIdNumbersPurchaseFromInventoryPost**
> apiV1AccountAuthIdNumbersPurchaseFromInventoryPost(authId, xAuthID, xAuthToken, contentType, body)

Purchase from Inventory

Purchase a phone number from available inventory.

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

final api_instance = PhoneNumbersApi();
final authId = authId_example; // String | 
final xAuthID = {{auth_id}}; // String | 
final xAuthToken = {{auth_token}}; // String | 
final contentType = application/json; // String | 
final body = Object(); // Object | 

try {
    api_instance.apiV1AccountAuthIdNumbersPurchaseFromInventoryPost(authId, xAuthID, xAuthToken, contentType, body);
} catch (e) {
    print('Exception when calling PhoneNumbersApi->apiV1AccountAuthIdNumbersPurchaseFromInventoryPost: $e\n');
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

