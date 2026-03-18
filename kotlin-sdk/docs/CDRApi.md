# CDRApi

All URIs are relative to *https://api.vobiz.ai*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**apiV1AccountAccountIdCdrGet**](CDRApi.md#apiV1AccountAccountIdCdrGet) | **GET** /api/v1/account/{account_id}/cdr | Get Call Detail Records |


<a id="apiV1AccountAccountIdCdrGet"></a>
# **apiV1AccountAccountIdCdrGet**
> apiV1AccountAccountIdCdrGet(accountId, xAuthID, xAuthToken, contentType, startDate, endDate, perPage, page)

Get Call Detail Records

Retrieve call detail records with filtering and pagination.

### Example
```kotlin
// Import classes:
//import ai.vobiz.infrastructure.*
//import ai.vobiz.models.*

val apiInstance = CDRApi()
val accountId : kotlin.String = accountId_example // kotlin.String | 
val xAuthID : kotlin.String = {{auth_id}} // kotlin.String | 
val xAuthToken : kotlin.String = {{auth_token}} // kotlin.String | 
val contentType : kotlin.String = application/json // kotlin.String | 
val startDate : kotlin.String = 2026-01-01 // kotlin.String | Start date (YYYY-MM-DD)
val endDate : kotlin.String = 2026-01-31 // kotlin.String | End date (YYYY-MM-DD)
val perPage : kotlin.Int = 50 // kotlin.Int | Results per page
val page : kotlin.Int = 1 // kotlin.Int | Page number
try {
    apiInstance.apiV1AccountAccountIdCdrGet(accountId, xAuthID, xAuthToken, contentType, startDate, endDate, perPage, page)
} catch (e: ClientException) {
    println("4xx response calling CDRApi#apiV1AccountAccountIdCdrGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CDRApi#apiV1AccountAccountIdCdrGet")
    e.printStackTrace()
}
```

### Parameters
| **accountId** | **kotlin.String**|  | |
| **xAuthID** | **kotlin.String**|  | [optional] |
| **xAuthToken** | **kotlin.String**|  | [optional] |
| **contentType** | **kotlin.String**|  | [optional] |
| **startDate** | **kotlin.String**| Start date (YYYY-MM-DD) | [optional] |
| **endDate** | **kotlin.String**| End date (YYYY-MM-DD) | [optional] |
| **perPage** | **kotlin.Int**| Results per page | [optional] |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **page** | **kotlin.Int**| Page number | [optional] |

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

