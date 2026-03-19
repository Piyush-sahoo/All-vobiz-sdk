# vobiz.PhoneNumbersApi

All URIs are relative to *https://api.vobiz.ai*

Method | HTTP request | Description
------------- | ------------- | -------------
[**api_v1_account_auth_id_inventory_numbers_get**](PhoneNumbersApi.md#api_v1_account_auth_id_inventory_numbers_get) | **GET** /api/v1/account/{auth_id}/inventory/numbers | List Inventory Numbers
[**api_v1_account_auth_id_numbers_e164_number_delete**](PhoneNumbersApi.md#api_v1_account_auth_id_numbers_e164_number_delete) | **DELETE** /api/v1/account/{auth_id}/numbers/:e164_number | Unrent a Phone Number
[**api_v1_account_auth_id_numbers_get**](PhoneNumbersApi.md#api_v1_account_auth_id_numbers_get) | **GET** /api/v1/account/{auth_id}/numbers | List Account Phone Numbers
[**api_v1_account_auth_id_numbers_purchase_from_inventory_post**](PhoneNumbersApi.md#api_v1_account_auth_id_numbers_purchase_from_inventory_post) | **POST** /api/v1/account/{auth_id}/numbers/purchase-from-inventory | Purchase from Inventory


# **api_v1_account_auth_id_inventory_numbers_get**
> api_v1_account_auth_id_inventory_numbers_get(auth_id, x_auth_id=x_auth_id, x_auth_token=x_auth_token, content_type=content_type, country=country, page=page, per_page=per_page)

List Inventory Numbers

Browse available phone numbers in inventory for purchase.

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
    api_instance = vobiz.PhoneNumbersApi(api_client)
    auth_id = 'auth_id_example' # str | 
    x_auth_id = '{{auth_id}}' # str |  (optional)
    x_auth_token = '{{auth_token}}' # str |  (optional)
    content_type = 'application/json' # str |  (optional)
    country = 'US' # str | Filter by country code (optional)
    page = 1 # int | Page number (optional)
    per_page = 20 # int | Results per page (optional)

    try:
        # List Inventory Numbers
        api_instance.api_v1_account_auth_id_inventory_numbers_get(auth_id, x_auth_id=x_auth_id, x_auth_token=x_auth_token, content_type=content_type, country=country, page=page, per_page=per_page)
    except Exception as e:
        print("Exception when calling PhoneNumbersApi->api_v1_account_auth_id_inventory_numbers_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **auth_id** | **str**|  | 
 **x_auth_id** | **str**|  | [optional] 
 **x_auth_token** | **str**|  | [optional] 
 **content_type** | **str**|  | [optional] 
 **country** | **str**| Filter by country code | [optional] 
 **page** | **int**| Page number | [optional] 
 **per_page** | **int**| Results per page | [optional] 

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

# **api_v1_account_auth_id_numbers_e164_number_delete**
> api_v1_account_auth_id_numbers_e164_number_delete(auth_id, x_auth_id=x_auth_id, x_auth_token=x_auth_token, content_type=content_type)

Unrent a Phone Number

Release (unrent) a phone number from your account.

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
    api_instance = vobiz.PhoneNumbersApi(api_client)
    auth_id = 'auth_id_example' # str | 
    x_auth_id = '{{auth_id}}' # str |  (optional)
    x_auth_token = '{{auth_token}}' # str |  (optional)
    content_type = 'application/json' # str |  (optional)

    try:
        # Unrent a Phone Number
        api_instance.api_v1_account_auth_id_numbers_e164_number_delete(auth_id, x_auth_id=x_auth_id, x_auth_token=x_auth_token, content_type=content_type)
    except Exception as e:
        print("Exception when calling PhoneNumbersApi->api_v1_account_auth_id_numbers_e164_number_delete: %s\n" % e)
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

# **api_v1_account_auth_id_numbers_get**
> api_v1_account_auth_id_numbers_get(auth_id, x_auth_id=x_auth_id, x_auth_token=x_auth_token, content_type=content_type)

List Account Phone Numbers

Retrieve all phone numbers associated with your account.

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
    api_instance = vobiz.PhoneNumbersApi(api_client)
    auth_id = 'auth_id_example' # str | 
    x_auth_id = '{{auth_id}}' # str |  (optional)
    x_auth_token = '{{auth_token}}' # str |  (optional)
    content_type = 'application/json' # str |  (optional)

    try:
        # List Account Phone Numbers
        api_instance.api_v1_account_auth_id_numbers_get(auth_id, x_auth_id=x_auth_id, x_auth_token=x_auth_token, content_type=content_type)
    except Exception as e:
        print("Exception when calling PhoneNumbersApi->api_v1_account_auth_id_numbers_get: %s\n" % e)
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

# **api_v1_account_auth_id_numbers_purchase_from_inventory_post**
> api_v1_account_auth_id_numbers_purchase_from_inventory_post(auth_id, x_auth_id=x_auth_id, x_auth_token=x_auth_token, content_type=content_type, body=body)

Purchase from Inventory

Purchase a phone number from available inventory.

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
    api_instance = vobiz.PhoneNumbersApi(api_client)
    auth_id = 'auth_id_example' # str | 
    x_auth_id = '{{auth_id}}' # str |  (optional)
    x_auth_token = '{{auth_token}}' # str |  (optional)
    content_type = 'application/json' # str |  (optional)
    body = None # object |  (optional)

    try:
        # Purchase from Inventory
        api_instance.api_v1_account_auth_id_numbers_purchase_from_inventory_post(auth_id, x_auth_id=x_auth_id, x_auth_token=x_auth_token, content_type=content_type, body=body)
    except Exception as e:
        print("Exception when calling PhoneNumbersApi->api_v1_account_auth_id_numbers_purchase_from_inventory_post: %s\n" % e)
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

