# \ApplicationAPI

All URIs are relative to *https://api.vobiz.ai*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ApiV1AccountAuthIdApplicationDelete**](ApplicationAPI.md#ApiV1AccountAuthIdApplicationDelete) | **Delete** /api/v1/Account/{auth_id}/Application/{}/ | Delete an Application
[**ApiV1AccountAuthIdApplicationGet**](ApplicationAPI.md#ApiV1AccountAuthIdApplicationGet) | **Get** /api/v1/Account/{auth_id}/Application/ | List All Applications
[**ApiV1AccountAuthIdApplicationGet_0**](ApplicationAPI.md#ApiV1AccountAuthIdApplicationGet_0) | **Get** /api/v1/Account/{auth_id}/Application/{}/ | Retrieve an Application
[**ApiV1AccountAuthIdApplicationPost**](ApplicationAPI.md#ApiV1AccountAuthIdApplicationPost) | **Post** /api/v1/Account/{auth_id}/Application/ | Create Application
[**ApiV1AccountAuthIdApplicationPost_0**](ApplicationAPI.md#ApiV1AccountAuthIdApplicationPost_0) | **Post** /api/v1/Account/{auth_id}/Application/{}/ | Update an Application
[**ApiV1AccountAuthIdNumbersApplicationDelete**](ApplicationAPI.md#ApiV1AccountAuthIdNumbersApplicationDelete) | **Delete** /api/v1/account/{auth_id}/numbers/{}/application | Unlink Number from Application
[**ApiV1AccountAuthIdNumbersApplicationPost**](ApplicationAPI.md#ApiV1AccountAuthIdNumbersApplicationPost) | **Post** /api/v1/account/{auth_id}/numbers/{}/application | Link Number to Application



## ApiV1AccountAuthIdApplicationDelete

> ApiV1AccountAuthIdApplicationDelete(ctx, authId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Execute()

Delete an Application



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
	r, err := apiClient.ApplicationAPI.ApiV1AccountAuthIdApplicationDelete(context.Background(), authId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ApplicationAPI.ApiV1AccountAuthIdApplicationDelete``: %v\n", err)
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

Other parameters are passed through a pointer to a apiApiV1AccountAuthIdApplicationDeleteRequest struct via the builder pattern


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


## ApiV1AccountAuthIdApplicationGet

> ApiV1AccountAuthIdApplicationGet(ctx, authId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Limit(limit).Offset(offset).Execute()

List All Applications



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
	limit := int32(20) // int32 | Results per page (optional)
	offset := int32(0) // int32 | Pagination offset (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.ApplicationAPI.ApiV1AccountAuthIdApplicationGet(context.Background(), authId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Limit(limit).Offset(offset).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ApplicationAPI.ApiV1AccountAuthIdApplicationGet``: %v\n", err)
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

Other parameters are passed through a pointer to a apiApiV1AccountAuthIdApplicationGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **xAuthID** | **string** |  | 
 **xAuthToken** | **string** |  | 
 **contentType** | **string** |  | 
 **limit** | **int32** | Results per page | 
 **offset** | **int32** | Pagination offset | 

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


## ApiV1AccountAuthIdApplicationGet_0

> ApiV1AccountAuthIdApplicationGet_0(ctx, authId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Execute()

Retrieve an Application



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
	r, err := apiClient.ApplicationAPI.ApiV1AccountAuthIdApplicationGet_0(context.Background(), authId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ApplicationAPI.ApiV1AccountAuthIdApplicationGet_0``: %v\n", err)
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

Other parameters are passed through a pointer to a apiApiV1AccountAuthIdApplicationGet_1Request struct via the builder pattern


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


## ApiV1AccountAuthIdApplicationPost

> ApiV1AccountAuthIdApplicationPost(ctx, authId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Body(body).Execute()

Create Application



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
	r, err := apiClient.ApplicationAPI.ApiV1AccountAuthIdApplicationPost(context.Background(), authId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Body(body).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ApplicationAPI.ApiV1AccountAuthIdApplicationPost``: %v\n", err)
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

Other parameters are passed through a pointer to a apiApiV1AccountAuthIdApplicationPostRequest struct via the builder pattern


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


## ApiV1AccountAuthIdApplicationPost_0

> ApiV1AccountAuthIdApplicationPost_0(ctx, authId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Body(body).Execute()

Update an Application



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
	r, err := apiClient.ApplicationAPI.ApiV1AccountAuthIdApplicationPost_0(context.Background(), authId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Body(body).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ApplicationAPI.ApiV1AccountAuthIdApplicationPost_0``: %v\n", err)
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

Other parameters are passed through a pointer to a apiApiV1AccountAuthIdApplicationPost_2Request struct via the builder pattern


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


## ApiV1AccountAuthIdNumbersApplicationDelete

> ApiV1AccountAuthIdNumbersApplicationDelete(ctx, authId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Execute()

Unlink Number from Application



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
	r, err := apiClient.ApplicationAPI.ApiV1AccountAuthIdNumbersApplicationDelete(context.Background(), authId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ApplicationAPI.ApiV1AccountAuthIdNumbersApplicationDelete``: %v\n", err)
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

Other parameters are passed through a pointer to a apiApiV1AccountAuthIdNumbersApplicationDeleteRequest struct via the builder pattern


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


## ApiV1AccountAuthIdNumbersApplicationPost

> ApiV1AccountAuthIdNumbersApplicationPost(ctx, authId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Body(body).Execute()

Link Number to Application



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
	r, err := apiClient.ApplicationAPI.ApiV1AccountAuthIdNumbersApplicationPost(context.Background(), authId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Body(body).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ApplicationAPI.ApiV1AccountAuthIdNumbersApplicationPost``: %v\n", err)
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

Other parameters are passed through a pointer to a apiApiV1AccountAuthIdNumbersApplicationPostRequest struct via the builder pattern


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

