# \CallAPI

All URIs are relative to *https://api.vobiz.ai*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ApiV1AccountAuthIdCallDTMFPost**](CallAPI.md#ApiV1AccountAuthIdCallDTMFPost) | **Post** /api/v1/Account/{auth_id}/Call/{}/DTMF/ | Send DTMF Digits
[**ApiV1AccountAuthIdCallDelete**](CallAPI.md#ApiV1AccountAuthIdCallDelete) | **Delete** /api/v1/Account/{auth_id}/Call/{}/ | Hang Up a Call
[**ApiV1AccountAuthIdCallGet**](CallAPI.md#ApiV1AccountAuthIdCallGet) | **Get** /api/v1/Account/{auth_id}/Call/ | Retrieve All Queued Calls
[**ApiV1AccountAuthIdCallGet_0**](CallAPI.md#ApiV1AccountAuthIdCallGet_0) | **Get** /api/v1/Account/{auth_id}/Call/{}/ | Retrieve a Queued Call
[**ApiV1AccountAuthIdCallPlayDelete**](CallAPI.md#ApiV1AccountAuthIdCallPlayDelete) | **Delete** /api/v1/Account/{auth_id}/Call/{}/Play/ | Stop Playing Audio on a Call
[**ApiV1AccountAuthIdCallPlayPost**](CallAPI.md#ApiV1AccountAuthIdCallPlayPost) | **Post** /api/v1/Account/{auth_id}/Call/{}/Play/ | Play Audio on a Call
[**ApiV1AccountAuthIdCallPost**](CallAPI.md#ApiV1AccountAuthIdCallPost) | **Post** /api/v1/Account/{auth_id}/Call/ | Make an Outbound Call
[**ApiV1AccountAuthIdCallPost_0**](CallAPI.md#ApiV1AccountAuthIdCallPost_0) | **Post** /api/v1/Account/{auth_id}/Call/{}/ | Transfer a Call
[**ApiV1AccountAuthIdCallRecordDelete**](CallAPI.md#ApiV1AccountAuthIdCallRecordDelete) | **Delete** /api/v1/Account/{auth_id}/Call/{}/Record/ | Stop Recording a Call
[**ApiV1AccountAuthIdCallRecordPost**](CallAPI.md#ApiV1AccountAuthIdCallRecordPost) | **Post** /api/v1/Account/{auth_id}/Call/{}/Record/ | Start Recording a Call
[**ApiV1AccountAuthIdCallSpeakDelete**](CallAPI.md#ApiV1AccountAuthIdCallSpeakDelete) | **Delete** /api/v1/Account/{auth_id}/Call/{}/Speak/ | Stop Speaking Text on a Call
[**ApiV1AccountAuthIdCallSpeakPost**](CallAPI.md#ApiV1AccountAuthIdCallSpeakPost) | **Post** /api/v1/Account/{auth_id}/Call/{}/Speak/ | Speak Text on a Call (TTS)



## ApiV1AccountAuthIdCallDTMFPost

> ApiV1AccountAuthIdCallDTMFPost(ctx, authId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Body(body).Execute()

Send DTMF Digits



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
	r, err := apiClient.CallAPI.ApiV1AccountAuthIdCallDTMFPost(context.Background(), authId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Body(body).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `CallAPI.ApiV1AccountAuthIdCallDTMFPost``: %v\n", err)
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

Other parameters are passed through a pointer to a apiApiV1AccountAuthIdCallDTMFPostRequest struct via the builder pattern


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


## ApiV1AccountAuthIdCallDelete

> ApiV1AccountAuthIdCallDelete(ctx, authId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Execute()

Hang Up a Call



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
	r, err := apiClient.CallAPI.ApiV1AccountAuthIdCallDelete(context.Background(), authId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `CallAPI.ApiV1AccountAuthIdCallDelete``: %v\n", err)
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

Other parameters are passed through a pointer to a apiApiV1AccountAuthIdCallDeleteRequest struct via the builder pattern


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


## ApiV1AccountAuthIdCallGet

> ApiV1AccountAuthIdCallGet(ctx, authId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Status(status).Execute()

Retrieve All Queued Calls



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
	status := "queued" // string | Must be 'queued' (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.CallAPI.ApiV1AccountAuthIdCallGet(context.Background(), authId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Status(status).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `CallAPI.ApiV1AccountAuthIdCallGet``: %v\n", err)
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

Other parameters are passed through a pointer to a apiApiV1AccountAuthIdCallGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **xAuthID** | **string** |  | 
 **xAuthToken** | **string** |  | 
 **contentType** | **string** |  | 
 **status** | **string** | Must be &#39;queued&#39; | 

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


## ApiV1AccountAuthIdCallGet_0

> ApiV1AccountAuthIdCallGet_0(ctx, authId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Status(status).Execute()

Retrieve a Queued Call



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
	status := "queued" // string | Must be 'queued' (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.CallAPI.ApiV1AccountAuthIdCallGet_0(context.Background(), authId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Status(status).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `CallAPI.ApiV1AccountAuthIdCallGet_0``: %v\n", err)
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

Other parameters are passed through a pointer to a apiApiV1AccountAuthIdCallGet_1Request struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **xAuthID** | **string** |  | 
 **xAuthToken** | **string** |  | 
 **contentType** | **string** |  | 
 **status** | **string** | Must be &#39;queued&#39; | 

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


## ApiV1AccountAuthIdCallPlayDelete

> ApiV1AccountAuthIdCallPlayDelete(ctx, authId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Execute()

Stop Playing Audio on a Call



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
	r, err := apiClient.CallAPI.ApiV1AccountAuthIdCallPlayDelete(context.Background(), authId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `CallAPI.ApiV1AccountAuthIdCallPlayDelete``: %v\n", err)
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

Other parameters are passed through a pointer to a apiApiV1AccountAuthIdCallPlayDeleteRequest struct via the builder pattern


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


## ApiV1AccountAuthIdCallPlayPost

> ApiV1AccountAuthIdCallPlayPost(ctx, authId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Body(body).Execute()

Play Audio on a Call



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
	r, err := apiClient.CallAPI.ApiV1AccountAuthIdCallPlayPost(context.Background(), authId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Body(body).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `CallAPI.ApiV1AccountAuthIdCallPlayPost``: %v\n", err)
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

Other parameters are passed through a pointer to a apiApiV1AccountAuthIdCallPlayPostRequest struct via the builder pattern


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


## ApiV1AccountAuthIdCallPost

> ApiV1AccountAuthIdCallPost(ctx, authId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Body(body).Execute()

Make an Outbound Call



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
	r, err := apiClient.CallAPI.ApiV1AccountAuthIdCallPost(context.Background(), authId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Body(body).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `CallAPI.ApiV1AccountAuthIdCallPost``: %v\n", err)
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

Other parameters are passed through a pointer to a apiApiV1AccountAuthIdCallPostRequest struct via the builder pattern


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


## ApiV1AccountAuthIdCallPost_0

> ApiV1AccountAuthIdCallPost_0(ctx, authId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Body(body).Execute()

Transfer a Call



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
	r, err := apiClient.CallAPI.ApiV1AccountAuthIdCallPost_0(context.Background(), authId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Body(body).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `CallAPI.ApiV1AccountAuthIdCallPost_0``: %v\n", err)
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

Other parameters are passed through a pointer to a apiApiV1AccountAuthIdCallPost_2Request struct via the builder pattern


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


## ApiV1AccountAuthIdCallRecordDelete

> ApiV1AccountAuthIdCallRecordDelete(ctx, authId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Execute()

Stop Recording a Call



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
	r, err := apiClient.CallAPI.ApiV1AccountAuthIdCallRecordDelete(context.Background(), authId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `CallAPI.ApiV1AccountAuthIdCallRecordDelete``: %v\n", err)
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

Other parameters are passed through a pointer to a apiApiV1AccountAuthIdCallRecordDeleteRequest struct via the builder pattern


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


## ApiV1AccountAuthIdCallRecordPost

> ApiV1AccountAuthIdCallRecordPost(ctx, authId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Body(body).Execute()

Start Recording a Call



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
	r, err := apiClient.CallAPI.ApiV1AccountAuthIdCallRecordPost(context.Background(), authId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Body(body).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `CallAPI.ApiV1AccountAuthIdCallRecordPost``: %v\n", err)
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

Other parameters are passed through a pointer to a apiApiV1AccountAuthIdCallRecordPostRequest struct via the builder pattern


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


## ApiV1AccountAuthIdCallSpeakDelete

> ApiV1AccountAuthIdCallSpeakDelete(ctx, authId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Execute()

Stop Speaking Text on a Call



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
	r, err := apiClient.CallAPI.ApiV1AccountAuthIdCallSpeakDelete(context.Background(), authId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `CallAPI.ApiV1AccountAuthIdCallSpeakDelete``: %v\n", err)
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

Other parameters are passed through a pointer to a apiApiV1AccountAuthIdCallSpeakDeleteRequest struct via the builder pattern


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


## ApiV1AccountAuthIdCallSpeakPost

> ApiV1AccountAuthIdCallSpeakPost(ctx, authId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Body(body).Execute()

Speak Text on a Call (TTS)



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
	r, err := apiClient.CallAPI.ApiV1AccountAuthIdCallSpeakPost(context.Background(), authId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Body(body).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `CallAPI.ApiV1AccountAuthIdCallSpeakPost``: %v\n", err)
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

Other parameters are passed through a pointer to a apiApiV1AccountAuthIdCallSpeakPostRequest struct via the builder pattern


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

