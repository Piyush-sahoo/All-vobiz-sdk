# vobiz.ConferenceApi

All URIs are relative to *https://api.vobiz.ai*

Method | HTTP request | Description
------------- | ------------- | -------------
[**api_v1_account_auth_id_conference_delete**](ConferenceApi.md#api_v1_account_auth_id_conference_delete) | **DELETE** /api/v1/Account/{auth_id}/Conference/ | Hang Up All Conferences
[**api_v1_account_auth_id_conference_delete_0**](ConferenceApi.md#api_v1_account_auth_id_conference_delete_0) | **DELETE** /api/v1/Account/{auth_id}/Conference/{}/ | Hang Up a Conference
[**api_v1_account_auth_id_conference_get**](ConferenceApi.md#api_v1_account_auth_id_conference_get) | **GET** /api/v1/Account/{auth_id}/Conference/ | List All Conferences
[**api_v1_account_auth_id_conference_get_0**](ConferenceApi.md#api_v1_account_auth_id_conference_get_0) | **GET** /api/v1/Account/{auth_id}/Conference/{}/ | Retrieve a Conference
[**api_v1_account_auth_id_conference_member_deaf_delete**](ConferenceApi.md#api_v1_account_auth_id_conference_member_deaf_delete) | **DELETE** /api/v1/Account/{auth_id}/Conference/{}/Member/{}/Deaf/ | Undeaf a Conference Member
[**api_v1_account_auth_id_conference_member_deaf_post**](ConferenceApi.md#api_v1_account_auth_id_conference_member_deaf_post) | **POST** /api/v1/Account/{auth_id}/Conference/{}/Member/{}/Deaf/ | Deaf a Conference Member
[**api_v1_account_auth_id_conference_member_delete**](ConferenceApi.md#api_v1_account_auth_id_conference_member_delete) | **DELETE** /api/v1/Account/{auth_id}/Conference/{}/Member/{}/ | Hang Up a Conference Member
[**api_v1_account_auth_id_conference_member_kick_post**](ConferenceApi.md#api_v1_account_auth_id_conference_member_kick_post) | **POST** /api/v1/Account/{auth_id}/Conference/{}/Member/{}/Kick/ | Kick a Conference Member
[**api_v1_account_auth_id_conference_member_mute_delete**](ConferenceApi.md#api_v1_account_auth_id_conference_member_mute_delete) | **DELETE** /api/v1/Account/{auth_id}/Conference/{}/Member/{}/Mute/ | Unmute a Conference Member
[**api_v1_account_auth_id_conference_member_mute_post**](ConferenceApi.md#api_v1_account_auth_id_conference_member_mute_post) | **POST** /api/v1/Account/{auth_id}/Conference/{}/Member/{}/Mute/ | Mute a Conference Member
[**api_v1_account_auth_id_conference_member_play_delete**](ConferenceApi.md#api_v1_account_auth_id_conference_member_play_delete) | **DELETE** /api/v1/Account/{auth_id}/Conference/{}/Member/{}/Play/ | Stop Playing Audio to a Conference Member
[**api_v1_account_auth_id_conference_member_play_post**](ConferenceApi.md#api_v1_account_auth_id_conference_member_play_post) | **POST** /api/v1/Account/{auth_id}/Conference/{}/Member/{}/Play/ | Play Audio to a Conference Member
[**api_v1_account_auth_id_conference_record_delete**](ConferenceApi.md#api_v1_account_auth_id_conference_record_delete) | **DELETE** /api/v1/Account/{auth_id}/Conference/{}/Record/ | Stop Conference Recording
[**api_v1_account_auth_id_conference_record_post**](ConferenceApi.md#api_v1_account_auth_id_conference_record_post) | **POST** /api/v1/Account/{auth_id}/Conference/{}/Record/ | Start Conference Recording


# **api_v1_account_auth_id_conference_delete**
> api_v1_account_auth_id_conference_delete(auth_id, x_auth_id=x_auth_id, x_auth_token=x_auth_token, content_type=content_type)

Hang Up All Conferences

Terminate all ongoing conferences simultaneously. Returns 204 No Content.

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
    api_instance = vobiz.ConferenceApi(api_client)
    auth_id = 'auth_id_example' # str | 
    x_auth_id = '{{auth_id}}' # str |  (optional)
    x_auth_token = '{{auth_token}}' # str |  (optional)
    content_type = 'application/json' # str |  (optional)

    try:
        # Hang Up All Conferences
        api_instance.api_v1_account_auth_id_conference_delete(auth_id, x_auth_id=x_auth_id, x_auth_token=x_auth_token, content_type=content_type)
    except Exception as e:
        print("Exception when calling ConferenceApi->api_v1_account_auth_id_conference_delete: %s\n" % e)
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

# **api_v1_account_auth_id_conference_delete_0**
> api_v1_account_auth_id_conference_delete_0(auth_id, x_auth_id=x_auth_id, x_auth_token=x_auth_token, content_type=content_type)

Hang Up a Conference

Terminate a specific conference and disconnect all participants. Returns 204 No Content.

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
    api_instance = vobiz.ConferenceApi(api_client)
    auth_id = 'auth_id_example' # str | 
    x_auth_id = '{{auth_id}}' # str |  (optional)
    x_auth_token = '{{auth_token}}' # str |  (optional)
    content_type = 'application/json' # str |  (optional)

    try:
        # Hang Up a Conference
        api_instance.api_v1_account_auth_id_conference_delete_0(auth_id, x_auth_id=x_auth_id, x_auth_token=x_auth_token, content_type=content_type)
    except Exception as e:
        print("Exception when calling ConferenceApi->api_v1_account_auth_id_conference_delete_0: %s\n" % e)
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

# **api_v1_account_auth_id_conference_get**
> api_v1_account_auth_id_conference_get(auth_id, x_auth_id=x_auth_id, x_auth_token=x_auth_token, content_type=content_type)

List All Conferences

Retrieve a list of all ongoing conferences.

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
    api_instance = vobiz.ConferenceApi(api_client)
    auth_id = 'auth_id_example' # str | 
    x_auth_id = '{{auth_id}}' # str |  (optional)
    x_auth_token = '{{auth_token}}' # str |  (optional)
    content_type = 'application/json' # str |  (optional)

    try:
        # List All Conferences
        api_instance.api_v1_account_auth_id_conference_get(auth_id, x_auth_id=x_auth_id, x_auth_token=x_auth_token, content_type=content_type)
    except Exception as e:
        print("Exception when calling ConferenceApi->api_v1_account_auth_id_conference_get: %s\n" % e)
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

# **api_v1_account_auth_id_conference_get_0**
> api_v1_account_auth_id_conference_get_0(auth_id, x_auth_id=x_auth_id, x_auth_token=x_auth_token, content_type=content_type)

Retrieve a Conference

Get detailed information about a specific ongoing conference including all active members.

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
    api_instance = vobiz.ConferenceApi(api_client)
    auth_id = 'auth_id_example' # str | 
    x_auth_id = '{{auth_id}}' # str |  (optional)
    x_auth_token = '{{auth_token}}' # str |  (optional)
    content_type = 'application/json' # str |  (optional)

    try:
        # Retrieve a Conference
        api_instance.api_v1_account_auth_id_conference_get_0(auth_id, x_auth_id=x_auth_id, x_auth_token=x_auth_token, content_type=content_type)
    except Exception as e:
        print("Exception when calling ConferenceApi->api_v1_account_auth_id_conference_get_0: %s\n" % e)
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

# **api_v1_account_auth_id_conference_member_deaf_delete**
> api_v1_account_auth_id_conference_member_deaf_delete(auth_id, x_auth_id=x_auth_id, x_auth_token=x_auth_token, content_type=content_type)

Undeaf a Conference Member

Restore audio reception for previously deafened members.

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
    api_instance = vobiz.ConferenceApi(api_client)
    auth_id = 'auth_id_example' # str | 
    x_auth_id = '{{auth_id}}' # str |  (optional)
    x_auth_token = '{{auth_token}}' # str |  (optional)
    content_type = 'application/json' # str |  (optional)

    try:
        # Undeaf a Conference Member
        api_instance.api_v1_account_auth_id_conference_member_deaf_delete(auth_id, x_auth_id=x_auth_id, x_auth_token=x_auth_token, content_type=content_type)
    except Exception as e:
        print("Exception when calling ConferenceApi->api_v1_account_auth_id_conference_member_deaf_delete: %s\n" % e)
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

# **api_v1_account_auth_id_conference_member_deaf_post**
> api_v1_account_auth_id_conference_member_deaf_post(auth_id, x_auth_id=x_auth_id, x_auth_token=x_auth_token, content_type=content_type)

Deaf a Conference Member

Prevent member(s) from hearing other participants.

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
    api_instance = vobiz.ConferenceApi(api_client)
    auth_id = 'auth_id_example' # str | 
    x_auth_id = '{{auth_id}}' # str |  (optional)
    x_auth_token = '{{auth_token}}' # str |  (optional)
    content_type = 'application/json' # str |  (optional)

    try:
        # Deaf a Conference Member
        api_instance.api_v1_account_auth_id_conference_member_deaf_post(auth_id, x_auth_id=x_auth_id, x_auth_token=x_auth_token, content_type=content_type)
    except Exception as e:
        print("Exception when calling ConferenceApi->api_v1_account_auth_id_conference_member_deaf_post: %s\n" % e)
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

# **api_v1_account_auth_id_conference_member_delete**
> api_v1_account_auth_id_conference_member_delete(auth_id, x_auth_id=x_auth_id, x_auth_token=x_auth_token, content_type=content_type)

Hang Up a Conference Member

Disconnect a member by terminating their call. Returns 204 No Content.

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
    api_instance = vobiz.ConferenceApi(api_client)
    auth_id = 'auth_id_example' # str | 
    x_auth_id = '{{auth_id}}' # str |  (optional)
    x_auth_token = '{{auth_token}}' # str |  (optional)
    content_type = 'application/json' # str |  (optional)

    try:
        # Hang Up a Conference Member
        api_instance.api_v1_account_auth_id_conference_member_delete(auth_id, x_auth_id=x_auth_id, x_auth_token=x_auth_token, content_type=content_type)
    except Exception as e:
        print("Exception when calling ConferenceApi->api_v1_account_auth_id_conference_member_delete: %s\n" % e)
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

# **api_v1_account_auth_id_conference_member_kick_post**
> api_v1_account_auth_id_conference_member_kick_post(auth_id, x_auth_id=x_auth_id, x_auth_token=x_auth_token, content_type=content_type)

Kick a Conference Member

Disconnect a member while allowing XML flow continuation.

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
    api_instance = vobiz.ConferenceApi(api_client)
    auth_id = 'auth_id_example' # str | 
    x_auth_id = '{{auth_id}}' # str |  (optional)
    x_auth_token = '{{auth_token}}' # str |  (optional)
    content_type = 'application/json' # str |  (optional)

    try:
        # Kick a Conference Member
        api_instance.api_v1_account_auth_id_conference_member_kick_post(auth_id, x_auth_id=x_auth_id, x_auth_token=x_auth_token, content_type=content_type)
    except Exception as e:
        print("Exception when calling ConferenceApi->api_v1_account_auth_id_conference_member_kick_post: %s\n" % e)
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

# **api_v1_account_auth_id_conference_member_mute_delete**
> api_v1_account_auth_id_conference_member_mute_delete(auth_id, x_auth_id=x_auth_id, x_auth_token=x_auth_token, content_type=content_type)

Unmute a Conference Member

Restore audio from previously muted members.

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
    api_instance = vobiz.ConferenceApi(api_client)
    auth_id = 'auth_id_example' # str | 
    x_auth_id = '{{auth_id}}' # str |  (optional)
    x_auth_token = '{{auth_token}}' # str |  (optional)
    content_type = 'application/json' # str |  (optional)

    try:
        # Unmute a Conference Member
        api_instance.api_v1_account_auth_id_conference_member_mute_delete(auth_id, x_auth_id=x_auth_id, x_auth_token=x_auth_token, content_type=content_type)
    except Exception as e:
        print("Exception when calling ConferenceApi->api_v1_account_auth_id_conference_member_mute_delete: %s\n" % e)
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

# **api_v1_account_auth_id_conference_member_mute_post**
> api_v1_account_auth_id_conference_member_mute_post(auth_id, x_auth_id=x_auth_id, x_auth_token=x_auth_token, content_type=content_type)

Mute a Conference Member

Mute member(s) so others cannot hear them.

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
    api_instance = vobiz.ConferenceApi(api_client)
    auth_id = 'auth_id_example' # str | 
    x_auth_id = '{{auth_id}}' # str |  (optional)
    x_auth_token = '{{auth_token}}' # str |  (optional)
    content_type = 'application/json' # str |  (optional)

    try:
        # Mute a Conference Member
        api_instance.api_v1_account_auth_id_conference_member_mute_post(auth_id, x_auth_id=x_auth_id, x_auth_token=x_auth_token, content_type=content_type)
    except Exception as e:
        print("Exception when calling ConferenceApi->api_v1_account_auth_id_conference_member_mute_post: %s\n" % e)
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

# **api_v1_account_auth_id_conference_member_play_delete**
> api_v1_account_auth_id_conference_member_play_delete(auth_id, x_auth_id=x_auth_id, x_auth_token=x_auth_token, content_type=content_type)

Stop Playing Audio to a Conference Member

Stop audio playback for specific member(s).

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
    api_instance = vobiz.ConferenceApi(api_client)
    auth_id = 'auth_id_example' # str | 
    x_auth_id = '{{auth_id}}' # str |  (optional)
    x_auth_token = '{{auth_token}}' # str |  (optional)
    content_type = 'application/json' # str |  (optional)

    try:
        # Stop Playing Audio to a Conference Member
        api_instance.api_v1_account_auth_id_conference_member_play_delete(auth_id, x_auth_id=x_auth_id, x_auth_token=x_auth_token, content_type=content_type)
    except Exception as e:
        print("Exception when calling ConferenceApi->api_v1_account_auth_id_conference_member_play_delete: %s\n" % e)
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

# **api_v1_account_auth_id_conference_member_play_post**
> api_v1_account_auth_id_conference_member_play_post(auth_id, x_auth_id=x_auth_id, x_auth_token=x_auth_token, content_type=content_type, body=body)

Play Audio to a Conference Member

Play audio to specific member(s). Only targeted member(s) hear the audio.

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
    api_instance = vobiz.ConferenceApi(api_client)
    auth_id = 'auth_id_example' # str | 
    x_auth_id = '{{auth_id}}' # str |  (optional)
    x_auth_token = '{{auth_token}}' # str |  (optional)
    content_type = 'application/json' # str |  (optional)
    body = None # object |  (optional)

    try:
        # Play Audio to a Conference Member
        api_instance.api_v1_account_auth_id_conference_member_play_post(auth_id, x_auth_id=x_auth_id, x_auth_token=x_auth_token, content_type=content_type, body=body)
    except Exception as e:
        print("Exception when calling ConferenceApi->api_v1_account_auth_id_conference_member_play_post: %s\n" % e)
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

# **api_v1_account_auth_id_conference_record_delete**
> api_v1_account_auth_id_conference_record_delete(auth_id, x_auth_id=x_auth_id, x_auth_token=x_auth_token, content_type=content_type)

Stop Conference Recording

Stop an active conference recording. Returns 204 No Content.

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
    api_instance = vobiz.ConferenceApi(api_client)
    auth_id = 'auth_id_example' # str | 
    x_auth_id = '{{auth_id}}' # str |  (optional)
    x_auth_token = '{{auth_token}}' # str |  (optional)
    content_type = 'application/json' # str |  (optional)

    try:
        # Stop Conference Recording
        api_instance.api_v1_account_auth_id_conference_record_delete(auth_id, x_auth_id=x_auth_id, x_auth_token=x_auth_token, content_type=content_type)
    except Exception as e:
        print("Exception when calling ConferenceApi->api_v1_account_auth_id_conference_record_delete: %s\n" % e)
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

# **api_v1_account_auth_id_conference_record_post**
> api_v1_account_auth_id_conference_record_post(auth_id, x_auth_id=x_auth_id, x_auth_token=x_auth_token, content_type=content_type, body=body)

Start Conference Recording

Begin recording a conference call.

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
    api_instance = vobiz.ConferenceApi(api_client)
    auth_id = 'auth_id_example' # str | 
    x_auth_id = '{{auth_id}}' # str |  (optional)
    x_auth_token = '{{auth_token}}' # str |  (optional)
    content_type = 'application/json' # str |  (optional)
    body = None # object |  (optional)

    try:
        # Start Conference Recording
        api_instance.api_v1_account_auth_id_conference_record_post(auth_id, x_auth_id=x_auth_id, x_auth_token=x_auth_token, content_type=content_type, body=body)
    except Exception as e:
        print("Exception when calling ConferenceApi->api_v1_account_auth_id_conference_record_post: %s\n" % e)
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

