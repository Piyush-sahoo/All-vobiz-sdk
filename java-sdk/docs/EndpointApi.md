# EndpointApi

All URIs are relative to *https://api.vobiz.ai*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**apiV1AccountAuthIdEndpointDelete**](EndpointApi.md#apiV1AccountAuthIdEndpointDelete) | **DELETE** /api/v1/Account/{auth_id}/Endpoint/{}/ | Delete an Endpoint |
| [**apiV1AccountAuthIdEndpointGet**](EndpointApi.md#apiV1AccountAuthIdEndpointGet) | **GET** /api/v1/Account/{auth_id}/Endpoint/ | List All Endpoints |
| [**apiV1AccountAuthIdEndpointGet_0**](EndpointApi.md#apiV1AccountAuthIdEndpointGet_0) | **GET** /api/v1/Account/{auth_id}/Endpoint/{}/ | Retrieve an Endpoint |
| [**apiV1AccountAuthIdEndpointPost**](EndpointApi.md#apiV1AccountAuthIdEndpointPost) | **POST** /api/v1/Account/{auth_id}/Endpoint/ | Create Endpoint |
| [**apiV1AccountAuthIdEndpointPost_0**](EndpointApi.md#apiV1AccountAuthIdEndpointPost_0) | **POST** /api/v1/Account/{auth_id}/Endpoint/{}/ | Update an Endpoint |


<a id="apiV1AccountAuthIdEndpointDelete"></a>
# **apiV1AccountAuthIdEndpointDelete**
> apiV1AccountAuthIdEndpointDelete(authId, xAuthID, xAuthToken, contentType)

Delete an Endpoint

Delete an endpoint. Returns 204 No Content.

### Example
```java
// Import classes:
import ai.vobiz.ApiClient;
import ai.vobiz.ApiException;
import ai.vobiz.Configuration;
import ai.vobiz.auth.*;
import ai.vobiz.models.*;
import ai.vobiz.api.EndpointApi;

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

    EndpointApi apiInstance = new EndpointApi(defaultClient);
    String authId = "authId_example"; // String | 
    String xAuthID = "{{auth_id}}"; // String | 
    String xAuthToken = "{{auth_token}}"; // String | 
    String contentType = "application/json"; // String | 
    try {
      apiInstance.apiV1AccountAuthIdEndpointDelete(authId, xAuthID, xAuthToken, contentType);
    } catch (ApiException e) {
      System.err.println("Exception when calling EndpointApi#apiV1AccountAuthIdEndpointDelete");
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

<a id="apiV1AccountAuthIdEndpointGet"></a>
# **apiV1AccountAuthIdEndpointGet**
> apiV1AccountAuthIdEndpointGet(authId, xAuthID, xAuthToken, contentType, limit, offset)

List All Endpoints

Retrieve all endpoints with pagination.

### Example
```java
// Import classes:
import ai.vobiz.ApiClient;
import ai.vobiz.ApiException;
import ai.vobiz.Configuration;
import ai.vobiz.auth.*;
import ai.vobiz.models.*;
import ai.vobiz.api.EndpointApi;

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

    EndpointApi apiInstance = new EndpointApi(defaultClient);
    String authId = "authId_example"; // String | 
    String xAuthID = "{{auth_id}}"; // String | 
    String xAuthToken = "{{auth_token}}"; // String | 
    String contentType = "application/json"; // String | 
    Integer limit = 20; // Integer | Results per page
    Integer offset = 0; // Integer | Pagination offset
    try {
      apiInstance.apiV1AccountAuthIdEndpointGet(authId, xAuthID, xAuthToken, contentType, limit, offset);
    } catch (ApiException e) {
      System.err.println("Exception when calling EndpointApi#apiV1AccountAuthIdEndpointGet");
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
| **limit** | **Integer**| Results per page | [optional] |
| **offset** | **Integer**| Pagination offset | [optional] |

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

<a id="apiV1AccountAuthIdEndpointGet_0"></a>
# **apiV1AccountAuthIdEndpointGet_0**
> apiV1AccountAuthIdEndpointGet_0(authId, xAuthID, xAuthToken, contentType)

Retrieve an Endpoint

Get details of a specific endpoint.

### Example
```java
// Import classes:
import ai.vobiz.ApiClient;
import ai.vobiz.ApiException;
import ai.vobiz.Configuration;
import ai.vobiz.auth.*;
import ai.vobiz.models.*;
import ai.vobiz.api.EndpointApi;

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

    EndpointApi apiInstance = new EndpointApi(defaultClient);
    String authId = "authId_example"; // String | 
    String xAuthID = "{{auth_id}}"; // String | 
    String xAuthToken = "{{auth_token}}"; // String | 
    String contentType = "application/json"; // String | 
    try {
      apiInstance.apiV1AccountAuthIdEndpointGet_0(authId, xAuthID, xAuthToken, contentType);
    } catch (ApiException e) {
      System.err.println("Exception when calling EndpointApi#apiV1AccountAuthIdEndpointGet_0");
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

<a id="apiV1AccountAuthIdEndpointPost"></a>
# **apiV1AccountAuthIdEndpointPost**
> apiV1AccountAuthIdEndpointPost(authId, xAuthID, xAuthToken, contentType, body)

Create Endpoint

Create a new SIP endpoint.

### Example
```java
// Import classes:
import ai.vobiz.ApiClient;
import ai.vobiz.ApiException;
import ai.vobiz.Configuration;
import ai.vobiz.auth.*;
import ai.vobiz.models.*;
import ai.vobiz.api.EndpointApi;

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

    EndpointApi apiInstance = new EndpointApi(defaultClient);
    String authId = "authId_example"; // String | 
    String xAuthID = "{{auth_id}}"; // String | 
    String xAuthToken = "{{auth_token}}"; // String | 
    String contentType = "application/json"; // String | 
    Object body = null; // Object | 
    try {
      apiInstance.apiV1AccountAuthIdEndpointPost(authId, xAuthID, xAuthToken, contentType, body);
    } catch (ApiException e) {
      System.err.println("Exception when calling EndpointApi#apiV1AccountAuthIdEndpointPost");
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

<a id="apiV1AccountAuthIdEndpointPost_0"></a>
# **apiV1AccountAuthIdEndpointPost_0**
> apiV1AccountAuthIdEndpointPost_0(authId, xAuthID, xAuthToken, contentType, body)

Update an Endpoint

Update an existing endpoint&#39;s configuration.

### Example
```java
// Import classes:
import ai.vobiz.ApiClient;
import ai.vobiz.ApiException;
import ai.vobiz.Configuration;
import ai.vobiz.auth.*;
import ai.vobiz.models.*;
import ai.vobiz.api.EndpointApi;

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

    EndpointApi apiInstance = new EndpointApi(defaultClient);
    String authId = "authId_example"; // String | 
    String xAuthID = "{{auth_id}}"; // String | 
    String xAuthToken = "{{auth_token}}"; // String | 
    String contentType = "application/json"; // String | 
    Object body = null; // Object | 
    try {
      apiInstance.apiV1AccountAuthIdEndpointPost_0(authId, xAuthID, xAuthToken, contentType, body);
    } catch (ApiException e) {
      System.err.println("Exception when calling EndpointApi#apiV1AccountAuthIdEndpointPost_0");
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

