# Vobiz.Api.ApplicationApi

All URIs are relative to *https://api.vobiz.ai*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**ApiV1AccountAuthIdApplicationDelete**](ApplicationApi.md#apiv1accountauthidapplicationdelete) | **DELETE** /api/v1/Account/{auth_id}/Application/{}/ | Delete an Application |
| [**ApiV1AccountAuthIdApplicationGet**](ApplicationApi.md#apiv1accountauthidapplicationget) | **GET** /api/v1/Account/{auth_id}/Application/ | List All Applications |
| [**ApiV1AccountAuthIdApplicationGet_0**](ApplicationApi.md#apiv1accountauthidapplicationget_0) | **GET** /api/v1/Account/{auth_id}/Application/{}/ | Retrieve an Application |
| [**ApiV1AccountAuthIdApplicationPost**](ApplicationApi.md#apiv1accountauthidapplicationpost) | **POST** /api/v1/Account/{auth_id}/Application/ | Create Application |
| [**ApiV1AccountAuthIdApplicationPost_0**](ApplicationApi.md#apiv1accountauthidapplicationpost_0) | **POST** /api/v1/Account/{auth_id}/Application/{}/ | Update an Application |
| [**ApiV1AccountAuthIdNumbersApplicationDelete**](ApplicationApi.md#apiv1accountauthidnumbersapplicationdelete) | **DELETE** /api/v1/account/{auth_id}/numbers/{}/application | Unlink Number from Application |
| [**ApiV1AccountAuthIdNumbersApplicationPost**](ApplicationApi.md#apiv1accountauthidnumbersapplicationpost) | **POST** /api/v1/account/{auth_id}/numbers/{}/application | Link Number to Application |

<a id="apiv1accountauthidapplicationdelete"></a>
# **ApiV1AccountAuthIdApplicationDelete**
> void ApiV1AccountAuthIdApplicationDelete (string authId, string xAuthID = null, string xAuthToken = null, string contentType = null)

Delete an Application

Delete an application. Returns 204 No Content.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **authId** | **string** |  |  |
| **xAuthID** | **string** |  | [optional]  |
| **xAuthToken** | **string** |  | [optional]  |
| **contentType** | **string** |  | [optional]  |

### Return type

void (empty response body)

### Authorization

[ApiKeyAuthID](../README.md#ApiKeyAuthID), [ApiKeyAuthToken](../README.md#ApiKeyAuthToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="apiv1accountauthidapplicationget"></a>
# **ApiV1AccountAuthIdApplicationGet**
> void ApiV1AccountAuthIdApplicationGet (string authId, string xAuthID = null, string xAuthToken = null, string contentType = null, int limit = null, int offset = null)

List All Applications

Retrieve all applications with pagination.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **authId** | **string** |  |  |
| **xAuthID** | **string** |  | [optional]  |
| **xAuthToken** | **string** |  | [optional]  |
| **contentType** | **string** |  | [optional]  |
| **limit** | **int** | Results per page | [optional]  |
| **offset** | **int** | Pagination offset | [optional]  |

### Return type

void (empty response body)

### Authorization

[ApiKeyAuthID](../README.md#ApiKeyAuthID), [ApiKeyAuthToken](../README.md#ApiKeyAuthToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="apiv1accountauthidapplicationget_0"></a>
# **ApiV1AccountAuthIdApplicationGet_0**
> void ApiV1AccountAuthIdApplicationGet_0 (string authId, string xAuthID = null, string xAuthToken = null, string contentType = null)

Retrieve an Application

Get details of a specific application by its ID.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **authId** | **string** |  |  |
| **xAuthID** | **string** |  | [optional]  |
| **xAuthToken** | **string** |  | [optional]  |
| **contentType** | **string** |  | [optional]  |

### Return type

void (empty response body)

### Authorization

[ApiKeyAuthID](../README.md#ApiKeyAuthID), [ApiKeyAuthToken](../README.md#ApiKeyAuthToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="apiv1accountauthidapplicationpost"></a>
# **ApiV1AccountAuthIdApplicationPost**
> void ApiV1AccountAuthIdApplicationPost (string authId, string xAuthID = null, string xAuthToken = null, string contentType = null, Object body = null)

Create Application

Create a new application with call handling URLs.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **authId** | **string** |  |  |
| **xAuthID** | **string** |  | [optional]  |
| **xAuthToken** | **string** |  | [optional]  |
| **contentType** | **string** |  | [optional]  |
| **body** | **Object** |  | [optional]  |

### Return type

void (empty response body)

### Authorization

[ApiKeyAuthID](../README.md#ApiKeyAuthID), [ApiKeyAuthToken](../README.md#ApiKeyAuthToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="apiv1accountauthidapplicationpost_0"></a>
# **ApiV1AccountAuthIdApplicationPost_0**
> void ApiV1AccountAuthIdApplicationPost_0 (string authId, string xAuthID = null, string xAuthToken = null, string contentType = null, Object body = null)

Update an Application

Update an existing application's settings.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **authId** | **string** |  |  |
| **xAuthID** | **string** |  | [optional]  |
| **xAuthToken** | **string** |  | [optional]  |
| **contentType** | **string** |  | [optional]  |
| **body** | **Object** |  | [optional]  |

### Return type

void (empty response body)

### Authorization

[ApiKeyAuthID](../README.md#ApiKeyAuthID), [ApiKeyAuthToken](../README.md#ApiKeyAuthToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="apiv1accountauthidnumbersapplicationdelete"></a>
# **ApiV1AccountAuthIdNumbersApplicationDelete**
> void ApiV1AccountAuthIdNumbersApplicationDelete (string authId, string xAuthID = null, string xAuthToken = null, string contentType = null)

Unlink Number from Application

Remove association between a phone number and application.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **authId** | **string** |  |  |
| **xAuthID** | **string** |  | [optional]  |
| **xAuthToken** | **string** |  | [optional]  |
| **contentType** | **string** |  | [optional]  |

### Return type

void (empty response body)

### Authorization

[ApiKeyAuthID](../README.md#ApiKeyAuthID), [ApiKeyAuthToken](../README.md#ApiKeyAuthToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="apiv1accountauthidnumbersapplicationpost"></a>
# **ApiV1AccountAuthIdNumbersApplicationPost**
> void ApiV1AccountAuthIdNumbersApplicationPost (string authId, string xAuthID = null, string xAuthToken = null, string contentType = null, Object body = null)

Link Number to Application

Associate a phone number with an application.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **authId** | **string** |  |  |
| **xAuthID** | **string** |  | [optional]  |
| **xAuthToken** | **string** |  | [optional]  |
| **contentType** | **string** |  | [optional]  |
| **body** | **Object** |  | [optional]  |

### Return type

void (empty response body)

### Authorization

[ApiKeyAuthID](../README.md#ApiKeyAuthID), [ApiKeyAuthToken](../README.md#ApiKeyAuthToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

