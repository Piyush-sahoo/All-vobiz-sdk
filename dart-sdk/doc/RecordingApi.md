# vobiz.api.RecordingApi

## Load the API package
```dart
import 'package:vobiz/api.dart';
```

All URIs are relative to *https://api.vobiz.ai*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV1AccountAccountIdRecordingGet**](RecordingApi.md#apiv1accountaccountidrecordingget) | **GET** /api/v1/Account/{account_id}/Recording/ | List All Recordings
[**apiV1AccountAuthIdExportRecordingPost**](RecordingApi.md#apiv1accountauthidexportrecordingpost) | **POST** /api/v1/Account/{auth_id}/export/recording/ | Export Historical Recordings
[**apiV1AccountAuthIdRecordingBulkDeleteDelete**](RecordingApi.md#apiv1accountauthidrecordingbulkdeletedelete) | **DELETE** /api/v1/Account/{auth_id}/Recording/BulkDelete/ | Bulk Delete Recordings
[**apiV1AccountAuthIdRecordingDelete**](RecordingApi.md#apiv1accountauthidrecordingdelete) | **DELETE** /api/v1/Account/{auth_id}/Recording/{}/ | Delete a Recording
[**apiV1AccountAuthIdRecordingGet**](RecordingApi.md#apiv1accountauthidrecordingget) | **GET** /api/v1/Account/{auth_id}/Recording/{}/ | Retrieve a Recording


# **apiV1AccountAccountIdRecordingGet**
> apiV1AccountAccountIdRecordingGet(accountId, xAuthID, xAuthToken, contentType, limit, offset, callUuid, recordingType)

List All Recordings

Retrieve a paginated list of call recordings for your account.

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

final api_instance = RecordingApi();
final accountId = accountId_example; // String | 
final xAuthID = {{auth_id}}; // String | 
final xAuthToken = {{auth_token}}; // String | 
final contentType = application/json; // String | 
final limit = 20; // int | Records per request (default: 20, max: 100)
final offset = 0; // int | Pagination offset (default: 0)
final callUuid = callUuid_example; // String | Filter by specific call UUID
final recordingType = recordingType_example; // String | Filter by type: trunk or extension

try {
    api_instance.apiV1AccountAccountIdRecordingGet(accountId, xAuthID, xAuthToken, contentType, limit, offset, callUuid, recordingType);
} catch (e) {
    print('Exception when calling RecordingApi->apiV1AccountAccountIdRecordingGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **String**|  | 
 **xAuthID** | **String**|  | [optional] 
 **xAuthToken** | **String**|  | [optional] 
 **contentType** | **String**|  | [optional] 
 **limit** | **int**| Records per request (default: 20, max: 100) | [optional] 
 **offset** | **int**| Pagination offset (default: 0) | [optional] 
 **callUuid** | **String**| Filter by specific call UUID | [optional] 
 **recordingType** | **String**| Filter by type: trunk or extension | [optional] 

### Return type

void (empty response body)

### Authorization

[ApiKeyAuthID](../README.md#ApiKeyAuthID), [ApiKeyAuthToken](../README.md#ApiKeyAuthToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1AccountAuthIdExportRecordingPost**
> apiV1AccountAuthIdExportRecordingPost(authId, xAuthID, xAuthToken, contentType, body)

Export Historical Recordings

Export recordings as a downloadable archive sent via email (async). Returns 202 Accepted.

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

final api_instance = RecordingApi();
final authId = authId_example; // String | 
final xAuthID = {{auth_id}}; // String | 
final xAuthToken = {{auth_token}}; // String | 
final contentType = application/json; // String | 
final body = Object(); // Object | 

try {
    api_instance.apiV1AccountAuthIdExportRecordingPost(authId, xAuthID, xAuthToken, contentType, body);
} catch (e) {
    print('Exception when calling RecordingApi->apiV1AccountAuthIdExportRecordingPost: $e\n');
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

# **apiV1AccountAuthIdRecordingBulkDeleteDelete**
> apiV1AccountAuthIdRecordingBulkDeleteDelete(authId, xAuthID, xAuthToken, contentType, addTimeGte, addTimeLte, callUuid, fromNumber, toNumber, recordingFormat)

Bulk Delete Recordings

Delete multiple recordings matching filter criteria (async operation). Returns 202 Accepted.

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

final api_instance = RecordingApi();
final authId = authId_example; // String | 
final xAuthID = {{auth_id}}; // String | 
final xAuthToken = {{auth_token}}; // String | 
final contentType = application/json; // String | 
final addTimeGte = addTimeGte_example; // String | Delete recordings on/after this date (YYYY-MM-DD HH:MM:SS)
final addTimeLte = addTimeLte_example; // String | Delete recordings on/before this date
final callUuid = callUuid_example; // String | Delete recordings for specific call UUID
final fromNumber = fromNumber_example; // String | Delete by caller number (partial match)
final toNumber = toNumber_example; // String | Delete by destination number (partial match)
final recordingFormat = recordingFormat_example; // String | mp3 or wav

try {
    api_instance.apiV1AccountAuthIdRecordingBulkDeleteDelete(authId, xAuthID, xAuthToken, contentType, addTimeGte, addTimeLte, callUuid, fromNumber, toNumber, recordingFormat);
} catch (e) {
    print('Exception when calling RecordingApi->apiV1AccountAuthIdRecordingBulkDeleteDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authId** | **String**|  | 
 **xAuthID** | **String**|  | [optional] 
 **xAuthToken** | **String**|  | [optional] 
 **contentType** | **String**|  | [optional] 
 **addTimeGte** | **String**| Delete recordings on/after this date (YYYY-MM-DD HH:MM:SS) | [optional] 
 **addTimeLte** | **String**| Delete recordings on/before this date | [optional] 
 **callUuid** | **String**| Delete recordings for specific call UUID | [optional] 
 **fromNumber** | **String**| Delete by caller number (partial match) | [optional] 
 **toNumber** | **String**| Delete by destination number (partial match) | [optional] 
 **recordingFormat** | **String**| mp3 or wav | [optional] 

### Return type

void (empty response body)

### Authorization

[ApiKeyAuthID](../README.md#ApiKeyAuthID), [ApiKeyAuthToken](../README.md#ApiKeyAuthToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1AccountAuthIdRecordingDelete**
> apiV1AccountAuthIdRecordingDelete(authId, xAuthID, xAuthToken, contentType)

Delete a Recording

Permanently delete a specific recording. Returns 204 No Content.

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

final api_instance = RecordingApi();
final authId = authId_example; // String | 
final xAuthID = {{auth_id}}; // String | 
final xAuthToken = {{auth_token}}; // String | 
final contentType = application/json; // String | 

try {
    api_instance.apiV1AccountAuthIdRecordingDelete(authId, xAuthID, xAuthToken, contentType);
} catch (e) {
    print('Exception when calling RecordingApi->apiV1AccountAuthIdRecordingDelete: $e\n');
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

# **apiV1AccountAuthIdRecordingGet**
> apiV1AccountAuthIdRecordingGet(authId, xAuthID, xAuthToken, contentType)

Retrieve a Recording

Get detailed information about a specific recording.

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

final api_instance = RecordingApi();
final authId = authId_example; // String | 
final xAuthID = {{auth_id}}; // String | 
final xAuthToken = {{auth_token}}; // String | 
final contentType = application/json; // String | 

try {
    api_instance.apiV1AccountAuthIdRecordingGet(authId, xAuthID, xAuthToken, contentType);
} catch (e) {
    print('Exception when calling RecordingApi->apiV1AccountAuthIdRecordingGet: $e\n');
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

