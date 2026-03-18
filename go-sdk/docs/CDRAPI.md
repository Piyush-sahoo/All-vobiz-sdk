# \CDRAPI

All URIs are relative to *https://api.vobiz.ai*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ApiV1AccountAccountIdCdrGet**](CDRAPI.md#ApiV1AccountAccountIdCdrGet) | **Get** /api/v1/account/{account_id}/cdr | Get Call Detail Records



## ApiV1AccountAccountIdCdrGet

> ApiV1AccountAccountIdCdrGet(ctx, accountId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).StartDate(startDate).EndDate(endDate).PerPage(perPage).Page(page).Execute()

Get Call Detail Records



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	accountId := "accountId_example" // string | 
	xAuthID := "{{auth_id}}" // string |  (optional)
	xAuthToken := "{{auth_token}}" // string |  (optional)
	contentType := "application/json" // string |  (optional)
	startDate := "2026-01-01" // string | Start date (YYYY-MM-DD) (optional)
	endDate := "2026-01-31" // string | End date (YYYY-MM-DD) (optional)
	perPage := int32(50) // int32 | Results per page (optional)
	page := int32(1) // int32 | Page number (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.CDRAPI.ApiV1AccountAccountIdCdrGet(context.Background(), accountId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).StartDate(startDate).EndDate(endDate).PerPage(perPage).Page(page).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `CDRAPI.ApiV1AccountAccountIdCdrGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**accountId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiApiV1AccountAccountIdCdrGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **xAuthID** | **string** |  | 
 **xAuthToken** | **string** |  | 
 **contentType** | **string** |  | 
 **startDate** | **string** | Start date (YYYY-MM-DD) | 
 **endDate** | **string** | End date (YYYY-MM-DD) | 
 **perPage** | **int32** | Results per page | 
 **page** | **int32** | Page number | 

### Return type

 (empty response body)

### Authorization

[ApiKeyAuthID](../README.md#ApiKeyAuthID), [ApiKeyAuthToken](../README.md#ApiKeyAuthToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

