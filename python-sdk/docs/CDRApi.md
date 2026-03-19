# vobiz.CDRApi

All URIs are relative to *https://api.vobiz.ai*

Method | HTTP request | Description
------------- | ------------- | -------------
[**api_v1_account_account_id_cdr_get**](CDRApi.md#api_v1_account_account_id_cdr_get) | **GET** /api/v1/account/{account_id}/cdr | Get Call Detail Records


# **api_v1_account_account_id_cdr_get**
> api_v1_account_account_id_cdr_get(account_id, x_auth_id=x_auth_id, x_auth_token=x_auth_token, content_type=content_type, start_date=start_date, end_date=end_date, per_page=per_page, page=page)

Get Call Detail Records

Retrieve call detail records with filtering and pagination.

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
    api_instance = vobiz.CDRApi(api_client)
    account_id = 'account_id_example' # str | 
    x_auth_id = '{{auth_id}}' # str |  (optional)
    x_auth_token = '{{auth_token}}' # str |  (optional)
    content_type = 'application/json' # str |  (optional)
    start_date = '2026-01-01' # str | Start date (YYYY-MM-DD) (optional)
    end_date = '2026-01-31' # str | End date (YYYY-MM-DD) (optional)
    per_page = 50 # int | Results per page (optional)
    page = 1 # int | Page number (optional)

    try:
        # Get Call Detail Records
        api_instance.api_v1_account_account_id_cdr_get(account_id, x_auth_id=x_auth_id, x_auth_token=x_auth_token, content_type=content_type, start_date=start_date, end_date=end_date, per_page=per_page, page=page)
    except Exception as e:
        print("Exception when calling CDRApi->api_v1_account_account_id_cdr_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **str**|  | 
 **x_auth_id** | **str**|  | [optional] 
 **x_auth_token** | **str**|  | [optional] 
 **content_type** | **str**|  | [optional] 
 **start_date** | **str**| Start date (YYYY-MM-DD) | [optional] 
 **end_date** | **str**| End date (YYYY-MM-DD) | [optional] 
 **per_page** | **int**| Results per page | [optional] 
 **page** | **int**| Page number | [optional] 

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

