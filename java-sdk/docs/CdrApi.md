# CdrApi

All URIs are relative to *https://api.vobiz.ai*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**apiV1AccountAccountIdCdrGet**](CdrApi.md#apiV1AccountAccountIdCdrGet) | **GET** /api/v1/account/{account_id}/cdr | Get Call Detail Records |


<a id="apiV1AccountAccountIdCdrGet"></a>
# **apiV1AccountAccountIdCdrGet**
> apiV1AccountAccountIdCdrGet(accountId, xAuthID, xAuthToken, contentType, startDate, endDate, perPage, page)

Get Call Detail Records

Retrieve call detail records with filtering and pagination.

### Example
```java
// Import classes:
import ai.vobiz.ApiClient;
import ai.vobiz.ApiException;
import ai.vobiz.Configuration;
import ai.vobiz.auth.*;
import ai.vobiz.models.*;
import ai.vobiz.api.CdrApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.vobiz.ai");
    
    // Configure API key authorization: ApiKeyAuthID
    ApiKeyAuth ApiKeyAuthID = (ApiKeyAuth) defaultClient.getAuthentication("ApiKeyAuthID");
    ApiKeyAuthID.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //ApiKeyAuthID.setApiKeyPrefix("Token");

    // Configure API key authorization: ApiKeyAuthToken
    ApiKeyAuth ApiKeyAuthToken = (ApiKeyAuth) defaultClient.getAuthentication("ApiKeyAuthToken");
    ApiKeyAuthToken.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //ApiKeyAuthToken.setApiKeyPrefix("Token");

    CdrApi apiInstance = new CdrApi(defaultClient);
    String accountId = "accountId_example"; // String | 
    String xAuthID = "{{auth_id}}"; // String | 
    String xAuthToken = "{{auth_token}}"; // String | 
    String contentType = "application/json"; // String | 
    String startDate = "2026-01-01"; // String | Start date (YYYY-MM-DD)
    String endDate = "2026-01-31"; // String | End date (YYYY-MM-DD)
    Integer perPage = 50; // Integer | Results per page
    Integer page = 1; // Integer | Page number
    try {
      apiInstance.apiV1AccountAccountIdCdrGet(accountId, xAuthID, xAuthToken, contentType, startDate, endDate, perPage, page);
    } catch (ApiException e) {
      System.err.println("Exception when calling CdrApi#apiV1AccountAccountIdCdrGet");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **accountId** | **String**|  | |
| **xAuthID** | **String**|  | [optional] |
| **xAuthToken** | **String**|  | [optional] |
| **contentType** | **String**|  | [optional] |
| **startDate** | **String**| Start date (YYYY-MM-DD) | [optional] |
| **endDate** | **String**| End date (YYYY-MM-DD) | [optional] |
| **perPage** | **Integer**| Results per page | [optional] |
| **page** | **Integer**| Page number | [optional] |

### Return type

null (empty response body)

### Authorization

[ApiKeyAuthID](../README.md#ApiKeyAuthID), [ApiKeyAuthToken](../README.md#ApiKeyAuthToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |

