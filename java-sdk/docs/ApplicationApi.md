# ApplicationApi

All URIs are relative to *https://api.vobiz.ai*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**apiV1AccountAuthIdApplicationDelete**](ApplicationApi.md#apiV1AccountAuthIdApplicationDelete) | **DELETE** /api/v1/Account/{auth_id}/Application/{}/ | Delete an Application |
| [**apiV1AccountAuthIdApplicationGet**](ApplicationApi.md#apiV1AccountAuthIdApplicationGet) | **GET** /api/v1/Account/{auth_id}/Application/ | List All Applications |
| [**apiV1AccountAuthIdApplicationGet_0**](ApplicationApi.md#apiV1AccountAuthIdApplicationGet_0) | **GET** /api/v1/Account/{auth_id}/Application/{}/ | Retrieve an Application |
| [**apiV1AccountAuthIdApplicationPost**](ApplicationApi.md#apiV1AccountAuthIdApplicationPost) | **POST** /api/v1/Account/{auth_id}/Application/ | Create Application |
| [**apiV1AccountAuthIdApplicationPost_0**](ApplicationApi.md#apiV1AccountAuthIdApplicationPost_0) | **POST** /api/v1/Account/{auth_id}/Application/{}/ | Update an Application |
| [**apiV1AccountAuthIdNumbersApplicationDelete**](ApplicationApi.md#apiV1AccountAuthIdNumbersApplicationDelete) | **DELETE** /api/v1/account/{auth_id}/numbers/{}/application | Unlink Number from Application |
| [**apiV1AccountAuthIdNumbersApplicationPost**](ApplicationApi.md#apiV1AccountAuthIdNumbersApplicationPost) | **POST** /api/v1/account/{auth_id}/numbers/{}/application | Link Number to Application |


<a id="apiV1AccountAuthIdApplicationDelete"></a>
# **apiV1AccountAuthIdApplicationDelete**
> apiV1AccountAuthIdApplicationDelete(authId, xAuthID, xAuthToken, contentType)

Delete an Application

Delete an application. Returns 204 No Content.

### Example
```java
// Import classes:
import ai.vobiz.ApiClient;
import ai.vobiz.ApiException;
import ai.vobiz.Configuration;
import ai.vobiz.auth.*;
import ai.vobiz.models.*;
import ai.vobiz.api.ApplicationApi;

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

    ApplicationApi apiInstance = new ApplicationApi(defaultClient);
    String authId = "authId_example"; // String | 
    String xAuthID = "{{auth_id}}"; // String | 
    String xAuthToken = "{{auth_token}}"; // String | 
    String contentType = "application/json"; // String | 
    try {
      apiInstance.apiV1AccountAuthIdApplicationDelete(authId, xAuthID, xAuthToken, contentType);
    } catch (ApiException e) {
      System.err.println("Exception when calling ApplicationApi#apiV1AccountAuthIdApplicationDelete");
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

<a id="apiV1AccountAuthIdApplicationGet"></a>
# **apiV1AccountAuthIdApplicationGet**
> apiV1AccountAuthIdApplicationGet(authId, xAuthID, xAuthToken, contentType, limit, offset)

List All Applications

Retrieve all applications with pagination.

### Example
```java
// Import classes:
import ai.vobiz.ApiClient;
import ai.vobiz.ApiException;
import ai.vobiz.Configuration;
import ai.vobiz.auth.*;
import ai.vobiz.models.*;
import ai.vobiz.api.ApplicationApi;

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

    ApplicationApi apiInstance = new ApplicationApi(defaultClient);
    String authId = "authId_example"; // String | 
    String xAuthID = "{{auth_id}}"; // String | 
    String xAuthToken = "{{auth_token}}"; // String | 
    String contentType = "application/json"; // String | 
    Integer limit = 20; // Integer | Results per page
    Integer offset = 0; // Integer | Pagination offset
    try {
      apiInstance.apiV1AccountAuthIdApplicationGet(authId, xAuthID, xAuthToken, contentType, limit, offset);
    } catch (ApiException e) {
      System.err.println("Exception when calling ApplicationApi#apiV1AccountAuthIdApplicationGet");
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

<a id="apiV1AccountAuthIdApplicationGet_0"></a>
# **apiV1AccountAuthIdApplicationGet_0**
> apiV1AccountAuthIdApplicationGet_0(authId, xAuthID, xAuthToken, contentType)

Retrieve an Application

Get details of a specific application by its ID.

### Example
```java
// Import classes:
import ai.vobiz.ApiClient;
import ai.vobiz.ApiException;
import ai.vobiz.Configuration;
import ai.vobiz.auth.*;
import ai.vobiz.models.*;
import ai.vobiz.api.ApplicationApi;

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

    ApplicationApi apiInstance = new ApplicationApi(defaultClient);
    String authId = "authId_example"; // String | 
    String xAuthID = "{{auth_id}}"; // String | 
    String xAuthToken = "{{auth_token}}"; // String | 
    String contentType = "application/json"; // String | 
    try {
      apiInstance.apiV1AccountAuthIdApplicationGet_0(authId, xAuthID, xAuthToken, contentType);
    } catch (ApiException e) {
      System.err.println("Exception when calling ApplicationApi#apiV1AccountAuthIdApplicationGet_0");
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

<a id="apiV1AccountAuthIdApplicationPost"></a>
# **apiV1AccountAuthIdApplicationPost**
> apiV1AccountAuthIdApplicationPost(authId, xAuthID, xAuthToken, contentType, body)

Create Application

Create a new application with call handling URLs.

### Example
```java
// Import classes:
import ai.vobiz.ApiClient;
import ai.vobiz.ApiException;
import ai.vobiz.Configuration;
import ai.vobiz.auth.*;
import ai.vobiz.models.*;
import ai.vobiz.api.ApplicationApi;

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

    ApplicationApi apiInstance = new ApplicationApi(defaultClient);
    String authId = "authId_example"; // String | 
    String xAuthID = "{{auth_id}}"; // String | 
    String xAuthToken = "{{auth_token}}"; // String | 
    String contentType = "application/json"; // String | 
    Object body = null; // Object | 
    try {
      apiInstance.apiV1AccountAuthIdApplicationPost(authId, xAuthID, xAuthToken, contentType, body);
    } catch (ApiException e) {
      System.err.println("Exception when calling ApplicationApi#apiV1AccountAuthIdApplicationPost");
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

<a id="apiV1AccountAuthIdApplicationPost_0"></a>
# **apiV1AccountAuthIdApplicationPost_0**
> apiV1AccountAuthIdApplicationPost_0(authId, xAuthID, xAuthToken, contentType, body)

Update an Application

Update an existing application&#39;s settings.

### Example
```java
// Import classes:
import ai.vobiz.ApiClient;
import ai.vobiz.ApiException;
import ai.vobiz.Configuration;
import ai.vobiz.auth.*;
import ai.vobiz.models.*;
import ai.vobiz.api.ApplicationApi;

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

    ApplicationApi apiInstance = new ApplicationApi(defaultClient);
    String authId = "authId_example"; // String | 
    String xAuthID = "{{auth_id}}"; // String | 
    String xAuthToken = "{{auth_token}}"; // String | 
    String contentType = "application/json"; // String | 
    Object body = null; // Object | 
    try {
      apiInstance.apiV1AccountAuthIdApplicationPost_0(authId, xAuthID, xAuthToken, contentType, body);
    } catch (ApiException e) {
      System.err.println("Exception when calling ApplicationApi#apiV1AccountAuthIdApplicationPost_0");
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

<a id="apiV1AccountAuthIdNumbersApplicationDelete"></a>
# **apiV1AccountAuthIdNumbersApplicationDelete**
> apiV1AccountAuthIdNumbersApplicationDelete(authId, xAuthID, xAuthToken, contentType)

Unlink Number from Application

Remove association between a phone number and application.

### Example
```java
// Import classes:
import ai.vobiz.ApiClient;
import ai.vobiz.ApiException;
import ai.vobiz.Configuration;
import ai.vobiz.auth.*;
import ai.vobiz.models.*;
import ai.vobiz.api.ApplicationApi;

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

    ApplicationApi apiInstance = new ApplicationApi(defaultClient);
    String authId = "authId_example"; // String | 
    String xAuthID = "{{auth_id}}"; // String | 
    String xAuthToken = "{{auth_token}}"; // String | 
    String contentType = "application/json"; // String | 
    try {
      apiInstance.apiV1AccountAuthIdNumbersApplicationDelete(authId, xAuthID, xAuthToken, contentType);
    } catch (ApiException e) {
      System.err.println("Exception when calling ApplicationApi#apiV1AccountAuthIdNumbersApplicationDelete");
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

<a id="apiV1AccountAuthIdNumbersApplicationPost"></a>
# **apiV1AccountAuthIdNumbersApplicationPost**
> apiV1AccountAuthIdNumbersApplicationPost(authId, xAuthID, xAuthToken, contentType, body)

Link Number to Application

Associate a phone number with an application.

### Example
```java
// Import classes:
import ai.vobiz.ApiClient;
import ai.vobiz.ApiException;
import ai.vobiz.Configuration;
import ai.vobiz.auth.*;
import ai.vobiz.models.*;
import ai.vobiz.api.ApplicationApi;

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

    ApplicationApi apiInstance = new ApplicationApi(defaultClient);
    String authId = "authId_example"; // String | 
    String xAuthID = "{{auth_id}}"; // String | 
    String xAuthToken = "{{auth_token}}"; // String | 
    String contentType = "application/json"; // String | 
    Object body = null; // Object | 
    try {
      apiInstance.apiV1AccountAuthIdNumbersApplicationPost(authId, xAuthID, xAuthToken, contentType, body);
    } catch (ApiException e) {
      System.err.println("Exception when calling ApplicationApi#apiV1AccountAuthIdNumbersApplicationPost");
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

