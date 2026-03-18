# CallApi

All URIs are relative to *https://api.vobiz.ai*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**apiV1AccountAuthIdCallDTMFPost**](CallApi.md#apiV1AccountAuthIdCallDTMFPost) | **POST** /api/v1/Account/{auth_id}/Call/{}/DTMF/ | Send DTMF Digits |
| [**apiV1AccountAuthIdCallDelete**](CallApi.md#apiV1AccountAuthIdCallDelete) | **DELETE** /api/v1/Account/{auth_id}/Call/{}/ | Hang Up a Call |
| [**apiV1AccountAuthIdCallGet**](CallApi.md#apiV1AccountAuthIdCallGet) | **GET** /api/v1/Account/{auth_id}/Call/ | Retrieve All Queued Calls |
| [**apiV1AccountAuthIdCallGet_0**](CallApi.md#apiV1AccountAuthIdCallGet_0) | **GET** /api/v1/Account/{auth_id}/Call/{}/ | Retrieve a Queued Call |
| [**apiV1AccountAuthIdCallPlayDelete**](CallApi.md#apiV1AccountAuthIdCallPlayDelete) | **DELETE** /api/v1/Account/{auth_id}/Call/{}/Play/ | Stop Playing Audio on a Call |
| [**apiV1AccountAuthIdCallPlayPost**](CallApi.md#apiV1AccountAuthIdCallPlayPost) | **POST** /api/v1/Account/{auth_id}/Call/{}/Play/ | Play Audio on a Call |
| [**apiV1AccountAuthIdCallPost**](CallApi.md#apiV1AccountAuthIdCallPost) | **POST** /api/v1/Account/{auth_id}/Call/ | Make an Outbound Call |
| [**apiV1AccountAuthIdCallPost_0**](CallApi.md#apiV1AccountAuthIdCallPost_0) | **POST** /api/v1/Account/{auth_id}/Call/{}/ | Transfer a Call |
| [**apiV1AccountAuthIdCallRecordDelete**](CallApi.md#apiV1AccountAuthIdCallRecordDelete) | **DELETE** /api/v1/Account/{auth_id}/Call/{}/Record/ | Stop Recording a Call |
| [**apiV1AccountAuthIdCallRecordPost**](CallApi.md#apiV1AccountAuthIdCallRecordPost) | **POST** /api/v1/Account/{auth_id}/Call/{}/Record/ | Start Recording a Call |
| [**apiV1AccountAuthIdCallSpeakDelete**](CallApi.md#apiV1AccountAuthIdCallSpeakDelete) | **DELETE** /api/v1/Account/{auth_id}/Call/{}/Speak/ | Stop Speaking Text on a Call |
| [**apiV1AccountAuthIdCallSpeakPost**](CallApi.md#apiV1AccountAuthIdCallSpeakPost) | **POST** /api/v1/Account/{auth_id}/Call/{}/Speak/ | Speak Text on a Call (TTS) |


<a id="apiV1AccountAuthIdCallDTMFPost"></a>
# **apiV1AccountAuthIdCallDTMFPost**
> apiV1AccountAuthIdCallDTMFPost(authId, xAuthID, xAuthToken, contentType, body)

Send DTMF Digits

Send DTMF digits to an active call for automated IVR navigation.

### Example
```java
// Import classes:
import ai.vobiz.ApiClient;
import ai.vobiz.ApiException;
import ai.vobiz.Configuration;
import ai.vobiz.auth.*;
import ai.vobiz.models.*;
import ai.vobiz.api.CallApi;

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

    CallApi apiInstance = new CallApi(defaultClient);
    String authId = "authId_example"; // String | 
    String xAuthID = "{{auth_id}}"; // String | 
    String xAuthToken = "{{auth_token}}"; // String | 
    String contentType = "application/json"; // String | 
    Object body = null; // Object | 
    try {
      apiInstance.apiV1AccountAuthIdCallDTMFPost(authId, xAuthID, xAuthToken, contentType, body);
    } catch (ApiException e) {
      System.err.println("Exception when calling CallApi#apiV1AccountAuthIdCallDTMFPost");
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

<a id="apiV1AccountAuthIdCallDelete"></a>
# **apiV1AccountAuthIdCallDelete**
> apiV1AccountAuthIdCallDelete(authId, xAuthID, xAuthToken, contentType)

Hang Up a Call

Terminate an active call. Returns 204 No Content.

### Example
```java
// Import classes:
import ai.vobiz.ApiClient;
import ai.vobiz.ApiException;
import ai.vobiz.Configuration;
import ai.vobiz.auth.*;
import ai.vobiz.models.*;
import ai.vobiz.api.CallApi;

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

    CallApi apiInstance = new CallApi(defaultClient);
    String authId = "authId_example"; // String | 
    String xAuthID = "{{auth_id}}"; // String | 
    String xAuthToken = "{{auth_token}}"; // String | 
    String contentType = "application/json"; // String | 
    try {
      apiInstance.apiV1AccountAuthIdCallDelete(authId, xAuthID, xAuthToken, contentType);
    } catch (ApiException e) {
      System.err.println("Exception when calling CallApi#apiV1AccountAuthIdCallDelete");
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

<a id="apiV1AccountAuthIdCallGet"></a>
# **apiV1AccountAuthIdCallGet**
> apiV1AccountAuthIdCallGet(authId, xAuthID, xAuthToken, contentType, status)

Retrieve All Queued Calls

Get a list of all call UUIDs for calls currently queued and waiting to connect. Max 20 results.

### Example
```java
// Import classes:
import ai.vobiz.ApiClient;
import ai.vobiz.ApiException;
import ai.vobiz.Configuration;
import ai.vobiz.auth.*;
import ai.vobiz.models.*;
import ai.vobiz.api.CallApi;

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

    CallApi apiInstance = new CallApi(defaultClient);
    String authId = "authId_example"; // String | 
    String xAuthID = "{{auth_id}}"; // String | 
    String xAuthToken = "{{auth_token}}"; // String | 
    String contentType = "application/json"; // String | 
    String status = "queued"; // String | Must be 'queued'
    try {
      apiInstance.apiV1AccountAuthIdCallGet(authId, xAuthID, xAuthToken, contentType, status);
    } catch (ApiException e) {
      System.err.println("Exception when calling CallApi#apiV1AccountAuthIdCallGet");
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
| **status** | **String**| Must be &#39;queued&#39; | [optional] |

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

<a id="apiV1AccountAuthIdCallGet_0"></a>
# **apiV1AccountAuthIdCallGet_0**
> apiV1AccountAuthIdCallGet_0(authId, xAuthID, xAuthToken, contentType, status)

Retrieve a Queued Call

Get details of a specific queued call.

### Example
```java
// Import classes:
import ai.vobiz.ApiClient;
import ai.vobiz.ApiException;
import ai.vobiz.Configuration;
import ai.vobiz.auth.*;
import ai.vobiz.models.*;
import ai.vobiz.api.CallApi;

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

    CallApi apiInstance = new CallApi(defaultClient);
    String authId = "authId_example"; // String | 
    String xAuthID = "{{auth_id}}"; // String | 
    String xAuthToken = "{{auth_token}}"; // String | 
    String contentType = "application/json"; // String | 
    String status = "queued"; // String | Must be 'queued'
    try {
      apiInstance.apiV1AccountAuthIdCallGet_0(authId, xAuthID, xAuthToken, contentType, status);
    } catch (ApiException e) {
      System.err.println("Exception when calling CallApi#apiV1AccountAuthIdCallGet_0");
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
| **status** | **String**| Must be &#39;queued&#39; | [optional] |

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

<a id="apiV1AccountAuthIdCallPlayDelete"></a>
# **apiV1AccountAuthIdCallPlayDelete**
> apiV1AccountAuthIdCallPlayDelete(authId, xAuthID, xAuthToken, contentType)

Stop Playing Audio on a Call

Stop audio playback on an active call. Returns 204 No Content.

### Example
```java
// Import classes:
import ai.vobiz.ApiClient;
import ai.vobiz.ApiException;
import ai.vobiz.Configuration;
import ai.vobiz.auth.*;
import ai.vobiz.models.*;
import ai.vobiz.api.CallApi;

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

    CallApi apiInstance = new CallApi(defaultClient);
    String authId = "authId_example"; // String | 
    String xAuthID = "{{auth_id}}"; // String | 
    String xAuthToken = "{{auth_token}}"; // String | 
    String contentType = "application/json"; // String | 
    try {
      apiInstance.apiV1AccountAuthIdCallPlayDelete(authId, xAuthID, xAuthToken, contentType);
    } catch (ApiException e) {
      System.err.println("Exception when calling CallApi#apiV1AccountAuthIdCallPlayDelete");
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

<a id="apiV1AccountAuthIdCallPlayPost"></a>
# **apiV1AccountAuthIdCallPlayPost**
> apiV1AccountAuthIdCallPlayPost(authId, xAuthID, xAuthToken, contentType, body)

Play Audio on a Call

Play audio file(s) during an active call.

### Example
```java
// Import classes:
import ai.vobiz.ApiClient;
import ai.vobiz.ApiException;
import ai.vobiz.Configuration;
import ai.vobiz.auth.*;
import ai.vobiz.models.*;
import ai.vobiz.api.CallApi;

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

    CallApi apiInstance = new CallApi(defaultClient);
    String authId = "authId_example"; // String | 
    String xAuthID = "{{auth_id}}"; // String | 
    String xAuthToken = "{{auth_token}}"; // String | 
    String contentType = "application/json"; // String | 
    Object body = null; // Object | 
    try {
      apiInstance.apiV1AccountAuthIdCallPlayPost(authId, xAuthID, xAuthToken, contentType, body);
    } catch (ApiException e) {
      System.err.println("Exception when calling CallApi#apiV1AccountAuthIdCallPlayPost");
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

<a id="apiV1AccountAuthIdCallPost"></a>
# **apiV1AccountAuthIdCallPost**
> apiV1AccountAuthIdCallPost(authId, xAuthID, xAuthToken, contentType, body)

Make an Outbound Call

Initiate an outbound call to a PSTN number or SIP endpoint. Supports bulk calls (up to 1000 destinations using &lt; separator).

### Example
```java
// Import classes:
import ai.vobiz.ApiClient;
import ai.vobiz.ApiException;
import ai.vobiz.Configuration;
import ai.vobiz.auth.*;
import ai.vobiz.models.*;
import ai.vobiz.api.CallApi;

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

    CallApi apiInstance = new CallApi(defaultClient);
    String authId = "authId_example"; // String | 
    String xAuthID = "{{auth_id}}"; // String | 
    String xAuthToken = "{{auth_token}}"; // String | 
    String contentType = "application/json"; // String | 
    Object body = null; // Object | 
    try {
      apiInstance.apiV1AccountAuthIdCallPost(authId, xAuthID, xAuthToken, contentType, body);
    } catch (ApiException e) {
      System.err.println("Exception when calling CallApi#apiV1AccountAuthIdCallPost");
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

<a id="apiV1AccountAuthIdCallPost_0"></a>
# **apiV1AccountAuthIdCallPost_0**
> apiV1AccountAuthIdCallPost_0(authId, xAuthID, xAuthToken, contentType, body)

Transfer a Call

Transfer an in-progress call to a different URL for new call flow instructions.

### Example
```java
// Import classes:
import ai.vobiz.ApiClient;
import ai.vobiz.ApiException;
import ai.vobiz.Configuration;
import ai.vobiz.auth.*;
import ai.vobiz.models.*;
import ai.vobiz.api.CallApi;

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

    CallApi apiInstance = new CallApi(defaultClient);
    String authId = "authId_example"; // String | 
    String xAuthID = "{{auth_id}}"; // String | 
    String xAuthToken = "{{auth_token}}"; // String | 
    String contentType = "application/json"; // String | 
    Object body = null; // Object | 
    try {
      apiInstance.apiV1AccountAuthIdCallPost_0(authId, xAuthID, xAuthToken, contentType, body);
    } catch (ApiException e) {
      System.err.println("Exception when calling CallApi#apiV1AccountAuthIdCallPost_0");
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

<a id="apiV1AccountAuthIdCallRecordDelete"></a>
# **apiV1AccountAuthIdCallRecordDelete**
> apiV1AccountAuthIdCallRecordDelete(authId, xAuthID, xAuthToken, contentType)

Stop Recording a Call

Stop active recording(s) on a call. Returns 204 No Content.

### Example
```java
// Import classes:
import ai.vobiz.ApiClient;
import ai.vobiz.ApiException;
import ai.vobiz.Configuration;
import ai.vobiz.auth.*;
import ai.vobiz.models.*;
import ai.vobiz.api.CallApi;

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

    CallApi apiInstance = new CallApi(defaultClient);
    String authId = "authId_example"; // String | 
    String xAuthID = "{{auth_id}}"; // String | 
    String xAuthToken = "{{auth_token}}"; // String | 
    String contentType = "application/json"; // String | 
    try {
      apiInstance.apiV1AccountAuthIdCallRecordDelete(authId, xAuthID, xAuthToken, contentType);
    } catch (ApiException e) {
      System.err.println("Exception when calling CallApi#apiV1AccountAuthIdCallRecordDelete");
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

<a id="apiV1AccountAuthIdCallRecordPost"></a>
# **apiV1AccountAuthIdCallRecordPost**
> apiV1AccountAuthIdCallRecordPost(authId, xAuthID, xAuthToken, contentType, body)

Start Recording a Call

Begin recording an active call.

### Example
```java
// Import classes:
import ai.vobiz.ApiClient;
import ai.vobiz.ApiException;
import ai.vobiz.Configuration;
import ai.vobiz.auth.*;
import ai.vobiz.models.*;
import ai.vobiz.api.CallApi;

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

    CallApi apiInstance = new CallApi(defaultClient);
    String authId = "authId_example"; // String | 
    String xAuthID = "{{auth_id}}"; // String | 
    String xAuthToken = "{{auth_token}}"; // String | 
    String contentType = "application/json"; // String | 
    Object body = null; // Object | 
    try {
      apiInstance.apiV1AccountAuthIdCallRecordPost(authId, xAuthID, xAuthToken, contentType, body);
    } catch (ApiException e) {
      System.err.println("Exception when calling CallApi#apiV1AccountAuthIdCallRecordPost");
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

<a id="apiV1AccountAuthIdCallSpeakDelete"></a>
# **apiV1AccountAuthIdCallSpeakDelete**
> apiV1AccountAuthIdCallSpeakDelete(authId, xAuthID, xAuthToken, contentType)

Stop Speaking Text on a Call

Stop text-to-speech playback. Returns 204 No Content.

### Example
```java
// Import classes:
import ai.vobiz.ApiClient;
import ai.vobiz.ApiException;
import ai.vobiz.Configuration;
import ai.vobiz.auth.*;
import ai.vobiz.models.*;
import ai.vobiz.api.CallApi;

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

    CallApi apiInstance = new CallApi(defaultClient);
    String authId = "authId_example"; // String | 
    String xAuthID = "{{auth_id}}"; // String | 
    String xAuthToken = "{{auth_token}}"; // String | 
    String contentType = "application/json"; // String | 
    try {
      apiInstance.apiV1AccountAuthIdCallSpeakDelete(authId, xAuthID, xAuthToken, contentType);
    } catch (ApiException e) {
      System.err.println("Exception when calling CallApi#apiV1AccountAuthIdCallSpeakDelete");
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

<a id="apiV1AccountAuthIdCallSpeakPost"></a>
# **apiV1AccountAuthIdCallSpeakPost**
> apiV1AccountAuthIdCallSpeakPost(authId, xAuthID, xAuthToken, contentType, body)

Speak Text on a Call (TTS)

Convert text to speech and play it during an active call. Supports 29 languages.

### Example
```java
// Import classes:
import ai.vobiz.ApiClient;
import ai.vobiz.ApiException;
import ai.vobiz.Configuration;
import ai.vobiz.auth.*;
import ai.vobiz.models.*;
import ai.vobiz.api.CallApi;

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

    CallApi apiInstance = new CallApi(defaultClient);
    String authId = "authId_example"; // String | 
    String xAuthID = "{{auth_id}}"; // String | 
    String xAuthToken = "{{auth_token}}"; // String | 
    String contentType = "application/json"; // String | 
    Object body = null; // Object | 
    try {
      apiInstance.apiV1AccountAuthIdCallSpeakPost(authId, xAuthID, xAuthToken, contentType, body);
    } catch (ApiException e) {
      System.err.println("Exception when calling CallApi#apiV1AccountAuthIdCallSpeakPost");
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

