# AccountApi

All URIs are relative to *https://api.vobiz.ai*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**apiV1AccountAccountIdBalanceINRGet**](AccountApi.md#apiV1AccountAccountIdBalanceINRGet) | **GET** /api/v1/account/{account_id}/balance/INR | Get Balance |
| [**apiV1AccountAccountIdTransactionsGet**](AccountApi.md#apiV1AccountAccountIdTransactionsGet) | **GET** /api/v1/account/{account_id}/transactions | Get Transactions |
| [**apiV1AccountAuthIdConcurrencyGet**](AccountApi.md#apiV1AccountAuthIdConcurrencyGet) | **GET** /api/v1/account/{auth_id}/concurrency | Get Concurrency |
| [**apiV1AuthMeGet**](AccountApi.md#apiV1AuthMeGet) | **GET** /api/v1/auth/me | Retrieve Account Details |


<a id="apiV1AccountAccountIdBalanceINRGet"></a>
# **apiV1AccountAccountIdBalanceINRGet**
> apiV1AccountAccountIdBalanceINRGet(accountId, xAuthID, xAuthToken, contentType)

Get Balance

Retrieve the balance for a specific account and currency. Replace &#39;INR&#39; with your currency code.

### Example
```kotlin
// Import classes:
//import ai.vobiz.infrastructure.*
//import ai.vobiz.models.*

val apiInstance = AccountApi()
val accountId : kotlin.String = accountId_example // kotlin.String | 
val xAuthID : kotlin.String = {{auth_id}} // kotlin.String | 
val xAuthToken : kotlin.String = {{auth_token}} // kotlin.String | 
val contentType : kotlin.String = application/json // kotlin.String | 
try {
    apiInstance.apiV1AccountAccountIdBalanceINRGet(accountId, xAuthID, xAuthToken, contentType)
} catch (e: ClientException) {
    println("4xx response calling AccountApi#apiV1AccountAccountIdBalanceINRGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling AccountApi#apiV1AccountAccountIdBalanceINRGet")
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

<a id="apiV1AccountAccountIdTransactionsGet"></a>
# **apiV1AccountAccountIdTransactionsGet**
> apiV1AccountAccountIdTransactionsGet(accountId, xAuthID, xAuthToken, contentType, limit, offset)

Get Transactions

Retrieve a list of transactions for a specific account.

### Example
```kotlin
// Import classes:
//import ai.vobiz.infrastructure.*
//import ai.vobiz.models.*

val apiInstance = AccountApi()
val accountId : kotlin.String = accountId_example // kotlin.String | 
val xAuthID : kotlin.String = {{auth_id}} // kotlin.String | 
val xAuthToken : kotlin.String = {{auth_token}} // kotlin.String | 
val contentType : kotlin.String = application/json // kotlin.String | 
val limit : kotlin.Int = 50 // kotlin.Int | Records per page (default: 50)
val offset : kotlin.Int = 0 // kotlin.Int | Pagination offset (default: 0)
try {
    apiInstance.apiV1AccountAccountIdTransactionsGet(accountId, xAuthID, xAuthToken, contentType, limit, offset)
} catch (e: ClientException) {
    println("4xx response calling AccountApi#apiV1AccountAccountIdTransactionsGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling AccountApi#apiV1AccountAccountIdTransactionsGet")
    e.printStackTrace()
}
```

### Parameters
| **accountId** | **kotlin.String**|  | |
| **xAuthID** | **kotlin.String**|  | [optional] |
| **xAuthToken** | **kotlin.String**|  | [optional] |
| **contentType** | **kotlin.String**|  | [optional] |
| **limit** | **kotlin.Int**| Records per page (default: 50) | [optional] |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **offset** | **kotlin.Int**| Pagination offset (default: 0) | [optional] |

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

<a id="apiV1AccountAuthIdConcurrencyGet"></a>
# **apiV1AccountAuthIdConcurrencyGet**
> apiV1AccountAuthIdConcurrencyGet(authId, xAuthID, xAuthToken, contentType)

Get Concurrency

Retrieve current concurrent call count and capacity.

### Example
```kotlin
// Import classes:
//import ai.vobiz.infrastructure.*
//import ai.vobiz.models.*

val apiInstance = AccountApi()
val authId : kotlin.String = authId_example // kotlin.String | 
val xAuthID : kotlin.String = {{auth_id}} // kotlin.String | 
val xAuthToken : kotlin.String = {{auth_token}} // kotlin.String | 
val contentType : kotlin.String = application/json // kotlin.String | 
try {
    apiInstance.apiV1AccountAuthIdConcurrencyGet(authId, xAuthID, xAuthToken, contentType)
} catch (e: ClientException) {
    println("4xx response calling AccountApi#apiV1AccountAuthIdConcurrencyGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling AccountApi#apiV1AccountAuthIdConcurrencyGet")
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

<a id="apiV1AuthMeGet"></a>
# **apiV1AuthMeGet**
> apiV1AuthMeGet(xAuthID, xAuthToken, contentType)

Retrieve Account Details

Retrieve complete account details including pricing tier, credentials, and account settings.

### Example
```kotlin
// Import classes:
//import ai.vobiz.infrastructure.*
//import ai.vobiz.models.*

val apiInstance = AccountApi()
val xAuthID : kotlin.String = {{auth_id}} // kotlin.String | 
val xAuthToken : kotlin.String = {{auth_token}} // kotlin.String | 
val contentType : kotlin.String = application/json // kotlin.String | 
try {
    apiInstance.apiV1AuthMeGet(xAuthID, xAuthToken, contentType)
} catch (e: ClientException) {
    println("4xx response calling AccountApi#apiV1AuthMeGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling AccountApi#apiV1AuthMeGet")
    e.printStackTrace()
}
```

### Parameters
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

