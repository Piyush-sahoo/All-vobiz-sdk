# vobiz.api.CDRApi

## Load the API package
```dart
import 'package:vobiz/api.dart';
```

All URIs are relative to *https://api.vobiz.ai*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV1AccountAccountIdCdrGet**](CDRApi.md#apiv1accountaccountidcdrget) | **GET** /api/v1/account/{account_id}/cdr | Get Call Detail Records


# **apiV1AccountAccountIdCdrGet**
> apiV1AccountAccountIdCdrGet(accountId, xAuthID, xAuthToken, contentType, startDate, endDate, perPage, page)

Get Call Detail Records

Retrieve call detail records with filtering and pagination.

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

final api_instance = CDRApi();
final accountId = accountId_example; // String | 
final xAuthID = {{auth_id}}; // String | 
final xAuthToken = {{auth_token}}; // String | 
final contentType = application/json; // String | 
final startDate = 2026-01-01; // String | Start date (YYYY-MM-DD)
final endDate = 2026-01-31; // String | End date (YYYY-MM-DD)
final perPage = 50; // int | Results per page
final page = 1; // int | Page number

try {
    api_instance.apiV1AccountAccountIdCdrGet(accountId, xAuthID, xAuthToken, contentType, startDate, endDate, perPage, page);
} catch (e) {
    print('Exception when calling CDRApi->apiV1AccountAccountIdCdrGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **String**|  | 
 **xAuthID** | **String**|  | [optional] 
 **xAuthToken** | **String**|  | [optional] 
 **contentType** | **String**|  | [optional] 
 **startDate** | **String**| Start date (YYYY-MM-DD) | [optional] 
 **endDate** | **String**| End date (YYYY-MM-DD) | [optional] 
 **perPage** | **int**| Results per page | [optional] 
 **page** | **int**| Page number | [optional] 

### Return type

void (empty response body)

### Authorization

[ApiKeyAuthID](../README.md#ApiKeyAuthID), [ApiKeyAuthToken](../README.md#ApiKeyAuthToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

