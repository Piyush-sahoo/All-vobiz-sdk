# Vobiz.Api.ConferenceApi

All URIs are relative to *https://api.vobiz.ai*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**ApiV1AccountAuthIdConferenceDelete**](ConferenceApi.md#apiv1accountauthidconferencedelete) | **DELETE** /api/v1/Account/{auth_id}/Conference/ | Hang Up All Conferences |
| [**ApiV1AccountAuthIdConferenceDelete_0**](ConferenceApi.md#apiv1accountauthidconferencedelete_0) | **DELETE** /api/v1/Account/{auth_id}/Conference/{}/ | Hang Up a Conference |
| [**ApiV1AccountAuthIdConferenceGet**](ConferenceApi.md#apiv1accountauthidconferenceget) | **GET** /api/v1/Account/{auth_id}/Conference/ | List All Conferences |
| [**ApiV1AccountAuthIdConferenceGet_0**](ConferenceApi.md#apiv1accountauthidconferenceget_0) | **GET** /api/v1/Account/{auth_id}/Conference/{}/ | Retrieve a Conference |
| [**ApiV1AccountAuthIdConferenceMemberDeafDelete**](ConferenceApi.md#apiv1accountauthidconferencememberdeafdelete) | **DELETE** /api/v1/Account/{auth_id}/Conference/{}/Member/{}/Deaf/ | Undeaf a Conference Member |
| [**ApiV1AccountAuthIdConferenceMemberDeafPost**](ConferenceApi.md#apiv1accountauthidconferencememberdeafpost) | **POST** /api/v1/Account/{auth_id}/Conference/{}/Member/{}/Deaf/ | Deaf a Conference Member |
| [**ApiV1AccountAuthIdConferenceMemberDelete**](ConferenceApi.md#apiv1accountauthidconferencememberdelete) | **DELETE** /api/v1/Account/{auth_id}/Conference/{}/Member/{}/ | Hang Up a Conference Member |
| [**ApiV1AccountAuthIdConferenceMemberKickPost**](ConferenceApi.md#apiv1accountauthidconferencememberkickpost) | **POST** /api/v1/Account/{auth_id}/Conference/{}/Member/{}/Kick/ | Kick a Conference Member |
| [**ApiV1AccountAuthIdConferenceMemberMuteDelete**](ConferenceApi.md#apiv1accountauthidconferencemembermutedelete) | **DELETE** /api/v1/Account/{auth_id}/Conference/{}/Member/{}/Mute/ | Unmute a Conference Member |
| [**ApiV1AccountAuthIdConferenceMemberMutePost**](ConferenceApi.md#apiv1accountauthidconferencemembermutepost) | **POST** /api/v1/Account/{auth_id}/Conference/{}/Member/{}/Mute/ | Mute a Conference Member |
| [**ApiV1AccountAuthIdConferenceMemberPlayDelete**](ConferenceApi.md#apiv1accountauthidconferencememberplaydelete) | **DELETE** /api/v1/Account/{auth_id}/Conference/{}/Member/{}/Play/ | Stop Playing Audio to a Conference Member |
| [**ApiV1AccountAuthIdConferenceMemberPlayPost**](ConferenceApi.md#apiv1accountauthidconferencememberplaypost) | **POST** /api/v1/Account/{auth_id}/Conference/{}/Member/{}/Play/ | Play Audio to a Conference Member |
| [**ApiV1AccountAuthIdConferenceRecordDelete**](ConferenceApi.md#apiv1accountauthidconferencerecorddelete) | **DELETE** /api/v1/Account/{auth_id}/Conference/{}/Record/ | Stop Conference Recording |
| [**ApiV1AccountAuthIdConferenceRecordPost**](ConferenceApi.md#apiv1accountauthidconferencerecordpost) | **POST** /api/v1/Account/{auth_id}/Conference/{}/Record/ | Start Conference Recording |

<a id="apiv1accountauthidconferencedelete"></a>
# **ApiV1AccountAuthIdConferenceDelete**
> void ApiV1AccountAuthIdConferenceDelete (string authId, string xAuthID = null, string xAuthToken = null, string contentType = null)

Hang Up All Conferences

Terminate all ongoing conferences simultaneously. Returns 204 No Content.


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

<a id="apiv1accountauthidconferencedelete_0"></a>
# **ApiV1AccountAuthIdConferenceDelete_0**
> void ApiV1AccountAuthIdConferenceDelete_0 (string authId, string xAuthID = null, string xAuthToken = null, string contentType = null)

Hang Up a Conference

Terminate a specific conference and disconnect all participants. Returns 204 No Content.


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

<a id="apiv1accountauthidconferenceget"></a>
# **ApiV1AccountAuthIdConferenceGet**
> void ApiV1AccountAuthIdConferenceGet (string authId, string xAuthID = null, string xAuthToken = null, string contentType = null)

List All Conferences

Retrieve a list of all ongoing conferences.


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

<a id="apiv1accountauthidconferenceget_0"></a>
# **ApiV1AccountAuthIdConferenceGet_0**
> void ApiV1AccountAuthIdConferenceGet_0 (string authId, string xAuthID = null, string xAuthToken = null, string contentType = null)

Retrieve a Conference

Get detailed information about a specific ongoing conference including all active members.


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

<a id="apiv1accountauthidconferencememberdeafdelete"></a>
# **ApiV1AccountAuthIdConferenceMemberDeafDelete**
> void ApiV1AccountAuthIdConferenceMemberDeafDelete (string authId, string xAuthID = null, string xAuthToken = null, string contentType = null)

Undeaf a Conference Member

Restore audio reception for previously deafened members.


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

<a id="apiv1accountauthidconferencememberdeafpost"></a>
# **ApiV1AccountAuthIdConferenceMemberDeafPost**
> void ApiV1AccountAuthIdConferenceMemberDeafPost (string authId, string xAuthID = null, string xAuthToken = null, string contentType = null)

Deaf a Conference Member

Prevent member(s) from hearing other participants.


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

<a id="apiv1accountauthidconferencememberdelete"></a>
# **ApiV1AccountAuthIdConferenceMemberDelete**
> void ApiV1AccountAuthIdConferenceMemberDelete (string authId, string xAuthID = null, string xAuthToken = null, string contentType = null)

Hang Up a Conference Member

Disconnect a member by terminating their call. Returns 204 No Content.


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

<a id="apiv1accountauthidconferencememberkickpost"></a>
# **ApiV1AccountAuthIdConferenceMemberKickPost**
> void ApiV1AccountAuthIdConferenceMemberKickPost (string authId, string xAuthID = null, string xAuthToken = null, string contentType = null)

Kick a Conference Member

Disconnect a member while allowing XML flow continuation.


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

<a id="apiv1accountauthidconferencemembermutedelete"></a>
# **ApiV1AccountAuthIdConferenceMemberMuteDelete**
> void ApiV1AccountAuthIdConferenceMemberMuteDelete (string authId, string xAuthID = null, string xAuthToken = null, string contentType = null)

Unmute a Conference Member

Restore audio from previously muted members.


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

<a id="apiv1accountauthidconferencemembermutepost"></a>
# **ApiV1AccountAuthIdConferenceMemberMutePost**
> void ApiV1AccountAuthIdConferenceMemberMutePost (string authId, string xAuthID = null, string xAuthToken = null, string contentType = null)

Mute a Conference Member

Mute member(s) so others cannot hear them.


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

<a id="apiv1accountauthidconferencememberplaydelete"></a>
# **ApiV1AccountAuthIdConferenceMemberPlayDelete**
> void ApiV1AccountAuthIdConferenceMemberPlayDelete (string authId, string xAuthID = null, string xAuthToken = null, string contentType = null)

Stop Playing Audio to a Conference Member

Stop audio playback for specific member(s).


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

<a id="apiv1accountauthidconferencememberplaypost"></a>
# **ApiV1AccountAuthIdConferenceMemberPlayPost**
> void ApiV1AccountAuthIdConferenceMemberPlayPost (string authId, string xAuthID = null, string xAuthToken = null, string contentType = null, Object body = null)

Play Audio to a Conference Member

Play audio to specific member(s). Only targeted member(s) hear the audio.


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

<a id="apiv1accountauthidconferencerecorddelete"></a>
# **ApiV1AccountAuthIdConferenceRecordDelete**
> void ApiV1AccountAuthIdConferenceRecordDelete (string authId, string xAuthID = null, string xAuthToken = null, string contentType = null)

Stop Conference Recording

Stop an active conference recording. Returns 204 No Content.


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

<a id="apiv1accountauthidconferencerecordpost"></a>
# **ApiV1AccountAuthIdConferenceRecordPost**
> void ApiV1AccountAuthIdConferenceRecordPost (string authId, string xAuthID = null, string xAuthToken = null, string contentType = null, Object body = null)

Start Conference Recording

Begin recording a conference call.


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

