# Vobiz.Api.AccountApi

All URIs are relative to *https://api.vobiz.ai*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**ApiV1AccountAccountIdBalanceINRGet**](AccountApi.md#apiv1accountaccountidbalanceinrget) | **GET** /api/v1/account/{account_id}/balance/INR | Get Balance |
| [**ApiV1AccountAccountIdTransactionsGet**](AccountApi.md#apiv1accountaccountidtransactionsget) | **GET** /api/v1/account/{account_id}/transactions | Get Transactions |
| [**ApiV1AccountAuthIdConcurrencyGet**](AccountApi.md#apiv1accountauthidconcurrencyget) | **GET** /api/v1/account/{auth_id}/concurrency | Get Concurrency |
| [**ApiV1AuthMeGet**](AccountApi.md#apiv1authmeget) | **GET** /api/v1/auth/me | Retrieve Account Details |

<a id="apiv1accountaccountidbalanceinrget"></a>
# **ApiV1AccountAccountIdBalanceINRGet**
> void ApiV1AccountAccountIdBalanceINRGet (string accountId, string xAuthID = null, string xAuthToken = null, string contentType = null)

Get Balance

Retrieve the balance for a specific account and currency. Replace 'INR' with your currency code.


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

<a id="apiv1accountaccountidtransactionsget"></a>
# **ApiV1AccountAccountIdTransactionsGet**
> void ApiV1AccountAccountIdTransactionsGet (string accountId, string xAuthID = null, string xAuthToken = null, string contentType = null, int limit = null, int offset = null)

Get Transactions

Retrieve a list of transactions for a specific account.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **accountId** | **string** |  |  |
| **xAuthID** | **string** |  | [optional]  |
| **xAuthToken** | **string** |  | [optional]  |
| **contentType** | **string** |  | [optional]  |
| **limit** | **int** | Records per page (default: 50) | [optional]  |
| **offset** | **int** | Pagination offset (default: 0) | [optional]  |

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

<a id="apiv1accountauthidconcurrencyget"></a>
# **ApiV1AccountAuthIdConcurrencyGet**
> void ApiV1AccountAuthIdConcurrencyGet (string authId, string xAuthID = null, string xAuthToken = null, string contentType = null)

Get Concurrency

Retrieve current concurrent call count and capacity.


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

<a id="apiv1authmeget"></a>
# **ApiV1AuthMeGet**
> void ApiV1AuthMeGet (string xAuthID = null, string xAuthToken = null, string contentType = null)

Retrieve Account Details

Retrieve complete account details including pricing tier, credentials, and account settings.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
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

