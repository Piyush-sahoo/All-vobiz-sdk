# \TrunkAPI

All URIs are relative to *https://api.vobiz.ai*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ApiV1AccountAccountIdCredentialsCredentialIdDelete**](TrunkAPI.md#ApiV1AccountAccountIdCredentialsCredentialIdDelete) | **Delete** /api/v1/account/{account_id}/credentials/:credential_id | Delete a Credential
[**ApiV1AccountAccountIdCredentialsCredentialIdPut**](TrunkAPI.md#ApiV1AccountAccountIdCredentialsCredentialIdPut) | **Put** /api/v1/account/{account_id}/credentials/:credential_id | Update a Credential
[**ApiV1AccountAccountIdCredentialsPost**](TrunkAPI.md#ApiV1AccountAccountIdCredentialsPost) | **Post** /api/v1/account/{account_id}/credentials | Create Credential
[**ApiV1AccountAccountIdIpAclIpAclIdDelete**](TrunkAPI.md#ApiV1AccountAccountIdIpAclIpAclIdDelete) | **Delete** /api/v1/account/{account_id}/ip-acl/:ip_acl_id | Delete an IP ACL
[**ApiV1AccountAccountIdIpAclIpAclIdPut**](TrunkAPI.md#ApiV1AccountAccountIdIpAclIpAclIdPut) | **Put** /api/v1/account/{account_id}/ip-acl/:ip_acl_id | Update an IP ACL
[**ApiV1AccountAccountIdIpAclPost**](TrunkAPI.md#ApiV1AccountAccountIdIpAclPost) | **Post** /api/v1/account/{account_id}/ip-acl | Create IP ACL
[**ApiV1AccountAccountIdNumbersAssignDelete**](TrunkAPI.md#ApiV1AccountAccountIdNumbersAssignDelete) | **Delete** /api/v1/account/{account_id}/numbers/{}/assign | Unassign Number from Trunk
[**ApiV1AccountAccountIdNumbersAssignPost**](TrunkAPI.md#ApiV1AccountAccountIdNumbersAssignPost) | **Post** /api/v1/account/{account_id}/numbers/{}/assign | Assign Number to Trunk
[**ApiV1AccountAccountIdOriginationUrisPost**](TrunkAPI.md#ApiV1AccountAccountIdOriginationUrisPost) | **Post** /api/v1/account/{account_id}/origination-uris | Create Origination URI
[**ApiV1AccountAccountIdOriginationUrisUriIdDelete**](TrunkAPI.md#ApiV1AccountAccountIdOriginationUrisUriIdDelete) | **Delete** /api/v1/account/{account_id}/origination-uris/:uri_id | Delete an Origination URI
[**ApiV1AccountAccountIdOriginationUrisUriIdPut**](TrunkAPI.md#ApiV1AccountAccountIdOriginationUrisUriIdPut) | **Put** /api/v1/account/{account_id}/origination-uris/:uri_id | Update an Origination URI
[**ApiV1AccountAccountIdTrunksCredentialsGet**](TrunkAPI.md#ApiV1AccountAccountIdTrunksCredentialsGet) | **Get** /api/v1/account/{account_id}/trunks/credentials | List All Credentials
[**ApiV1AccountAccountIdTrunksGet**](TrunkAPI.md#ApiV1AccountAccountIdTrunksGet) | **Get** /api/v1/account/{account_id}/trunks | List All Trunks
[**ApiV1AccountAccountIdTrunksIpAclGet**](TrunkAPI.md#ApiV1AccountAccountIdTrunksIpAclGet) | **Get** /api/v1/account/{account_id}/trunks/ip-acl | List All IP ACLs
[**ApiV1AccountAccountIdTrunksOriginationUrisGet**](TrunkAPI.md#ApiV1AccountAccountIdTrunksOriginationUrisGet) | **Get** /api/v1/account/{account_id}/trunks/origination-uris | List All Origination URIs
[**ApiV1AccountAccountIdTrunksPost**](TrunkAPI.md#ApiV1AccountAccountIdTrunksPost) | **Post** /api/v1/account/{account_id}/trunks | Create Trunk
[**ApiV1AccountAccountIdTrunksTrunkIdDelete**](TrunkAPI.md#ApiV1AccountAccountIdTrunksTrunkIdDelete) | **Delete** /api/v1/account/{account_id}/trunks/:trunk_id | Delete a Trunk
[**ApiV1AccountAccountIdTrunksTrunkIdGet**](TrunkAPI.md#ApiV1AccountAccountIdTrunksTrunkIdGet) | **Get** /api/v1/account/{account_id}/trunks/:trunk_id | Retrieve a Trunk
[**ApiV1AccountAccountIdTrunksTrunkIdPut**](TrunkAPI.md#ApiV1AccountAccountIdTrunksTrunkIdPut) | **Put** /api/v1/account/{account_id}/trunks/:trunk_id | Update a Trunk



## ApiV1AccountAccountIdCredentialsCredentialIdDelete

> ApiV1AccountAccountIdCredentialsCredentialIdDelete(ctx, accountId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Execute()

Delete a Credential



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

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.TrunkAPI.ApiV1AccountAccountIdCredentialsCredentialIdDelete(context.Background(), accountId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `TrunkAPI.ApiV1AccountAccountIdCredentialsCredentialIdDelete``: %v\n", err)
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

Other parameters are passed through a pointer to a apiApiV1AccountAccountIdCredentialsCredentialIdDeleteRequest struct via the builder pattern


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


## ApiV1AccountAccountIdCredentialsCredentialIdPut

> ApiV1AccountAccountIdCredentialsCredentialIdPut(ctx, accountId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Body(body).Execute()

Update a Credential



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
	body := map[string]interface{}{ ... } // map[string]interface{} |  (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.TrunkAPI.ApiV1AccountAccountIdCredentialsCredentialIdPut(context.Background(), accountId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Body(body).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `TrunkAPI.ApiV1AccountAccountIdCredentialsCredentialIdPut``: %v\n", err)
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

Other parameters are passed through a pointer to a apiApiV1AccountAccountIdCredentialsCredentialIdPutRequest struct via the builder pattern


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


## ApiV1AccountAccountIdCredentialsPost

> ApiV1AccountAccountIdCredentialsPost(ctx, accountId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Body(body).Execute()

Create Credential



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
	body := map[string]interface{}{ ... } // map[string]interface{} |  (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.TrunkAPI.ApiV1AccountAccountIdCredentialsPost(context.Background(), accountId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Body(body).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `TrunkAPI.ApiV1AccountAccountIdCredentialsPost``: %v\n", err)
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

Other parameters are passed through a pointer to a apiApiV1AccountAccountIdCredentialsPostRequest struct via the builder pattern


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


## ApiV1AccountAccountIdIpAclIpAclIdDelete

> ApiV1AccountAccountIdIpAclIpAclIdDelete(ctx, accountId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Execute()

Delete an IP ACL



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

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.TrunkAPI.ApiV1AccountAccountIdIpAclIpAclIdDelete(context.Background(), accountId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `TrunkAPI.ApiV1AccountAccountIdIpAclIpAclIdDelete``: %v\n", err)
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

Other parameters are passed through a pointer to a apiApiV1AccountAccountIdIpAclIpAclIdDeleteRequest struct via the builder pattern


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


## ApiV1AccountAccountIdIpAclIpAclIdPut

> ApiV1AccountAccountIdIpAclIpAclIdPut(ctx, accountId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Body(body).Execute()

Update an IP ACL



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
	body := map[string]interface{}{ ... } // map[string]interface{} |  (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.TrunkAPI.ApiV1AccountAccountIdIpAclIpAclIdPut(context.Background(), accountId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Body(body).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `TrunkAPI.ApiV1AccountAccountIdIpAclIpAclIdPut``: %v\n", err)
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

Other parameters are passed through a pointer to a apiApiV1AccountAccountIdIpAclIpAclIdPutRequest struct via the builder pattern


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


## ApiV1AccountAccountIdIpAclPost

> ApiV1AccountAccountIdIpAclPost(ctx, accountId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Body(body).Execute()

Create IP ACL



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
	body := map[string]interface{}{ ... } // map[string]interface{} |  (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.TrunkAPI.ApiV1AccountAccountIdIpAclPost(context.Background(), accountId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Body(body).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `TrunkAPI.ApiV1AccountAccountIdIpAclPost``: %v\n", err)
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

Other parameters are passed through a pointer to a apiApiV1AccountAccountIdIpAclPostRequest struct via the builder pattern


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


## ApiV1AccountAccountIdNumbersAssignDelete

> ApiV1AccountAccountIdNumbersAssignDelete(ctx, accountId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Execute()

Unassign Number from Trunk



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

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.TrunkAPI.ApiV1AccountAccountIdNumbersAssignDelete(context.Background(), accountId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `TrunkAPI.ApiV1AccountAccountIdNumbersAssignDelete``: %v\n", err)
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

Other parameters are passed through a pointer to a apiApiV1AccountAccountIdNumbersAssignDeleteRequest struct via the builder pattern


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


## ApiV1AccountAccountIdNumbersAssignPost

> ApiV1AccountAccountIdNumbersAssignPost(ctx, accountId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Body(body).Execute()

Assign Number to Trunk



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
	body := map[string]interface{}{ ... } // map[string]interface{} |  (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.TrunkAPI.ApiV1AccountAccountIdNumbersAssignPost(context.Background(), accountId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Body(body).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `TrunkAPI.ApiV1AccountAccountIdNumbersAssignPost``: %v\n", err)
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

Other parameters are passed through a pointer to a apiApiV1AccountAccountIdNumbersAssignPostRequest struct via the builder pattern


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


## ApiV1AccountAccountIdOriginationUrisPost

> ApiV1AccountAccountIdOriginationUrisPost(ctx, accountId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Body(body).Execute()

Create Origination URI



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
	body := map[string]interface{}{ ... } // map[string]interface{} |  (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.TrunkAPI.ApiV1AccountAccountIdOriginationUrisPost(context.Background(), accountId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Body(body).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `TrunkAPI.ApiV1AccountAccountIdOriginationUrisPost``: %v\n", err)
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

Other parameters are passed through a pointer to a apiApiV1AccountAccountIdOriginationUrisPostRequest struct via the builder pattern


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


## ApiV1AccountAccountIdOriginationUrisUriIdDelete

> ApiV1AccountAccountIdOriginationUrisUriIdDelete(ctx, accountId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Execute()

Delete an Origination URI



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

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.TrunkAPI.ApiV1AccountAccountIdOriginationUrisUriIdDelete(context.Background(), accountId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `TrunkAPI.ApiV1AccountAccountIdOriginationUrisUriIdDelete``: %v\n", err)
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

Other parameters are passed through a pointer to a apiApiV1AccountAccountIdOriginationUrisUriIdDeleteRequest struct via the builder pattern


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


## ApiV1AccountAccountIdOriginationUrisUriIdPut

> ApiV1AccountAccountIdOriginationUrisUriIdPut(ctx, accountId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Body(body).Execute()

Update an Origination URI



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
	body := map[string]interface{}{ ... } // map[string]interface{} |  (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.TrunkAPI.ApiV1AccountAccountIdOriginationUrisUriIdPut(context.Background(), accountId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Body(body).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `TrunkAPI.ApiV1AccountAccountIdOriginationUrisUriIdPut``: %v\n", err)
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

Other parameters are passed through a pointer to a apiApiV1AccountAccountIdOriginationUrisUriIdPutRequest struct via the builder pattern


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


## ApiV1AccountAccountIdTrunksCredentialsGet

> ApiV1AccountAccountIdTrunksCredentialsGet(ctx, accountId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Limit(limit).Offset(offset).Execute()

List All Credentials



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
	limit := int32(20) // int32 | Results per page (optional)
	offset := int32(0) // int32 | Pagination offset (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.TrunkAPI.ApiV1AccountAccountIdTrunksCredentialsGet(context.Background(), accountId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Limit(limit).Offset(offset).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `TrunkAPI.ApiV1AccountAccountIdTrunksCredentialsGet``: %v\n", err)
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

Other parameters are passed through a pointer to a apiApiV1AccountAccountIdTrunksCredentialsGetRequest struct via the builder pattern


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


## ApiV1AccountAccountIdTrunksGet

> ApiV1AccountAccountIdTrunksGet(ctx, accountId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Limit(limit).Offset(offset).Execute()

List All Trunks



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
	limit := int32(20) // int32 | Results per page (optional)
	offset := int32(0) // int32 | Pagination offset (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.TrunkAPI.ApiV1AccountAccountIdTrunksGet(context.Background(), accountId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Limit(limit).Offset(offset).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `TrunkAPI.ApiV1AccountAccountIdTrunksGet``: %v\n", err)
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

Other parameters are passed through a pointer to a apiApiV1AccountAccountIdTrunksGetRequest struct via the builder pattern


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


## ApiV1AccountAccountIdTrunksIpAclGet

> ApiV1AccountAccountIdTrunksIpAclGet(ctx, accountId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Limit(limit).Offset(offset).Execute()

List All IP ACLs



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
	limit := int32(20) // int32 | Results per page (optional)
	offset := int32(0) // int32 | Pagination offset (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.TrunkAPI.ApiV1AccountAccountIdTrunksIpAclGet(context.Background(), accountId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Limit(limit).Offset(offset).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `TrunkAPI.ApiV1AccountAccountIdTrunksIpAclGet``: %v\n", err)
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

Other parameters are passed through a pointer to a apiApiV1AccountAccountIdTrunksIpAclGetRequest struct via the builder pattern


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


## ApiV1AccountAccountIdTrunksOriginationUrisGet

> ApiV1AccountAccountIdTrunksOriginationUrisGet(ctx, accountId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Limit(limit).Offset(offset).Execute()

List All Origination URIs



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
	limit := int32(20) // int32 | Results per page (optional)
	offset := int32(0) // int32 | Pagination offset (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.TrunkAPI.ApiV1AccountAccountIdTrunksOriginationUrisGet(context.Background(), accountId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Limit(limit).Offset(offset).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `TrunkAPI.ApiV1AccountAccountIdTrunksOriginationUrisGet``: %v\n", err)
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

Other parameters are passed through a pointer to a apiApiV1AccountAccountIdTrunksOriginationUrisGetRequest struct via the builder pattern


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


## ApiV1AccountAccountIdTrunksPost

> ApiV1AccountAccountIdTrunksPost(ctx, accountId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Body(body).Execute()

Create Trunk



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
	body := map[string]interface{}{ ... } // map[string]interface{} |  (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.TrunkAPI.ApiV1AccountAccountIdTrunksPost(context.Background(), accountId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Body(body).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `TrunkAPI.ApiV1AccountAccountIdTrunksPost``: %v\n", err)
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

Other parameters are passed through a pointer to a apiApiV1AccountAccountIdTrunksPostRequest struct via the builder pattern


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


## ApiV1AccountAccountIdTrunksTrunkIdDelete

> ApiV1AccountAccountIdTrunksTrunkIdDelete(ctx, accountId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Execute()

Delete a Trunk



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

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.TrunkAPI.ApiV1AccountAccountIdTrunksTrunkIdDelete(context.Background(), accountId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `TrunkAPI.ApiV1AccountAccountIdTrunksTrunkIdDelete``: %v\n", err)
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

Other parameters are passed through a pointer to a apiApiV1AccountAccountIdTrunksTrunkIdDeleteRequest struct via the builder pattern


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


## ApiV1AccountAccountIdTrunksTrunkIdGet

> ApiV1AccountAccountIdTrunksTrunkIdGet(ctx, accountId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Execute()

Retrieve a Trunk



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

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.TrunkAPI.ApiV1AccountAccountIdTrunksTrunkIdGet(context.Background(), accountId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `TrunkAPI.ApiV1AccountAccountIdTrunksTrunkIdGet``: %v\n", err)
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

Other parameters are passed through a pointer to a apiApiV1AccountAccountIdTrunksTrunkIdGetRequest struct via the builder pattern


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


## ApiV1AccountAccountIdTrunksTrunkIdPut

> ApiV1AccountAccountIdTrunksTrunkIdPut(ctx, accountId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Body(body).Execute()

Update a Trunk



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
	body := map[string]interface{}{ ... } // map[string]interface{} |  (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.TrunkAPI.ApiV1AccountAccountIdTrunksTrunkIdPut(context.Background(), accountId).XAuthID(xAuthID).XAuthToken(xAuthToken).ContentType(contentType).Body(body).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `TrunkAPI.ApiV1AccountAccountIdTrunksTrunkIdPut``: %v\n", err)
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

Other parameters are passed through a pointer to a apiApiV1AccountAccountIdTrunksTrunkIdPutRequest struct via the builder pattern


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

