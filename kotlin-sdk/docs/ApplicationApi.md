# ApplicationApi

All URIs are relative to *https://api.vobiz.ai*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**apiV1AccountAuthIdApplicationDelete**](ApplicationApi.md#apiV1AccountAuthIdApplicationDelete) | **DELETE** /api/v1/Account/{auth_id}/Application/{}/ | Delete an Application |
| [**apiV1AccountAuthIdApplicationGet**](ApplicationApi.md#apiV1AccountAuthIdApplicationGet) | **GET** /api/v1/Account/{auth_id}/Application/ | List All Applications |
| [**apiV1AccountAuthIdApplicationGet_0**](ApplicationApi.md#apiV1AccountAuthIdApplicationGet_0) | **GET** /api/v1/Account/{auth_id}/Application/{}/ | Retrieve an Application |
| [**apiV1AccountAuthIdApplicationPost**](ApplicationApi.md#apiV1AccountAuthIdApplicationPost) | **POST** /api/v1/Account/{auth_id}/Application/ | Create Application |
| [**apiV1AccountAuthIdApplicationPost_0**](ApplicationApi.md#apiV1AccountAuthIdApplicationPost_0) | **POST** /api/v1/Account/{auth_id}/Application/{}/ | Update an Application |
| [**apiV1AccountAuthIdNumbersApplicationDelete**](ApplicationApi.md#apiV1AccountAuthIdNumbersApplicationDelete) | **DELETE** /api/v1/account/{auth_id}/numbers/{}/application | Unlink Number from Application |
| [**apiV1AccountAuthIdNumbersApplicationPost**](ApplicationApi.md#apiV1AccountAuthIdNumbersApplicationPost) | **POST** /api/v1/account/{auth_id}/numbers/{}/application | Link Number to Application |


<a id="apiV1AccountAuthIdApplicationDelete"></a>
# **apiV1AccountAuthIdApplicationDelete**
> apiV1AccountAuthIdApplicationDelete(authId, xAuthID, xAuthToken, contentType)

Delete an Application

Delete an application. Returns 204 No Content.

### Example
```kotlin
// Import classes:
//import ai.vobiz.infrastructure.*
//import ai.vobiz.models.*

val apiInstance = ApplicationApi()
val authId : kotlin.String = authId_example // kotlin.String | 
val xAuthID : kotlin.String = {{auth_id}} // kotlin.String | 
val xAuthToken : kotlin.String = {{auth_token}} // kotlin.String | 
val contentType : kotlin.String = application/json // kotlin.String | 
try {
    apiInstance.apiV1AccountAuthIdApplicationDelete(authId, xAuthID, xAuthToken, contentType)
} catch (e: ClientException) {
    println("4xx response calling ApplicationApi#apiV1AccountAuthIdApplicationDelete")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ApplicationApi#apiV1AccountAuthIdApplicationDelete")
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

<a id="apiV1AccountAuthIdApplicationGet"></a>
# **apiV1AccountAuthIdApplicationGet**
> apiV1AccountAuthIdApplicationGet(authId, xAuthID, xAuthToken, contentType, limit, offset)

List All Applications

Retrieve all applications with pagination.

### Example
```kotlin
// Import classes:
//import ai.vobiz.infrastructure.*
//import ai.vobiz.models.*

val apiInstance = ApplicationApi()
val authId : kotlin.String = authId_example // kotlin.String | 
val xAuthID : kotlin.String = {{auth_id}} // kotlin.String | 
val xAuthToken : kotlin.String = {{auth_token}} // kotlin.String | 
val contentType : kotlin.String = application/json // kotlin.String | 
val limit : kotlin.Int = 20 // kotlin.Int | Results per page
val offset : kotlin.Int = 0 // kotlin.Int | Pagination offset
try {
    apiInstance.apiV1AccountAuthIdApplicationGet(authId, xAuthID, xAuthToken, contentType, limit, offset)
} catch (e: ClientException) {
    println("4xx response calling ApplicationApi#apiV1AccountAuthIdApplicationGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ApplicationApi#apiV1AccountAuthIdApplicationGet")
    e.printStackTrace()
}
```

### Parameters
| **authId** | **kotlin.String**|  | |
| **xAuthID** | **kotlin.String**|  | [optional] |
| **xAuthToken** | **kotlin.String**|  | [optional] |
| **contentType** | **kotlin.String**|  | [optional] |
| **limit** | **kotlin.Int**| Results per page | [optional] |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **offset** | **kotlin.Int**| Pagination offset | [optional] |

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

<a id="apiV1AccountAuthIdApplicationGet_0"></a>
# **apiV1AccountAuthIdApplicationGet_0**
> apiV1AccountAuthIdApplicationGet_0(authId, xAuthID, xAuthToken, contentType)

Retrieve an Application

Get details of a specific application by its ID.

### Example
```kotlin
// Import classes:
//import ai.vobiz.infrastructure.*
//import ai.vobiz.models.*

val apiInstance = ApplicationApi()
val authId : kotlin.String = authId_example // kotlin.String | 
val xAuthID : kotlin.String = {{auth_id}} // kotlin.String | 
val xAuthToken : kotlin.String = {{auth_token}} // kotlin.String | 
val contentType : kotlin.String = application/json // kotlin.String | 
try {
    apiInstance.apiV1AccountAuthIdApplicationGet_0(authId, xAuthID, xAuthToken, contentType)
} catch (e: ClientException) {
    println("4xx response calling ApplicationApi#apiV1AccountAuthIdApplicationGet_0")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ApplicationApi#apiV1AccountAuthIdApplicationGet_0")
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

<a id="apiV1AccountAuthIdApplicationPost"></a>
# **apiV1AccountAuthIdApplicationPost**
> apiV1AccountAuthIdApplicationPost(authId, xAuthID, xAuthToken, contentType, body)

Create Application

Create a new application with call handling URLs.

### Example
```kotlin
// Import classes:
//import ai.vobiz.infrastructure.*
//import ai.vobiz.models.*

val apiInstance = ApplicationApi()
val authId : kotlin.String = authId_example // kotlin.String | 
val xAuthID : kotlin.String = {{auth_id}} // kotlin.String | 
val xAuthToken : kotlin.String = {{auth_token}} // kotlin.String | 
val contentType : kotlin.String = application/json // kotlin.String | 
val body : kotlin.Any = Object // kotlin.Any | 
try {
    apiInstance.apiV1AccountAuthIdApplicationPost(authId, xAuthID, xAuthToken, contentType, body)
} catch (e: ClientException) {
    println("4xx response calling ApplicationApi#apiV1AccountAuthIdApplicationPost")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ApplicationApi#apiV1AccountAuthIdApplicationPost")
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

<a id="apiV1AccountAuthIdApplicationPost_0"></a>
# **apiV1AccountAuthIdApplicationPost_0**
> apiV1AccountAuthIdApplicationPost_0(authId, xAuthID, xAuthToken, contentType, body)

Update an Application

Update an existing application&#39;s settings.

### Example
```kotlin
// Import classes:
//import ai.vobiz.infrastructure.*
//import ai.vobiz.models.*

val apiInstance = ApplicationApi()
val authId : kotlin.String = authId_example // kotlin.String | 
val xAuthID : kotlin.String = {{auth_id}} // kotlin.String | 
val xAuthToken : kotlin.String = {{auth_token}} // kotlin.String | 
val contentType : kotlin.String = application/json // kotlin.String | 
val body : kotlin.Any = Object // kotlin.Any | 
try {
    apiInstance.apiV1AccountAuthIdApplicationPost_0(authId, xAuthID, xAuthToken, contentType, body)
} catch (e: ClientException) {
    println("4xx response calling ApplicationApi#apiV1AccountAuthIdApplicationPost_0")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ApplicationApi#apiV1AccountAuthIdApplicationPost_0")
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

<a id="apiV1AccountAuthIdNumbersApplicationDelete"></a>
# **apiV1AccountAuthIdNumbersApplicationDelete**
> apiV1AccountAuthIdNumbersApplicationDelete(authId, xAuthID, xAuthToken, contentType)

Unlink Number from Application

Remove association between a phone number and application.

### Example
```kotlin
// Import classes:
//import ai.vobiz.infrastructure.*
//import ai.vobiz.models.*

val apiInstance = ApplicationApi()
val authId : kotlin.String = authId_example // kotlin.String | 
val xAuthID : kotlin.String = {{auth_id}} // kotlin.String | 
val xAuthToken : kotlin.String = {{auth_token}} // kotlin.String | 
val contentType : kotlin.String = application/json // kotlin.String | 
try {
    apiInstance.apiV1AccountAuthIdNumbersApplicationDelete(authId, xAuthID, xAuthToken, contentType)
} catch (e: ClientException) {
    println("4xx response calling ApplicationApi#apiV1AccountAuthIdNumbersApplicationDelete")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ApplicationApi#apiV1AccountAuthIdNumbersApplicationDelete")
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

<a id="apiV1AccountAuthIdNumbersApplicationPost"></a>
# **apiV1AccountAuthIdNumbersApplicationPost**
> apiV1AccountAuthIdNumbersApplicationPost(authId, xAuthID, xAuthToken, contentType, body)

Link Number to Application

Associate a phone number with an application.

### Example
```kotlin
// Import classes:
//import ai.vobiz.infrastructure.*
//import ai.vobiz.models.*

val apiInstance = ApplicationApi()
val authId : kotlin.String = authId_example // kotlin.String | 
val xAuthID : kotlin.String = {{auth_id}} // kotlin.String | 
val xAuthToken : kotlin.String = {{auth_token}} // kotlin.String | 
val contentType : kotlin.String = application/json // kotlin.String | 
val body : kotlin.Any = Object // kotlin.Any | 
try {
    apiInstance.apiV1AccountAuthIdNumbersApplicationPost(authId, xAuthID, xAuthToken, contentType, body)
} catch (e: ClientException) {
    println("4xx response calling ApplicationApi#apiV1AccountAuthIdNumbersApplicationPost")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ApplicationApi#apiV1AccountAuthIdNumbersApplicationPost")
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

