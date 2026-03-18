# PhoneNumbersApi

All URIs are relative to *https://api.vobiz.ai*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**apiV1AccountAuthIdInventoryNumbersGet**](PhoneNumbersApi.md#apiV1AccountAuthIdInventoryNumbersGet) | **GET** /api/v1/account/{auth_id}/inventory/numbers | List Inventory Numbers |
| [**apiV1AccountAuthIdNumbersE164NumberDelete**](PhoneNumbersApi.md#apiV1AccountAuthIdNumbersE164NumberDelete) | **DELETE** /api/v1/account/{auth_id}/numbers/:e164_number | Unrent a Phone Number |
| [**apiV1AccountAuthIdNumbersGet**](PhoneNumbersApi.md#apiV1AccountAuthIdNumbersGet) | **GET** /api/v1/account/{auth_id}/numbers | List Account Phone Numbers |
| [**apiV1AccountAuthIdNumbersPurchaseFromInventoryPost**](PhoneNumbersApi.md#apiV1AccountAuthIdNumbersPurchaseFromInventoryPost) | **POST** /api/v1/account/{auth_id}/numbers/purchase-from-inventory | Purchase from Inventory |


<a id="apiV1AccountAuthIdInventoryNumbersGet"></a>
# **apiV1AccountAuthIdInventoryNumbersGet**
> apiV1AccountAuthIdInventoryNumbersGet(authId, xAuthID, xAuthToken, contentType, country, page, perPage)

List Inventory Numbers

Browse available phone numbers in inventory for purchase.

### Example
```kotlin
// Import classes:
//import ai.vobiz.infrastructure.*
//import ai.vobiz.models.*

val apiInstance = PhoneNumbersApi()
val authId : kotlin.String = authId_example // kotlin.String | 
val xAuthID : kotlin.String = {{auth_id}} // kotlin.String | 
val xAuthToken : kotlin.String = {{auth_token}} // kotlin.String | 
val contentType : kotlin.String = application/json // kotlin.String | 
val country : kotlin.String = US // kotlin.String | Filter by country code
val page : kotlin.Int = 1 // kotlin.Int | Page number
val perPage : kotlin.Int = 20 // kotlin.Int | Results per page
try {
    apiInstance.apiV1AccountAuthIdInventoryNumbersGet(authId, xAuthID, xAuthToken, contentType, country, page, perPage)
} catch (e: ClientException) {
    println("4xx response calling PhoneNumbersApi#apiV1AccountAuthIdInventoryNumbersGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling PhoneNumbersApi#apiV1AccountAuthIdInventoryNumbersGet")
    e.printStackTrace()
}
```

### Parameters
| **authId** | **kotlin.String**|  | |
| **xAuthID** | **kotlin.String**|  | [optional] |
| **xAuthToken** | **kotlin.String**|  | [optional] |
| **contentType** | **kotlin.String**|  | [optional] |
| **country** | **kotlin.String**| Filter by country code | [optional] |
| **page** | **kotlin.Int**| Page number | [optional] |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **perPage** | **kotlin.Int**| Results per page | [optional] |

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

<a id="apiV1AccountAuthIdNumbersE164NumberDelete"></a>
# **apiV1AccountAuthIdNumbersE164NumberDelete**
> apiV1AccountAuthIdNumbersE164NumberDelete(authId, xAuthID, xAuthToken, contentType)

Unrent a Phone Number

Release (unrent) a phone number from your account.

### Example
```kotlin
// Import classes:
//import ai.vobiz.infrastructure.*
//import ai.vobiz.models.*

val apiInstance = PhoneNumbersApi()
val authId : kotlin.String = authId_example // kotlin.String | 
val xAuthID : kotlin.String = {{auth_id}} // kotlin.String | 
val xAuthToken : kotlin.String = {{auth_token}} // kotlin.String | 
val contentType : kotlin.String = application/json // kotlin.String | 
try {
    apiInstance.apiV1AccountAuthIdNumbersE164NumberDelete(authId, xAuthID, xAuthToken, contentType)
} catch (e: ClientException) {
    println("4xx response calling PhoneNumbersApi#apiV1AccountAuthIdNumbersE164NumberDelete")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling PhoneNumbersApi#apiV1AccountAuthIdNumbersE164NumberDelete")
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

<a id="apiV1AccountAuthIdNumbersGet"></a>
# **apiV1AccountAuthIdNumbersGet**
> apiV1AccountAuthIdNumbersGet(authId, xAuthID, xAuthToken, contentType)

List Account Phone Numbers

Retrieve all phone numbers associated with your account.

### Example
```kotlin
// Import classes:
//import ai.vobiz.infrastructure.*
//import ai.vobiz.models.*

val apiInstance = PhoneNumbersApi()
val authId : kotlin.String = authId_example // kotlin.String | 
val xAuthID : kotlin.String = {{auth_id}} // kotlin.String | 
val xAuthToken : kotlin.String = {{auth_token}} // kotlin.String | 
val contentType : kotlin.String = application/json // kotlin.String | 
try {
    apiInstance.apiV1AccountAuthIdNumbersGet(authId, xAuthID, xAuthToken, contentType)
} catch (e: ClientException) {
    println("4xx response calling PhoneNumbersApi#apiV1AccountAuthIdNumbersGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling PhoneNumbersApi#apiV1AccountAuthIdNumbersGet")
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

<a id="apiV1AccountAuthIdNumbersPurchaseFromInventoryPost"></a>
# **apiV1AccountAuthIdNumbersPurchaseFromInventoryPost**
> apiV1AccountAuthIdNumbersPurchaseFromInventoryPost(authId, xAuthID, xAuthToken, contentType, body)

Purchase from Inventory

Purchase a phone number from available inventory.

### Example
```kotlin
// Import classes:
//import ai.vobiz.infrastructure.*
//import ai.vobiz.models.*

val apiInstance = PhoneNumbersApi()
val authId : kotlin.String = authId_example // kotlin.String | 
val xAuthID : kotlin.String = {{auth_id}} // kotlin.String | 
val xAuthToken : kotlin.String = {{auth_token}} // kotlin.String | 
val contentType : kotlin.String = application/json // kotlin.String | 
val body : kotlin.Any = Object // kotlin.Any | 
try {
    apiInstance.apiV1AccountAuthIdNumbersPurchaseFromInventoryPost(authId, xAuthID, xAuthToken, contentType, body)
} catch (e: ClientException) {
    println("4xx response calling PhoneNumbersApi#apiV1AccountAuthIdNumbersPurchaseFromInventoryPost")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling PhoneNumbersApi#apiV1AccountAuthIdNumbersPurchaseFromInventoryPost")
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

