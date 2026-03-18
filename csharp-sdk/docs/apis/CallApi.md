# Vobiz.Api.CallApi

All URIs are relative to *https://api.vobiz.ai*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**ApiV1AccountAuthIdCallDTMFPost**](CallApi.md#apiv1accountauthidcalldtmfpost) | **POST** /api/v1/Account/{auth_id}/Call/{}/DTMF/ | Send DTMF Digits |
| [**ApiV1AccountAuthIdCallDelete**](CallApi.md#apiv1accountauthidcalldelete) | **DELETE** /api/v1/Account/{auth_id}/Call/{}/ | Hang Up a Call |
| [**ApiV1AccountAuthIdCallGet**](CallApi.md#apiv1accountauthidcallget) | **GET** /api/v1/Account/{auth_id}/Call/ | Retrieve All Queued Calls |
| [**ApiV1AccountAuthIdCallGet_0**](CallApi.md#apiv1accountauthidcallget_0) | **GET** /api/v1/Account/{auth_id}/Call/{}/ | Retrieve a Queued Call |
| [**ApiV1AccountAuthIdCallPlayDelete**](CallApi.md#apiv1accountauthidcallplaydelete) | **DELETE** /api/v1/Account/{auth_id}/Call/{}/Play/ | Stop Playing Audio on a Call |
| [**ApiV1AccountAuthIdCallPlayPost**](CallApi.md#apiv1accountauthidcallplaypost) | **POST** /api/v1/Account/{auth_id}/Call/{}/Play/ | Play Audio on a Call |
| [**ApiV1AccountAuthIdCallPost**](CallApi.md#apiv1accountauthidcallpost) | **POST** /api/v1/Account/{auth_id}/Call/ | Make an Outbound Call |
| [**ApiV1AccountAuthIdCallPost_0**](CallApi.md#apiv1accountauthidcallpost_0) | **POST** /api/v1/Account/{auth_id}/Call/{}/ | Transfer a Call |
| [**ApiV1AccountAuthIdCallRecordDelete**](CallApi.md#apiv1accountauthidcallrecorddelete) | **DELETE** /api/v1/Account/{auth_id}/Call/{}/Record/ | Stop Recording a Call |
| [**ApiV1AccountAuthIdCallRecordPost**](CallApi.md#apiv1accountauthidcallrecordpost) | **POST** /api/v1/Account/{auth_id}/Call/{}/Record/ | Start Recording a Call |
| [**ApiV1AccountAuthIdCallSpeakDelete**](CallApi.md#apiv1accountauthidcallspeakdelete) | **DELETE** /api/v1/Account/{auth_id}/Call/{}/Speak/ | Stop Speaking Text on a Call |
| [**ApiV1AccountAuthIdCallSpeakPost**](CallApi.md#apiv1accountauthidcallspeakpost) | **POST** /api/v1/Account/{auth_id}/Call/{}/Speak/ | Speak Text on a Call (TTS) |

<a id="apiv1accountauthidcalldtmfpost"></a>
# **ApiV1AccountAuthIdCallDTMFPost**
> void ApiV1AccountAuthIdCallDTMFPost (string authId, string xAuthID = null, string xAuthToken = null, string contentType = null, Object body = null)

Send DTMF Digits

Send DTMF digits to an active call for automated IVR navigation.


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

<a id="apiv1accountauthidcalldelete"></a>
# **ApiV1AccountAuthIdCallDelete**
> void ApiV1AccountAuthIdCallDelete (string authId, string xAuthID = null, string xAuthToken = null, string contentType = null)

Hang Up a Call

Terminate an active call. Returns 204 No Content.


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

<a id="apiv1accountauthidcallget"></a>
# **ApiV1AccountAuthIdCallGet**
> void ApiV1AccountAuthIdCallGet (string authId, string xAuthID = null, string xAuthToken = null, string contentType = null, string status = null)

Retrieve All Queued Calls

Get a list of all call UUIDs for calls currently queued and waiting to connect. Max 20 results.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **authId** | **string** |  |  |
| **xAuthID** | **string** |  | [optional]  |
| **xAuthToken** | **string** |  | [optional]  |
| **contentType** | **string** |  | [optional]  |
| **status** | **string** | Must be &#39;queued&#39; | [optional]  |

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

<a id="apiv1accountauthidcallget_0"></a>
# **ApiV1AccountAuthIdCallGet_0**
> void ApiV1AccountAuthIdCallGet_0 (string authId, string xAuthID = null, string xAuthToken = null, string contentType = null, string status = null)

Retrieve a Queued Call

Get details of a specific queued call.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **authId** | **string** |  |  |
| **xAuthID** | **string** |  | [optional]  |
| **xAuthToken** | **string** |  | [optional]  |
| **contentType** | **string** |  | [optional]  |
| **status** | **string** | Must be &#39;queued&#39; | [optional]  |

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

<a id="apiv1accountauthidcallplaydelete"></a>
# **ApiV1AccountAuthIdCallPlayDelete**
> void ApiV1AccountAuthIdCallPlayDelete (string authId, string xAuthID = null, string xAuthToken = null, string contentType = null)

Stop Playing Audio on a Call

Stop audio playback on an active call. Returns 204 No Content.


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

<a id="apiv1accountauthidcallplaypost"></a>
# **ApiV1AccountAuthIdCallPlayPost**
> void ApiV1AccountAuthIdCallPlayPost (string authId, string xAuthID = null, string xAuthToken = null, string contentType = null, Object body = null)

Play Audio on a Call

Play audio file(s) during an active call.


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

<a id="apiv1accountauthidcallpost"></a>
# **ApiV1AccountAuthIdCallPost**
> void ApiV1AccountAuthIdCallPost (string authId, string xAuthID = null, string xAuthToken = null, string contentType = null, Object body = null)

Make an Outbound Call

Initiate an outbound call to a PSTN number or SIP endpoint. Supports bulk calls (up to 1000 destinations using < separator).


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

<a id="apiv1accountauthidcallpost_0"></a>
# **ApiV1AccountAuthIdCallPost_0**
> void ApiV1AccountAuthIdCallPost_0 (string authId, string xAuthID = null, string xAuthToken = null, string contentType = null, Object body = null)

Transfer a Call

Transfer an in-progress call to a different URL for new call flow instructions.


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

<a id="apiv1accountauthidcallrecorddelete"></a>
# **ApiV1AccountAuthIdCallRecordDelete**
> void ApiV1AccountAuthIdCallRecordDelete (string authId, string xAuthID = null, string xAuthToken = null, string contentType = null)

Stop Recording a Call

Stop active recording(s) on a call. Returns 204 No Content.


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

<a id="apiv1accountauthidcallrecordpost"></a>
# **ApiV1AccountAuthIdCallRecordPost**
> void ApiV1AccountAuthIdCallRecordPost (string authId, string xAuthID = null, string xAuthToken = null, string contentType = null, Object body = null)

Start Recording a Call

Begin recording an active call.


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

<a id="apiv1accountauthidcallspeakdelete"></a>
# **ApiV1AccountAuthIdCallSpeakDelete**
> void ApiV1AccountAuthIdCallSpeakDelete (string authId, string xAuthID = null, string xAuthToken = null, string contentType = null)

Stop Speaking Text on a Call

Stop text-to-speech playback. Returns 204 No Content.


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

<a id="apiv1accountauthidcallspeakpost"></a>
# **ApiV1AccountAuthIdCallSpeakPost**
> void ApiV1AccountAuthIdCallSpeakPost (string authId, string xAuthID = null, string xAuthToken = null, string contentType = null, Object body = null)

Speak Text on a Call (TTS)

Convert text to speech and play it during an active call. Supports 29 languages.


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

