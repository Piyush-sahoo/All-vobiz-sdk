# Vobiz.Api.PhoneNumbersApi

All URIs are relative to *https://api.vobiz.ai*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**ApiV1AccountAuthIdInventoryNumbersGet**](PhoneNumbersApi.md#apiv1accountauthidinventorynumbersget) | **GET** /api/v1/account/{auth_id}/inventory/numbers | List Inventory Numbers |
| [**ApiV1AccountAuthIdNumbersE164NumberDelete**](PhoneNumbersApi.md#apiv1accountauthidnumberse164numberdelete) | **DELETE** /api/v1/account/{auth_id}/numbers/:e164_number | Unrent a Phone Number |
| [**ApiV1AccountAuthIdNumbersGet**](PhoneNumbersApi.md#apiv1accountauthidnumbersget) | **GET** /api/v1/account/{auth_id}/numbers | List Account Phone Numbers |
| [**ApiV1AccountAuthIdNumbersPurchaseFromInventoryPost**](PhoneNumbersApi.md#apiv1accountauthidnumberspurchasefrominventorypost) | **POST** /api/v1/account/{auth_id}/numbers/purchase-from-inventory | Purchase from Inventory |

<a id="apiv1accountauthidinventorynumbersget"></a>
# **ApiV1AccountAuthIdInventoryNumbersGet**
> void ApiV1AccountAuthIdInventoryNumbersGet (string authId, string xAuthID = null, string xAuthToken = null, string contentType = null, string country = null, int page = null, int perPage = null)

List Inventory Numbers

Browse available phone numbers in inventory for purchase.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **authId** | **string** |  |  |
| **xAuthID** | **string** |  | [optional]  |
| **xAuthToken** | **string** |  | [optional]  |
| **contentType** | **string** |  | [optional]  |
| **country** | **string** | Filter by country code | [optional]  |
| **page** | **int** | Page number | [optional]  |
| **perPage** | **int** | Results per page | [optional]  |

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

<a id="apiv1accountauthidnumberse164numberdelete"></a>
# **ApiV1AccountAuthIdNumbersE164NumberDelete**
> void ApiV1AccountAuthIdNumbersE164NumberDelete (string authId, string xAuthID = null, string xAuthToken = null, string contentType = null)

Unrent a Phone Number

Release (unrent) a phone number from your account.


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

<a id="apiv1accountauthidnumbersget"></a>
# **ApiV1AccountAuthIdNumbersGet**
> void ApiV1AccountAuthIdNumbersGet (string authId, string xAuthID = null, string xAuthToken = null, string contentType = null)

List Account Phone Numbers

Retrieve all phone numbers associated with your account.


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

<a id="apiv1accountauthidnumberspurchasefrominventorypost"></a>
# **ApiV1AccountAuthIdNumbersPurchaseFromInventoryPost**
> void ApiV1AccountAuthIdNumbersPurchaseFromInventoryPost (string authId, string xAuthID = null, string xAuthToken = null, string contentType = null, Object body = null)

Purchase from Inventory

Purchase a phone number from available inventory.


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

