# ConferenceApi

All URIs are relative to *https://api.vobiz.ai*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**apiV1AccountAuthIdConferenceDelete**](ConferenceApi.md#apiV1AccountAuthIdConferenceDelete) | **DELETE** /api/v1/Account/{auth_id}/Conference/ | Hang Up All Conferences |
| [**apiV1AccountAuthIdConferenceDelete_0**](ConferenceApi.md#apiV1AccountAuthIdConferenceDelete_0) | **DELETE** /api/v1/Account/{auth_id}/Conference/{}/ | Hang Up a Conference |
| [**apiV1AccountAuthIdConferenceGet**](ConferenceApi.md#apiV1AccountAuthIdConferenceGet) | **GET** /api/v1/Account/{auth_id}/Conference/ | List All Conferences |
| [**apiV1AccountAuthIdConferenceGet_0**](ConferenceApi.md#apiV1AccountAuthIdConferenceGet_0) | **GET** /api/v1/Account/{auth_id}/Conference/{}/ | Retrieve a Conference |
| [**apiV1AccountAuthIdConferenceMemberDeafDelete**](ConferenceApi.md#apiV1AccountAuthIdConferenceMemberDeafDelete) | **DELETE** /api/v1/Account/{auth_id}/Conference/{}/Member/{}/Deaf/ | Undeaf a Conference Member |
| [**apiV1AccountAuthIdConferenceMemberDeafPost**](ConferenceApi.md#apiV1AccountAuthIdConferenceMemberDeafPost) | **POST** /api/v1/Account/{auth_id}/Conference/{}/Member/{}/Deaf/ | Deaf a Conference Member |
| [**apiV1AccountAuthIdConferenceMemberDelete**](ConferenceApi.md#apiV1AccountAuthIdConferenceMemberDelete) | **DELETE** /api/v1/Account/{auth_id}/Conference/{}/Member/{}/ | Hang Up a Conference Member |
| [**apiV1AccountAuthIdConferenceMemberKickPost**](ConferenceApi.md#apiV1AccountAuthIdConferenceMemberKickPost) | **POST** /api/v1/Account/{auth_id}/Conference/{}/Member/{}/Kick/ | Kick a Conference Member |
| [**apiV1AccountAuthIdConferenceMemberMuteDelete**](ConferenceApi.md#apiV1AccountAuthIdConferenceMemberMuteDelete) | **DELETE** /api/v1/Account/{auth_id}/Conference/{}/Member/{}/Mute/ | Unmute a Conference Member |
| [**apiV1AccountAuthIdConferenceMemberMutePost**](ConferenceApi.md#apiV1AccountAuthIdConferenceMemberMutePost) | **POST** /api/v1/Account/{auth_id}/Conference/{}/Member/{}/Mute/ | Mute a Conference Member |
| [**apiV1AccountAuthIdConferenceMemberPlayDelete**](ConferenceApi.md#apiV1AccountAuthIdConferenceMemberPlayDelete) | **DELETE** /api/v1/Account/{auth_id}/Conference/{}/Member/{}/Play/ | Stop Playing Audio to a Conference Member |
| [**apiV1AccountAuthIdConferenceMemberPlayPost**](ConferenceApi.md#apiV1AccountAuthIdConferenceMemberPlayPost) | **POST** /api/v1/Account/{auth_id}/Conference/{}/Member/{}/Play/ | Play Audio to a Conference Member |
| [**apiV1AccountAuthIdConferenceRecordDelete**](ConferenceApi.md#apiV1AccountAuthIdConferenceRecordDelete) | **DELETE** /api/v1/Account/{auth_id}/Conference/{}/Record/ | Stop Conference Recording |
| [**apiV1AccountAuthIdConferenceRecordPost**](ConferenceApi.md#apiV1AccountAuthIdConferenceRecordPost) | **POST** /api/v1/Account/{auth_id}/Conference/{}/Record/ | Start Conference Recording |


<a id="apiV1AccountAuthIdConferenceDelete"></a>
# **apiV1AccountAuthIdConferenceDelete**
> apiV1AccountAuthIdConferenceDelete(authId, xAuthID, xAuthToken, contentType)

Hang Up All Conferences

Terminate all ongoing conferences simultaneously. Returns 204 No Content.

### Example
```kotlin
// Import classes:
//import ai.vobiz.infrastructure.*
//import ai.vobiz.models.*

val apiInstance = ConferenceApi()
val authId : kotlin.String = authId_example // kotlin.String | 
val xAuthID : kotlin.String = {{auth_id}} // kotlin.String | 
val xAuthToken : kotlin.String = {{auth_token}} // kotlin.String | 
val contentType : kotlin.String = application/json // kotlin.String | 
try {
    apiInstance.apiV1AccountAuthIdConferenceDelete(authId, xAuthID, xAuthToken, contentType)
} catch (e: ClientException) {
    println("4xx response calling ConferenceApi#apiV1AccountAuthIdConferenceDelete")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ConferenceApi#apiV1AccountAuthIdConferenceDelete")
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

<a id="apiV1AccountAuthIdConferenceDelete_0"></a>
# **apiV1AccountAuthIdConferenceDelete_0**
> apiV1AccountAuthIdConferenceDelete_0(authId, xAuthID, xAuthToken, contentType)

Hang Up a Conference

Terminate a specific conference and disconnect all participants. Returns 204 No Content.

### Example
```kotlin
// Import classes:
//import ai.vobiz.infrastructure.*
//import ai.vobiz.models.*

val apiInstance = ConferenceApi()
val authId : kotlin.String = authId_example // kotlin.String | 
val xAuthID : kotlin.String = {{auth_id}} // kotlin.String | 
val xAuthToken : kotlin.String = {{auth_token}} // kotlin.String | 
val contentType : kotlin.String = application/json // kotlin.String | 
try {
    apiInstance.apiV1AccountAuthIdConferenceDelete_0(authId, xAuthID, xAuthToken, contentType)
} catch (e: ClientException) {
    println("4xx response calling ConferenceApi#apiV1AccountAuthIdConferenceDelete_0")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ConferenceApi#apiV1AccountAuthIdConferenceDelete_0")
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

<a id="apiV1AccountAuthIdConferenceGet"></a>
# **apiV1AccountAuthIdConferenceGet**
> apiV1AccountAuthIdConferenceGet(authId, xAuthID, xAuthToken, contentType)

List All Conferences

Retrieve a list of all ongoing conferences.

### Example
```kotlin
// Import classes:
//import ai.vobiz.infrastructure.*
//import ai.vobiz.models.*

val apiInstance = ConferenceApi()
val authId : kotlin.String = authId_example // kotlin.String | 
val xAuthID : kotlin.String = {{auth_id}} // kotlin.String | 
val xAuthToken : kotlin.String = {{auth_token}} // kotlin.String | 
val contentType : kotlin.String = application/json // kotlin.String | 
try {
    apiInstance.apiV1AccountAuthIdConferenceGet(authId, xAuthID, xAuthToken, contentType)
} catch (e: ClientException) {
    println("4xx response calling ConferenceApi#apiV1AccountAuthIdConferenceGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ConferenceApi#apiV1AccountAuthIdConferenceGet")
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

<a id="apiV1AccountAuthIdConferenceGet_0"></a>
# **apiV1AccountAuthIdConferenceGet_0**
> apiV1AccountAuthIdConferenceGet_0(authId, xAuthID, xAuthToken, contentType)

Retrieve a Conference

Get detailed information about a specific ongoing conference including all active members.

### Example
```kotlin
// Import classes:
//import ai.vobiz.infrastructure.*
//import ai.vobiz.models.*

val apiInstance = ConferenceApi()
val authId : kotlin.String = authId_example // kotlin.String | 
val xAuthID : kotlin.String = {{auth_id}} // kotlin.String | 
val xAuthToken : kotlin.String = {{auth_token}} // kotlin.String | 
val contentType : kotlin.String = application/json // kotlin.String | 
try {
    apiInstance.apiV1AccountAuthIdConferenceGet_0(authId, xAuthID, xAuthToken, contentType)
} catch (e: ClientException) {
    println("4xx response calling ConferenceApi#apiV1AccountAuthIdConferenceGet_0")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ConferenceApi#apiV1AccountAuthIdConferenceGet_0")
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

<a id="apiV1AccountAuthIdConferenceMemberDeafDelete"></a>
# **apiV1AccountAuthIdConferenceMemberDeafDelete**
> apiV1AccountAuthIdConferenceMemberDeafDelete(authId, xAuthID, xAuthToken, contentType)

Undeaf a Conference Member

Restore audio reception for previously deafened members.

### Example
```kotlin
// Import classes:
//import ai.vobiz.infrastructure.*
//import ai.vobiz.models.*

val apiInstance = ConferenceApi()
val authId : kotlin.String = authId_example // kotlin.String | 
val xAuthID : kotlin.String = {{auth_id}} // kotlin.String | 
val xAuthToken : kotlin.String = {{auth_token}} // kotlin.String | 
val contentType : kotlin.String = application/json // kotlin.String | 
try {
    apiInstance.apiV1AccountAuthIdConferenceMemberDeafDelete(authId, xAuthID, xAuthToken, contentType)
} catch (e: ClientException) {
    println("4xx response calling ConferenceApi#apiV1AccountAuthIdConferenceMemberDeafDelete")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ConferenceApi#apiV1AccountAuthIdConferenceMemberDeafDelete")
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

<a id="apiV1AccountAuthIdConferenceMemberDeafPost"></a>
# **apiV1AccountAuthIdConferenceMemberDeafPost**
> apiV1AccountAuthIdConferenceMemberDeafPost(authId, xAuthID, xAuthToken, contentType)

Deaf a Conference Member

Prevent member(s) from hearing other participants.

### Example
```kotlin
// Import classes:
//import ai.vobiz.infrastructure.*
//import ai.vobiz.models.*

val apiInstance = ConferenceApi()
val authId : kotlin.String = authId_example // kotlin.String | 
val xAuthID : kotlin.String = {{auth_id}} // kotlin.String | 
val xAuthToken : kotlin.String = {{auth_token}} // kotlin.String | 
val contentType : kotlin.String = application/json // kotlin.String | 
try {
    apiInstance.apiV1AccountAuthIdConferenceMemberDeafPost(authId, xAuthID, xAuthToken, contentType)
} catch (e: ClientException) {
    println("4xx response calling ConferenceApi#apiV1AccountAuthIdConferenceMemberDeafPost")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ConferenceApi#apiV1AccountAuthIdConferenceMemberDeafPost")
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

<a id="apiV1AccountAuthIdConferenceMemberDelete"></a>
# **apiV1AccountAuthIdConferenceMemberDelete**
> apiV1AccountAuthIdConferenceMemberDelete(authId, xAuthID, xAuthToken, contentType)

Hang Up a Conference Member

Disconnect a member by terminating their call. Returns 204 No Content.

### Example
```kotlin
// Import classes:
//import ai.vobiz.infrastructure.*
//import ai.vobiz.models.*

val apiInstance = ConferenceApi()
val authId : kotlin.String = authId_example // kotlin.String | 
val xAuthID : kotlin.String = {{auth_id}} // kotlin.String | 
val xAuthToken : kotlin.String = {{auth_token}} // kotlin.String | 
val contentType : kotlin.String = application/json // kotlin.String | 
try {
    apiInstance.apiV1AccountAuthIdConferenceMemberDelete(authId, xAuthID, xAuthToken, contentType)
} catch (e: ClientException) {
    println("4xx response calling ConferenceApi#apiV1AccountAuthIdConferenceMemberDelete")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ConferenceApi#apiV1AccountAuthIdConferenceMemberDelete")
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

<a id="apiV1AccountAuthIdConferenceMemberKickPost"></a>
# **apiV1AccountAuthIdConferenceMemberKickPost**
> apiV1AccountAuthIdConferenceMemberKickPost(authId, xAuthID, xAuthToken, contentType)

Kick a Conference Member

Disconnect a member while allowing XML flow continuation.

### Example
```kotlin
// Import classes:
//import ai.vobiz.infrastructure.*
//import ai.vobiz.models.*

val apiInstance = ConferenceApi()
val authId : kotlin.String = authId_example // kotlin.String | 
val xAuthID : kotlin.String = {{auth_id}} // kotlin.String | 
val xAuthToken : kotlin.String = {{auth_token}} // kotlin.String | 
val contentType : kotlin.String = application/json // kotlin.String | 
try {
    apiInstance.apiV1AccountAuthIdConferenceMemberKickPost(authId, xAuthID, xAuthToken, contentType)
} catch (e: ClientException) {
    println("4xx response calling ConferenceApi#apiV1AccountAuthIdConferenceMemberKickPost")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ConferenceApi#apiV1AccountAuthIdConferenceMemberKickPost")
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

<a id="apiV1AccountAuthIdConferenceMemberMuteDelete"></a>
# **apiV1AccountAuthIdConferenceMemberMuteDelete**
> apiV1AccountAuthIdConferenceMemberMuteDelete(authId, xAuthID, xAuthToken, contentType)

Unmute a Conference Member

Restore audio from previously muted members.

### Example
```kotlin
// Import classes:
//import ai.vobiz.infrastructure.*
//import ai.vobiz.models.*

val apiInstance = ConferenceApi()
val authId : kotlin.String = authId_example // kotlin.String | 
val xAuthID : kotlin.String = {{auth_id}} // kotlin.String | 
val xAuthToken : kotlin.String = {{auth_token}} // kotlin.String | 
val contentType : kotlin.String = application/json // kotlin.String | 
try {
    apiInstance.apiV1AccountAuthIdConferenceMemberMuteDelete(authId, xAuthID, xAuthToken, contentType)
} catch (e: ClientException) {
    println("4xx response calling ConferenceApi#apiV1AccountAuthIdConferenceMemberMuteDelete")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ConferenceApi#apiV1AccountAuthIdConferenceMemberMuteDelete")
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

<a id="apiV1AccountAuthIdConferenceMemberMutePost"></a>
# **apiV1AccountAuthIdConferenceMemberMutePost**
> apiV1AccountAuthIdConferenceMemberMutePost(authId, xAuthID, xAuthToken, contentType)

Mute a Conference Member

Mute member(s) so others cannot hear them.

### Example
```kotlin
// Import classes:
//import ai.vobiz.infrastructure.*
//import ai.vobiz.models.*

val apiInstance = ConferenceApi()
val authId : kotlin.String = authId_example // kotlin.String | 
val xAuthID : kotlin.String = {{auth_id}} // kotlin.String | 
val xAuthToken : kotlin.String = {{auth_token}} // kotlin.String | 
val contentType : kotlin.String = application/json // kotlin.String | 
try {
    apiInstance.apiV1AccountAuthIdConferenceMemberMutePost(authId, xAuthID, xAuthToken, contentType)
} catch (e: ClientException) {
    println("4xx response calling ConferenceApi#apiV1AccountAuthIdConferenceMemberMutePost")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ConferenceApi#apiV1AccountAuthIdConferenceMemberMutePost")
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

<a id="apiV1AccountAuthIdConferenceMemberPlayDelete"></a>
# **apiV1AccountAuthIdConferenceMemberPlayDelete**
> apiV1AccountAuthIdConferenceMemberPlayDelete(authId, xAuthID, xAuthToken, contentType)

Stop Playing Audio to a Conference Member

Stop audio playback for specific member(s).

### Example
```kotlin
// Import classes:
//import ai.vobiz.infrastructure.*
//import ai.vobiz.models.*

val apiInstance = ConferenceApi()
val authId : kotlin.String = authId_example // kotlin.String | 
val xAuthID : kotlin.String = {{auth_id}} // kotlin.String | 
val xAuthToken : kotlin.String = {{auth_token}} // kotlin.String | 
val contentType : kotlin.String = application/json // kotlin.String | 
try {
    apiInstance.apiV1AccountAuthIdConferenceMemberPlayDelete(authId, xAuthID, xAuthToken, contentType)
} catch (e: ClientException) {
    println("4xx response calling ConferenceApi#apiV1AccountAuthIdConferenceMemberPlayDelete")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ConferenceApi#apiV1AccountAuthIdConferenceMemberPlayDelete")
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

<a id="apiV1AccountAuthIdConferenceMemberPlayPost"></a>
# **apiV1AccountAuthIdConferenceMemberPlayPost**
> apiV1AccountAuthIdConferenceMemberPlayPost(authId, xAuthID, xAuthToken, contentType, body)

Play Audio to a Conference Member

Play audio to specific member(s). Only targeted member(s) hear the audio.

### Example
```kotlin
// Import classes:
//import ai.vobiz.infrastructure.*
//import ai.vobiz.models.*

val apiInstance = ConferenceApi()
val authId : kotlin.String = authId_example // kotlin.String | 
val xAuthID : kotlin.String = {{auth_id}} // kotlin.String | 
val xAuthToken : kotlin.String = {{auth_token}} // kotlin.String | 
val contentType : kotlin.String = application/json // kotlin.String | 
val body : kotlin.Any = Object // kotlin.Any | 
try {
    apiInstance.apiV1AccountAuthIdConferenceMemberPlayPost(authId, xAuthID, xAuthToken, contentType, body)
} catch (e: ClientException) {
    println("4xx response calling ConferenceApi#apiV1AccountAuthIdConferenceMemberPlayPost")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ConferenceApi#apiV1AccountAuthIdConferenceMemberPlayPost")
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

<a id="apiV1AccountAuthIdConferenceRecordDelete"></a>
# **apiV1AccountAuthIdConferenceRecordDelete**
> apiV1AccountAuthIdConferenceRecordDelete(authId, xAuthID, xAuthToken, contentType)

Stop Conference Recording

Stop an active conference recording. Returns 204 No Content.

### Example
```kotlin
// Import classes:
//import ai.vobiz.infrastructure.*
//import ai.vobiz.models.*

val apiInstance = ConferenceApi()
val authId : kotlin.String = authId_example // kotlin.String | 
val xAuthID : kotlin.String = {{auth_id}} // kotlin.String | 
val xAuthToken : kotlin.String = {{auth_token}} // kotlin.String | 
val contentType : kotlin.String = application/json // kotlin.String | 
try {
    apiInstance.apiV1AccountAuthIdConferenceRecordDelete(authId, xAuthID, xAuthToken, contentType)
} catch (e: ClientException) {
    println("4xx response calling ConferenceApi#apiV1AccountAuthIdConferenceRecordDelete")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ConferenceApi#apiV1AccountAuthIdConferenceRecordDelete")
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

<a id="apiV1AccountAuthIdConferenceRecordPost"></a>
# **apiV1AccountAuthIdConferenceRecordPost**
> apiV1AccountAuthIdConferenceRecordPost(authId, xAuthID, xAuthToken, contentType, body)

Start Conference Recording

Begin recording a conference call.

### Example
```kotlin
// Import classes:
//import ai.vobiz.infrastructure.*
//import ai.vobiz.models.*

val apiInstance = ConferenceApi()
val authId : kotlin.String = authId_example // kotlin.String | 
val xAuthID : kotlin.String = {{auth_id}} // kotlin.String | 
val xAuthToken : kotlin.String = {{auth_token}} // kotlin.String | 
val contentType : kotlin.String = application/json // kotlin.String | 
val body : kotlin.Any = Object // kotlin.Any | 
try {
    apiInstance.apiV1AccountAuthIdConferenceRecordPost(authId, xAuthID, xAuthToken, contentType, body)
} catch (e: ClientException) {
    println("4xx response calling ConferenceApi#apiV1AccountAuthIdConferenceRecordPost")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ConferenceApi#apiV1AccountAuthIdConferenceRecordPost")
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

