# Vobiz.Api.EndpointApi

All URIs are relative to *https://api.vobiz.ai*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**ApiV1AccountAuthIdEndpointDelete**](EndpointApi.md#apiv1accountauthidendpointdelete) | **DELETE** /api/v1/Account/{auth_id}/Endpoint/{}/ | Delete an Endpoint |
| [**ApiV1AccountAuthIdEndpointGet**](EndpointApi.md#apiv1accountauthidendpointget) | **GET** /api/v1/Account/{auth_id}/Endpoint/ | List All Endpoints |
| [**ApiV1AccountAuthIdEndpointGet_0**](EndpointApi.md#apiv1accountauthidendpointget_0) | **GET** /api/v1/Account/{auth_id}/Endpoint/{}/ | Retrieve an Endpoint |
| [**ApiV1AccountAuthIdEndpointPost**](EndpointApi.md#apiv1accountauthidendpointpost) | **POST** /api/v1/Account/{auth_id}/Endpoint/ | Create Endpoint |
| [**ApiV1AccountAuthIdEndpointPost_0**](EndpointApi.md#apiv1accountauthidendpointpost_0) | **POST** /api/v1/Account/{auth_id}/Endpoint/{}/ | Update an Endpoint |

<a id="apiv1accountauthidendpointdelete"></a>
# **ApiV1AccountAuthIdEndpointDelete**
> void ApiV1AccountAuthIdEndpointDelete (string authId, string xAuthID = null, string xAuthToken = null, string contentType = null)

Delete an Endpoint

Delete an endpoint. Returns 204 No Content.


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

<a id="apiv1accountauthidendpointget"></a>
# **ApiV1AccountAuthIdEndpointGet**
> void ApiV1AccountAuthIdEndpointGet (string authId, string xAuthID = null, string xAuthToken = null, string contentType = null, int limit = null, int offset = null)

List All Endpoints

Retrieve all endpoints with pagination.


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

<a id="apiv1accountauthidendpointget_0"></a>
# **ApiV1AccountAuthIdEndpointGet_0**
> void ApiV1AccountAuthIdEndpointGet_0 (string authId, string xAuthID = null, string xAuthToken = null, string contentType = null)

Retrieve an Endpoint

Get details of a specific endpoint.


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

<a id="apiv1accountauthidendpointpost"></a>
# **ApiV1AccountAuthIdEndpointPost**
> void ApiV1AccountAuthIdEndpointPost (string authId, string xAuthID = null, string xAuthToken = null, string contentType = null, Object body = null)

Create Endpoint

Create a new SIP endpoint.


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

<a id="apiv1accountauthidendpointpost_0"></a>
# **ApiV1AccountAuthIdEndpointPost_0**
> void ApiV1AccountAuthIdEndpointPost_0 (string authId, string xAuthID = null, string xAuthToken = null, string contentType = null, Object body = null)

Update an Endpoint

Update an existing endpoint's configuration.


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

