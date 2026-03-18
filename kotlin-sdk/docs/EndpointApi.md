# EndpointApi

All URIs are relative to *https://api.vobiz.ai*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**apiV1AccountAuthIdEndpointDelete**](EndpointApi.md#apiV1AccountAuthIdEndpointDelete) | **DELETE** /api/v1/Account/{auth_id}/Endpoint/{}/ | Delete an Endpoint |
| [**apiV1AccountAuthIdEndpointGet**](EndpointApi.md#apiV1AccountAuthIdEndpointGet) | **GET** /api/v1/Account/{auth_id}/Endpoint/ | List All Endpoints |
| [**apiV1AccountAuthIdEndpointGet_0**](EndpointApi.md#apiV1AccountAuthIdEndpointGet_0) | **GET** /api/v1/Account/{auth_id}/Endpoint/{}/ | Retrieve an Endpoint |
| [**apiV1AccountAuthIdEndpointPost**](EndpointApi.md#apiV1AccountAuthIdEndpointPost) | **POST** /api/v1/Account/{auth_id}/Endpoint/ | Create Endpoint |
| [**apiV1AccountAuthIdEndpointPost_0**](EndpointApi.md#apiV1AccountAuthIdEndpointPost_0) | **POST** /api/v1/Account/{auth_id}/Endpoint/{}/ | Update an Endpoint |


<a id="apiV1AccountAuthIdEndpointDelete"></a>
# **apiV1AccountAuthIdEndpointDelete**
> apiV1AccountAuthIdEndpointDelete(authId, xAuthID, xAuthToken, contentType)

Delete an Endpoint

Delete an endpoint. Returns 204 No Content.

### Example
```kotlin
// Import classes:
//import ai.vobiz.infrastructure.*
//import ai.vobiz.models.*

val apiInstance = EndpointApi()
val authId : kotlin.String = authId_example // kotlin.String | 
val xAuthID : kotlin.String = {{auth_id}} // kotlin.String | 
val xAuthToken : kotlin.String = {{auth_token}} // kotlin.String | 
val contentType : kotlin.String = application/json // kotlin.String | 
try {
    apiInstance.apiV1AccountAuthIdEndpointDelete(authId, xAuthID, xAuthToken, contentType)
} catch (e: ClientException) {
    println("4xx response calling EndpointApi#apiV1AccountAuthIdEndpointDelete")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling EndpointApi#apiV1AccountAuthIdEndpointDelete")
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

<a id="apiV1AccountAuthIdEndpointGet"></a>
# **apiV1AccountAuthIdEndpointGet**
> apiV1AccountAuthIdEndpointGet(authId, xAuthID, xAuthToken, contentType, limit, offset)

List All Endpoints

Retrieve all endpoints with pagination.

### Example
```kotlin
// Import classes:
//import ai.vobiz.infrastructure.*
//import ai.vobiz.models.*

val apiInstance = EndpointApi()
val authId : kotlin.String = authId_example // kotlin.String | 
val xAuthID : kotlin.String = {{auth_id}} // kotlin.String | 
val xAuthToken : kotlin.String = {{auth_token}} // kotlin.String | 
val contentType : kotlin.String = application/json // kotlin.String | 
val limit : kotlin.Int = 20 // kotlin.Int | Results per page
val offset : kotlin.Int = 0 // kotlin.Int | Pagination offset
try {
    apiInstance.apiV1AccountAuthIdEndpointGet(authId, xAuthID, xAuthToken, contentType, limit, offset)
} catch (e: ClientException) {
    println("4xx response calling EndpointApi#apiV1AccountAuthIdEndpointGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling EndpointApi#apiV1AccountAuthIdEndpointGet")
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

<a id="apiV1AccountAuthIdEndpointGet_0"></a>
# **apiV1AccountAuthIdEndpointGet_0**
> apiV1AccountAuthIdEndpointGet_0(authId, xAuthID, xAuthToken, contentType)

Retrieve an Endpoint

Get details of a specific endpoint.

### Example
```kotlin
// Import classes:
//import ai.vobiz.infrastructure.*
//import ai.vobiz.models.*

val apiInstance = EndpointApi()
val authId : kotlin.String = authId_example // kotlin.String | 
val xAuthID : kotlin.String = {{auth_id}} // kotlin.String | 
val xAuthToken : kotlin.String = {{auth_token}} // kotlin.String | 
val contentType : kotlin.String = application/json // kotlin.String | 
try {
    apiInstance.apiV1AccountAuthIdEndpointGet_0(authId, xAuthID, xAuthToken, contentType)
} catch (e: ClientException) {
    println("4xx response calling EndpointApi#apiV1AccountAuthIdEndpointGet_0")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling EndpointApi#apiV1AccountAuthIdEndpointGet_0")
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

<a id="apiV1AccountAuthIdEndpointPost"></a>
# **apiV1AccountAuthIdEndpointPost**
> apiV1AccountAuthIdEndpointPost(authId, xAuthID, xAuthToken, contentType, body)

Create Endpoint

Create a new SIP endpoint.

### Example
```kotlin
// Import classes:
//import ai.vobiz.infrastructure.*
//import ai.vobiz.models.*

val apiInstance = EndpointApi()
val authId : kotlin.String = authId_example // kotlin.String | 
val xAuthID : kotlin.String = {{auth_id}} // kotlin.String | 
val xAuthToken : kotlin.String = {{auth_token}} // kotlin.String | 
val contentType : kotlin.String = application/json // kotlin.String | 
val body : kotlin.Any = Object // kotlin.Any | 
try {
    apiInstance.apiV1AccountAuthIdEndpointPost(authId, xAuthID, xAuthToken, contentType, body)
} catch (e: ClientException) {
    println("4xx response calling EndpointApi#apiV1AccountAuthIdEndpointPost")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling EndpointApi#apiV1AccountAuthIdEndpointPost")
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

<a id="apiV1AccountAuthIdEndpointPost_0"></a>
# **apiV1AccountAuthIdEndpointPost_0**
> apiV1AccountAuthIdEndpointPost_0(authId, xAuthID, xAuthToken, contentType, body)

Update an Endpoint

Update an existing endpoint&#39;s configuration.

### Example
```kotlin
// Import classes:
//import ai.vobiz.infrastructure.*
//import ai.vobiz.models.*

val apiInstance = EndpointApi()
val authId : kotlin.String = authId_example // kotlin.String | 
val xAuthID : kotlin.String = {{auth_id}} // kotlin.String | 
val xAuthToken : kotlin.String = {{auth_token}} // kotlin.String | 
val contentType : kotlin.String = application/json // kotlin.String | 
val body : kotlin.Any = Object // kotlin.Any | 
try {
    apiInstance.apiV1AccountAuthIdEndpointPost_0(authId, xAuthID, xAuthToken, contentType, body)
} catch (e: ClientException) {
    println("4xx response calling EndpointApi#apiV1AccountAuthIdEndpointPost_0")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling EndpointApi#apiV1AccountAuthIdEndpointPost_0")
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

