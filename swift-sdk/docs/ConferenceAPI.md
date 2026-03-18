# ConferenceAPI

All URIs are relative to *https://api.vobiz.ai*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV1AccountAuthIdConferenceDelete**](ConferenceAPI.md#apiv1accountauthidconferencedelete) | **DELETE** /api/v1/Account/{auth_id}/Conference/ | Hang Up All Conferences
[**apiV1AccountAuthIdConferenceDelete_0**](ConferenceAPI.md#apiv1accountauthidconferencedelete_0) | **DELETE** /api/v1/Account/{auth_id}/Conference/{}/ | Hang Up a Conference
[**apiV1AccountAuthIdConferenceGet**](ConferenceAPI.md#apiv1accountauthidconferenceget) | **GET** /api/v1/Account/{auth_id}/Conference/ | List All Conferences
[**apiV1AccountAuthIdConferenceGet_0**](ConferenceAPI.md#apiv1accountauthidconferenceget_0) | **GET** /api/v1/Account/{auth_id}/Conference/{}/ | Retrieve a Conference
[**apiV1AccountAuthIdConferenceMemberDeafDelete**](ConferenceAPI.md#apiv1accountauthidconferencememberdeafdelete) | **DELETE** /api/v1/Account/{auth_id}/Conference/{}/Member/{}/Deaf/ | Undeaf a Conference Member
[**apiV1AccountAuthIdConferenceMemberDeafPost**](ConferenceAPI.md#apiv1accountauthidconferencememberdeafpost) | **POST** /api/v1/Account/{auth_id}/Conference/{}/Member/{}/Deaf/ | Deaf a Conference Member
[**apiV1AccountAuthIdConferenceMemberDelete**](ConferenceAPI.md#apiv1accountauthidconferencememberdelete) | **DELETE** /api/v1/Account/{auth_id}/Conference/{}/Member/{}/ | Hang Up a Conference Member
[**apiV1AccountAuthIdConferenceMemberKickPost**](ConferenceAPI.md#apiv1accountauthidconferencememberkickpost) | **POST** /api/v1/Account/{auth_id}/Conference/{}/Member/{}/Kick/ | Kick a Conference Member
[**apiV1AccountAuthIdConferenceMemberMuteDelete**](ConferenceAPI.md#apiv1accountauthidconferencemembermutedelete) | **DELETE** /api/v1/Account/{auth_id}/Conference/{}/Member/{}/Mute/ | Unmute a Conference Member
[**apiV1AccountAuthIdConferenceMemberMutePost**](ConferenceAPI.md#apiv1accountauthidconferencemembermutepost) | **POST** /api/v1/Account/{auth_id}/Conference/{}/Member/{}/Mute/ | Mute a Conference Member
[**apiV1AccountAuthIdConferenceMemberPlayDelete**](ConferenceAPI.md#apiv1accountauthidconferencememberplaydelete) | **DELETE** /api/v1/Account/{auth_id}/Conference/{}/Member/{}/Play/ | Stop Playing Audio to a Conference Member
[**apiV1AccountAuthIdConferenceMemberPlayPost**](ConferenceAPI.md#apiv1accountauthidconferencememberplaypost) | **POST** /api/v1/Account/{auth_id}/Conference/{}/Member/{}/Play/ | Play Audio to a Conference Member
[**apiV1AccountAuthIdConferenceRecordDelete**](ConferenceAPI.md#apiv1accountauthidconferencerecorddelete) | **DELETE** /api/v1/Account/{auth_id}/Conference/{}/Record/ | Stop Conference Recording
[**apiV1AccountAuthIdConferenceRecordPost**](ConferenceAPI.md#apiv1accountauthidconferencerecordpost) | **POST** /api/v1/Account/{auth_id}/Conference/{}/Record/ | Start Conference Recording


# **apiV1AccountAuthIdConferenceDelete**
```swift
    open class func apiV1AccountAuthIdConferenceDelete(authId: String, xAuthID: String? = nil, xAuthToken: String? = nil, contentType: String? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Hang Up All Conferences

Terminate all ongoing conferences simultaneously. Returns 204 No Content.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import VobizSDK

let authId = "authId_example" // String | 
let xAuthID = "xAuthID_example" // String |  (optional)
let xAuthToken = "xAuthToken_example" // String |  (optional)
let contentType = "contentType_example" // String |  (optional)

// Hang Up All Conferences
ConferenceAPI.apiV1AccountAuthIdConferenceDelete(authId: authId, xAuthID: xAuthID, xAuthToken: xAuthToken, contentType: contentType) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authId** | **String** |  | 
 **xAuthID** | **String** |  | [optional] 
 **xAuthToken** | **String** |  | [optional] 
 **contentType** | **String** |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[ApiKeyAuthID](../README.md#ApiKeyAuthID), [ApiKeyAuthToken](../README.md#ApiKeyAuthToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1AccountAuthIdConferenceDelete_0**
```swift
    open class func apiV1AccountAuthIdConferenceDelete_0(authId: String, xAuthID: String? = nil, xAuthToken: String? = nil, contentType: String? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Hang Up a Conference

Terminate a specific conference and disconnect all participants. Returns 204 No Content.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import VobizSDK

let authId = "authId_example" // String | 
let xAuthID = "xAuthID_example" // String |  (optional)
let xAuthToken = "xAuthToken_example" // String |  (optional)
let contentType = "contentType_example" // String |  (optional)

// Hang Up a Conference
ConferenceAPI.apiV1AccountAuthIdConferenceDelete_0(authId: authId, xAuthID: xAuthID, xAuthToken: xAuthToken, contentType: contentType) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authId** | **String** |  | 
 **xAuthID** | **String** |  | [optional] 
 **xAuthToken** | **String** |  | [optional] 
 **contentType** | **String** |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[ApiKeyAuthID](../README.md#ApiKeyAuthID), [ApiKeyAuthToken](../README.md#ApiKeyAuthToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1AccountAuthIdConferenceGet**
```swift
    open class func apiV1AccountAuthIdConferenceGet(authId: String, xAuthID: String? = nil, xAuthToken: String? = nil, contentType: String? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

List All Conferences

Retrieve a list of all ongoing conferences.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import VobizSDK

let authId = "authId_example" // String | 
let xAuthID = "xAuthID_example" // String |  (optional)
let xAuthToken = "xAuthToken_example" // String |  (optional)
let contentType = "contentType_example" // String |  (optional)

// List All Conferences
ConferenceAPI.apiV1AccountAuthIdConferenceGet(authId: authId, xAuthID: xAuthID, xAuthToken: xAuthToken, contentType: contentType) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authId** | **String** |  | 
 **xAuthID** | **String** |  | [optional] 
 **xAuthToken** | **String** |  | [optional] 
 **contentType** | **String** |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[ApiKeyAuthID](../README.md#ApiKeyAuthID), [ApiKeyAuthToken](../README.md#ApiKeyAuthToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1AccountAuthIdConferenceGet_0**
```swift
    open class func apiV1AccountAuthIdConferenceGet_0(authId: String, xAuthID: String? = nil, xAuthToken: String? = nil, contentType: String? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Retrieve a Conference

Get detailed information about a specific ongoing conference including all active members.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import VobizSDK

let authId = "authId_example" // String | 
let xAuthID = "xAuthID_example" // String |  (optional)
let xAuthToken = "xAuthToken_example" // String |  (optional)
let contentType = "contentType_example" // String |  (optional)

// Retrieve a Conference
ConferenceAPI.apiV1AccountAuthIdConferenceGet_0(authId: authId, xAuthID: xAuthID, xAuthToken: xAuthToken, contentType: contentType) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authId** | **String** |  | 
 **xAuthID** | **String** |  | [optional] 
 **xAuthToken** | **String** |  | [optional] 
 **contentType** | **String** |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[ApiKeyAuthID](../README.md#ApiKeyAuthID), [ApiKeyAuthToken](../README.md#ApiKeyAuthToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1AccountAuthIdConferenceMemberDeafDelete**
```swift
    open class func apiV1AccountAuthIdConferenceMemberDeafDelete(authId: String, xAuthID: String? = nil, xAuthToken: String? = nil, contentType: String? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Undeaf a Conference Member

Restore audio reception for previously deafened members.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import VobizSDK

let authId = "authId_example" // String | 
let xAuthID = "xAuthID_example" // String |  (optional)
let xAuthToken = "xAuthToken_example" // String |  (optional)
let contentType = "contentType_example" // String |  (optional)

// Undeaf a Conference Member
ConferenceAPI.apiV1AccountAuthIdConferenceMemberDeafDelete(authId: authId, xAuthID: xAuthID, xAuthToken: xAuthToken, contentType: contentType) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authId** | **String** |  | 
 **xAuthID** | **String** |  | [optional] 
 **xAuthToken** | **String** |  | [optional] 
 **contentType** | **String** |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[ApiKeyAuthID](../README.md#ApiKeyAuthID), [ApiKeyAuthToken](../README.md#ApiKeyAuthToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1AccountAuthIdConferenceMemberDeafPost**
```swift
    open class func apiV1AccountAuthIdConferenceMemberDeafPost(authId: String, xAuthID: String? = nil, xAuthToken: String? = nil, contentType: String? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Deaf a Conference Member

Prevent member(s) from hearing other participants.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import VobizSDK

let authId = "authId_example" // String | 
let xAuthID = "xAuthID_example" // String |  (optional)
let xAuthToken = "xAuthToken_example" // String |  (optional)
let contentType = "contentType_example" // String |  (optional)

// Deaf a Conference Member
ConferenceAPI.apiV1AccountAuthIdConferenceMemberDeafPost(authId: authId, xAuthID: xAuthID, xAuthToken: xAuthToken, contentType: contentType) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authId** | **String** |  | 
 **xAuthID** | **String** |  | [optional] 
 **xAuthToken** | **String** |  | [optional] 
 **contentType** | **String** |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[ApiKeyAuthID](../README.md#ApiKeyAuthID), [ApiKeyAuthToken](../README.md#ApiKeyAuthToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1AccountAuthIdConferenceMemberDelete**
```swift
    open class func apiV1AccountAuthIdConferenceMemberDelete(authId: String, xAuthID: String? = nil, xAuthToken: String? = nil, contentType: String? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Hang Up a Conference Member

Disconnect a member by terminating their call. Returns 204 No Content.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import VobizSDK

let authId = "authId_example" // String | 
let xAuthID = "xAuthID_example" // String |  (optional)
let xAuthToken = "xAuthToken_example" // String |  (optional)
let contentType = "contentType_example" // String |  (optional)

// Hang Up a Conference Member
ConferenceAPI.apiV1AccountAuthIdConferenceMemberDelete(authId: authId, xAuthID: xAuthID, xAuthToken: xAuthToken, contentType: contentType) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authId** | **String** |  | 
 **xAuthID** | **String** |  | [optional] 
 **xAuthToken** | **String** |  | [optional] 
 **contentType** | **String** |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[ApiKeyAuthID](../README.md#ApiKeyAuthID), [ApiKeyAuthToken](../README.md#ApiKeyAuthToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1AccountAuthIdConferenceMemberKickPost**
```swift
    open class func apiV1AccountAuthIdConferenceMemberKickPost(authId: String, xAuthID: String? = nil, xAuthToken: String? = nil, contentType: String? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Kick a Conference Member

Disconnect a member while allowing XML flow continuation.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import VobizSDK

let authId = "authId_example" // String | 
let xAuthID = "xAuthID_example" // String |  (optional)
let xAuthToken = "xAuthToken_example" // String |  (optional)
let contentType = "contentType_example" // String |  (optional)

// Kick a Conference Member
ConferenceAPI.apiV1AccountAuthIdConferenceMemberKickPost(authId: authId, xAuthID: xAuthID, xAuthToken: xAuthToken, contentType: contentType) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authId** | **String** |  | 
 **xAuthID** | **String** |  | [optional] 
 **xAuthToken** | **String** |  | [optional] 
 **contentType** | **String** |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[ApiKeyAuthID](../README.md#ApiKeyAuthID), [ApiKeyAuthToken](../README.md#ApiKeyAuthToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1AccountAuthIdConferenceMemberMuteDelete**
```swift
    open class func apiV1AccountAuthIdConferenceMemberMuteDelete(authId: String, xAuthID: String? = nil, xAuthToken: String? = nil, contentType: String? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Unmute a Conference Member

Restore audio from previously muted members.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import VobizSDK

let authId = "authId_example" // String | 
let xAuthID = "xAuthID_example" // String |  (optional)
let xAuthToken = "xAuthToken_example" // String |  (optional)
let contentType = "contentType_example" // String |  (optional)

// Unmute a Conference Member
ConferenceAPI.apiV1AccountAuthIdConferenceMemberMuteDelete(authId: authId, xAuthID: xAuthID, xAuthToken: xAuthToken, contentType: contentType) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authId** | **String** |  | 
 **xAuthID** | **String** |  | [optional] 
 **xAuthToken** | **String** |  | [optional] 
 **contentType** | **String** |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[ApiKeyAuthID](../README.md#ApiKeyAuthID), [ApiKeyAuthToken](../README.md#ApiKeyAuthToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1AccountAuthIdConferenceMemberMutePost**
```swift
    open class func apiV1AccountAuthIdConferenceMemberMutePost(authId: String, xAuthID: String? = nil, xAuthToken: String? = nil, contentType: String? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Mute a Conference Member

Mute member(s) so others cannot hear them.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import VobizSDK

let authId = "authId_example" // String | 
let xAuthID = "xAuthID_example" // String |  (optional)
let xAuthToken = "xAuthToken_example" // String |  (optional)
let contentType = "contentType_example" // String |  (optional)

// Mute a Conference Member
ConferenceAPI.apiV1AccountAuthIdConferenceMemberMutePost(authId: authId, xAuthID: xAuthID, xAuthToken: xAuthToken, contentType: contentType) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authId** | **String** |  | 
 **xAuthID** | **String** |  | [optional] 
 **xAuthToken** | **String** |  | [optional] 
 **contentType** | **String** |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[ApiKeyAuthID](../README.md#ApiKeyAuthID), [ApiKeyAuthToken](../README.md#ApiKeyAuthToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1AccountAuthIdConferenceMemberPlayDelete**
```swift
    open class func apiV1AccountAuthIdConferenceMemberPlayDelete(authId: String, xAuthID: String? = nil, xAuthToken: String? = nil, contentType: String? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Stop Playing Audio to a Conference Member

Stop audio playback for specific member(s).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import VobizSDK

let authId = "authId_example" // String | 
let xAuthID = "xAuthID_example" // String |  (optional)
let xAuthToken = "xAuthToken_example" // String |  (optional)
let contentType = "contentType_example" // String |  (optional)

// Stop Playing Audio to a Conference Member
ConferenceAPI.apiV1AccountAuthIdConferenceMemberPlayDelete(authId: authId, xAuthID: xAuthID, xAuthToken: xAuthToken, contentType: contentType) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authId** | **String** |  | 
 **xAuthID** | **String** |  | [optional] 
 **xAuthToken** | **String** |  | [optional] 
 **contentType** | **String** |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[ApiKeyAuthID](../README.md#ApiKeyAuthID), [ApiKeyAuthToken](../README.md#ApiKeyAuthToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1AccountAuthIdConferenceMemberPlayPost**
```swift
    open class func apiV1AccountAuthIdConferenceMemberPlayPost(authId: String, xAuthID: String? = nil, xAuthToken: String? = nil, contentType: String? = nil, body: AnyCodable? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Play Audio to a Conference Member

Play audio to specific member(s). Only targeted member(s) hear the audio.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import VobizSDK

let authId = "authId_example" // String | 
let xAuthID = "xAuthID_example" // String |  (optional)
let xAuthToken = "xAuthToken_example" // String |  (optional)
let contentType = "contentType_example" // String |  (optional)
let body = "TODO" // AnyCodable |  (optional)

// Play Audio to a Conference Member
ConferenceAPI.apiV1AccountAuthIdConferenceMemberPlayPost(authId: authId, xAuthID: xAuthID, xAuthToken: xAuthToken, contentType: contentType, body: body) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authId** | **String** |  | 
 **xAuthID** | **String** |  | [optional] 
 **xAuthToken** | **String** |  | [optional] 
 **contentType** | **String** |  | [optional] 
 **body** | **AnyCodable** |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[ApiKeyAuthID](../README.md#ApiKeyAuthID), [ApiKeyAuthToken](../README.md#ApiKeyAuthToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1AccountAuthIdConferenceRecordDelete**
```swift
    open class func apiV1AccountAuthIdConferenceRecordDelete(authId: String, xAuthID: String? = nil, xAuthToken: String? = nil, contentType: String? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Stop Conference Recording

Stop an active conference recording. Returns 204 No Content.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import VobizSDK

let authId = "authId_example" // String | 
let xAuthID = "xAuthID_example" // String |  (optional)
let xAuthToken = "xAuthToken_example" // String |  (optional)
let contentType = "contentType_example" // String |  (optional)

// Stop Conference Recording
ConferenceAPI.apiV1AccountAuthIdConferenceRecordDelete(authId: authId, xAuthID: xAuthID, xAuthToken: xAuthToken, contentType: contentType) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authId** | **String** |  | 
 **xAuthID** | **String** |  | [optional] 
 **xAuthToken** | **String** |  | [optional] 
 **contentType** | **String** |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[ApiKeyAuthID](../README.md#ApiKeyAuthID), [ApiKeyAuthToken](../README.md#ApiKeyAuthToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1AccountAuthIdConferenceRecordPost**
```swift
    open class func apiV1AccountAuthIdConferenceRecordPost(authId: String, xAuthID: String? = nil, xAuthToken: String? = nil, contentType: String? = nil, body: AnyCodable? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Start Conference Recording

Begin recording a conference call.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import VobizSDK

let authId = "authId_example" // String | 
let xAuthID = "xAuthID_example" // String |  (optional)
let xAuthToken = "xAuthToken_example" // String |  (optional)
let contentType = "contentType_example" // String |  (optional)
let body = "TODO" // AnyCodable |  (optional)

// Start Conference Recording
ConferenceAPI.apiV1AccountAuthIdConferenceRecordPost(authId: authId, xAuthID: xAuthID, xAuthToken: xAuthToken, contentType: contentType, body: body) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authId** | **String** |  | 
 **xAuthID** | **String** |  | [optional] 
 **xAuthToken** | **String** |  | [optional] 
 **contentType** | **String** |  | [optional] 
 **body** | **AnyCodable** |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[ApiKeyAuthID](../README.md#ApiKeyAuthID), [ApiKeyAuthToken](../README.md#ApiKeyAuthToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

