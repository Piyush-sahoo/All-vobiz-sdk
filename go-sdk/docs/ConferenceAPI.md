# \ConferenceAPI

All URIs are relative to *https://api.vobiz.ai*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ApiV1AccountAuthIdConferenceDelete**](ConferenceAPI.md#ApiV1AccountAuthIdConferenceDelete) | **Delete** /api/v1/Account/{auth_id}/Conference/ | Hang Up All Conferences
[**ApiV1AccountAuthIdConferenceDelete_0**](ConferenceAPI.md#ApiV1AccountAuthIdConferenceDelete_0) | **Delete** /api/v1/Account/{auth_id}/Conference/{}/ | Hang Up a Conference
[**ApiV1AccountAuthIdConferenceGet**](ConferenceAPI.md#ApiV1AccountAuthIdConferenceGet) | **Get** /api/v1/Account/{auth_id}/Conference/ | List All Conferences
[**ApiV1AccountAuthIdConferenceGet_0**](ConferenceAPI.md#ApiV1AccountAuthIdConferenceGet_0) | **Get** /api/v1/Account/{auth_id}/Conference/{}/ | Retrieve a Conference
[**ApiV1AccountAuthIdConferenceMemberDeafDelete**](ConferenceAPI.md#ApiV1AccountAuthIdConferenceMemberDeafDelete) | **Delete** /api/v1/Account/{auth_id}/Conference/{}/Member/{}/Deaf/ | Undeaf a Conference Member
[**ApiV1AccountAuthIdConferenceMemberDeafPost**](ConferenceAPI.md#ApiV1AccountAuthIdConferenceMemberDeafPost) | **Post** /api/v1/Account/{auth_id}/Conference/{}/Member/{}/Deaf/ | Deaf a Conference Member
[**ApiV1AccountAuthIdConferenceMemberDelete**](ConferenceAPI.md#ApiV1AccountAuthIdConferenceMemberDelete) | **Delete** /api/v1/Account/{auth_id}/Conference/{}/Member/{}/ | Hang Up a Conference Member
[**ApiV1AccountAuthIdConferenceMemberKickPost**](ConferenceAPI.md#ApiV1AccountAuthIdConferenceMemberKickPost) | **Post** /api/v1/Account/{auth_id}/Conference/{}/Member/{}/Kick/ | Kick a Conference Member
[**ApiV1AccountAuthIdConferenceMemberMuteDelete**](ConferenceAPI.md#ApiV1AccountAuthIdConferenceMemberMuteDelete) | **Delete** /api/v1/Account/{auth_id}/Conference/{}/Member/{}/Mute/ | Unmute a Conference Member
[**ApiV1AccountAuthIdConferenceMemberMutePost**](ConferenceAPI.md#ApiV1AccountAuthIdConferenceMemberMutePost) | **Post** /api/v1/Account/{auth_id}/Conference/{}/Member/{}/Mute/ | Mute a Conference Member
[**ApiV1AccountAuthIdConferenceMemberPlayDelete**](ConferenceAPI.md#ApiV1AccountAuthIdConferenceMemberPlayDelete) | **Delete** /api/v1/Account/{auth_id}/Conference/{}/Member/{}/Play/ | Stop Playing Audio to a Conference Member
[**ApiV1AccountAuthIdConferenceMemberPlayPost**](ConferenceAPI.md#ApiV1AccountAuthIdConferenceMemberPlayPost) | **Post** /api/v1/Account/{auth_id}/Conference/{}/Member/{}/Play/ | Play Audio to a Conference Member
[**ApiV1AccountAuthIdConferenceRecordDelete**](ConferenceAPI.md#ApiV1AccountAuthIdConferenceRecordDelete) | **Delete** /api/v1/Account/{auth_id}/Conference/{}/Record/ | Stop Conference Recording
[**ApiV1AccountAuthIdConferenceRecordPost**](ConferenceAPI.md#ApiV1AccountAuthIdConferenceRecordPost) | **Post** /api/v1/Account/{auth_id}/Conference/{}/Record/ | Start Conference Recording



## ApiV1AccountAuthIdConferenceDelete

> ApiV1AccountAuthIdConferenceDelete(ctx, authId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Execute()

Hang Up All Conferences



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
	r, err := apiClient.ConferenceAPI.ApiV1AccountAuthIdConferenceDelete(context.Background(), authId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ConferenceAPI.ApiV1AccountAuthIdConferenceDelete``: %v\n", err)
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

Other parameters are passed through a pointer to a apiApiV1AccountAuthIdConferenceDeleteRequest struct via the builder pattern


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


## ApiV1AccountAuthIdConferenceDelete_0

> ApiV1AccountAuthIdConferenceDelete_0(ctx, authId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Execute()

Hang Up a Conference



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
	r, err := apiClient.ConferenceAPI.ApiV1AccountAuthIdConferenceDelete_0(context.Background(), authId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ConferenceAPI.ApiV1AccountAuthIdConferenceDelete_0``: %v\n", err)
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

Other parameters are passed through a pointer to a apiApiV1AccountAuthIdConferenceDelete_1Request struct via the builder pattern


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


## ApiV1AccountAuthIdConferenceGet

> ApiV1AccountAuthIdConferenceGet(ctx, authId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Execute()

List All Conferences



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
	r, err := apiClient.ConferenceAPI.ApiV1AccountAuthIdConferenceGet(context.Background(), authId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ConferenceAPI.ApiV1AccountAuthIdConferenceGet``: %v\n", err)
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

Other parameters are passed through a pointer to a apiApiV1AccountAuthIdConferenceGetRequest struct via the builder pattern


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


## ApiV1AccountAuthIdConferenceGet_0

> ApiV1AccountAuthIdConferenceGet_0(ctx, authId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Execute()

Retrieve a Conference



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
	r, err := apiClient.ConferenceAPI.ApiV1AccountAuthIdConferenceGet_0(context.Background(), authId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ConferenceAPI.ApiV1AccountAuthIdConferenceGet_0``: %v\n", err)
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

Other parameters are passed through a pointer to a apiApiV1AccountAuthIdConferenceGet_2Request struct via the builder pattern


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


## ApiV1AccountAuthIdConferenceMemberDeafDelete

> ApiV1AccountAuthIdConferenceMemberDeafDelete(ctx, authId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Execute()

Undeaf a Conference Member



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
	r, err := apiClient.ConferenceAPI.ApiV1AccountAuthIdConferenceMemberDeafDelete(context.Background(), authId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ConferenceAPI.ApiV1AccountAuthIdConferenceMemberDeafDelete``: %v\n", err)
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

Other parameters are passed through a pointer to a apiApiV1AccountAuthIdConferenceMemberDeafDeleteRequest struct via the builder pattern


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


## ApiV1AccountAuthIdConferenceMemberDeafPost

> ApiV1AccountAuthIdConferenceMemberDeafPost(ctx, authId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Execute()

Deaf a Conference Member



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
	r, err := apiClient.ConferenceAPI.ApiV1AccountAuthIdConferenceMemberDeafPost(context.Background(), authId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ConferenceAPI.ApiV1AccountAuthIdConferenceMemberDeafPost``: %v\n", err)
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

Other parameters are passed through a pointer to a apiApiV1AccountAuthIdConferenceMemberDeafPostRequest struct via the builder pattern


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


## ApiV1AccountAuthIdConferenceMemberDelete

> ApiV1AccountAuthIdConferenceMemberDelete(ctx, authId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Execute()

Hang Up a Conference Member



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
	r, err := apiClient.ConferenceAPI.ApiV1AccountAuthIdConferenceMemberDelete(context.Background(), authId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ConferenceAPI.ApiV1AccountAuthIdConferenceMemberDelete``: %v\n", err)
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

Other parameters are passed through a pointer to a apiApiV1AccountAuthIdConferenceMemberDeleteRequest struct via the builder pattern


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


## ApiV1AccountAuthIdConferenceMemberKickPost

> ApiV1AccountAuthIdConferenceMemberKickPost(ctx, authId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Execute()

Kick a Conference Member



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
	r, err := apiClient.ConferenceAPI.ApiV1AccountAuthIdConferenceMemberKickPost(context.Background(), authId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ConferenceAPI.ApiV1AccountAuthIdConferenceMemberKickPost``: %v\n", err)
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

Other parameters are passed through a pointer to a apiApiV1AccountAuthIdConferenceMemberKickPostRequest struct via the builder pattern


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


## ApiV1AccountAuthIdConferenceMemberMuteDelete

> ApiV1AccountAuthIdConferenceMemberMuteDelete(ctx, authId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Execute()

Unmute a Conference Member



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
	r, err := apiClient.ConferenceAPI.ApiV1AccountAuthIdConferenceMemberMuteDelete(context.Background(), authId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ConferenceAPI.ApiV1AccountAuthIdConferenceMemberMuteDelete``: %v\n", err)
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

Other parameters are passed through a pointer to a apiApiV1AccountAuthIdConferenceMemberMuteDeleteRequest struct via the builder pattern


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


## ApiV1AccountAuthIdConferenceMemberMutePost

> ApiV1AccountAuthIdConferenceMemberMutePost(ctx, authId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Execute()

Mute a Conference Member



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
	r, err := apiClient.ConferenceAPI.ApiV1AccountAuthIdConferenceMemberMutePost(context.Background(), authId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ConferenceAPI.ApiV1AccountAuthIdConferenceMemberMutePost``: %v\n", err)
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

Other parameters are passed through a pointer to a apiApiV1AccountAuthIdConferenceMemberMutePostRequest struct via the builder pattern


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


## ApiV1AccountAuthIdConferenceMemberPlayDelete

> ApiV1AccountAuthIdConferenceMemberPlayDelete(ctx, authId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Execute()

Stop Playing Audio to a Conference Member



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
	r, err := apiClient.ConferenceAPI.ApiV1AccountAuthIdConferenceMemberPlayDelete(context.Background(), authId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ConferenceAPI.ApiV1AccountAuthIdConferenceMemberPlayDelete``: %v\n", err)
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

Other parameters are passed through a pointer to a apiApiV1AccountAuthIdConferenceMemberPlayDeleteRequest struct via the builder pattern


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


## ApiV1AccountAuthIdConferenceMemberPlayPost

> ApiV1AccountAuthIdConferenceMemberPlayPost(ctx, authId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Body(body).Execute()

Play Audio to a Conference Member



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
	r, err := apiClient.ConferenceAPI.ApiV1AccountAuthIdConferenceMemberPlayPost(context.Background(), authId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Body(body).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ConferenceAPI.ApiV1AccountAuthIdConferenceMemberPlayPost``: %v\n", err)
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

Other parameters are passed through a pointer to a apiApiV1AccountAuthIdConferenceMemberPlayPostRequest struct via the builder pattern


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


## ApiV1AccountAuthIdConferenceRecordDelete

> ApiV1AccountAuthIdConferenceRecordDelete(ctx, authId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Execute()

Stop Conference Recording



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
	r, err := apiClient.ConferenceAPI.ApiV1AccountAuthIdConferenceRecordDelete(context.Background(), authId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ConferenceAPI.ApiV1AccountAuthIdConferenceRecordDelete``: %v\n", err)
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

Other parameters are passed through a pointer to a apiApiV1AccountAuthIdConferenceRecordDeleteRequest struct via the builder pattern


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


## ApiV1AccountAuthIdConferenceRecordPost

> ApiV1AccountAuthIdConferenceRecordPost(ctx, authId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Body(body).Execute()

Start Conference Recording



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
	r, err := apiClient.ConferenceAPI.ApiV1AccountAuthIdConferenceRecordPost(context.Background(), authId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Body(body).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ConferenceAPI.ApiV1AccountAuthIdConferenceRecordPost``: %v\n", err)
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

Other parameters are passed through a pointer to a apiApiV1AccountAuthIdConferenceRecordPostRequest struct via the builder pattern


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

