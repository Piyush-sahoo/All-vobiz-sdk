# PhoneNumbersAPI

All URIs are relative to *https://api.vobiz.ai*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV1AccountAuthIdInventoryNumbersGet**](PhoneNumbersAPI.md#apiv1accountauthidinventorynumbersget) | **GET** /api/v1/account/{auth_id}/inventory/numbers | List Inventory Numbers
[**apiV1AccountAuthIdNumbersE164NumberDelete**](PhoneNumbersAPI.md#apiv1accountauthidnumberse164numberdelete) | **DELETE** /api/v1/account/{auth_id}/numbers/:e164_number | Unrent a Phone Number
[**apiV1AccountAuthIdNumbersGet**](PhoneNumbersAPI.md#apiv1accountauthidnumbersget) | **GET** /api/v1/account/{auth_id}/numbers | List Account Phone Numbers
[**apiV1AccountAuthIdNumbersPurchaseFromInventoryPost**](PhoneNumbersAPI.md#apiv1accountauthidnumberspurchasefrominventorypost) | **POST** /api/v1/account/{auth_id}/numbers/purchase-from-inventory | Purchase from Inventory


# **apiV1AccountAuthIdInventoryNumbersGet**
```swift
    open class func apiV1AccountAuthIdInventoryNumbersGet(authId: String, xAuthID: String? = nil, xAuthToken: String? = nil, contentType: String? = nil, country: String? = nil, page: Int? = nil, perPage: Int? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

List Inventory Numbers

Browse available phone numbers in inventory for purchase.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import VobizSDK

let authId = "authId_example" // String | 
let xAuthID = "xAuthID_example" // String |  (optional)
let xAuthToken = "xAuthToken_example" // String |  (optional)
let contentType = "contentType_example" // String |  (optional)
let country = "country_example" // String | Filter by country code (optional)
let page = 987 // Int | Page number (optional)
let perPage = 987 // Int | Results per page (optional)

// List Inventory Numbers
PhoneNumbersAPI.apiV1AccountAuthIdInventoryNumbersGet(authId: authId, xAuthID: xAuthID, xAuthToken: xAuthToken, contentType: contentType, country: country, page: page, perPage: perPage) { (response, error) in
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
 **country** | **String** | Filter by country code | [optional] 
 **page** | **Int** | Page number | [optional] 
 **perPage** | **Int** | Results per page | [optional] 

### Return type

Void (empty response body)

### Authorization

[ApiKeyAuthID](../README.md#ApiKeyAuthID), [ApiKeyAuthToken](../README.md#ApiKeyAuthToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1AccountAuthIdNumbersE164NumberDelete**
```swift
    open class func apiV1AccountAuthIdNumbersE164NumberDelete(authId: String, xAuthID: String? = nil, xAuthToken: String? = nil, contentType: String? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Unrent a Phone Number

Release (unrent) a phone number from your account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import VobizSDK

let authId = "authId_example" // String | 
let xAuthID = "xAuthID_example" // String |  (optional)
let xAuthToken = "xAuthToken_example" // String |  (optional)
let contentType = "contentType_example" // String |  (optional)

// Unrent a Phone Number
PhoneNumbersAPI.apiV1AccountAuthIdNumbersE164NumberDelete(authId: authId, xAuthID: xAuthID, xAuthToken: xAuthToken, contentType: contentType) { (response, error) in
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

# **apiV1AccountAuthIdNumbersGet**
```swift
    open class func apiV1AccountAuthIdNumbersGet(authId: String, xAuthID: String? = nil, xAuthToken: String? = nil, contentType: String? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

List Account Phone Numbers

Retrieve all phone numbers associated with your account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import VobizSDK

let authId = "authId_example" // String | 
let xAuthID = "xAuthID_example" // String |  (optional)
let xAuthToken = "xAuthToken_example" // String |  (optional)
let contentType = "contentType_example" // String |  (optional)

// List Account Phone Numbers
PhoneNumbersAPI.apiV1AccountAuthIdNumbersGet(authId: authId, xAuthID: xAuthID, xAuthToken: xAuthToken, contentType: contentType) { (response, error) in
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

# **apiV1AccountAuthIdNumbersPurchaseFromInventoryPost**
```swift
    open class func apiV1AccountAuthIdNumbersPurchaseFromInventoryPost(authId: String, xAuthID: String? = nil, xAuthToken: String? = nil, contentType: String? = nil, body: AnyCodable? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Purchase from Inventory

Purchase a phone number from available inventory.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import VobizSDK

let authId = "authId_example" // String | 
let xAuthID = "xAuthID_example" // String |  (optional)
let xAuthToken = "xAuthToken_example" // String |  (optional)
let contentType = "contentType_example" // String |  (optional)
let body = "TODO" // AnyCodable |  (optional)

// Purchase from Inventory
PhoneNumbersAPI.apiV1AccountAuthIdNumbersPurchaseFromInventoryPost(authId: authId, xAuthID: xAuthID, xAuthToken: xAuthToken, contentType: contentType, body: body) { (response, error) in
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

