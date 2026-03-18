# Vobiz.Api.CDRApi

All URIs are relative to *https://api.vobiz.ai*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**ApiV1AccountAccountIdCdrGet**](CDRApi.md#apiv1accountaccountidcdrget) | **GET** /api/v1/account/{account_id}/cdr | Get Call Detail Records |

<a id="apiv1accountaccountidcdrget"></a>
# **ApiV1AccountAccountIdCdrGet**
> void ApiV1AccountAccountIdCdrGet (string accountId, string xAuthID = null, string xAuthToken = null, string contentType = null, string startDate = null, string endDate = null, int perPage = null, int page = null)

Get Call Detail Records

Retrieve call detail records with filtering and pagination.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **accountId** | **string** |  |  |
| **xAuthID** | **string** |  | [optional]  |
| **xAuthToken** | **string** |  | [optional]  |
| **contentType** | **string** |  | [optional]  |
| **startDate** | **string** | Start date (YYYY-MM-DD) | [optional]  |
| **endDate** | **string** | End date (YYYY-MM-DD) | [optional]  |
| **perPage** | **int** | Results per page | [optional]  |
| **page** | **int** | Page number | [optional]  |

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

