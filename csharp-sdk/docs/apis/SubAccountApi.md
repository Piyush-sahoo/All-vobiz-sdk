# Vobiz.Api.SubAccountApi

All URIs are relative to *https://api.vobiz.ai*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**ApiV1AccountsAccountIdSubAccountsGet**](SubAccountApi.md#apiv1accountsaccountidsubaccountsget) | **GET** /api/v1/accounts/{account_id}/sub-accounts/ | List All Sub-Accounts |
| [**ApiV1AccountsAccountIdSubAccountsPost**](SubAccountApi.md#apiv1accountsaccountidsubaccountspost) | **POST** /api/v1/accounts/{account_id}/sub-accounts/ | Create Sub-Account |
| [**ApiV1AccountsAccountIdSubAccountsSubAccountIdDelete**](SubAccountApi.md#apiv1accountsaccountidsubaccountssubaccountiddelete) | **DELETE** /api/v1/accounts/{account_id}/sub-accounts/:sub_account_id | Delete a Sub-Account |
| [**ApiV1AccountsAccountIdSubAccountsSubAccountIdGet**](SubAccountApi.md#apiv1accountsaccountidsubaccountssubaccountidget) | **GET** /api/v1/accounts/{account_id}/sub-accounts/:sub_account_id | Retrieve a Sub-Account |
| [**ApiV1AccountsAccountIdSubAccountsSubAccountIdPut**](SubAccountApi.md#apiv1accountsaccountidsubaccountssubaccountidput) | **PUT** /api/v1/accounts/{account_id}/sub-accounts/:sub_account_id | Update a Sub-Account |

<a id="apiv1accountsaccountidsubaccountsget"></a>
# **ApiV1AccountsAccountIdSubAccountsGet**
> void ApiV1AccountsAccountIdSubAccountsGet (string accountId, string xAuthID = null, string xAuthToken = null, string contentType = null, int page = null, int size = null, bool activeOnly = null)

List All Sub-Accounts

Retrieve all sub-accounts.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **accountId** | **string** |  |  |
| **xAuthID** | **string** |  | [optional]  |
| **xAuthToken** | **string** |  | [optional]  |
| **contentType** | **string** |  | [optional]  |
| **page** | **int** | Page number | [optional]  |
| **size** | **int** | Results per page | [optional]  |
| **activeOnly** | **bool** | Filter active sub-accounts only | [optional]  |

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

<a id="apiv1accountsaccountidsubaccountspost"></a>
# **ApiV1AccountsAccountIdSubAccountsPost**
> void ApiV1AccountsAccountIdSubAccountsPost (string accountId, string xAuthID = null, string xAuthToken = null, string contentType = null, Object body = null)

Create Sub-Account

Create a new sub-account under the master account.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **accountId** | **string** |  |  |
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

<a id="apiv1accountsaccountidsubaccountssubaccountiddelete"></a>
# **ApiV1AccountsAccountIdSubAccountsSubAccountIdDelete**
> void ApiV1AccountsAccountIdSubAccountsSubAccountIdDelete (string accountId, string xAuthID = null, string xAuthToken = null, string contentType = null)

Delete a Sub-Account

Delete a sub-account. Returns 204 No Content.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **accountId** | **string** |  |  |
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

<a id="apiv1accountsaccountidsubaccountssubaccountidget"></a>
# **ApiV1AccountsAccountIdSubAccountsSubAccountIdGet**
> void ApiV1AccountsAccountIdSubAccountsSubAccountIdGet (string accountId, string xAuthID = null, string xAuthToken = null, string contentType = null)

Retrieve a Sub-Account

Get details of a specific sub-account.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **accountId** | **string** |  |  |
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

<a id="apiv1accountsaccountidsubaccountssubaccountidput"></a>
# **ApiV1AccountsAccountIdSubAccountsSubAccountIdPut**
> void ApiV1AccountsAccountIdSubAccountsSubAccountIdPut (string accountId, string xAuthID = null, string xAuthToken = null, string contentType = null, Object body = null)

Update a Sub-Account

Update sub-account settings.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **accountId** | **string** |  |  |
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

