# SubAccountApi

All URIs are relative to *https://api.vobiz.ai*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**apiV1AccountsAccountIdSubAccountsGet**](SubAccountApi.md#apiV1AccountsAccountIdSubAccountsGet) | **GET** /api/v1/accounts/{account_id}/sub-accounts/ | List All Sub-Accounts |
| [**apiV1AccountsAccountIdSubAccountsPost**](SubAccountApi.md#apiV1AccountsAccountIdSubAccountsPost) | **POST** /api/v1/accounts/{account_id}/sub-accounts/ | Create Sub-Account |
| [**apiV1AccountsAccountIdSubAccountsSubAccountIdDelete**](SubAccountApi.md#apiV1AccountsAccountIdSubAccountsSubAccountIdDelete) | **DELETE** /api/v1/accounts/{account_id}/sub-accounts/:sub_account_id | Delete a Sub-Account |
| [**apiV1AccountsAccountIdSubAccountsSubAccountIdGet**](SubAccountApi.md#apiV1AccountsAccountIdSubAccountsSubAccountIdGet) | **GET** /api/v1/accounts/{account_id}/sub-accounts/:sub_account_id | Retrieve a Sub-Account |
| [**apiV1AccountsAccountIdSubAccountsSubAccountIdPut**](SubAccountApi.md#apiV1AccountsAccountIdSubAccountsSubAccountIdPut) | **PUT** /api/v1/accounts/{account_id}/sub-accounts/:sub_account_id | Update a Sub-Account |


<a id="apiV1AccountsAccountIdSubAccountsGet"></a>
# **apiV1AccountsAccountIdSubAccountsGet**
> apiV1AccountsAccountIdSubAccountsGet(accountId, xAuthID, xAuthToken, contentType, page, size, activeOnly)

List All Sub-Accounts

Retrieve all sub-accounts.

### Example
```kotlin
// Import classes:
//import ai.vobiz.infrastructure.*
//import ai.vobiz.models.*

val apiInstance = SubAccountApi()
val accountId : kotlin.String = accountId_example // kotlin.String | 
val xAuthID : kotlin.String = {{auth_id}} // kotlin.String | 
val xAuthToken : kotlin.String = {{auth_token}} // kotlin.String | 
val contentType : kotlin.String = application/json // kotlin.String | 
val page : kotlin.Int = 1 // kotlin.Int | Page number
val size : kotlin.Int = 20 // kotlin.Int | Results per page
val activeOnly : kotlin.Boolean = true // kotlin.Boolean | Filter active sub-accounts only
try {
    apiInstance.apiV1AccountsAccountIdSubAccountsGet(accountId, xAuthID, xAuthToken, contentType, page, size, activeOnly)
} catch (e: ClientException) {
    println("4xx response calling SubAccountApi#apiV1AccountsAccountIdSubAccountsGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SubAccountApi#apiV1AccountsAccountIdSubAccountsGet")
    e.printStackTrace()
}
```

### Parameters
| **accountId** | **kotlin.String**|  | |
| **xAuthID** | **kotlin.String**|  | [optional] |
| **xAuthToken** | **kotlin.String**|  | [optional] |
| **contentType** | **kotlin.String**|  | [optional] |
| **page** | **kotlin.Int**| Page number | [optional] |
| **size** | **kotlin.Int**| Results per page | [optional] |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **activeOnly** | **kotlin.Boolean**| Filter active sub-accounts only | [optional] |

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

<a id="apiV1AccountsAccountIdSubAccountsPost"></a>
# **apiV1AccountsAccountIdSubAccountsPost**
> apiV1AccountsAccountIdSubAccountsPost(accountId, xAuthID, xAuthToken, contentType, body)

Create Sub-Account

Create a new sub-account under the master account.

### Example
```kotlin
// Import classes:
//import ai.vobiz.infrastructure.*
//import ai.vobiz.models.*

val apiInstance = SubAccountApi()
val accountId : kotlin.String = accountId_example // kotlin.String | 
val xAuthID : kotlin.String = {{auth_id}} // kotlin.String | 
val xAuthToken : kotlin.String = {{auth_token}} // kotlin.String | 
val contentType : kotlin.String = application/json // kotlin.String | 
val body : kotlin.Any = Object // kotlin.Any | 
try {
    apiInstance.apiV1AccountsAccountIdSubAccountsPost(accountId, xAuthID, xAuthToken, contentType, body)
} catch (e: ClientException) {
    println("4xx response calling SubAccountApi#apiV1AccountsAccountIdSubAccountsPost")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SubAccountApi#apiV1AccountsAccountIdSubAccountsPost")
    e.printStackTrace()
}
```

### Parameters
| **accountId** | **kotlin.String**|  | |
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

<a id="apiV1AccountsAccountIdSubAccountsSubAccountIdDelete"></a>
# **apiV1AccountsAccountIdSubAccountsSubAccountIdDelete**
> apiV1AccountsAccountIdSubAccountsSubAccountIdDelete(accountId, xAuthID, xAuthToken, contentType)

Delete a Sub-Account

Delete a sub-account. Returns 204 No Content.

### Example
```kotlin
// Import classes:
//import ai.vobiz.infrastructure.*
//import ai.vobiz.models.*

val apiInstance = SubAccountApi()
val accountId : kotlin.String = accountId_example // kotlin.String | 
val xAuthID : kotlin.String = {{auth_id}} // kotlin.String | 
val xAuthToken : kotlin.String = {{auth_token}} // kotlin.String | 
val contentType : kotlin.String = application/json // kotlin.String | 
try {
    apiInstance.apiV1AccountsAccountIdSubAccountsSubAccountIdDelete(accountId, xAuthID, xAuthToken, contentType)
} catch (e: ClientException) {
    println("4xx response calling SubAccountApi#apiV1AccountsAccountIdSubAccountsSubAccountIdDelete")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SubAccountApi#apiV1AccountsAccountIdSubAccountsSubAccountIdDelete")
    e.printStackTrace()
}
```

### Parameters
| **accountId** | **kotlin.String**|  | |
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

<a id="apiV1AccountsAccountIdSubAccountsSubAccountIdGet"></a>
# **apiV1AccountsAccountIdSubAccountsSubAccountIdGet**
> apiV1AccountsAccountIdSubAccountsSubAccountIdGet(accountId, xAuthID, xAuthToken, contentType)

Retrieve a Sub-Account

Get details of a specific sub-account.

### Example
```kotlin
// Import classes:
//import ai.vobiz.infrastructure.*
//import ai.vobiz.models.*

val apiInstance = SubAccountApi()
val accountId : kotlin.String = accountId_example // kotlin.String | 
val xAuthID : kotlin.String = {{auth_id}} // kotlin.String | 
val xAuthToken : kotlin.String = {{auth_token}} // kotlin.String | 
val contentType : kotlin.String = application/json // kotlin.String | 
try {
    apiInstance.apiV1AccountsAccountIdSubAccountsSubAccountIdGet(accountId, xAuthID, xAuthToken, contentType)
} catch (e: ClientException) {
    println("4xx response calling SubAccountApi#apiV1AccountsAccountIdSubAccountsSubAccountIdGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SubAccountApi#apiV1AccountsAccountIdSubAccountsSubAccountIdGet")
    e.printStackTrace()
}
```

### Parameters
| **accountId** | **kotlin.String**|  | |
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

<a id="apiV1AccountsAccountIdSubAccountsSubAccountIdPut"></a>
# **apiV1AccountsAccountIdSubAccountsSubAccountIdPut**
> apiV1AccountsAccountIdSubAccountsSubAccountIdPut(accountId, xAuthID, xAuthToken, contentType, body)

Update a Sub-Account

Update sub-account settings.

### Example
```kotlin
// Import classes:
//import ai.vobiz.infrastructure.*
//import ai.vobiz.models.*

val apiInstance = SubAccountApi()
val accountId : kotlin.String = accountId_example // kotlin.String | 
val xAuthID : kotlin.String = {{auth_id}} // kotlin.String | 
val xAuthToken : kotlin.String = {{auth_token}} // kotlin.String | 
val contentType : kotlin.String = application/json // kotlin.String | 
val body : kotlin.Any = Object // kotlin.Any | 
try {
    apiInstance.apiV1AccountsAccountIdSubAccountsSubAccountIdPut(accountId, xAuthID, xAuthToken, contentType, body)
} catch (e: ClientException) {
    println("4xx response calling SubAccountApi#apiV1AccountsAccountIdSubAccountsSubAccountIdPut")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SubAccountApi#apiV1AccountsAccountIdSubAccountsSubAccountIdPut")
    e.printStackTrace()
}
```

### Parameters
| **accountId** | **kotlin.String**|  | |
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

