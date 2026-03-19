# vobiz.CallApi

All URIs are relative to *https://api.vobiz.ai*

Method | HTTP request | Description
------------- | ------------- | -------------
[**api_v1_account_auth_id_call_delete**](CallApi.md#api_v1_account_auth_id_call_delete) | **DELETE** /api/v1/Account/{auth_id}/Call/{}/ | Hang Up a Call
[**api_v1_account_auth_id_call_dtmf_post**](CallApi.md#api_v1_account_auth_id_call_dtmf_post) | **POST** /api/v1/Account/{auth_id}/Call/{}/DTMF/ | Send DTMF Digits
[**api_v1_account_auth_id_call_get**](CallApi.md#api_v1_account_auth_id_call_get) | **GET** /api/v1/Account/{auth_id}/Call/ | Retrieve All Queued Calls
[**api_v1_account_auth_id_call_get_0**](CallApi.md#api_v1_account_auth_id_call_get_0) | **GET** /api/v1/Account/{auth_id}/Call/{}/ | Retrieve a Queued Call
[**api_v1_account_auth_id_call_play_delete**](CallApi.md#api_v1_account_auth_id_call_play_delete) | **DELETE** /api/v1/Account/{auth_id}/Call/{}/Play/ | Stop Playing Audio on a Call
[**api_v1_account_auth_id_call_play_post**](CallApi.md#api_v1_account_auth_id_call_play_post) | **POST** /api/v1/Account/{auth_id}/Call/{}/Play/ | Play Audio on a Call
[**api_v1_account_auth_id_call_post**](CallApi.md#api_v1_account_auth_id_call_post) | **POST** /api/v1/Account/{auth_id}/Call/ | Make an Outbound Call
[**api_v1_account_auth_id_call_post_0**](CallApi.md#api_v1_account_auth_id_call_post_0) | **POST** /api/v1/Account/{auth_id}/Call/{}/ | Transfer a Call
[**api_v1_account_auth_id_call_record_delete**](CallApi.md#api_v1_account_auth_id_call_record_delete) | **DELETE** /api/v1/Account/{auth_id}/Call/{}/Record/ | Stop Recording a Call
[**api_v1_account_auth_id_call_record_post**](CallApi.md#api_v1_account_auth_id_call_record_post) | **POST** /api/v1/Account/{auth_id}/Call/{}/Record/ | Start Recording a Call
[**api_v1_account_auth_id_call_speak_delete**](CallApi.md#api_v1_account_auth_id_call_speak_delete) | **DELETE** /api/v1/Account/{auth_id}/Call/{}/Speak/ | Stop Speaking Text on a Call
[**api_v1_account_auth_id_call_speak_post**](CallApi.md#api_v1_account_auth_id_call_speak_post) | **POST** /api/v1/Account/{auth_id}/Call/{}/Speak/ | Speak Text on a Call (TTS)


# **api_v1_account_auth_id_call_delete**
> api_v1_account_auth_id_call_delete(auth_id, x_auth_id=x_auth_id, x_auth_token=x_auth_token, content_type=content_type)

Hang Up a Call

Terminate an active call. Returns 204 No Content.

### Example

* Api Key Authentication (ApiKeyAuthID):
* Api Key Authentication (ApiKeyAuthToken):

```python
import vobiz
from vobiz.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.vobiz.ai
# See configuration.py for a list of all supported configuration parameters.
configuration = vobiz.Configuration(
    host = "https://api.vobiz.ai"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKeyAuthID
configuration.api_key['ApiKeyAuthID'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKeyAuthID'] = 'Bearer'

# Configure API key authorization: ApiKeyAuthToken
configuration.api_key['ApiKeyAuthToken'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKeyAuthToken'] = 'Bearer'

# Enter a context with an instance of the API client
with vobiz.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = vobiz.CallApi(api_client)
    auth_id = 'auth_id_example' # str | 
    x_auth_id = '{{auth_id}}' # str |  (optional)
    x_auth_token = '{{auth_token}}' # str |  (optional)
    content_type = 'application/json' # str |  (optional)

    try:
        # Hang Up a Call
        api_instance.api_v1_account_auth_id_call_delete(auth_id, x_auth_id=x_auth_id, x_auth_token=x_auth_token, content_type=content_type)
    except Exception as e:
        print("Exception when calling CallApi->api_v1_account_auth_id_call_delete: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **auth_id** | **str**|  | 
 **x_auth_id** | **str**|  | [optional] 
 **x_auth_token** | **str**|  | [optional] 
 **content_type** | **str**|  | [optional] 

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
**200** | Successful response |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **api_v1_account_auth_id_call_dtmf_post**
> api_v1_account_auth_id_call_dtmf_post(auth_id, x_auth_id=x_auth_id, x_auth_token=x_auth_token, content_type=content_type, body=body)

Send DTMF Digits

Send DTMF digits to an active call for automated IVR navigation.

### Example

* Api Key Authentication (ApiKeyAuthID):
* Api Key Authentication (ApiKeyAuthToken):

```python
import vobiz
from vobiz.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.vobiz.ai
# See configuration.py for a list of all supported configuration parameters.
configuration = vobiz.Configuration(
    host = "https://api.vobiz.ai"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKeyAuthID
configuration.api_key['ApiKeyAuthID'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKeyAuthID'] = 'Bearer'

# Configure API key authorization: ApiKeyAuthToken
configuration.api_key['ApiKeyAuthToken'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKeyAuthToken'] = 'Bearer'

# Enter a context with an instance of the API client
with vobiz.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = vobiz.CallApi(api_client)
    auth_id = 'auth_id_example' # str | 
    x_auth_id = '{{auth_id}}' # str |  (optional)
    x_auth_token = '{{auth_token}}' # str |  (optional)
    content_type = 'application/json' # str |  (optional)
    body = None # object |  (optional)

    try:
        # Send DTMF Digits
        api_instance.api_v1_account_auth_id_call_dtmf_post(auth_id, x_auth_id=x_auth_id, x_auth_token=x_auth_token, content_type=content_type, body=body)
    except Exception as e:
        print("Exception when calling CallApi->api_v1_account_auth_id_call_dtmf_post: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **auth_id** | **str**|  | 
 **x_auth_id** | **str**|  | [optional] 
 **x_auth_token** | **str**|  | [optional] 
 **content_type** | **str**|  | [optional] 
 **body** | **object**|  | [optional] 

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
**200** | Successful response |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **api_v1_account_auth_id_call_get**
> api_v1_account_auth_id_call_get(auth_id, x_auth_id=x_auth_id, x_auth_token=x_auth_token, content_type=content_type, status=status)

Retrieve All Queued Calls

Get a list of all call UUIDs for calls currently queued and waiting to connect. Max 20 results.

### Example

* Api Key Authentication (ApiKeyAuthID):
* Api Key Authentication (ApiKeyAuthToken):

```python
import vobiz
from vobiz.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.vobiz.ai
# See configuration.py for a list of all supported configuration parameters.
configuration = vobiz.Configuration(
    host = "https://api.vobiz.ai"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKeyAuthID
configuration.api_key['ApiKeyAuthID'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKeyAuthID'] = 'Bearer'

# Configure API key authorization: ApiKeyAuthToken
configuration.api_key['ApiKeyAuthToken'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKeyAuthToken'] = 'Bearer'

# Enter a context with an instance of the API client
with vobiz.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = vobiz.CallApi(api_client)
    auth_id = 'auth_id_example' # str | 
    x_auth_id = '{{auth_id}}' # str |  (optional)
    x_auth_token = '{{auth_token}}' # str |  (optional)
    content_type = 'application/json' # str |  (optional)
    status = 'queued' # str | Must be 'queued' (optional)

    try:
        # Retrieve All Queued Calls
        api_instance.api_v1_account_auth_id_call_get(auth_id, x_auth_id=x_auth_id, x_auth_token=x_auth_token, content_type=content_type, status=status)
    except Exception as e:
        print("Exception when calling CallApi->api_v1_account_auth_id_call_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **auth_id** | **str**|  | 
 **x_auth_id** | **str**|  | [optional] 
 **x_auth_token** | **str**|  | [optional] 
 **content_type** | **str**|  | [optional] 
 **status** | **str**| Must be &#39;queued&#39; | [optional] 

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
**200** | Successful response |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **api_v1_account_auth_id_call_get_0**
> api_v1_account_auth_id_call_get_0(auth_id, x_auth_id=x_auth_id, x_auth_token=x_auth_token, content_type=content_type, status=status)

Retrieve a Queued Call

Get details of a specific queued call.

### Example

* Api Key Authentication (ApiKeyAuthID):
* Api Key Authentication (ApiKeyAuthToken):

```python
import vobiz
from vobiz.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.vobiz.ai
# See configuration.py for a list of all supported configuration parameters.
configuration = vobiz.Configuration(
    host = "https://api.vobiz.ai"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKeyAuthID
configuration.api_key['ApiKeyAuthID'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKeyAuthID'] = 'Bearer'

# Configure API key authorization: ApiKeyAuthToken
configuration.api_key['ApiKeyAuthToken'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKeyAuthToken'] = 'Bearer'

# Enter a context with an instance of the API client
with vobiz.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = vobiz.CallApi(api_client)
    auth_id = 'auth_id_example' # str | 
    x_auth_id = '{{auth_id}}' # str |  (optional)
    x_auth_token = '{{auth_token}}' # str |  (optional)
    content_type = 'application/json' # str |  (optional)
    status = 'queued' # str | Must be 'queued' (optional)

    try:
        # Retrieve a Queued Call
        api_instance.api_v1_account_auth_id_call_get_0(auth_id, x_auth_id=x_auth_id, x_auth_token=x_auth_token, content_type=content_type, status=status)
    except Exception as e:
        print("Exception when calling CallApi->api_v1_account_auth_id_call_get_0: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **auth_id** | **str**|  | 
 **x_auth_id** | **str**|  | [optional] 
 **x_auth_token** | **str**|  | [optional] 
 **content_type** | **str**|  | [optional] 
 **status** | **str**| Must be &#39;queued&#39; | [optional] 

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
**200** | Successful response |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **api_v1_account_auth_id_call_play_delete**
> api_v1_account_auth_id_call_play_delete(auth_id, x_auth_id=x_auth_id, x_auth_token=x_auth_token, content_type=content_type)

Stop Playing Audio on a Call

Stop audio playback on an active call. Returns 204 No Content.

### Example

* Api Key Authentication (ApiKeyAuthID):
* Api Key Authentication (ApiKeyAuthToken):

```python
import vobiz
from vobiz.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.vobiz.ai
# See configuration.py for a list of all supported configuration parameters.
configuration = vobiz.Configuration(
    host = "https://api.vobiz.ai"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKeyAuthID
configuration.api_key['ApiKeyAuthID'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKeyAuthID'] = 'Bearer'

# Configure API key authorization: ApiKeyAuthToken
configuration.api_key['ApiKeyAuthToken'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKeyAuthToken'] = 'Bearer'

# Enter a context with an instance of the API client
with vobiz.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = vobiz.CallApi(api_client)
    auth_id = 'auth_id_example' # str | 
    x_auth_id = '{{auth_id}}' # str |  (optional)
    x_auth_token = '{{auth_token}}' # str |  (optional)
    content_type = 'application/json' # str |  (optional)

    try:
        # Stop Playing Audio on a Call
        api_instance.api_v1_account_auth_id_call_play_delete(auth_id, x_auth_id=x_auth_id, x_auth_token=x_auth_token, content_type=content_type)
    except Exception as e:
        print("Exception when calling CallApi->api_v1_account_auth_id_call_play_delete: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **auth_id** | **str**|  | 
 **x_auth_id** | **str**|  | [optional] 
 **x_auth_token** | **str**|  | [optional] 
 **content_type** | **str**|  | [optional] 

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
**200** | Successful response |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **api_v1_account_auth_id_call_play_post**
> api_v1_account_auth_id_call_play_post(auth_id, x_auth_id=x_auth_id, x_auth_token=x_auth_token, content_type=content_type, body=body)

Play Audio on a Call

Play audio file(s) during an active call.

### Example

* Api Key Authentication (ApiKeyAuthID):
* Api Key Authentication (ApiKeyAuthToken):

```python
import vobiz
from vobiz.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.vobiz.ai
# See configuration.py for a list of all supported configuration parameters.
configuration = vobiz.Configuration(
    host = "https://api.vobiz.ai"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKeyAuthID
configuration.api_key['ApiKeyAuthID'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKeyAuthID'] = 'Bearer'

# Configure API key authorization: ApiKeyAuthToken
configuration.api_key['ApiKeyAuthToken'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKeyAuthToken'] = 'Bearer'

# Enter a context with an instance of the API client
with vobiz.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = vobiz.CallApi(api_client)
    auth_id = 'auth_id_example' # str | 
    x_auth_id = '{{auth_id}}' # str |  (optional)
    x_auth_token = '{{auth_token}}' # str |  (optional)
    content_type = 'application/json' # str |  (optional)
    body = None # object |  (optional)

    try:
        # Play Audio on a Call
        api_instance.api_v1_account_auth_id_call_play_post(auth_id, x_auth_id=x_auth_id, x_auth_token=x_auth_token, content_type=content_type, body=body)
    except Exception as e:
        print("Exception when calling CallApi->api_v1_account_auth_id_call_play_post: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **auth_id** | **str**|  | 
 **x_auth_id** | **str**|  | [optional] 
 **x_auth_token** | **str**|  | [optional] 
 **content_type** | **str**|  | [optional] 
 **body** | **object**|  | [optional] 

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
**200** | Successful response |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **api_v1_account_auth_id_call_post**
> api_v1_account_auth_id_call_post(auth_id, x_auth_id=x_auth_id, x_auth_token=x_auth_token, content_type=content_type, body=body)

Make an Outbound Call

Initiate an outbound call to a PSTN number or SIP endpoint. Supports bulk calls (up to 1000 destinations using < separator).

### Example

* Api Key Authentication (ApiKeyAuthID):
* Api Key Authentication (ApiKeyAuthToken):

```python
import vobiz
from vobiz.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.vobiz.ai
# See configuration.py for a list of all supported configuration parameters.
configuration = vobiz.Configuration(
    host = "https://api.vobiz.ai"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKeyAuthID
configuration.api_key['ApiKeyAuthID'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKeyAuthID'] = 'Bearer'

# Configure API key authorization: ApiKeyAuthToken
configuration.api_key['ApiKeyAuthToken'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKeyAuthToken'] = 'Bearer'

# Enter a context with an instance of the API client
with vobiz.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = vobiz.CallApi(api_client)
    auth_id = 'auth_id_example' # str | 
    x_auth_id = '{{auth_id}}' # str |  (optional)
    x_auth_token = '{{auth_token}}' # str |  (optional)
    content_type = 'application/json' # str |  (optional)
    body = None # object |  (optional)

    try:
        # Make an Outbound Call
        api_instance.api_v1_account_auth_id_call_post(auth_id, x_auth_id=x_auth_id, x_auth_token=x_auth_token, content_type=content_type, body=body)
    except Exception as e:
        print("Exception when calling CallApi->api_v1_account_auth_id_call_post: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **auth_id** | **str**|  | 
 **x_auth_id** | **str**|  | [optional] 
 **x_auth_token** | **str**|  | [optional] 
 **content_type** | **str**|  | [optional] 
 **body** | **object**|  | [optional] 

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
**200** | Successful response |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **api_v1_account_auth_id_call_post_0**
> api_v1_account_auth_id_call_post_0(auth_id, x_auth_id=x_auth_id, x_auth_token=x_auth_token, content_type=content_type, body=body)

Transfer a Call

Transfer an in-progress call to a different URL for new call flow instructions.

### Example

* Api Key Authentication (ApiKeyAuthID):
* Api Key Authentication (ApiKeyAuthToken):

```python
import vobiz
from vobiz.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.vobiz.ai
# See configuration.py for a list of all supported configuration parameters.
configuration = vobiz.Configuration(
    host = "https://api.vobiz.ai"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKeyAuthID
configuration.api_key['ApiKeyAuthID'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKeyAuthID'] = 'Bearer'

# Configure API key authorization: ApiKeyAuthToken
configuration.api_key['ApiKeyAuthToken'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKeyAuthToken'] = 'Bearer'

# Enter a context with an instance of the API client
with vobiz.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = vobiz.CallApi(api_client)
    auth_id = 'auth_id_example' # str | 
    x_auth_id = '{{auth_id}}' # str |  (optional)
    x_auth_token = '{{auth_token}}' # str |  (optional)
    content_type = 'application/json' # str |  (optional)
    body = None # object |  (optional)

    try:
        # Transfer a Call
        api_instance.api_v1_account_auth_id_call_post_0(auth_id, x_auth_id=x_auth_id, x_auth_token=x_auth_token, content_type=content_type, body=body)
    except Exception as e:
        print("Exception when calling CallApi->api_v1_account_auth_id_call_post_0: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **auth_id** | **str**|  | 
 **x_auth_id** | **str**|  | [optional] 
 **x_auth_token** | **str**|  | [optional] 
 **content_type** | **str**|  | [optional] 
 **body** | **object**|  | [optional] 

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
**200** | Successful response |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **api_v1_account_auth_id_call_record_delete**
> api_v1_account_auth_id_call_record_delete(auth_id, x_auth_id=x_auth_id, x_auth_token=x_auth_token, content_type=content_type)

Stop Recording a Call

Stop active recording(s) on a call. Returns 204 No Content.

### Example

* Api Key Authentication (ApiKeyAuthID):
* Api Key Authentication (ApiKeyAuthToken):

```python
import vobiz
from vobiz.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.vobiz.ai
# See configuration.py for a list of all supported configuration parameters.
configuration = vobiz.Configuration(
    host = "https://api.vobiz.ai"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKeyAuthID
configuration.api_key['ApiKeyAuthID'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKeyAuthID'] = 'Bearer'

# Configure API key authorization: ApiKeyAuthToken
configuration.api_key['ApiKeyAuthToken'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKeyAuthToken'] = 'Bearer'

# Enter a context with an instance of the API client
with vobiz.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = vobiz.CallApi(api_client)
    auth_id = 'auth_id_example' # str | 
    x_auth_id = '{{auth_id}}' # str |  (optional)
    x_auth_token = '{{auth_token}}' # str |  (optional)
    content_type = 'application/json' # str |  (optional)

    try:
        # Stop Recording a Call
        api_instance.api_v1_account_auth_id_call_record_delete(auth_id, x_auth_id=x_auth_id, x_auth_token=x_auth_token, content_type=content_type)
    except Exception as e:
        print("Exception when calling CallApi->api_v1_account_auth_id_call_record_delete: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **auth_id** | **str**|  | 
 **x_auth_id** | **str**|  | [optional] 
 **x_auth_token** | **str**|  | [optional] 
 **content_type** | **str**|  | [optional] 

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
**200** | Successful response |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **api_v1_account_auth_id_call_record_post**
> api_v1_account_auth_id_call_record_post(auth_id, x_auth_id=x_auth_id, x_auth_token=x_auth_token, content_type=content_type, body=body)

Start Recording a Call

Begin recording an active call.

### Example

* Api Key Authentication (ApiKeyAuthID):
* Api Key Authentication (ApiKeyAuthToken):

```python
import vobiz
from vobiz.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.vobiz.ai
# See configuration.py for a list of all supported configuration parameters.
configuration = vobiz.Configuration(
    host = "https://api.vobiz.ai"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKeyAuthID
configuration.api_key['ApiKeyAuthID'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKeyAuthID'] = 'Bearer'

# Configure API key authorization: ApiKeyAuthToken
configuration.api_key['ApiKeyAuthToken'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKeyAuthToken'] = 'Bearer'

# Enter a context with an instance of the API client
with vobiz.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = vobiz.CallApi(api_client)
    auth_id = 'auth_id_example' # str | 
    x_auth_id = '{{auth_id}}' # str |  (optional)
    x_auth_token = '{{auth_token}}' # str |  (optional)
    content_type = 'application/json' # str |  (optional)
    body = None # object |  (optional)

    try:
        # Start Recording a Call
        api_instance.api_v1_account_auth_id_call_record_post(auth_id, x_auth_id=x_auth_id, x_auth_token=x_auth_token, content_type=content_type, body=body)
    except Exception as e:
        print("Exception when calling CallApi->api_v1_account_auth_id_call_record_post: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **auth_id** | **str**|  | 
 **x_auth_id** | **str**|  | [optional] 
 **x_auth_token** | **str**|  | [optional] 
 **content_type** | **str**|  | [optional] 
 **body** | **object**|  | [optional] 

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
**200** | Successful response |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **api_v1_account_auth_id_call_speak_delete**
> api_v1_account_auth_id_call_speak_delete(auth_id, x_auth_id=x_auth_id, x_auth_token=x_auth_token, content_type=content_type)

Stop Speaking Text on a Call

Stop text-to-speech playback. Returns 204 No Content.

### Example

* Api Key Authentication (ApiKeyAuthID):
* Api Key Authentication (ApiKeyAuthToken):

```python
import vobiz
from vobiz.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.vobiz.ai
# See configuration.py for a list of all supported configuration parameters.
configuration = vobiz.Configuration(
    host = "https://api.vobiz.ai"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKeyAuthID
configuration.api_key['ApiKeyAuthID'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKeyAuthID'] = 'Bearer'

# Configure API key authorization: ApiKeyAuthToken
configuration.api_key['ApiKeyAuthToken'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKeyAuthToken'] = 'Bearer'

# Enter a context with an instance of the API client
with vobiz.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = vobiz.CallApi(api_client)
    auth_id = 'auth_id_example' # str | 
    x_auth_id = '{{auth_id}}' # str |  (optional)
    x_auth_token = '{{auth_token}}' # str |  (optional)
    content_type = 'application/json' # str |  (optional)

    try:
        # Stop Speaking Text on a Call
        api_instance.api_v1_account_auth_id_call_speak_delete(auth_id, x_auth_id=x_auth_id, x_auth_token=x_auth_token, content_type=content_type)
    except Exception as e:
        print("Exception when calling CallApi->api_v1_account_auth_id_call_speak_delete: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **auth_id** | **str**|  | 
 **x_auth_id** | **str**|  | [optional] 
 **x_auth_token** | **str**|  | [optional] 
 **content_type** | **str**|  | [optional] 

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
**200** | Successful response |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **api_v1_account_auth_id_call_speak_post**
> api_v1_account_auth_id_call_speak_post(auth_id, x_auth_id=x_auth_id, x_auth_token=x_auth_token, content_type=content_type, body=body)

Speak Text on a Call (TTS)

Convert text to speech and play it during an active call. Supports 29 languages.

### Example

* Api Key Authentication (ApiKeyAuthID):
* Api Key Authentication (ApiKeyAuthToken):

```python
import vobiz
from vobiz.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.vobiz.ai
# See configuration.py for a list of all supported configuration parameters.
configuration = vobiz.Configuration(
    host = "https://api.vobiz.ai"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKeyAuthID
configuration.api_key['ApiKeyAuthID'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKeyAuthID'] = 'Bearer'

# Configure API key authorization: ApiKeyAuthToken
configuration.api_key['ApiKeyAuthToken'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKeyAuthToken'] = 'Bearer'

# Enter a context with an instance of the API client
with vobiz.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = vobiz.CallApi(api_client)
    auth_id = 'auth_id_example' # str | 
    x_auth_id = '{{auth_id}}' # str |  (optional)
    x_auth_token = '{{auth_token}}' # str |  (optional)
    content_type = 'application/json' # str |  (optional)
    body = None # object |  (optional)

    try:
        # Speak Text on a Call (TTS)
        api_instance.api_v1_account_auth_id_call_speak_post(auth_id, x_auth_id=x_auth_id, x_auth_token=x_auth_token, content_type=content_type, body=body)
    except Exception as e:
        print("Exception when calling CallApi->api_v1_account_auth_id_call_speak_post: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **auth_id** | **str**|  | 
 **x_auth_id** | **str**|  | [optional] 
 **x_auth_token** | **str**|  | [optional] 
 **content_type** | **str**|  | [optional] 
 **body** | **object**|  | [optional] 

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
**200** | Successful response |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

