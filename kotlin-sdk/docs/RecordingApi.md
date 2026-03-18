# RecordingApi

All URIs are relative to *https://api.vobiz.ai*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**apiV1AccountAccountIdRecordingGet**](RecordingApi.md#apiV1AccountAccountIdRecordingGet) | **GET** /api/v1/Account/{account_id}/Recording/ | List All Recordings |
| [**apiV1AccountAuthIdExportRecordingPost**](RecordingApi.md#apiV1AccountAuthIdExportRecordingPost) | **POST** /api/v1/Account/{auth_id}/export/recording/ | Export Historical Recordings |
| [**apiV1AccountAuthIdRecordingBulkDeleteDelete**](RecordingApi.md#apiV1AccountAuthIdRecordingBulkDeleteDelete) | **DELETE** /api/v1/Account/{auth_id}/Recording/BulkDelete/ | Bulk Delete Recordings |
| [**apiV1AccountAuthIdRecordingDelete**](RecordingApi.md#apiV1AccountAuthIdRecordingDelete) | **DELETE** /api/v1/Account/{auth_id}/Recording/{}/ | Delete a Recording |
| [**apiV1AccountAuthIdRecordingGet**](RecordingApi.md#apiV1AccountAuthIdRecordingGet) | **GET** /api/v1/Account/{auth_id}/Recording/{}/ | Retrieve a Recording |


<a id="apiV1AccountAccountIdRecordingGet"></a>
# **apiV1AccountAccountIdRecordingGet**
> apiV1AccountAccountIdRecordingGet(accountId, xAuthID, xAuthToken, contentType, limit, offset, callUuid, recordingType)

List All Recordings

Retrieve a paginated list of call recordings for your account.

### Example
```kotlin
// Import classes:
//import ai.vobiz.infrastructure.*
//import ai.vobiz.models.*

val apiInstance = RecordingApi()
val accountId : kotlin.String = accountId_example // kotlin.String | 
val xAuthID : kotlin.String = {{auth_id}} // kotlin.String | 
val xAuthToken : kotlin.String = {{auth_token}} // kotlin.String | 
val contentType : kotlin.String = application/json // kotlin.String | 
val limit : kotlin.Int = 20 // kotlin.Int | Records per request (default: 20, max: 100)
val offset : kotlin.Int = 0 // kotlin.Int | Pagination offset (default: 0)
val callUuid : kotlin.String = callUuid_example // kotlin.String | Filter by specific call UUID
val recordingType : kotlin.String = recordingType_example // kotlin.String | Filter by type: trunk or extension
try {
    apiInstance.apiV1AccountAccountIdRecordingGet(accountId, xAuthID, xAuthToken, contentType, limit, offset, callUuid, recordingType)
} catch (e: ClientException) {
    println("4xx response calling RecordingApi#apiV1AccountAccountIdRecordingGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling RecordingApi#apiV1AccountAccountIdRecordingGet")
    e.printStackTrace()
}
```

### Parameters
| **accountId** | **kotlin.String**|  | |
| **xAuthID** | **kotlin.String**|  | [optional] |
| **xAuthToken** | **kotlin.String**|  | [optional] |
| **contentType** | **kotlin.String**|  | [optional] |
| **limit** | **kotlin.Int**| Records per request (default: 20, max: 100) | [optional] |
| **offset** | **kotlin.Int**| Pagination offset (default: 0) | [optional] |
| **callUuid** | **kotlin.String**| Filter by specific call UUID | [optional] |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **recordingType** | **kotlin.String**| Filter by type: trunk or extension | [optional] |

### Return type

null (empty response body)

### Authorization


Configure ApiKeyAuthID:
    ApiClient.apiKey["X-Auth-ID"] = ""
    ApiClient.apiKeyPrefix["X-Auth-ID"] = ""
Configure ApiKeyAuthToken:
    ApiClient.apiKey["X-Auth-Token"] = ""
    ApiClient.apiKeyPrefix["X-Auth-Token"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="apiV1AccountAuthIdExportRecordingPost"></a>
# **apiV1AccountAuthIdExportRecordingPost**
> apiV1AccountAuthIdExportRecordingPost(authId, xAuthID, xAuthToken, contentType, body)

Export Historical Recordings

Export recordings as a downloadable archive sent via email (async). Returns 202 Accepted.

### Example
```kotlin
// Import classes:
//import ai.vobiz.infrastructure.*
//import ai.vobiz.models.*

val apiInstance = RecordingApi()
val authId : kotlin.String = authId_example // kotlin.String | 
val xAuthID : kotlin.String = {{auth_id}} // kotlin.String | 
val xAuthToken : kotlin.String = {{auth_token}} // kotlin.String | 
val contentType : kotlin.String = application/json // kotlin.String | 
val body : kotlin.Any = Object // kotlin.Any | 
try {
    apiInstance.apiV1AccountAuthIdExportRecordingPost(authId, xAuthID, xAuthToken, contentType, body)
} catch (e: ClientException) {
    println("4xx response calling RecordingApi#apiV1AccountAuthIdExportRecordingPost")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling RecordingApi#apiV1AccountAuthIdExportRecordingPost")
    e.printStackTrace()
}
```

### Parameters
| **authId** | **kotlin.String**|  | |
| **xAuthID** | **kotlin.String**|  | [optional] |
| **xAuthToken** | **kotlin.String**|  | [optional] |
| **contentType** | **kotlin.String**|  | [optional] |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **body** | **kotlin.Any**|  | [optional] |

### Return type

null (empty response body)

### Authorization


Configure ApiKeyAuthID:
    ApiClient.apiKey["X-Auth-ID"] = ""
    ApiClient.apiKeyPrefix["X-Auth-ID"] = ""
Configure ApiKeyAuthToken:
    ApiClient.apiKey["X-Auth-Token"] = ""
    ApiClient.apiKeyPrefix["X-Auth-Token"] = ""

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a id="apiV1AccountAuthIdRecordingBulkDeleteDelete"></a>
# **apiV1AccountAuthIdRecordingBulkDeleteDelete**
> apiV1AccountAuthIdRecordingBulkDeleteDelete(authId, xAuthID, xAuthToken, contentType, addTimeGte, addTimeLte, callUuid, fromNumber, toNumber, recordingFormat)

Bulk Delete Recordings

Delete multiple recordings matching filter criteria (async operation). Returns 202 Accepted.

### Example
```kotlin
// Import classes:
//import ai.vobiz.infrastructure.*
//import ai.vobiz.models.*

val apiInstance = RecordingApi()
val authId : kotlin.String = authId_example // kotlin.String | 
val xAuthID : kotlin.String = {{auth_id}} // kotlin.String | 
val xAuthToken : kotlin.String = {{auth_token}} // kotlin.String | 
val contentType : kotlin.String = application/json // kotlin.String | 
val addTimeGte : kotlin.String = addTimeGte_example // kotlin.String | Delete recordings on/after this date (YYYY-MM-DD HH:MM:SS)
val addTimeLte : kotlin.String = addTimeLte_example // kotlin.String | Delete recordings on/before this date
val callUuid : kotlin.String = callUuid_example // kotlin.String | Delete recordings for specific call UUID
val fromNumber : kotlin.String = fromNumber_example // kotlin.String | Delete by caller number (partial match)
val toNumber : kotlin.String = toNumber_example // kotlin.String | Delete by destination number (partial match)
val recordingFormat : kotlin.String = recordingFormat_example // kotlin.String | mp3 or wav
try {
    apiInstance.apiV1AccountAuthIdRecordingBulkDeleteDelete(authId, xAuthID, xAuthToken, contentType, addTimeGte, addTimeLte, callUuid, fromNumber, toNumber, recordingFormat)
} catch (e: ClientException) {
    println("4xx response calling RecordingApi#apiV1AccountAuthIdRecordingBulkDeleteDelete")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling RecordingApi#apiV1AccountAuthIdRecordingBulkDeleteDelete")
    e.printStackTrace()
}
```

### Parameters
| **authId** | **kotlin.String**|  | |
| **xAuthID** | **kotlin.String**|  | [optional] |
| **xAuthToken** | **kotlin.String**|  | [optional] |
| **contentType** | **kotlin.String**|  | [optional] |
| **addTimeGte** | **kotlin.String**| Delete recordings on/after this date (YYYY-MM-DD HH:MM:SS) | [optional] |
| **addTimeLte** | **kotlin.String**| Delete recordings on/before this date | [optional] |
| **callUuid** | **kotlin.String**| Delete recordings for specific call UUID | [optional] |
| **fromNumber** | **kotlin.String**| Delete by caller number (partial match) | [optional] |
| **toNumber** | **kotlin.String**| Delete by destination number (partial match) | [optional] |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **recordingFormat** | **kotlin.String**| mp3 or wav | [optional] |

### Return type

null (empty response body)

### Authorization


Configure ApiKeyAuthID:
    ApiClient.apiKey["X-Auth-ID"] = ""
    ApiClient.apiKeyPrefix["X-Auth-ID"] = ""
Configure ApiKeyAuthToken:
    ApiClient.apiKey["X-Auth-Token"] = ""
    ApiClient.apiKeyPrefix["X-Auth-Token"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="apiV1AccountAuthIdRecordingDelete"></a>
# **apiV1AccountAuthIdRecordingDelete**
> apiV1AccountAuthIdRecordingDelete(authId, xAuthID, xAuthToken, contentType)

Delete a Recording

Permanently delete a specific recording. Returns 204 No Content.

### Example
```kotlin
// Import classes:
//import ai.vobiz.infrastructure.*
//import ai.vobiz.models.*

val apiInstance = RecordingApi()
val authId : kotlin.String = authId_example // kotlin.String | 
val xAuthID : kotlin.String = {{auth_id}} // kotlin.String | 
val xAuthToken : kotlin.String = {{auth_token}} // kotlin.String | 
val contentType : kotlin.String = application/json // kotlin.String | 
try {
    apiInstance.apiV1AccountAuthIdRecordingDelete(authId, xAuthID, xAuthToken, contentType)
} catch (e: ClientException) {
    println("4xx response calling RecordingApi#apiV1AccountAuthIdRecordingDelete")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling RecordingApi#apiV1AccountAuthIdRecordingDelete")
    e.printStackTrace()
}
```

### Parameters
| **authId** | **kotlin.String**|  | |
| **xAuthID** | **kotlin.String**|  | [optional] |
| **xAuthToken** | **kotlin.String**|  | [optional] |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **contentType** | **kotlin.String**|  | [optional] |

### Return type

null (empty response body)

### Authorization


Configure ApiKeyAuthID:
    ApiClient.apiKey["X-Auth-ID"] = ""
    ApiClient.apiKeyPrefix["X-Auth-ID"] = ""
Configure ApiKeyAuthToken:
    ApiClient.apiKey["X-Auth-Token"] = ""
    ApiClient.apiKeyPrefix["X-Auth-Token"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="apiV1AccountAuthIdRecordingGet"></a>
# **apiV1AccountAuthIdRecordingGet**
> apiV1AccountAuthIdRecordingGet(authId, xAuthID, xAuthToken, contentType)

Retrieve a Recording

Get detailed information about a specific recording.

### Example
```kotlin
// Import classes:
//import ai.vobiz.infrastructure.*
//import ai.vobiz.models.*

val apiInstance = RecordingApi()
val authId : kotlin.String = authId_example // kotlin.String | 
val xAuthID : kotlin.String = {{auth_id}} // kotlin.String | 
val xAuthToken : kotlin.String = {{auth_token}} // kotlin.String | 
val contentType : kotlin.String = application/json // kotlin.String | 
try {
    apiInstance.apiV1AccountAuthIdRecordingGet(authId, xAuthID, xAuthToken, contentType)
} catch (e: ClientException) {
    println("4xx response calling RecordingApi#apiV1AccountAuthIdRecordingGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling RecordingApi#apiV1AccountAuthIdRecordingGet")
    e.printStackTrace()
}
```

### Parameters
| **authId** | **kotlin.String**|  | |
| **xAuthID** | **kotlin.String**|  | [optional] |
| **xAuthToken** | **kotlin.String**|  | [optional] |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **contentType** | **kotlin.String**|  | [optional] |

### Return type

null (empty response body)

### Authorization


Configure ApiKeyAuthID:
    ApiClient.apiKey["X-Auth-ID"] = ""
    ApiClient.apiKeyPrefix["X-Auth-ID"] = ""
Configure ApiKeyAuthToken:
    ApiClient.apiKey["X-Auth-Token"] = ""
    ApiClient.apiKeyPrefix["X-Auth-Token"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

