# vobiz.RecordingApi

All URIs are relative to *https://api.vobiz.ai*

Method | HTTP request | Description
------------- | ------------- | -------------
[**api_v1_account_account_id_recording_get**](RecordingApi.md#api_v1_account_account_id_recording_get) | **GET** /api/v1/Account/{account_id}/Recording/ | List All Recordings
[**api_v1_account_auth_id_export_recording_post**](RecordingApi.md#api_v1_account_auth_id_export_recording_post) | **POST** /api/v1/Account/{auth_id}/export/recording/ | Export Historical Recordings
[**api_v1_account_auth_id_recording_bulk_delete_delete**](RecordingApi.md#api_v1_account_auth_id_recording_bulk_delete_delete) | **DELETE** /api/v1/Account/{auth_id}/Recording/BulkDelete/ | Bulk Delete Recordings
[**api_v1_account_auth_id_recording_delete**](RecordingApi.md#api_v1_account_auth_id_recording_delete) | **DELETE** /api/v1/Account/{auth_id}/Recording/{}/ | Delete a Recording
[**api_v1_account_auth_id_recording_get**](RecordingApi.md#api_v1_account_auth_id_recording_get) | **GET** /api/v1/Account/{auth_id}/Recording/{}/ | Retrieve a Recording


# **api_v1_account_account_id_recording_get**
> api_v1_account_account_id_recording_get(account_id, x_auth_id=x_auth_id, x_auth_token=x_auth_token, content_type=content_type, limit=limit, offset=offset, call_uuid=call_uuid, recording_type=recording_type)

List All Recordings

Retrieve a paginated list of call recordings for your account.

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
    api_instance = vobiz.RecordingApi(api_client)
    account_id = 'account_id_example' # str | 
    x_auth_id = '{{auth_id}}' # str |  (optional)
    x_auth_token = '{{auth_token}}' # str |  (optional)
    content_type = 'application/json' # str |  (optional)
    limit = 20 # int | Records per request (default: 20, max: 100) (optional)
    offset = 0 # int | Pagination offset (default: 0) (optional)
    call_uuid = 'call_uuid_example' # str | Filter by specific call UUID (optional)
    recording_type = 'recording_type_example' # str | Filter by type: trunk or extension (optional)

    try:
        # List All Recordings
        api_instance.api_v1_account_account_id_recording_get(account_id, x_auth_id=x_auth_id, x_auth_token=x_auth_token, content_type=content_type, limit=limit, offset=offset, call_uuid=call_uuid, recording_type=recording_type)
    except Exception as e:
        print("Exception when calling RecordingApi->api_v1_account_account_id_recording_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **str**|  | 
 **x_auth_id** | **str**|  | [optional] 
 **x_auth_token** | **str**|  | [optional] 
 **content_type** | **str**|  | [optional] 
 **limit** | **int**| Records per request (default: 20, max: 100) | [optional] 
 **offset** | **int**| Pagination offset (default: 0) | [optional] 
 **call_uuid** | **str**| Filter by specific call UUID | [optional] 
 **recording_type** | **str**| Filter by type: trunk or extension | [optional] 

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

# **api_v1_account_auth_id_export_recording_post**
> api_v1_account_auth_id_export_recording_post(auth_id, x_auth_id=x_auth_id, x_auth_token=x_auth_token, content_type=content_type, body=body)

Export Historical Recordings

Export recordings as a downloadable archive sent via email (async). Returns 202 Accepted.

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
    api_instance = vobiz.RecordingApi(api_client)
    auth_id = 'auth_id_example' # str | 
    x_auth_id = '{{auth_id}}' # str |  (optional)
    x_auth_token = '{{auth_token}}' # str |  (optional)
    content_type = 'application/json' # str |  (optional)
    body = None # object |  (optional)

    try:
        # Export Historical Recordings
        api_instance.api_v1_account_auth_id_export_recording_post(auth_id, x_auth_id=x_auth_id, x_auth_token=x_auth_token, content_type=content_type, body=body)
    except Exception as e:
        print("Exception when calling RecordingApi->api_v1_account_auth_id_export_recording_post: %s\n" % e)
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

# **api_v1_account_auth_id_recording_bulk_delete_delete**
> api_v1_account_auth_id_recording_bulk_delete_delete(auth_id, x_auth_id=x_auth_id, x_auth_token=x_auth_token, content_type=content_type, add_time__gte=add_time__gte, add_time__lte=add_time__lte, call_uuid=call_uuid, from_number=from_number, to_number=to_number, recording_format=recording_format)

Bulk Delete Recordings

Delete multiple recordings matching filter criteria (async operation). Returns 202 Accepted.

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
    api_instance = vobiz.RecordingApi(api_client)
    auth_id = 'auth_id_example' # str | 
    x_auth_id = '{{auth_id}}' # str |  (optional)
    x_auth_token = '{{auth_token}}' # str |  (optional)
    content_type = 'application/json' # str |  (optional)
    add_time__gte = 'add_time__gte_example' # str | Delete recordings on/after this date (YYYY-MM-DD HH:MM:SS) (optional)
    add_time__lte = 'add_time__lte_example' # str | Delete recordings on/before this date (optional)
    call_uuid = 'call_uuid_example' # str | Delete recordings for specific call UUID (optional)
    from_number = 'from_number_example' # str | Delete by caller number (partial match) (optional)
    to_number = 'to_number_example' # str | Delete by destination number (partial match) (optional)
    recording_format = 'recording_format_example' # str | mp3 or wav (optional)

    try:
        # Bulk Delete Recordings
        api_instance.api_v1_account_auth_id_recording_bulk_delete_delete(auth_id, x_auth_id=x_auth_id, x_auth_token=x_auth_token, content_type=content_type, add_time__gte=add_time__gte, add_time__lte=add_time__lte, call_uuid=call_uuid, from_number=from_number, to_number=to_number, recording_format=recording_format)
    except Exception as e:
        print("Exception when calling RecordingApi->api_v1_account_auth_id_recording_bulk_delete_delete: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **auth_id** | **str**|  | 
 **x_auth_id** | **str**|  | [optional] 
 **x_auth_token** | **str**|  | [optional] 
 **content_type** | **str**|  | [optional] 
 **add_time__gte** | **str**| Delete recordings on/after this date (YYYY-MM-DD HH:MM:SS) | [optional] 
 **add_time__lte** | **str**| Delete recordings on/before this date | [optional] 
 **call_uuid** | **str**| Delete recordings for specific call UUID | [optional] 
 **from_number** | **str**| Delete by caller number (partial match) | [optional] 
 **to_number** | **str**| Delete by destination number (partial match) | [optional] 
 **recording_format** | **str**| mp3 or wav | [optional] 

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

# **api_v1_account_auth_id_recording_delete**
> api_v1_account_auth_id_recording_delete(auth_id, x_auth_id=x_auth_id, x_auth_token=x_auth_token, content_type=content_type)

Delete a Recording

Permanently delete a specific recording. Returns 204 No Content.

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
    api_instance = vobiz.RecordingApi(api_client)
    auth_id = 'auth_id_example' # str | 
    x_auth_id = '{{auth_id}}' # str |  (optional)
    x_auth_token = '{{auth_token}}' # str |  (optional)
    content_type = 'application/json' # str |  (optional)

    try:
        # Delete a Recording
        api_instance.api_v1_account_auth_id_recording_delete(auth_id, x_auth_id=x_auth_id, x_auth_token=x_auth_token, content_type=content_type)
    except Exception as e:
        print("Exception when calling RecordingApi->api_v1_account_auth_id_recording_delete: %s\n" % e)
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

# **api_v1_account_auth_id_recording_get**
> api_v1_account_auth_id_recording_get(auth_id, x_auth_id=x_auth_id, x_auth_token=x_auth_token, content_type=content_type)

Retrieve a Recording

Get detailed information about a specific recording.

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
    api_instance = vobiz.RecordingApi(api_client)
    auth_id = 'auth_id_example' # str | 
    x_auth_id = '{{auth_id}}' # str |  (optional)
    x_auth_token = '{{auth_token}}' # str |  (optional)
    content_type = 'application/json' # str |  (optional)

    try:
        # Retrieve a Recording
        api_instance.api_v1_account_auth_id_recording_get(auth_id, x_auth_id=x_auth_id, x_auth_token=x_auth_token, content_type=content_type)
    except Exception as e:
        print("Exception when calling RecordingApi->api_v1_account_auth_id_recording_get: %s\n" % e)
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

