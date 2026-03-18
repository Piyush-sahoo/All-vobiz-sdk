# CallApi

All URIs are relative to *https://api.vobiz.ai*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**apiV1AccountAuthIdCallDTMFPost**](CallApi.md#apiV1AccountAuthIdCallDTMFPost) | **POST** /api/v1/Account/{auth_id}/Call/{}/DTMF/ | Send DTMF Digits |
| [**apiV1AccountAuthIdCallDelete**](CallApi.md#apiV1AccountAuthIdCallDelete) | **DELETE** /api/v1/Account/{auth_id}/Call/{}/ | Hang Up a Call |
| [**apiV1AccountAuthIdCallGet**](CallApi.md#apiV1AccountAuthIdCallGet) | **GET** /api/v1/Account/{auth_id}/Call/ | Retrieve All Queued Calls |
| [**apiV1AccountAuthIdCallGet_0**](CallApi.md#apiV1AccountAuthIdCallGet_0) | **GET** /api/v1/Account/{auth_id}/Call/{}/ | Retrieve a Queued Call |
| [**apiV1AccountAuthIdCallPlayDelete**](CallApi.md#apiV1AccountAuthIdCallPlayDelete) | **DELETE** /api/v1/Account/{auth_id}/Call/{}/Play/ | Stop Playing Audio on a Call |
| [**apiV1AccountAuthIdCallPlayPost**](CallApi.md#apiV1AccountAuthIdCallPlayPost) | **POST** /api/v1/Account/{auth_id}/Call/{}/Play/ | Play Audio on a Call |
| [**apiV1AccountAuthIdCallPost**](CallApi.md#apiV1AccountAuthIdCallPost) | **POST** /api/v1/Account/{auth_id}/Call/ | Make an Outbound Call |
| [**apiV1AccountAuthIdCallPost_0**](CallApi.md#apiV1AccountAuthIdCallPost_0) | **POST** /api/v1/Account/{auth_id}/Call/{}/ | Transfer a Call |
| [**apiV1AccountAuthIdCallRecordDelete**](CallApi.md#apiV1AccountAuthIdCallRecordDelete) | **DELETE** /api/v1/Account/{auth_id}/Call/{}/Record/ | Stop Recording a Call |
| [**apiV1AccountAuthIdCallRecordPost**](CallApi.md#apiV1AccountAuthIdCallRecordPost) | **POST** /api/v1/Account/{auth_id}/Call/{}/Record/ | Start Recording a Call |
| [**apiV1AccountAuthIdCallSpeakDelete**](CallApi.md#apiV1AccountAuthIdCallSpeakDelete) | **DELETE** /api/v1/Account/{auth_id}/Call/{}/Speak/ | Stop Speaking Text on a Call |
| [**apiV1AccountAuthIdCallSpeakPost**](CallApi.md#apiV1AccountAuthIdCallSpeakPost) | **POST** /api/v1/Account/{auth_id}/Call/{}/Speak/ | Speak Text on a Call (TTS) |


<a id="apiV1AccountAuthIdCallDTMFPost"></a>
# **apiV1AccountAuthIdCallDTMFPost**
> apiV1AccountAuthIdCallDTMFPost(authId, xAuthID, xAuthToken, contentType, body)

Send DTMF Digits

Send DTMF digits to an active call for automated IVR navigation.

### Example
```kotlin
// Import classes:
//import ai.vobiz.infrastructure.*
//import ai.vobiz.models.*

val apiInstance = CallApi()
val authId : kotlin.String = authId_example // kotlin.String | 
val xAuthID : kotlin.String = {{auth_id}} // kotlin.String | 
val xAuthToken : kotlin.String = {{auth_token}} // kotlin.String | 
val contentType : kotlin.String = application/json // kotlin.String | 
val body : kotlin.Any = Object // kotlin.Any | 
try {
    apiInstance.apiV1AccountAuthIdCallDTMFPost(authId, xAuthID, xAuthToken, contentType, body)
} catch (e: ClientException) {
    println("4xx response calling CallApi#apiV1AccountAuthIdCallDTMFPost")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CallApi#apiV1AccountAuthIdCallDTMFPost")
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

<a id="apiV1AccountAuthIdCallDelete"></a>
# **apiV1AccountAuthIdCallDelete**
> apiV1AccountAuthIdCallDelete(authId, xAuthID, xAuthToken, contentType)

Hang Up a Call

Terminate an active call. Returns 204 No Content.

### Example
```kotlin
// Import classes:
//import ai.vobiz.infrastructure.*
//import ai.vobiz.models.*

val apiInstance = CallApi()
val authId : kotlin.String = authId_example // kotlin.String | 
val xAuthID : kotlin.String = {{auth_id}} // kotlin.String | 
val xAuthToken : kotlin.String = {{auth_token}} // kotlin.String | 
val contentType : kotlin.String = application/json // kotlin.String | 
try {
    apiInstance.apiV1AccountAuthIdCallDelete(authId, xAuthID, xAuthToken, contentType)
} catch (e: ClientException) {
    println("4xx response calling CallApi#apiV1AccountAuthIdCallDelete")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CallApi#apiV1AccountAuthIdCallDelete")
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

<a id="apiV1AccountAuthIdCallGet"></a>
# **apiV1AccountAuthIdCallGet**
> apiV1AccountAuthIdCallGet(authId, xAuthID, xAuthToken, contentType, status)

Retrieve All Queued Calls

Get a list of all call UUIDs for calls currently queued and waiting to connect. Max 20 results.

### Example
```kotlin
// Import classes:
//import ai.vobiz.infrastructure.*
//import ai.vobiz.models.*

val apiInstance = CallApi()
val authId : kotlin.String = authId_example // kotlin.String | 
val xAuthID : kotlin.String = {{auth_id}} // kotlin.String | 
val xAuthToken : kotlin.String = {{auth_token}} // kotlin.String | 
val contentType : kotlin.String = application/json // kotlin.String | 
val status : kotlin.String = queued // kotlin.String | Must be 'queued'
try {
    apiInstance.apiV1AccountAuthIdCallGet(authId, xAuthID, xAuthToken, contentType, status)
} catch (e: ClientException) {
    println("4xx response calling CallApi#apiV1AccountAuthIdCallGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CallApi#apiV1AccountAuthIdCallGet")
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
| **status** | **kotlin.String**| Must be &#39;queued&#39; | [optional] |

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

<a id="apiV1AccountAuthIdCallGet_0"></a>
# **apiV1AccountAuthIdCallGet_0**
> apiV1AccountAuthIdCallGet_0(authId, xAuthID, xAuthToken, contentType, status)

Retrieve a Queued Call

Get details of a specific queued call.

### Example
```kotlin
// Import classes:
//import ai.vobiz.infrastructure.*
//import ai.vobiz.models.*

val apiInstance = CallApi()
val authId : kotlin.String = authId_example // kotlin.String | 
val xAuthID : kotlin.String = {{auth_id}} // kotlin.String | 
val xAuthToken : kotlin.String = {{auth_token}} // kotlin.String | 
val contentType : kotlin.String = application/json // kotlin.String | 
val status : kotlin.String = queued // kotlin.String | Must be 'queued'
try {
    apiInstance.apiV1AccountAuthIdCallGet_0(authId, xAuthID, xAuthToken, contentType, status)
} catch (e: ClientException) {
    println("4xx response calling CallApi#apiV1AccountAuthIdCallGet_0")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CallApi#apiV1AccountAuthIdCallGet_0")
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
| **status** | **kotlin.String**| Must be &#39;queued&#39; | [optional] |

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

<a id="apiV1AccountAuthIdCallPlayDelete"></a>
# **apiV1AccountAuthIdCallPlayDelete**
> apiV1AccountAuthIdCallPlayDelete(authId, xAuthID, xAuthToken, contentType)

Stop Playing Audio on a Call

Stop audio playback on an active call. Returns 204 No Content.

### Example
```kotlin
// Import classes:
//import ai.vobiz.infrastructure.*
//import ai.vobiz.models.*

val apiInstance = CallApi()
val authId : kotlin.String = authId_example // kotlin.String | 
val xAuthID : kotlin.String = {{auth_id}} // kotlin.String | 
val xAuthToken : kotlin.String = {{auth_token}} // kotlin.String | 
val contentType : kotlin.String = application/json // kotlin.String | 
try {
    apiInstance.apiV1AccountAuthIdCallPlayDelete(authId, xAuthID, xAuthToken, contentType)
} catch (e: ClientException) {
    println("4xx response calling CallApi#apiV1AccountAuthIdCallPlayDelete")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CallApi#apiV1AccountAuthIdCallPlayDelete")
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

<a id="apiV1AccountAuthIdCallPlayPost"></a>
# **apiV1AccountAuthIdCallPlayPost**
> apiV1AccountAuthIdCallPlayPost(authId, xAuthID, xAuthToken, contentType, body)

Play Audio on a Call

Play audio file(s) during an active call.

### Example
```kotlin
// Import classes:
//import ai.vobiz.infrastructure.*
//import ai.vobiz.models.*

val apiInstance = CallApi()
val authId : kotlin.String = authId_example // kotlin.String | 
val xAuthID : kotlin.String = {{auth_id}} // kotlin.String | 
val xAuthToken : kotlin.String = {{auth_token}} // kotlin.String | 
val contentType : kotlin.String = application/json // kotlin.String | 
val body : kotlin.Any = Object // kotlin.Any | 
try {
    apiInstance.apiV1AccountAuthIdCallPlayPost(authId, xAuthID, xAuthToken, contentType, body)
} catch (e: ClientException) {
    println("4xx response calling CallApi#apiV1AccountAuthIdCallPlayPost")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CallApi#apiV1AccountAuthIdCallPlayPost")
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

<a id="apiV1AccountAuthIdCallPost"></a>
# **apiV1AccountAuthIdCallPost**
> apiV1AccountAuthIdCallPost(authId, xAuthID, xAuthToken, contentType, body)

Make an Outbound Call

Initiate an outbound call to a PSTN number or SIP endpoint. Supports bulk calls (up to 1000 destinations using &lt; separator).

### Example
```kotlin
// Import classes:
//import ai.vobiz.infrastructure.*
//import ai.vobiz.models.*

val apiInstance = CallApi()
val authId : kotlin.String = authId_example // kotlin.String | 
val xAuthID : kotlin.String = {{auth_id}} // kotlin.String | 
val xAuthToken : kotlin.String = {{auth_token}} // kotlin.String | 
val contentType : kotlin.String = application/json // kotlin.String | 
val body : kotlin.Any = Object // kotlin.Any | 
try {
    apiInstance.apiV1AccountAuthIdCallPost(authId, xAuthID, xAuthToken, contentType, body)
} catch (e: ClientException) {
    println("4xx response calling CallApi#apiV1AccountAuthIdCallPost")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CallApi#apiV1AccountAuthIdCallPost")
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

<a id="apiV1AccountAuthIdCallPost_0"></a>
# **apiV1AccountAuthIdCallPost_0**
> apiV1AccountAuthIdCallPost_0(authId, xAuthID, xAuthToken, contentType, body)

Transfer a Call

Transfer an in-progress call to a different URL for new call flow instructions.

### Example
```kotlin
// Import classes:
//import ai.vobiz.infrastructure.*
//import ai.vobiz.models.*

val apiInstance = CallApi()
val authId : kotlin.String = authId_example // kotlin.String | 
val xAuthID : kotlin.String = {{auth_id}} // kotlin.String | 
val xAuthToken : kotlin.String = {{auth_token}} // kotlin.String | 
val contentType : kotlin.String = application/json // kotlin.String | 
val body : kotlin.Any = Object // kotlin.Any | 
try {
    apiInstance.apiV1AccountAuthIdCallPost_0(authId, xAuthID, xAuthToken, contentType, body)
} catch (e: ClientException) {
    println("4xx response calling CallApi#apiV1AccountAuthIdCallPost_0")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CallApi#apiV1AccountAuthIdCallPost_0")
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

<a id="apiV1AccountAuthIdCallRecordDelete"></a>
# **apiV1AccountAuthIdCallRecordDelete**
> apiV1AccountAuthIdCallRecordDelete(authId, xAuthID, xAuthToken, contentType)

Stop Recording a Call

Stop active recording(s) on a call. Returns 204 No Content.

### Example
```kotlin
// Import classes:
//import ai.vobiz.infrastructure.*
//import ai.vobiz.models.*

val apiInstance = CallApi()
val authId : kotlin.String = authId_example // kotlin.String | 
val xAuthID : kotlin.String = {{auth_id}} // kotlin.String | 
val xAuthToken : kotlin.String = {{auth_token}} // kotlin.String | 
val contentType : kotlin.String = application/json // kotlin.String | 
try {
    apiInstance.apiV1AccountAuthIdCallRecordDelete(authId, xAuthID, xAuthToken, contentType)
} catch (e: ClientException) {
    println("4xx response calling CallApi#apiV1AccountAuthIdCallRecordDelete")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CallApi#apiV1AccountAuthIdCallRecordDelete")
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

<a id="apiV1AccountAuthIdCallRecordPost"></a>
# **apiV1AccountAuthIdCallRecordPost**
> apiV1AccountAuthIdCallRecordPost(authId, xAuthID, xAuthToken, contentType, body)

Start Recording a Call

Begin recording an active call.

### Example
```kotlin
// Import classes:
//import ai.vobiz.infrastructure.*
//import ai.vobiz.models.*

val apiInstance = CallApi()
val authId : kotlin.String = authId_example // kotlin.String | 
val xAuthID : kotlin.String = {{auth_id}} // kotlin.String | 
val xAuthToken : kotlin.String = {{auth_token}} // kotlin.String | 
val contentType : kotlin.String = application/json // kotlin.String | 
val body : kotlin.Any = Object // kotlin.Any | 
try {
    apiInstance.apiV1AccountAuthIdCallRecordPost(authId, xAuthID, xAuthToken, contentType, body)
} catch (e: ClientException) {
    println("4xx response calling CallApi#apiV1AccountAuthIdCallRecordPost")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CallApi#apiV1AccountAuthIdCallRecordPost")
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

<a id="apiV1AccountAuthIdCallSpeakDelete"></a>
# **apiV1AccountAuthIdCallSpeakDelete**
> apiV1AccountAuthIdCallSpeakDelete(authId, xAuthID, xAuthToken, contentType)

Stop Speaking Text on a Call

Stop text-to-speech playback. Returns 204 No Content.

### Example
```kotlin
// Import classes:
//import ai.vobiz.infrastructure.*
//import ai.vobiz.models.*

val apiInstance = CallApi()
val authId : kotlin.String = authId_example // kotlin.String | 
val xAuthID : kotlin.String = {{auth_id}} // kotlin.String | 
val xAuthToken : kotlin.String = {{auth_token}} // kotlin.String | 
val contentType : kotlin.String = application/json // kotlin.String | 
try {
    apiInstance.apiV1AccountAuthIdCallSpeakDelete(authId, xAuthID, xAuthToken, contentType)
} catch (e: ClientException) {
    println("4xx response calling CallApi#apiV1AccountAuthIdCallSpeakDelete")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CallApi#apiV1AccountAuthIdCallSpeakDelete")
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

<a id="apiV1AccountAuthIdCallSpeakPost"></a>
# **apiV1AccountAuthIdCallSpeakPost**
> apiV1AccountAuthIdCallSpeakPost(authId, xAuthID, xAuthToken, contentType, body)

Speak Text on a Call (TTS)

Convert text to speech and play it during an active call. Supports 29 languages.

### Example
```kotlin
// Import classes:
//import ai.vobiz.infrastructure.*
//import ai.vobiz.models.*

val apiInstance = CallApi()
val authId : kotlin.String = authId_example // kotlin.String | 
val xAuthID : kotlin.String = {{auth_id}} // kotlin.String | 
val xAuthToken : kotlin.String = {{auth_token}} // kotlin.String | 
val contentType : kotlin.String = application/json // kotlin.String | 
val body : kotlin.Any = Object // kotlin.Any | 
try {
    apiInstance.apiV1AccountAuthIdCallSpeakPost(authId, xAuthID, xAuthToken, contentType, body)
} catch (e: ClientException) {
    println("4xx response calling CallApi#apiV1AccountAuthIdCallSpeakPost")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CallApi#apiV1AccountAuthIdCallSpeakPost")
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

