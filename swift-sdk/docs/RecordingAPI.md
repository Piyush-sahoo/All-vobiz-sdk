# RecordingAPI

All URIs are relative to *https://api.vobiz.ai*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV1AccountAccountIdRecordingGet**](RecordingAPI.md#apiv1accountaccountidrecordingget) | **GET** /api/v1/Account/{account_id}/Recording/ | List All Recordings
[**apiV1AccountAuthIdExportRecordingPost**](RecordingAPI.md#apiv1accountauthidexportrecordingpost) | **POST** /api/v1/Account/{auth_id}/export/recording/ | Export Historical Recordings
[**apiV1AccountAuthIdRecordingBulkDeleteDelete**](RecordingAPI.md#apiv1accountauthidrecordingbulkdeletedelete) | **DELETE** /api/v1/Account/{auth_id}/Recording/BulkDelete/ | Bulk Delete Recordings
[**apiV1AccountAuthIdRecordingDelete**](RecordingAPI.md#apiv1accountauthidrecordingdelete) | **DELETE** /api/v1/Account/{auth_id}/Recording/{}/ | Delete a Recording
[**apiV1AccountAuthIdRecordingGet**](RecordingAPI.md#apiv1accountauthidrecordingget) | **GET** /api/v1/Account/{auth_id}/Recording/{}/ | Retrieve a Recording


# **apiV1AccountAccountIdRecordingGet**
```swift
    open class func apiV1AccountAccountIdRecordingGet(accountId: String, xAuthID: String? = nil, xAuthToken: String? = nil, contentType: String? = nil, limit: Int? = nil, offset: Int? = nil, callUuid: String? = nil, recordingType: String? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

List All Recordings

Retrieve a paginated list of call recordings for your account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import VobizSDK

let accountId = "accountId_example" // String | 
let xAuthID = "xAuthID_example" // String |  (optional)
let xAuthToken = "xAuthToken_example" // String |  (optional)
let contentType = "contentType_example" // String |  (optional)
let limit = 987 // Int | Records per request (default: 20, max: 100) (optional)
let offset = 987 // Int | Pagination offset (default: 0) (optional)
let callUuid = "callUuid_example" // String | Filter by specific call UUID (optional)
let recordingType = "recordingType_example" // String | Filter by type: trunk or extension (optional)

// List All Recordings
RecordingAPI.apiV1AccountAccountIdRecordingGet(accountId: accountId, xAuthID: xAuthID, xAuthToken: xAuthToken, contentType: contentType, limit: limit, offset: offset, callUuid: callUuid, recordingType: recordingType) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **String** |  | 
 **xAuthID** | **String** |  | [optional] 
 **xAuthToken** | **String** |  | [optional] 
 **contentType** | **String** |  | [optional] 
 **limit** | **Int** | Records per request (default: 20, max: 100) | [optional] 
 **offset** | **Int** | Pagination offset (default: 0) | [optional] 
 **callUuid** | **String** | Filter by specific call UUID | [optional] 
 **recordingType** | **String** | Filter by type: trunk or extension | [optional] 

### Return type

Void (empty response body)

### Authorization

[ApiKeyAuthID](../README.md#ApiKeyAuthID), [ApiKeyAuthToken](../README.md#ApiKeyAuthToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1AccountAuthIdExportRecordingPost**
```swift
    open class func apiV1AccountAuthIdExportRecordingPost(authId: String, xAuthID: String? = nil, xAuthToken: String? = nil, contentType: String? = nil, body: AnyCodable? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Export Historical Recordings

Export recordings as a downloadable archive sent via email (async). Returns 202 Accepted.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import VobizSDK

let authId = "authId_example" // String | 
let xAuthID = "xAuthID_example" // String |  (optional)
let xAuthToken = "xAuthToken_example" // String |  (optional)
let contentType = "contentType_example" // String |  (optional)
let body = "TODO" // AnyCodable |  (optional)

// Export Historical Recordings
RecordingAPI.apiV1AccountAuthIdExportRecordingPost(authId: authId, xAuthID: xAuthID, xAuthToken: xAuthToken, contentType: contentType, body: body) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authId** | **String** |  | 
 **xAuthID** | **String** |  | [optional] 
 **xAuthToken** | **String** |  | [optional] 
 **contentType** | **String** |  | [optional] 
 **body** | **AnyCodable** |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[ApiKeyAuthID](../README.md#ApiKeyAuthID), [ApiKeyAuthToken](../README.md#ApiKeyAuthToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1AccountAuthIdRecordingBulkDeleteDelete**
```swift
    open class func apiV1AccountAuthIdRecordingBulkDeleteDelete(authId: String, xAuthID: String? = nil, xAuthToken: String? = nil, contentType: String? = nil, addTimeGte: String? = nil, addTimeLte: String? = nil, callUuid: String? = nil, fromNumber: String? = nil, toNumber: String? = nil, recordingFormat: String? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Bulk Delete Recordings

Delete multiple recordings matching filter criteria (async operation). Returns 202 Accepted.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import VobizSDK

let authId = "authId_example" // String | 
let xAuthID = "xAuthID_example" // String |  (optional)
let xAuthToken = "xAuthToken_example" // String |  (optional)
let contentType = "contentType_example" // String |  (optional)
let addTimeGte = "addTimeGte_example" // String | Delete recordings on/after this date (YYYY-MM-DD HH:MM:SS) (optional)
let addTimeLte = "addTimeLte_example" // String | Delete recordings on/before this date (optional)
let callUuid = "callUuid_example" // String | Delete recordings for specific call UUID (optional)
let fromNumber = "fromNumber_example" // String | Delete by caller number (partial match) (optional)
let toNumber = "toNumber_example" // String | Delete by destination number (partial match) (optional)
let recordingFormat = "recordingFormat_example" // String | mp3 or wav (optional)

// Bulk Delete Recordings
RecordingAPI.apiV1AccountAuthIdRecordingBulkDeleteDelete(authId: authId, xAuthID: xAuthID, xAuthToken: xAuthToken, contentType: contentType, addTimeGte: addTimeGte, addTimeLte: addTimeLte, callUuid: callUuid, fromNumber: fromNumber, toNumber: toNumber, recordingFormat: recordingFormat) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authId** | **String** |  | 
 **xAuthID** | **String** |  | [optional] 
 **xAuthToken** | **String** |  | [optional] 
 **contentType** | **String** |  | [optional] 
 **addTimeGte** | **String** | Delete recordings on/after this date (YYYY-MM-DD HH:MM:SS) | [optional] 
 **addTimeLte** | **String** | Delete recordings on/before this date | [optional] 
 **callUuid** | **String** | Delete recordings for specific call UUID | [optional] 
 **fromNumber** | **String** | Delete by caller number (partial match) | [optional] 
 **toNumber** | **String** | Delete by destination number (partial match) | [optional] 
 **recordingFormat** | **String** | mp3 or wav | [optional] 

### Return type

Void (empty response body)

### Authorization

[ApiKeyAuthID](../README.md#ApiKeyAuthID), [ApiKeyAuthToken](../README.md#ApiKeyAuthToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1AccountAuthIdRecordingDelete**
```swift
    open class func apiV1AccountAuthIdRecordingDelete(authId: String, xAuthID: String? = nil, xAuthToken: String? = nil, contentType: String? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete a Recording

Permanently delete a specific recording. Returns 204 No Content.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import VobizSDK

let authId = "authId_example" // String | 
let xAuthID = "xAuthID_example" // String |  (optional)
let xAuthToken = "xAuthToken_example" // String |  (optional)
let contentType = "contentType_example" // String |  (optional)

// Delete a Recording
RecordingAPI.apiV1AccountAuthIdRecordingDelete(authId: authId, xAuthID: xAuthID, xAuthToken: xAuthToken, contentType: contentType) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authId** | **String** |  | 
 **xAuthID** | **String** |  | [optional] 
 **xAuthToken** | **String** |  | [optional] 
 **contentType** | **String** |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[ApiKeyAuthID](../README.md#ApiKeyAuthID), [ApiKeyAuthToken](../README.md#ApiKeyAuthToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1AccountAuthIdRecordingGet**
```swift
    open class func apiV1AccountAuthIdRecordingGet(authId: String, xAuthID: String? = nil, xAuthToken: String? = nil, contentType: String? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Retrieve a Recording

Get detailed information about a specific recording.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import VobizSDK

let authId = "authId_example" // String | 
let xAuthID = "xAuthID_example" // String |  (optional)
let xAuthToken = "xAuthToken_example" // String |  (optional)
let contentType = "contentType_example" // String |  (optional)

// Retrieve a Recording
RecordingAPI.apiV1AccountAuthIdRecordingGet(authId: authId, xAuthID: xAuthID, xAuthToken: xAuthToken, contentType: contentType) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authId** | **String** |  | 
 **xAuthID** | **String** |  | [optional] 
 **xAuthToken** | **String** |  | [optional] 
 **contentType** | **String** |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[ApiKeyAuthID](../README.md#ApiKeyAuthID), [ApiKeyAuthToken](../README.md#ApiKeyAuthToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

