# RecordingApi

All URIs are relative to *https://api.vobiz.ai*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**apiV1AccountAccountIdRecordingGet**](RecordingApi.md#apiV1AccountAccountIdRecordingGet) | **GET** /api/v1/Account/{account_id}/Recording/ | List All Recordings |
| [**apiV1AccountAuthIdExportRecordingPost**](RecordingApi.md#apiV1AccountAuthIdExportRecordingPost) | **POST** /api/v1/Account/{auth_id}/export/recording/ | Export Historical Recordings |
| [**apiV1AccountAuthIdRecordingBulkDeleteDelete**](RecordingApi.md#apiV1AccountAuthIdRecordingBulkDeleteDelete) | **DELETE** /api/v1/Account/{auth_id}/Recording/BulkDelete/ | Bulk Delete Recordings |
| [**apiV1AccountAuthIdRecordingDelete**](RecordingApi.md#apiV1AccountAuthIdRecordingDelete) | **DELETE** /api/v1/Account/{auth_id}/Recording/{}/ | Delete a Recording |
| [**apiV1AccountAuthIdRecordingGet**](RecordingApi.md#apiV1AccountAuthIdRecordingGet) | **GET** /api/v1/Account/{auth_id}/Recording/{}/ | Retrieve a Recording |


<a id="apiV1AccountAccountIdRecordingGet"></a>
# **apiV1AccountAccountIdRecordingGet**
> apiV1AccountAccountIdRecordingGet(accountId, xAuthID, xAuthToken, contentType, limit, offset, callUuid, recordingType)

List All Recordings

Retrieve a paginated list of call recordings for your account.

### Example
```java
// Import classes:
import ai.vobiz.ApiClient;
import ai.vobiz.ApiException;
import ai.vobiz.Configuration;
import ai.vobiz.auth.*;
import ai.vobiz.models.*;
import ai.vobiz.api.RecordingApi;

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

    RecordingApi apiInstance = new RecordingApi(defaultClient);
    String accountId = "accountId_example"; // String | 
    String xAuthID = "{{auth_id}}"; // String | 
    String xAuthToken = "{{auth_token}}"; // String | 
    String contentType = "application/json"; // String | 
    Integer limit = 20; // Integer | Records per request (default: 20, max: 100)
    Integer offset = 0; // Integer | Pagination offset (default: 0)
    String callUuid = "callUuid_example"; // String | Filter by specific call UUID
    String recordingType = "recordingType_example"; // String | Filter by type: trunk or extension
    try {
      apiInstance.apiV1AccountAccountIdRecordingGet(accountId, xAuthID, xAuthToken, contentType, limit, offset, callUuid, recordingType);
    } catch (ApiException e) {
      System.err.println("Exception when calling RecordingApi#apiV1AccountAccountIdRecordingGet");
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
| **limit** | **Integer**| Records per request (default: 20, max: 100) | [optional] |
| **offset** | **Integer**| Pagination offset (default: 0) | [optional] |
| **callUuid** | **String**| Filter by specific call UUID | [optional] |
| **recordingType** | **String**| Filter by type: trunk or extension | [optional] |

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

<a id="apiV1AccountAuthIdExportRecordingPost"></a>
# **apiV1AccountAuthIdExportRecordingPost**
> apiV1AccountAuthIdExportRecordingPost(authId, xAuthID, xAuthToken, contentType, body)

Export Historical Recordings

Export recordings as a downloadable archive sent via email (async). Returns 202 Accepted.

### Example
```java
// Import classes:
import ai.vobiz.ApiClient;
import ai.vobiz.ApiException;
import ai.vobiz.Configuration;
import ai.vobiz.auth.*;
import ai.vobiz.models.*;
import ai.vobiz.api.RecordingApi;

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

    RecordingApi apiInstance = new RecordingApi(defaultClient);
    String authId = "authId_example"; // String | 
    String xAuthID = "{{auth_id}}"; // String | 
    String xAuthToken = "{{auth_token}}"; // String | 
    String contentType = "application/json"; // String | 
    Object body = null; // Object | 
    try {
      apiInstance.apiV1AccountAuthIdExportRecordingPost(authId, xAuthID, xAuthToken, contentType, body);
    } catch (ApiException e) {
      System.err.println("Exception when calling RecordingApi#apiV1AccountAuthIdExportRecordingPost");
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
| **authId** | **String**|  | |
| **xAuthID** | **String**|  | [optional] |
| **xAuthToken** | **String**|  | [optional] |
| **contentType** | **String**|  | [optional] |
| **body** | **Object**|  | [optional] |

### Return type

null (empty response body)

### Authorization

[ApiKeyAuthID](../README.md#ApiKeyAuthID), [ApiKeyAuthToken](../README.md#ApiKeyAuthToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |

<a id="apiV1AccountAuthIdRecordingBulkDeleteDelete"></a>
# **apiV1AccountAuthIdRecordingBulkDeleteDelete**
> apiV1AccountAuthIdRecordingBulkDeleteDelete(authId, xAuthID, xAuthToken, contentType, addTimeGte, addTimeLte, callUuid, fromNumber, toNumber, recordingFormat)

Bulk Delete Recordings

Delete multiple recordings matching filter criteria (async operation). Returns 202 Accepted.

### Example
```java
// Import classes:
import ai.vobiz.ApiClient;
import ai.vobiz.ApiException;
import ai.vobiz.Configuration;
import ai.vobiz.auth.*;
import ai.vobiz.models.*;
import ai.vobiz.api.RecordingApi;

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

    RecordingApi apiInstance = new RecordingApi(defaultClient);
    String authId = "authId_example"; // String | 
    String xAuthID = "{{auth_id}}"; // String | 
    String xAuthToken = "{{auth_token}}"; // String | 
    String contentType = "application/json"; // String | 
    String addTimeGte = "addTimeGte_example"; // String | Delete recordings on/after this date (YYYY-MM-DD HH:MM:SS)
    String addTimeLte = "addTimeLte_example"; // String | Delete recordings on/before this date
    String callUuid = "callUuid_example"; // String | Delete recordings for specific call UUID
    String fromNumber = "fromNumber_example"; // String | Delete by caller number (partial match)
    String toNumber = "toNumber_example"; // String | Delete by destination number (partial match)
    String recordingFormat = "recordingFormat_example"; // String | mp3 or wav
    try {
      apiInstance.apiV1AccountAuthIdRecordingBulkDeleteDelete(authId, xAuthID, xAuthToken, contentType, addTimeGte, addTimeLte, callUuid, fromNumber, toNumber, recordingFormat);
    } catch (ApiException e) {
      System.err.println("Exception when calling RecordingApi#apiV1AccountAuthIdRecordingBulkDeleteDelete");
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
| **authId** | **String**|  | |
| **xAuthID** | **String**|  | [optional] |
| **xAuthToken** | **String**|  | [optional] |
| **contentType** | **String**|  | [optional] |
| **addTimeGte** | **String**| Delete recordings on/after this date (YYYY-MM-DD HH:MM:SS) | [optional] |
| **addTimeLte** | **String**| Delete recordings on/before this date | [optional] |
| **callUuid** | **String**| Delete recordings for specific call UUID | [optional] |
| **fromNumber** | **String**| Delete by caller number (partial match) | [optional] |
| **toNumber** | **String**| Delete by destination number (partial match) | [optional] |
| **recordingFormat** | **String**| mp3 or wav | [optional] |

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

<a id="apiV1AccountAuthIdRecordingDelete"></a>
# **apiV1AccountAuthIdRecordingDelete**
> apiV1AccountAuthIdRecordingDelete(authId, xAuthID, xAuthToken, contentType)

Delete a Recording

Permanently delete a specific recording. Returns 204 No Content.

### Example
```java
// Import classes:
import ai.vobiz.ApiClient;
import ai.vobiz.ApiException;
import ai.vobiz.Configuration;
import ai.vobiz.auth.*;
import ai.vobiz.models.*;
import ai.vobiz.api.RecordingApi;

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

    RecordingApi apiInstance = new RecordingApi(defaultClient);
    String authId = "authId_example"; // String | 
    String xAuthID = "{{auth_id}}"; // String | 
    String xAuthToken = "{{auth_token}}"; // String | 
    String contentType = "application/json"; // String | 
    try {
      apiInstance.apiV1AccountAuthIdRecordingDelete(authId, xAuthID, xAuthToken, contentType);
    } catch (ApiException e) {
      System.err.println("Exception when calling RecordingApi#apiV1AccountAuthIdRecordingDelete");
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
| **authId** | **String**|  | |
| **xAuthID** | **String**|  | [optional] |
| **xAuthToken** | **String**|  | [optional] |
| **contentType** | **String**|  | [optional] |

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

<a id="apiV1AccountAuthIdRecordingGet"></a>
# **apiV1AccountAuthIdRecordingGet**
> apiV1AccountAuthIdRecordingGet(authId, xAuthID, xAuthToken, contentType)

Retrieve a Recording

Get detailed information about a specific recording.

### Example
```java
// Import classes:
import ai.vobiz.ApiClient;
import ai.vobiz.ApiException;
import ai.vobiz.Configuration;
import ai.vobiz.auth.*;
import ai.vobiz.models.*;
import ai.vobiz.api.RecordingApi;

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

    RecordingApi apiInstance = new RecordingApi(defaultClient);
    String authId = "authId_example"; // String | 
    String xAuthID = "{{auth_id}}"; // String | 
    String xAuthToken = "{{auth_token}}"; // String | 
    String contentType = "application/json"; // String | 
    try {
      apiInstance.apiV1AccountAuthIdRecordingGet(authId, xAuthID, xAuthToken, contentType);
    } catch (ApiException e) {
      System.err.println("Exception when calling RecordingApi#apiV1AccountAuthIdRecordingGet");
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
| **authId** | **String**|  | |
| **xAuthID** | **String**|  | [optional] |
| **xAuthToken** | **String**|  | [optional] |
| **contentType** | **String**|  | [optional] |

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

