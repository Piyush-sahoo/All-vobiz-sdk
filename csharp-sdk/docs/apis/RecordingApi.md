# Vobiz.Api.RecordingApi

All URIs are relative to *https://api.vobiz.ai*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**ApiV1AccountAccountIdRecordingGet**](RecordingApi.md#apiv1accountaccountidrecordingget) | **GET** /api/v1/Account/{account_id}/Recording/ | List All Recordings |
| [**ApiV1AccountAuthIdExportRecordingPost**](RecordingApi.md#apiv1accountauthidexportrecordingpost) | **POST** /api/v1/Account/{auth_id}/export/recording/ | Export Historical Recordings |
| [**ApiV1AccountAuthIdRecordingBulkDeleteDelete**](RecordingApi.md#apiv1accountauthidrecordingbulkdeletedelete) | **DELETE** /api/v1/Account/{auth_id}/Recording/BulkDelete/ | Bulk Delete Recordings |
| [**ApiV1AccountAuthIdRecordingDelete**](RecordingApi.md#apiv1accountauthidrecordingdelete) | **DELETE** /api/v1/Account/{auth_id}/Recording/{}/ | Delete a Recording |
| [**ApiV1AccountAuthIdRecordingGet**](RecordingApi.md#apiv1accountauthidrecordingget) | **GET** /api/v1/Account/{auth_id}/Recording/{}/ | Retrieve a Recording |

<a id="apiv1accountaccountidrecordingget"></a>
# **ApiV1AccountAccountIdRecordingGet**
> void ApiV1AccountAccountIdRecordingGet (string accountId, string xAuthID = null, string xAuthToken = null, string contentType = null, int limit = null, int offset = null, string callUuid = null, string recordingType = null)

List All Recordings

Retrieve a paginated list of call recordings for your account.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **accountId** | **string** |  |  |
| **xAuthID** | **string** |  | [optional]  |
| **xAuthToken** | **string** |  | [optional]  |
| **contentType** | **string** |  | [optional]  |
| **limit** | **int** | Records per request (default: 20, max: 100) | [optional]  |
| **offset** | **int** | Pagination offset (default: 0) | [optional]  |
| **callUuid** | **string** | Filter by specific call UUID | [optional]  |
| **recordingType** | **string** | Filter by type: trunk or extension | [optional]  |

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

<a id="apiv1accountauthidexportrecordingpost"></a>
# **ApiV1AccountAuthIdExportRecordingPost**
> void ApiV1AccountAuthIdExportRecordingPost (string authId, string xAuthID = null, string xAuthToken = null, string contentType = null, Object body = null)

Export Historical Recordings

Export recordings as a downloadable archive sent via email (async). Returns 202 Accepted.


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

<a id="apiv1accountauthidrecordingbulkdeletedelete"></a>
# **ApiV1AccountAuthIdRecordingBulkDeleteDelete**
> void ApiV1AccountAuthIdRecordingBulkDeleteDelete (string authId, string xAuthID = null, string xAuthToken = null, string contentType = null, string addTimeGte = null, string addTimeLte = null, string callUuid = null, string fromNumber = null, string toNumber = null, string recordingFormat = null)

Bulk Delete Recordings

Delete multiple recordings matching filter criteria (async operation). Returns 202 Accepted.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **authId** | **string** |  |  |
| **xAuthID** | **string** |  | [optional]  |
| **xAuthToken** | **string** |  | [optional]  |
| **contentType** | **string** |  | [optional]  |
| **addTimeGte** | **string** | Delete recordings on/after this date (YYYY-MM-DD HH:MM:SS) | [optional]  |
| **addTimeLte** | **string** | Delete recordings on/before this date | [optional]  |
| **callUuid** | **string** | Delete recordings for specific call UUID | [optional]  |
| **fromNumber** | **string** | Delete by caller number (partial match) | [optional]  |
| **toNumber** | **string** | Delete by destination number (partial match) | [optional]  |
| **recordingFormat** | **string** | mp3 or wav | [optional]  |

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

<a id="apiv1accountauthidrecordingdelete"></a>
# **ApiV1AccountAuthIdRecordingDelete**
> void ApiV1AccountAuthIdRecordingDelete (string authId, string xAuthID = null, string xAuthToken = null, string contentType = null)

Delete a Recording

Permanently delete a specific recording. Returns 204 No Content.


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

<a id="apiv1accountauthidrecordingget"></a>
# **ApiV1AccountAuthIdRecordingGet**
> void ApiV1AccountAuthIdRecordingGet (string authId, string xAuthID = null, string xAuthToken = null, string contentType = null)

Retrieve a Recording

Get detailed information about a specific recording.


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

