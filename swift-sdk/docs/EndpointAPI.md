# EndpointAPI

All URIs are relative to *https://api.vobiz.ai*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV1AccountAuthIdEndpointDelete**](EndpointAPI.md#apiv1accountauthidendpointdelete) | **DELETE** /api/v1/Account/{auth_id}/Endpoint/{}/ | Delete an Endpoint
[**apiV1AccountAuthIdEndpointGet**](EndpointAPI.md#apiv1accountauthidendpointget) | **GET** /api/v1/Account/{auth_id}/Endpoint/ | List All Endpoints
[**apiV1AccountAuthIdEndpointGet_0**](EndpointAPI.md#apiv1accountauthidendpointget_0) | **GET** /api/v1/Account/{auth_id}/Endpoint/{}/ | Retrieve an Endpoint
[**apiV1AccountAuthIdEndpointPost**](EndpointAPI.md#apiv1accountauthidendpointpost) | **POST** /api/v1/Account/{auth_id}/Endpoint/ | Create Endpoint
[**apiV1AccountAuthIdEndpointPost_0**](EndpointAPI.md#apiv1accountauthidendpointpost_0) | **POST** /api/v1/Account/{auth_id}/Endpoint/{}/ | Update an Endpoint


# **apiV1AccountAuthIdEndpointDelete**
```swift
    open class func apiV1AccountAuthIdEndpointDelete(authId: String, xAuthID: String? = nil, xAuthToken: String? = nil, contentType: String? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete an Endpoint

Delete an endpoint. Returns 204 No Content.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import VobizSDK

let authId = "authId_example" // String | 
let xAuthID = "xAuthID_example" // String |  (optional)
let xAuthToken = "xAuthToken_example" // String |  (optional)
let contentType = "contentType_example" // String |  (optional)

// Delete an Endpoint
EndpointAPI.apiV1AccountAuthIdEndpointDelete(authId: authId, xAuthID: xAuthID, xAuthToken: xAuthToken, contentType: contentType) { (response, error) in
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

# **apiV1AccountAuthIdEndpointGet**
```swift
    open class func apiV1AccountAuthIdEndpointGet(authId: String, xAuthID: String? = nil, xAuthToken: String? = nil, contentType: String? = nil, limit: Int? = nil, offset: Int? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

List All Endpoints

Retrieve all endpoints with pagination.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import VobizSDK

let authId = "authId_example" // String | 
let xAuthID = "xAuthID_example" // String |  (optional)
let xAuthToken = "xAuthToken_example" // String |  (optional)
let contentType = "contentType_example" // String |  (optional)
let limit = 987 // Int | Results per page (optional)
let offset = 987 // Int | Pagination offset (optional)

// List All Endpoints
EndpointAPI.apiV1AccountAuthIdEndpointGet(authId: authId, xAuthID: xAuthID, xAuthToken: xAuthToken, contentType: contentType, limit: limit, offset: offset) { (response, error) in
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
 **limit** | **Int** | Results per page | [optional] 
 **offset** | **Int** | Pagination offset | [optional] 

### Return type

Void (empty response body)

### Authorization

[ApiKeyAuthID](../README.md#ApiKeyAuthID), [ApiKeyAuthToken](../README.md#ApiKeyAuthToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1AccountAuthIdEndpointGet_0**
```swift
    open class func apiV1AccountAuthIdEndpointGet_0(authId: String, xAuthID: String? = nil, xAuthToken: String? = nil, contentType: String? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Retrieve an Endpoint

Get details of a specific endpoint.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import VobizSDK

let authId = "authId_example" // String | 
let xAuthID = "xAuthID_example" // String |  (optional)
let xAuthToken = "xAuthToken_example" // String |  (optional)
let contentType = "contentType_example" // String |  (optional)

// Retrieve an Endpoint
EndpointAPI.apiV1AccountAuthIdEndpointGet_0(authId: authId, xAuthID: xAuthID, xAuthToken: xAuthToken, contentType: contentType) { (response, error) in
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

# **apiV1AccountAuthIdEndpointPost**
```swift
    open class func apiV1AccountAuthIdEndpointPost(authId: String, xAuthID: String? = nil, xAuthToken: String? = nil, contentType: String? = nil, body: AnyCodable? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Create Endpoint

Create a new SIP endpoint.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import VobizSDK

let authId = "authId_example" // String | 
let xAuthID = "xAuthID_example" // String |  (optional)
let xAuthToken = "xAuthToken_example" // String |  (optional)
let contentType = "contentType_example" // String |  (optional)
let body = "TODO" // AnyCodable |  (optional)

// Create Endpoint
EndpointAPI.apiV1AccountAuthIdEndpointPost(authId: authId, xAuthID: xAuthID, xAuthToken: xAuthToken, contentType: contentType, body: body) { (response, error) in
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

# **apiV1AccountAuthIdEndpointPost_0**
```swift
    open class func apiV1AccountAuthIdEndpointPost_0(authId: String, xAuthID: String? = nil, xAuthToken: String? = nil, contentType: String? = nil, body: AnyCodable? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Update an Endpoint

Update an existing endpoint's configuration.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import VobizSDK

let authId = "authId_example" // String | 
let xAuthID = "xAuthID_example" // String |  (optional)
let xAuthToken = "xAuthToken_example" // String |  (optional)
let contentType = "contentType_example" // String |  (optional)
let body = "TODO" // AnyCodable |  (optional)

// Update an Endpoint
EndpointAPI.apiV1AccountAuthIdEndpointPost_0(authId: authId, xAuthID: xAuthID, xAuthToken: xAuthToken, contentType: contentType, body: body) { (response, error) in
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

