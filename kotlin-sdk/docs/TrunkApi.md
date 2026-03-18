# TrunkApi

All URIs are relative to *https://api.vobiz.ai*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**apiV1AccountAccountIdCredentialsCredentialIdDelete**](TrunkApi.md#apiV1AccountAccountIdCredentialsCredentialIdDelete) | **DELETE** /api/v1/account/{account_id}/credentials/:credential_id | Delete a Credential |
| [**apiV1AccountAccountIdCredentialsCredentialIdPut**](TrunkApi.md#apiV1AccountAccountIdCredentialsCredentialIdPut) | **PUT** /api/v1/account/{account_id}/credentials/:credential_id | Update a Credential |
| [**apiV1AccountAccountIdCredentialsPost**](TrunkApi.md#apiV1AccountAccountIdCredentialsPost) | **POST** /api/v1/account/{account_id}/credentials | Create Credential |
| [**apiV1AccountAccountIdIpAclIpAclIdDelete**](TrunkApi.md#apiV1AccountAccountIdIpAclIpAclIdDelete) | **DELETE** /api/v1/account/{account_id}/ip-acl/:ip_acl_id | Delete an IP ACL |
| [**apiV1AccountAccountIdIpAclIpAclIdPut**](TrunkApi.md#apiV1AccountAccountIdIpAclIpAclIdPut) | **PUT** /api/v1/account/{account_id}/ip-acl/:ip_acl_id | Update an IP ACL |
| [**apiV1AccountAccountIdIpAclPost**](TrunkApi.md#apiV1AccountAccountIdIpAclPost) | **POST** /api/v1/account/{account_id}/ip-acl | Create IP ACL |
| [**apiV1AccountAccountIdNumbersAssignDelete**](TrunkApi.md#apiV1AccountAccountIdNumbersAssignDelete) | **DELETE** /api/v1/account/{account_id}/numbers/{}/assign | Unassign Number from Trunk |
| [**apiV1AccountAccountIdNumbersAssignPost**](TrunkApi.md#apiV1AccountAccountIdNumbersAssignPost) | **POST** /api/v1/account/{account_id}/numbers/{}/assign | Assign Number to Trunk |
| [**apiV1AccountAccountIdOriginationUrisPost**](TrunkApi.md#apiV1AccountAccountIdOriginationUrisPost) | **POST** /api/v1/account/{account_id}/origination-uris | Create Origination URI |
| [**apiV1AccountAccountIdOriginationUrisUriIdDelete**](TrunkApi.md#apiV1AccountAccountIdOriginationUrisUriIdDelete) | **DELETE** /api/v1/account/{account_id}/origination-uris/:uri_id | Delete an Origination URI |
| [**apiV1AccountAccountIdOriginationUrisUriIdPut**](TrunkApi.md#apiV1AccountAccountIdOriginationUrisUriIdPut) | **PUT** /api/v1/account/{account_id}/origination-uris/:uri_id | Update an Origination URI |
| [**apiV1AccountAccountIdTrunksCredentialsGet**](TrunkApi.md#apiV1AccountAccountIdTrunksCredentialsGet) | **GET** /api/v1/account/{account_id}/trunks/credentials | List All Credentials |
| [**apiV1AccountAccountIdTrunksGet**](TrunkApi.md#apiV1AccountAccountIdTrunksGet) | **GET** /api/v1/account/{account_id}/trunks | List All Trunks |
| [**apiV1AccountAccountIdTrunksIpAclGet**](TrunkApi.md#apiV1AccountAccountIdTrunksIpAclGet) | **GET** /api/v1/account/{account_id}/trunks/ip-acl | List All IP ACLs |
| [**apiV1AccountAccountIdTrunksOriginationUrisGet**](TrunkApi.md#apiV1AccountAccountIdTrunksOriginationUrisGet) | **GET** /api/v1/account/{account_id}/trunks/origination-uris | List All Origination URIs |
| [**apiV1AccountAccountIdTrunksPost**](TrunkApi.md#apiV1AccountAccountIdTrunksPost) | **POST** /api/v1/account/{account_id}/trunks | Create Trunk |
| [**apiV1AccountAccountIdTrunksTrunkIdDelete**](TrunkApi.md#apiV1AccountAccountIdTrunksTrunkIdDelete) | **DELETE** /api/v1/account/{account_id}/trunks/:trunk_id | Delete a Trunk |
| [**apiV1AccountAccountIdTrunksTrunkIdGet**](TrunkApi.md#apiV1AccountAccountIdTrunksTrunkIdGet) | **GET** /api/v1/account/{account_id}/trunks/:trunk_id | Retrieve a Trunk |
| [**apiV1AccountAccountIdTrunksTrunkIdPut**](TrunkApi.md#apiV1AccountAccountIdTrunksTrunkIdPut) | **PUT** /api/v1/account/{account_id}/trunks/:trunk_id | Update a Trunk |


<a id="apiV1AccountAccountIdCredentialsCredentialIdDelete"></a>
# **apiV1AccountAccountIdCredentialsCredentialIdDelete**
> apiV1AccountAccountIdCredentialsCredentialIdDelete(accountId, xAuthID, xAuthToken, contentType)

Delete a Credential

Delete a SIP credential. Returns 204 No Content.

### Example
```kotlin
// Import classes:
//import ai.vobiz.infrastructure.*
//import ai.vobiz.models.*

val apiInstance = TrunkApi()
val accountId : kotlin.String = accountId_example // kotlin.String | 
val xAuthID : kotlin.String = {{auth_id}} // kotlin.String | 
val xAuthToken : kotlin.String = {{auth_token}} // kotlin.String | 
val contentType : kotlin.String = application/json // kotlin.String | 
try {
    apiInstance.apiV1AccountAccountIdCredentialsCredentialIdDelete(accountId, xAuthID, xAuthToken, contentType)
} catch (e: ClientException) {
    println("4xx response calling TrunkApi#apiV1AccountAccountIdCredentialsCredentialIdDelete")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling TrunkApi#apiV1AccountAccountIdCredentialsCredentialIdDelete")
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

<a id="apiV1AccountAccountIdCredentialsCredentialIdPut"></a>
# **apiV1AccountAccountIdCredentialsCredentialIdPut**
> apiV1AccountAccountIdCredentialsCredentialIdPut(accountId, xAuthID, xAuthToken, contentType, body)

Update a Credential

Update SIP credential settings.

### Example
```kotlin
// Import classes:
//import ai.vobiz.infrastructure.*
//import ai.vobiz.models.*

val apiInstance = TrunkApi()
val accountId : kotlin.String = accountId_example // kotlin.String | 
val xAuthID : kotlin.String = {{auth_id}} // kotlin.String | 
val xAuthToken : kotlin.String = {{auth_token}} // kotlin.String | 
val contentType : kotlin.String = application/json // kotlin.String | 
val body : kotlin.Any = Object // kotlin.Any | 
try {
    apiInstance.apiV1AccountAccountIdCredentialsCredentialIdPut(accountId, xAuthID, xAuthToken, contentType, body)
} catch (e: ClientException) {
    println("4xx response calling TrunkApi#apiV1AccountAccountIdCredentialsCredentialIdPut")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling TrunkApi#apiV1AccountAccountIdCredentialsCredentialIdPut")
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

<a id="apiV1AccountAccountIdCredentialsPost"></a>
# **apiV1AccountAccountIdCredentialsPost**
> apiV1AccountAccountIdCredentialsPost(accountId, xAuthID, xAuthToken, contentType, body)

Create Credential

Create SIP authentication credentials for a trunk.

### Example
```kotlin
// Import classes:
//import ai.vobiz.infrastructure.*
//import ai.vobiz.models.*

val apiInstance = TrunkApi()
val accountId : kotlin.String = accountId_example // kotlin.String | 
val xAuthID : kotlin.String = {{auth_id}} // kotlin.String | 
val xAuthToken : kotlin.String = {{auth_token}} // kotlin.String | 
val contentType : kotlin.String = application/json // kotlin.String | 
val body : kotlin.Any = Object // kotlin.Any | 
try {
    apiInstance.apiV1AccountAccountIdCredentialsPost(accountId, xAuthID, xAuthToken, contentType, body)
} catch (e: ClientException) {
    println("4xx response calling TrunkApi#apiV1AccountAccountIdCredentialsPost")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling TrunkApi#apiV1AccountAccountIdCredentialsPost")
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

<a id="apiV1AccountAccountIdIpAclIpAclIdDelete"></a>
# **apiV1AccountAccountIdIpAclIpAclIdDelete**
> apiV1AccountAccountIdIpAclIpAclIdDelete(accountId, xAuthID, xAuthToken, contentType)

Delete an IP ACL

Delete an IP ACL entry. Returns 204 No Content.

### Example
```kotlin
// Import classes:
//import ai.vobiz.infrastructure.*
//import ai.vobiz.models.*

val apiInstance = TrunkApi()
val accountId : kotlin.String = accountId_example // kotlin.String | 
val xAuthID : kotlin.String = {{auth_id}} // kotlin.String | 
val xAuthToken : kotlin.String = {{auth_token}} // kotlin.String | 
val contentType : kotlin.String = application/json // kotlin.String | 
try {
    apiInstance.apiV1AccountAccountIdIpAclIpAclIdDelete(accountId, xAuthID, xAuthToken, contentType)
} catch (e: ClientException) {
    println("4xx response calling TrunkApi#apiV1AccountAccountIdIpAclIpAclIdDelete")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling TrunkApi#apiV1AccountAccountIdIpAclIpAclIdDelete")
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

<a id="apiV1AccountAccountIdIpAclIpAclIdPut"></a>
# **apiV1AccountAccountIdIpAclIpAclIdPut**
> apiV1AccountAccountIdIpAclIpAclIdPut(accountId, xAuthID, xAuthToken, contentType, body)

Update an IP ACL

Update an IP ACL entry.

### Example
```kotlin
// Import classes:
//import ai.vobiz.infrastructure.*
//import ai.vobiz.models.*

val apiInstance = TrunkApi()
val accountId : kotlin.String = accountId_example // kotlin.String | 
val xAuthID : kotlin.String = {{auth_id}} // kotlin.String | 
val xAuthToken : kotlin.String = {{auth_token}} // kotlin.String | 
val contentType : kotlin.String = application/json // kotlin.String | 
val body : kotlin.Any = Object // kotlin.Any | 
try {
    apiInstance.apiV1AccountAccountIdIpAclIpAclIdPut(accountId, xAuthID, xAuthToken, contentType, body)
} catch (e: ClientException) {
    println("4xx response calling TrunkApi#apiV1AccountAccountIdIpAclIpAclIdPut")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling TrunkApi#apiV1AccountAccountIdIpAclIpAclIdPut")
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

<a id="apiV1AccountAccountIdIpAclPost"></a>
# **apiV1AccountAccountIdIpAclPost**
> apiV1AccountAccountIdIpAclPost(accountId, xAuthID, xAuthToken, contentType, body)

Create IP ACL

Create an IP Access Control List entry for trunk authentication.

### Example
```kotlin
// Import classes:
//import ai.vobiz.infrastructure.*
//import ai.vobiz.models.*

val apiInstance = TrunkApi()
val accountId : kotlin.String = accountId_example // kotlin.String | 
val xAuthID : kotlin.String = {{auth_id}} // kotlin.String | 
val xAuthToken : kotlin.String = {{auth_token}} // kotlin.String | 
val contentType : kotlin.String = application/json // kotlin.String | 
val body : kotlin.Any = Object // kotlin.Any | 
try {
    apiInstance.apiV1AccountAccountIdIpAclPost(accountId, xAuthID, xAuthToken, contentType, body)
} catch (e: ClientException) {
    println("4xx response calling TrunkApi#apiV1AccountAccountIdIpAclPost")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling TrunkApi#apiV1AccountAccountIdIpAclPost")
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

<a id="apiV1AccountAccountIdNumbersAssignDelete"></a>
# **apiV1AccountAccountIdNumbersAssignDelete**
> apiV1AccountAccountIdNumbersAssignDelete(accountId, xAuthID, xAuthToken, contentType)

Unassign Number from Trunk

Remove a phone number from its trunk assignment. Returns 204 No Content.

### Example
```kotlin
// Import classes:
//import ai.vobiz.infrastructure.*
//import ai.vobiz.models.*

val apiInstance = TrunkApi()
val accountId : kotlin.String = accountId_example // kotlin.String | 
val xAuthID : kotlin.String = {{auth_id}} // kotlin.String | 
val xAuthToken : kotlin.String = {{auth_token}} // kotlin.String | 
val contentType : kotlin.String = application/json // kotlin.String | 
try {
    apiInstance.apiV1AccountAccountIdNumbersAssignDelete(accountId, xAuthID, xAuthToken, contentType)
} catch (e: ClientException) {
    println("4xx response calling TrunkApi#apiV1AccountAccountIdNumbersAssignDelete")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling TrunkApi#apiV1AccountAccountIdNumbersAssignDelete")
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

<a id="apiV1AccountAccountIdNumbersAssignPost"></a>
# **apiV1AccountAccountIdNumbersAssignPost**
> apiV1AccountAccountIdNumbersAssignPost(accountId, xAuthID, xAuthToken, contentType, body)

Assign Number to Trunk

Assign a phone number to a trunk group.

### Example
```kotlin
// Import classes:
//import ai.vobiz.infrastructure.*
//import ai.vobiz.models.*

val apiInstance = TrunkApi()
val accountId : kotlin.String = accountId_example // kotlin.String | 
val xAuthID : kotlin.String = {{auth_id}} // kotlin.String | 
val xAuthToken : kotlin.String = {{auth_token}} // kotlin.String | 
val contentType : kotlin.String = application/json // kotlin.String | 
val body : kotlin.Any = Object // kotlin.Any | 
try {
    apiInstance.apiV1AccountAccountIdNumbersAssignPost(accountId, xAuthID, xAuthToken, contentType, body)
} catch (e: ClientException) {
    println("4xx response calling TrunkApi#apiV1AccountAccountIdNumbersAssignPost")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling TrunkApi#apiV1AccountAccountIdNumbersAssignPost")
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

<a id="apiV1AccountAccountIdOriginationUrisPost"></a>
# **apiV1AccountAccountIdOriginationUrisPost**
> apiV1AccountAccountIdOriginationUrisPost(accountId, xAuthID, xAuthToken, contentType, body)

Create Origination URI

Create an origination URI for inbound SIP routing.

### Example
```kotlin
// Import classes:
//import ai.vobiz.infrastructure.*
//import ai.vobiz.models.*

val apiInstance = TrunkApi()
val accountId : kotlin.String = accountId_example // kotlin.String | 
val xAuthID : kotlin.String = {{auth_id}} // kotlin.String | 
val xAuthToken : kotlin.String = {{auth_token}} // kotlin.String | 
val contentType : kotlin.String = application/json // kotlin.String | 
val body : kotlin.Any = Object // kotlin.Any | 
try {
    apiInstance.apiV1AccountAccountIdOriginationUrisPost(accountId, xAuthID, xAuthToken, contentType, body)
} catch (e: ClientException) {
    println("4xx response calling TrunkApi#apiV1AccountAccountIdOriginationUrisPost")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling TrunkApi#apiV1AccountAccountIdOriginationUrisPost")
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

<a id="apiV1AccountAccountIdOriginationUrisUriIdDelete"></a>
# **apiV1AccountAccountIdOriginationUrisUriIdDelete**
> apiV1AccountAccountIdOriginationUrisUriIdDelete(accountId, xAuthID, xAuthToken, contentType)

Delete an Origination URI

Delete an origination URI. Returns 204 No Content.

### Example
```kotlin
// Import classes:
//import ai.vobiz.infrastructure.*
//import ai.vobiz.models.*

val apiInstance = TrunkApi()
val accountId : kotlin.String = accountId_example // kotlin.String | 
val xAuthID : kotlin.String = {{auth_id}} // kotlin.String | 
val xAuthToken : kotlin.String = {{auth_token}} // kotlin.String | 
val contentType : kotlin.String = application/json // kotlin.String | 
try {
    apiInstance.apiV1AccountAccountIdOriginationUrisUriIdDelete(accountId, xAuthID, xAuthToken, contentType)
} catch (e: ClientException) {
    println("4xx response calling TrunkApi#apiV1AccountAccountIdOriginationUrisUriIdDelete")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling TrunkApi#apiV1AccountAccountIdOriginationUrisUriIdDelete")
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

<a id="apiV1AccountAccountIdOriginationUrisUriIdPut"></a>
# **apiV1AccountAccountIdOriginationUrisUriIdPut**
> apiV1AccountAccountIdOriginationUrisUriIdPut(accountId, xAuthID, xAuthToken, contentType, body)

Update an Origination URI

Update an origination URI.

### Example
```kotlin
// Import classes:
//import ai.vobiz.infrastructure.*
//import ai.vobiz.models.*

val apiInstance = TrunkApi()
val accountId : kotlin.String = accountId_example // kotlin.String | 
val xAuthID : kotlin.String = {{auth_id}} // kotlin.String | 
val xAuthToken : kotlin.String = {{auth_token}} // kotlin.String | 
val contentType : kotlin.String = application/json // kotlin.String | 
val body : kotlin.Any = Object // kotlin.Any | 
try {
    apiInstance.apiV1AccountAccountIdOriginationUrisUriIdPut(accountId, xAuthID, xAuthToken, contentType, body)
} catch (e: ClientException) {
    println("4xx response calling TrunkApi#apiV1AccountAccountIdOriginationUrisUriIdPut")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling TrunkApi#apiV1AccountAccountIdOriginationUrisUriIdPut")
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

<a id="apiV1AccountAccountIdTrunksCredentialsGet"></a>
# **apiV1AccountAccountIdTrunksCredentialsGet**
> apiV1AccountAccountIdTrunksCredentialsGet(accountId, xAuthID, xAuthToken, contentType, limit, offset)

List All Credentials

Retrieve all SIP credentials.

### Example
```kotlin
// Import classes:
//import ai.vobiz.infrastructure.*
//import ai.vobiz.models.*

val apiInstance = TrunkApi()
val accountId : kotlin.String = accountId_example // kotlin.String | 
val xAuthID : kotlin.String = {{auth_id}} // kotlin.String | 
val xAuthToken : kotlin.String = {{auth_token}} // kotlin.String | 
val contentType : kotlin.String = application/json // kotlin.String | 
val limit : kotlin.Int = 20 // kotlin.Int | Results per page
val offset : kotlin.Int = 0 // kotlin.Int | Pagination offset
try {
    apiInstance.apiV1AccountAccountIdTrunksCredentialsGet(accountId, xAuthID, xAuthToken, contentType, limit, offset)
} catch (e: ClientException) {
    println("4xx response calling TrunkApi#apiV1AccountAccountIdTrunksCredentialsGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling TrunkApi#apiV1AccountAccountIdTrunksCredentialsGet")
    e.printStackTrace()
}
```

### Parameters
| **accountId** | **kotlin.String**|  | |
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

<a id="apiV1AccountAccountIdTrunksGet"></a>
# **apiV1AccountAccountIdTrunksGet**
> apiV1AccountAccountIdTrunksGet(accountId, xAuthID, xAuthToken, contentType, limit, offset)

List All Trunks

Retrieve all trunks.

### Example
```kotlin
// Import classes:
//import ai.vobiz.infrastructure.*
//import ai.vobiz.models.*

val apiInstance = TrunkApi()
val accountId : kotlin.String = accountId_example // kotlin.String | 
val xAuthID : kotlin.String = {{auth_id}} // kotlin.String | 
val xAuthToken : kotlin.String = {{auth_token}} // kotlin.String | 
val contentType : kotlin.String = application/json // kotlin.String | 
val limit : kotlin.Int = 20 // kotlin.Int | Results per page
val offset : kotlin.Int = 0 // kotlin.Int | Pagination offset
try {
    apiInstance.apiV1AccountAccountIdTrunksGet(accountId, xAuthID, xAuthToken, contentType, limit, offset)
} catch (e: ClientException) {
    println("4xx response calling TrunkApi#apiV1AccountAccountIdTrunksGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling TrunkApi#apiV1AccountAccountIdTrunksGet")
    e.printStackTrace()
}
```

### Parameters
| **accountId** | **kotlin.String**|  | |
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

<a id="apiV1AccountAccountIdTrunksIpAclGet"></a>
# **apiV1AccountAccountIdTrunksIpAclGet**
> apiV1AccountAccountIdTrunksIpAclGet(accountId, xAuthID, xAuthToken, contentType, limit, offset)

List All IP ACLs

Retrieve all IP ACL entries.

### Example
```kotlin
// Import classes:
//import ai.vobiz.infrastructure.*
//import ai.vobiz.models.*

val apiInstance = TrunkApi()
val accountId : kotlin.String = accountId_example // kotlin.String | 
val xAuthID : kotlin.String = {{auth_id}} // kotlin.String | 
val xAuthToken : kotlin.String = {{auth_token}} // kotlin.String | 
val contentType : kotlin.String = application/json // kotlin.String | 
val limit : kotlin.Int = 20 // kotlin.Int | Results per page
val offset : kotlin.Int = 0 // kotlin.Int | Pagination offset
try {
    apiInstance.apiV1AccountAccountIdTrunksIpAclGet(accountId, xAuthID, xAuthToken, contentType, limit, offset)
} catch (e: ClientException) {
    println("4xx response calling TrunkApi#apiV1AccountAccountIdTrunksIpAclGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling TrunkApi#apiV1AccountAccountIdTrunksIpAclGet")
    e.printStackTrace()
}
```

### Parameters
| **accountId** | **kotlin.String**|  | |
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

<a id="apiV1AccountAccountIdTrunksOriginationUrisGet"></a>
# **apiV1AccountAccountIdTrunksOriginationUrisGet**
> apiV1AccountAccountIdTrunksOriginationUrisGet(accountId, xAuthID, xAuthToken, contentType, limit, offset)

List All Origination URIs

Retrieve all origination URIs.

### Example
```kotlin
// Import classes:
//import ai.vobiz.infrastructure.*
//import ai.vobiz.models.*

val apiInstance = TrunkApi()
val accountId : kotlin.String = accountId_example // kotlin.String | 
val xAuthID : kotlin.String = {{auth_id}} // kotlin.String | 
val xAuthToken : kotlin.String = {{auth_token}} // kotlin.String | 
val contentType : kotlin.String = application/json // kotlin.String | 
val limit : kotlin.Int = 20 // kotlin.Int | Results per page
val offset : kotlin.Int = 0 // kotlin.Int | Pagination offset
try {
    apiInstance.apiV1AccountAccountIdTrunksOriginationUrisGet(accountId, xAuthID, xAuthToken, contentType, limit, offset)
} catch (e: ClientException) {
    println("4xx response calling TrunkApi#apiV1AccountAccountIdTrunksOriginationUrisGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling TrunkApi#apiV1AccountAccountIdTrunksOriginationUrisGet")
    e.printStackTrace()
}
```

### Parameters
| **accountId** | **kotlin.String**|  | |
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

<a id="apiV1AccountAccountIdTrunksPost"></a>
# **apiV1AccountAccountIdTrunksPost**
> apiV1AccountAccountIdTrunksPost(accountId, xAuthID, xAuthToken, contentType, body)

Create Trunk

Create a new SIP trunk.

### Example
```kotlin
// Import classes:
//import ai.vobiz.infrastructure.*
//import ai.vobiz.models.*

val apiInstance = TrunkApi()
val accountId : kotlin.String = accountId_example // kotlin.String | 
val xAuthID : kotlin.String = {{auth_id}} // kotlin.String | 
val xAuthToken : kotlin.String = {{auth_token}} // kotlin.String | 
val contentType : kotlin.String = application/json // kotlin.String | 
val body : kotlin.Any = Object // kotlin.Any | 
try {
    apiInstance.apiV1AccountAccountIdTrunksPost(accountId, xAuthID, xAuthToken, contentType, body)
} catch (e: ClientException) {
    println("4xx response calling TrunkApi#apiV1AccountAccountIdTrunksPost")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling TrunkApi#apiV1AccountAccountIdTrunksPost")
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

<a id="apiV1AccountAccountIdTrunksTrunkIdDelete"></a>
# **apiV1AccountAccountIdTrunksTrunkIdDelete**
> apiV1AccountAccountIdTrunksTrunkIdDelete(accountId, xAuthID, xAuthToken, contentType)

Delete a Trunk

Delete a trunk. Returns 204 No Content.

### Example
```kotlin
// Import classes:
//import ai.vobiz.infrastructure.*
//import ai.vobiz.models.*

val apiInstance = TrunkApi()
val accountId : kotlin.String = accountId_example // kotlin.String | 
val xAuthID : kotlin.String = {{auth_id}} // kotlin.String | 
val xAuthToken : kotlin.String = {{auth_token}} // kotlin.String | 
val contentType : kotlin.String = application/json // kotlin.String | 
try {
    apiInstance.apiV1AccountAccountIdTrunksTrunkIdDelete(accountId, xAuthID, xAuthToken, contentType)
} catch (e: ClientException) {
    println("4xx response calling TrunkApi#apiV1AccountAccountIdTrunksTrunkIdDelete")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling TrunkApi#apiV1AccountAccountIdTrunksTrunkIdDelete")
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

<a id="apiV1AccountAccountIdTrunksTrunkIdGet"></a>
# **apiV1AccountAccountIdTrunksTrunkIdGet**
> apiV1AccountAccountIdTrunksTrunkIdGet(accountId, xAuthID, xAuthToken, contentType)

Retrieve a Trunk

Get details of a specific trunk.

### Example
```kotlin
// Import classes:
//import ai.vobiz.infrastructure.*
//import ai.vobiz.models.*

val apiInstance = TrunkApi()
val accountId : kotlin.String = accountId_example // kotlin.String | 
val xAuthID : kotlin.String = {{auth_id}} // kotlin.String | 
val xAuthToken : kotlin.String = {{auth_token}} // kotlin.String | 
val contentType : kotlin.String = application/json // kotlin.String | 
try {
    apiInstance.apiV1AccountAccountIdTrunksTrunkIdGet(accountId, xAuthID, xAuthToken, contentType)
} catch (e: ClientException) {
    println("4xx response calling TrunkApi#apiV1AccountAccountIdTrunksTrunkIdGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling TrunkApi#apiV1AccountAccountIdTrunksTrunkIdGet")
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

<a id="apiV1AccountAccountIdTrunksTrunkIdPut"></a>
# **apiV1AccountAccountIdTrunksTrunkIdPut**
> apiV1AccountAccountIdTrunksTrunkIdPut(accountId, xAuthID, xAuthToken, contentType, body)

Update a Trunk

Update an existing trunk.

### Example
```kotlin
// Import classes:
//import ai.vobiz.infrastructure.*
//import ai.vobiz.models.*

val apiInstance = TrunkApi()
val accountId : kotlin.String = accountId_example // kotlin.String | 
val xAuthID : kotlin.String = {{auth_id}} // kotlin.String | 
val xAuthToken : kotlin.String = {{auth_token}} // kotlin.String | 
val contentType : kotlin.String = application/json // kotlin.String | 
val body : kotlin.Any = Object // kotlin.Any | 
try {
    apiInstance.apiV1AccountAccountIdTrunksTrunkIdPut(accountId, xAuthID, xAuthToken, contentType, body)
} catch (e: ClientException) {
    println("4xx response calling TrunkApi#apiV1AccountAccountIdTrunksTrunkIdPut")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling TrunkApi#apiV1AccountAccountIdTrunksTrunkIdPut")
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

