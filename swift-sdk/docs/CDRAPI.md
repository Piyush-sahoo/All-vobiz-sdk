# CDRAPI

All URIs are relative to *https://api.vobiz.ai*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV1AccountAccountIdCdrGet**](CDRAPI.md#apiv1accountaccountidcdrget) | **GET** /api/v1/account/{account_id}/cdr | Get Call Detail Records


# **apiV1AccountAccountIdCdrGet**
```swift
    open class func apiV1AccountAccountIdCdrGet(accountId: String, xAuthID: String? = nil, xAuthToken: String? = nil, contentType: String? = nil, startDate: String? = nil, endDate: String? = nil, perPage: Int? = nil, page: Int? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Get Call Detail Records

Retrieve call detail records with filtering and pagination.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import VobizSDK

let accountId = "accountId_example" // String | 
let xAuthID = "xAuthID_example" // String |  (optional)
let xAuthToken = "xAuthToken_example" // String |  (optional)
let contentType = "contentType_example" // String |  (optional)
let startDate = "startDate_example" // String | Start date (YYYY-MM-DD) (optional)
let endDate = "endDate_example" // String | End date (YYYY-MM-DD) (optional)
let perPage = 987 // Int | Results per page (optional)
let page = 987 // Int | Page number (optional)

// Get Call Detail Records
CDRAPI.apiV1AccountAccountIdCdrGet(accountId: accountId, xAuthID: xAuthID, xAuthToken: xAuthToken, contentType: contentType, startDate: startDate, endDate: endDate, perPage: perPage, page: page) { (response, error) in
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
 **startDate** | **String** | Start date (YYYY-MM-DD) | [optional] 
 **endDate** | **String** | End date (YYYY-MM-DD) | [optional] 
 **perPage** | **Int** | Results per page | [optional] 
 **page** | **Int** | Page number | [optional] 

### Return type

Void (empty response body)

### Authorization

[ApiKeyAuthID](../README.md#ApiKeyAuthID), [ApiKeyAuthToken](../README.md#ApiKeyAuthToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

