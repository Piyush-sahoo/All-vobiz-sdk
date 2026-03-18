# SubAccountAPI

All URIs are relative to *https://api.vobiz.ai*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV1AccountsAccountIdSubAccountsGet**](SubAccountAPI.md#apiv1accountsaccountidsubaccountsget) | **GET** /api/v1/accounts/{account_id}/sub-accounts/ | List All Sub-Accounts
[**apiV1AccountsAccountIdSubAccountsPost**](SubAccountAPI.md#apiv1accountsaccountidsubaccountspost) | **POST** /api/v1/accounts/{account_id}/sub-accounts/ | Create Sub-Account
[**apiV1AccountsAccountIdSubAccountsSubAccountIdDelete**](SubAccountAPI.md#apiv1accountsaccountidsubaccountssubaccountiddelete) | **DELETE** /api/v1/accounts/{account_id}/sub-accounts/:sub_account_id | Delete a Sub-Account
[**apiV1AccountsAccountIdSubAccountsSubAccountIdGet**](SubAccountAPI.md#apiv1accountsaccountidsubaccountssubaccountidget) | **GET** /api/v1/accounts/{account_id}/sub-accounts/:sub_account_id | Retrieve a Sub-Account
[**apiV1AccountsAccountIdSubAccountsSubAccountIdPut**](SubAccountAPI.md#apiv1accountsaccountidsubaccountssubaccountidput) | **PUT** /api/v1/accounts/{account_id}/sub-accounts/:sub_account_id | Update a Sub-Account


# **apiV1AccountsAccountIdSubAccountsGet**
```swift
    open class func apiV1AccountsAccountIdSubAccountsGet(accountId: String, xAuthID: String? = nil, xAuthToken: String? = nil, contentType: String? = nil, page: Int? = nil, size: Int? = nil, activeOnly: Bool? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

List All Sub-Accounts

Retrieve all sub-accounts.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import VobizSDK

let accountId = "accountId_example" // String | 
let xAuthID = "xAuthID_example" // String |  (optional)
let xAuthToken = "xAuthToken_example" // String |  (optional)
let contentType = "contentType_example" // String |  (optional)
let page = 987 // Int | Page number (optional)
let size = 987 // Int | Results per page (optional)
let activeOnly = true // Bool | Filter active sub-accounts only (optional)

// List All Sub-Accounts
SubAccountAPI.apiV1AccountsAccountIdSubAccountsGet(accountId: accountId, xAuthID: xAuthID, xAuthToken: xAuthToken, contentType: contentType, page: page, size: size, activeOnly: activeOnly) { (response, error) in
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
 **accountId** | **String** |  | 
 **xAuthID** | **String** |  | [optional] 
 **xAuthToken** | **String** |  | [optional] 
 **contentType** | **String** |  | [optional] 
 **page** | **Int** | Page number | [optional] 
 **size** | **Int** | Results per page | [optional] 
 **activeOnly** | **Bool** | Filter active sub-accounts only | [optional] 

### Return type

Void (empty response body)

### Authorization

[ApiKeyAuthID](../README.md#ApiKeyAuthID), [ApiKeyAuthToken](../README.md#ApiKeyAuthToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1AccountsAccountIdSubAccountsPost**
```swift
    open class func apiV1AccountsAccountIdSubAccountsPost(accountId: String, xAuthID: String? = nil, xAuthToken: String? = nil, contentType: String? = nil, body: AnyCodable? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Create Sub-Account

Create a new sub-account under the master account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import VobizSDK

let accountId = "accountId_example" // String | 
let xAuthID = "xAuthID_example" // String |  (optional)
let xAuthToken = "xAuthToken_example" // String |  (optional)
let contentType = "contentType_example" // String |  (optional)
let body = "TODO" // AnyCodable |  (optional)

// Create Sub-Account
SubAccountAPI.apiV1AccountsAccountIdSubAccountsPost(accountId: accountId, xAuthID: xAuthID, xAuthToken: xAuthToken, contentType: contentType, body: body) { (response, error) in
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
 **accountId** | **String** |  | 
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

# **apiV1AccountsAccountIdSubAccountsSubAccountIdDelete**
```swift
    open class func apiV1AccountsAccountIdSubAccountsSubAccountIdDelete(accountId: String, xAuthID: String? = nil, xAuthToken: String? = nil, contentType: String? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete a Sub-Account

Delete a sub-account. Returns 204 No Content.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import VobizSDK

let accountId = "accountId_example" // String | 
let xAuthID = "xAuthID_example" // String |  (optional)
let xAuthToken = "xAuthToken_example" // String |  (optional)
let contentType = "contentType_example" // String |  (optional)

// Delete a Sub-Account
SubAccountAPI.apiV1AccountsAccountIdSubAccountsSubAccountIdDelete(accountId: accountId, xAuthID: xAuthID, xAuthToken: xAuthToken, contentType: contentType) { (response, error) in
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
 **accountId** | **String** |  | 
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

# **apiV1AccountsAccountIdSubAccountsSubAccountIdGet**
```swift
    open class func apiV1AccountsAccountIdSubAccountsSubAccountIdGet(accountId: String, xAuthID: String? = nil, xAuthToken: String? = nil, contentType: String? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Retrieve a Sub-Account

Get details of a specific sub-account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import VobizSDK

let accountId = "accountId_example" // String | 
let xAuthID = "xAuthID_example" // String |  (optional)
let xAuthToken = "xAuthToken_example" // String |  (optional)
let contentType = "contentType_example" // String |  (optional)

// Retrieve a Sub-Account
SubAccountAPI.apiV1AccountsAccountIdSubAccountsSubAccountIdGet(accountId: accountId, xAuthID: xAuthID, xAuthToken: xAuthToken, contentType: contentType) { (response, error) in
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
 **accountId** | **String** |  | 
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

# **apiV1AccountsAccountIdSubAccountsSubAccountIdPut**
```swift
    open class func apiV1AccountsAccountIdSubAccountsSubAccountIdPut(accountId: String, xAuthID: String? = nil, xAuthToken: String? = nil, contentType: String? = nil, body: AnyCodable? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Update a Sub-Account

Update sub-account settings.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import VobizSDK

let accountId = "accountId_example" // String | 
let xAuthID = "xAuthID_example" // String |  (optional)
let xAuthToken = "xAuthToken_example" // String |  (optional)
let contentType = "contentType_example" // String |  (optional)
let body = "TODO" // AnyCodable |  (optional)

// Update a Sub-Account
SubAccountAPI.apiV1AccountsAccountIdSubAccountsSubAccountIdPut(accountId: accountId, xAuthID: xAuthID, xAuthToken: xAuthToken, contentType: contentType, body: body) { (response, error) in
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
 **accountId** | **String** |  | 
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

