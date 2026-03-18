# \RecordingAPI

All URIs are relative to *https://api.vobiz.ai*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ApiV1AccountAccountIdRecordingGet**](RecordingAPI.md#ApiV1AccountAccountIdRecordingGet) | **Get** /api/v1/Account/{account_id}/Recording/ | List All Recordings
[**ApiV1AccountAuthIdExportRecordingPost**](RecordingAPI.md#ApiV1AccountAuthIdExportRecordingPost) | **Post** /api/v1/Account/{auth_id}/export/recording/ | Export Historical Recordings
[**ApiV1AccountAuthIdRecordingBulkDeleteDelete**](RecordingAPI.md#ApiV1AccountAuthIdRecordingBulkDeleteDelete) | **Delete** /api/v1/Account/{auth_id}/Recording/BulkDelete/ | Bulk Delete Recordings
[**ApiV1AccountAuthIdRecordingDelete**](RecordingAPI.md#ApiV1AccountAuthIdRecordingDelete) | **Delete** /api/v1/Account/{auth_id}/Recording/{}/ | Delete a Recording
[**ApiV1AccountAuthIdRecordingGet**](RecordingAPI.md#ApiV1AccountAuthIdRecordingGet) | **Get** /api/v1/Account/{auth_id}/Recording/{}/ | Retrieve a Recording



## ApiV1AccountAccountIdRecordingGet

> ApiV1AccountAccountIdRecordingGet(ctx, accountId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Limit(limit).Offset(offset).CallUuid(callUuid).RecordingType(recordingType).Execute()

List All Recordings



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
	limit := int32(20) // int32 | Records per request (default: 20, max: 100) (optional)
	offset := int32(0) // int32 | Pagination offset (default: 0) (optional)
	callUuid := "callUuid_example" // string | Filter by specific call UUID (optional)
	recordingType := "recordingType_example" // string | Filter by type: trunk or extension (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.RecordingAPI.ApiV1AccountAccountIdRecordingGet(context.Background(), accountId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Limit(limit).Offset(offset).CallUuid(callUuid).RecordingType(recordingType).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `RecordingAPI.ApiV1AccountAccountIdRecordingGet``: %v\n", err)
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

Other parameters are passed through a pointer to a apiApiV1AccountAccountIdRecordingGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **xAuthID** | **string** |  | 
 **xAuthToken** | **string** |  | 
 **contentType** | **string** |  | 
 **limit** | **int32** | Records per request (default: 20, max: 100) | 
 **offset** | **int32** | Pagination offset (default: 0) | 
 **callUuid** | **string** | Filter by specific call UUID | 
 **recordingType** | **string** | Filter by type: trunk or extension | 

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


## ApiV1AccountAuthIdExportRecordingPost

> ApiV1AccountAuthIdExportRecordingPost(ctx, authId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Body(body).Execute()

Export Historical Recordings



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
	authId := "authId_example" // string | 
	xAuthID := "{{auth_id}}" // string |  (optional)
	xAuthToken := "{{auth_token}}" // string |  (optional)
	contentType := "application/json" // string |  (optional)
	body := map[string]interface{}{ ... } // map[string]interface{} |  (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.RecordingAPI.ApiV1AccountAuthIdExportRecordingPost(context.Background(), authId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Body(body).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `RecordingAPI.ApiV1AccountAuthIdExportRecordingPost``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**authId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiApiV1AccountAuthIdExportRecordingPostRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **xAuthID** | **string** |  | 
 **xAuthToken** | **string** |  | 
 **contentType** | **string** |  | 
 **body** | **map[string]interface{}** |  | 

### Return type

 (empty response body)

### Authorization

[ApiKeyAuthID](../README.md#ApiKeyAuthID), [ApiKeyAuthToken](../README.md#ApiKeyAuthToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ApiV1AccountAuthIdRecordingBulkDeleteDelete

> ApiV1AccountAuthIdRecordingBulkDeleteDelete(ctx, authId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).AddTimeGte(addTimeGte).AddTimeLte(addTimeLte).CallUuid(callUuid).FromNumber(fromNumber).ToNumber(toNumber).RecordingFormat(recordingFormat).Execute()

Bulk Delete Recordings



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
	authId := "authId_example" // string | 
	xAuthID := "{{auth_id}}" // string |  (optional)
	xAuthToken := "{{auth_token}}" // string |  (optional)
	contentType := "application/json" // string |  (optional)
	addTimeGte := "addTimeGte_example" // string | Delete recordings on/after this date (YYYY-MM-DD HH:MM:SS) (optional)
	addTimeLte := "addTimeLte_example" // string | Delete recordings on/before this date (optional)
	callUuid := "callUuid_example" // string | Delete recordings for specific call UUID (optional)
	fromNumber := "fromNumber_example" // string | Delete by caller number (partial match) (optional)
	toNumber := "toNumber_example" // string | Delete by destination number (partial match) (optional)
	recordingFormat := "recordingFormat_example" // string | mp3 or wav (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.RecordingAPI.ApiV1AccountAuthIdRecordingBulkDeleteDelete(context.Background(), authId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).AddTimeGte(addTimeGte).AddTimeLte(addTimeLte).CallUuid(callUuid).FromNumber(fromNumber).ToNumber(toNumber).RecordingFormat(recordingFormat).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `RecordingAPI.ApiV1AccountAuthIdRecordingBulkDeleteDelete``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**authId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiApiV1AccountAuthIdRecordingBulkDeleteDeleteRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **xAuthID** | **string** |  | 
 **xAuthToken** | **string** |  | 
 **contentType** | **string** |  | 
 **addTimeGte** | **string** | Delete recordings on/after this date (YYYY-MM-DD HH:MM:SS) | 
 **addTimeLte** | **string** | Delete recordings on/before this date | 
 **callUuid** | **string** | Delete recordings for specific call UUID | 
 **fromNumber** | **string** | Delete by caller number (partial match) | 
 **toNumber** | **string** | Delete by destination number (partial match) | 
 **recordingFormat** | **string** | mp3 or wav | 

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


## ApiV1AccountAuthIdRecordingDelete

> ApiV1AccountAuthIdRecordingDelete(ctx, authId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Execute()

Delete a Recording



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
	authId := "authId_example" // string | 
	xAuthID := "{{auth_id}}" // string |  (optional)
	xAuthToken := "{{auth_token}}" // string |  (optional)
	contentType := "application/json" // string |  (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.RecordingAPI.ApiV1AccountAuthIdRecordingDelete(context.Background(), authId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `RecordingAPI.ApiV1AccountAuthIdRecordingDelete``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**authId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiApiV1AccountAuthIdRecordingDeleteRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **xAuthID** | **string** |  | 
 **xAuthToken** | **string** |  | 
 **contentType** | **string** |  | 

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


## ApiV1AccountAuthIdRecordingGet

> ApiV1AccountAuthIdRecordingGet(ctx, authId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Execute()

Retrieve a Recording



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
	authId := "authId_example" // string | 
	xAuthID := "{{auth_id}}" // string |  (optional)
	xAuthToken := "{{auth_token}}" // string |  (optional)
	contentType := "application/json" // string |  (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.RecordingAPI.ApiV1AccountAuthIdRecordingGet(context.Background(), authId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `RecordingAPI.ApiV1AccountAuthIdRecordingGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**authId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiApiV1AccountAuthIdRecordingGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **xAuthID** | **string** |  | 
 **xAuthToken** | **string** |  | 
 **contentType** | **string** |  | 

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

