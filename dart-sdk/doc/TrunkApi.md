# vobiz.api.TrunkApi

## Load the API package
```dart
import 'package:vobiz/api.dart';
```

All URIs are relative to *https://api.vobiz.ai*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV1AccountAccountIdCredentialsCredentialIdDelete**](TrunkApi.md#apiv1accountaccountidcredentialscredentialiddelete) | **DELETE** /api/v1/account/{account_id}/credentials/:credential_id | Delete a Credential
[**apiV1AccountAccountIdCredentialsCredentialIdPut**](TrunkApi.md#apiv1accountaccountidcredentialscredentialidput) | **PUT** /api/v1/account/{account_id}/credentials/:credential_id | Update a Credential
[**apiV1AccountAccountIdCredentialsPost**](TrunkApi.md#apiv1accountaccountidcredentialspost) | **POST** /api/v1/account/{account_id}/credentials | Create Credential
[**apiV1AccountAccountIdIpAclIpAclIdDelete**](TrunkApi.md#apiv1accountaccountidipaclipacliddelete) | **DELETE** /api/v1/account/{account_id}/ip-acl/:ip_acl_id | Delete an IP ACL
[**apiV1AccountAccountIdIpAclIpAclIdPut**](TrunkApi.md#apiv1accountaccountidipaclipaclidput) | **PUT** /api/v1/account/{account_id}/ip-acl/:ip_acl_id | Update an IP ACL
[**apiV1AccountAccountIdIpAclPost**](TrunkApi.md#apiv1accountaccountidipaclpost) | **POST** /api/v1/account/{account_id}/ip-acl | Create IP ACL
[**apiV1AccountAccountIdNumbersAssignDelete**](TrunkApi.md#apiv1accountaccountidnumbersassigndelete) | **DELETE** /api/v1/account/{account_id}/numbers/{}/assign | Unassign Number from Trunk
[**apiV1AccountAccountIdNumbersAssignPost**](TrunkApi.md#apiv1accountaccountidnumbersassignpost) | **POST** /api/v1/account/{account_id}/numbers/{}/assign | Assign Number to Trunk
[**apiV1AccountAccountIdOriginationUrisPost**](TrunkApi.md#apiv1accountaccountidoriginationurispost) | **POST** /api/v1/account/{account_id}/origination-uris | Create Origination URI
[**apiV1AccountAccountIdOriginationUrisUriIdDelete**](TrunkApi.md#apiv1accountaccountidoriginationurisuriiddelete) | **DELETE** /api/v1/account/{account_id}/origination-uris/:uri_id | Delete an Origination URI
[**apiV1AccountAccountIdOriginationUrisUriIdPut**](TrunkApi.md#apiv1accountaccountidoriginationurisuriidput) | **PUT** /api/v1/account/{account_id}/origination-uris/:uri_id | Update an Origination URI
[**apiV1AccountAccountIdTrunksCredentialsGet**](TrunkApi.md#apiv1accountaccountidtrunkscredentialsget) | **GET** /api/v1/account/{account_id}/trunks/credentials | List All Credentials
[**apiV1AccountAccountIdTrunksGet**](TrunkApi.md#apiv1accountaccountidtrunksget) | **GET** /api/v1/account/{account_id}/trunks | List All Trunks
[**apiV1AccountAccountIdTrunksIpAclGet**](TrunkApi.md#apiv1accountaccountidtrunksipaclget) | **GET** /api/v1/account/{account_id}/trunks/ip-acl | List All IP ACLs
[**apiV1AccountAccountIdTrunksOriginationUrisGet**](TrunkApi.md#apiv1accountaccountidtrunksoriginationurisget) | **GET** /api/v1/account/{account_id}/trunks/origination-uris | List All Origination URIs
[**apiV1AccountAccountIdTrunksPost**](TrunkApi.md#apiv1accountaccountidtrunkspost) | **POST** /api/v1/account/{account_id}/trunks | Create Trunk
[**apiV1AccountAccountIdTrunksTrunkIdDelete**](TrunkApi.md#apiv1accountaccountidtrunkstrunkiddelete) | **DELETE** /api/v1/account/{account_id}/trunks/:trunk_id | Delete a Trunk
[**apiV1AccountAccountIdTrunksTrunkIdGet**](TrunkApi.md#apiv1accountaccountidtrunkstrunkidget) | **GET** /api/v1/account/{account_id}/trunks/:trunk_id | Retrieve a Trunk
[**apiV1AccountAccountIdTrunksTrunkIdPut**](TrunkApi.md#apiv1accountaccountidtrunkstrunkidput) | **PUT** /api/v1/account/{account_id}/trunks/:trunk_id | Update a Trunk


# **apiV1AccountAccountIdCredentialsCredentialIdDelete**
> apiV1AccountAccountIdCredentialsCredentialIdDelete(accountId, xAuthID, xAuthToken, contentType)

Delete a Credential

Delete a SIP credential. Returns 204 No Content.

### Example
```dart
import 'package:vobiz/api.dart';
// TODO Configure API key authorization: ApiKeyAuthID
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthID').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthID').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: ApiKeyAuthToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthToken').apiKeyPrefix = 'Bearer';

final api_instance = TrunkApi();
final accountId = accountId_example; // String | 
final xAuthID = {{auth_id}}; // String | 
final xAuthToken = {{auth_token}}; // String | 
final contentType = application/json; // String | 

try {
    api_instance.apiV1AccountAccountIdCredentialsCredentialIdDelete(accountId, xAuthID, xAuthToken, contentType);
} catch (e) {
    print('Exception when calling TrunkApi->apiV1AccountAccountIdCredentialsCredentialIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **String**|  | 
 **xAuthID** | **String**|  | [optional] 
 **xAuthToken** | **String**|  | [optional] 
 **contentType** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[ApiKeyAuthID](../README.md#ApiKeyAuthID), [ApiKeyAuthToken](../README.md#ApiKeyAuthToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1AccountAccountIdCredentialsCredentialIdPut**
> apiV1AccountAccountIdCredentialsCredentialIdPut(accountId, xAuthID, xAuthToken, contentType, body)

Update a Credential

Update SIP credential settings.

### Example
```dart
import 'package:vobiz/api.dart';
// TODO Configure API key authorization: ApiKeyAuthID
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthID').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthID').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: ApiKeyAuthToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthToken').apiKeyPrefix = 'Bearer';

final api_instance = TrunkApi();
final accountId = accountId_example; // String | 
final xAuthID = {{auth_id}}; // String | 
final xAuthToken = {{auth_token}}; // String | 
final contentType = application/json; // String | 
final body = Object(); // Object | 

try {
    api_instance.apiV1AccountAccountIdCredentialsCredentialIdPut(accountId, xAuthID, xAuthToken, contentType, body);
} catch (e) {
    print('Exception when calling TrunkApi->apiV1AccountAccountIdCredentialsCredentialIdPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **String**|  | 
 **xAuthID** | **String**|  | [optional] 
 **xAuthToken** | **String**|  | [optional] 
 **contentType** | **String**|  | [optional] 
 **body** | **Object**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[ApiKeyAuthID](../README.md#ApiKeyAuthID), [ApiKeyAuthToken](../README.md#ApiKeyAuthToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1AccountAccountIdCredentialsPost**
> apiV1AccountAccountIdCredentialsPost(accountId, xAuthID, xAuthToken, contentType, body)

Create Credential

Create SIP authentication credentials for a trunk.

### Example
```dart
import 'package:vobiz/api.dart';
// TODO Configure API key authorization: ApiKeyAuthID
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthID').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthID').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: ApiKeyAuthToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthToken').apiKeyPrefix = 'Bearer';

final api_instance = TrunkApi();
final accountId = accountId_example; // String | 
final xAuthID = {{auth_id}}; // String | 
final xAuthToken = {{auth_token}}; // String | 
final contentType = application/json; // String | 
final body = Object(); // Object | 

try {
    api_instance.apiV1AccountAccountIdCredentialsPost(accountId, xAuthID, xAuthToken, contentType, body);
} catch (e) {
    print('Exception when calling TrunkApi->apiV1AccountAccountIdCredentialsPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **String**|  | 
 **xAuthID** | **String**|  | [optional] 
 **xAuthToken** | **String**|  | [optional] 
 **contentType** | **String**|  | [optional] 
 **body** | **Object**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[ApiKeyAuthID](../README.md#ApiKeyAuthID), [ApiKeyAuthToken](../README.md#ApiKeyAuthToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1AccountAccountIdIpAclIpAclIdDelete**
> apiV1AccountAccountIdIpAclIpAclIdDelete(accountId, xAuthID, xAuthToken, contentType)

Delete an IP ACL

Delete an IP ACL entry. Returns 204 No Content.

### Example
```dart
import 'package:vobiz/api.dart';
// TODO Configure API key authorization: ApiKeyAuthID
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthID').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthID').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: ApiKeyAuthToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthToken').apiKeyPrefix = 'Bearer';

final api_instance = TrunkApi();
final accountId = accountId_example; // String | 
final xAuthID = {{auth_id}}; // String | 
final xAuthToken = {{auth_token}}; // String | 
final contentType = application/json; // String | 

try {
    api_instance.apiV1AccountAccountIdIpAclIpAclIdDelete(accountId, xAuthID, xAuthToken, contentType);
} catch (e) {
    print('Exception when calling TrunkApi->apiV1AccountAccountIdIpAclIpAclIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **String**|  | 
 **xAuthID** | **String**|  | [optional] 
 **xAuthToken** | **String**|  | [optional] 
 **contentType** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[ApiKeyAuthID](../README.md#ApiKeyAuthID), [ApiKeyAuthToken](../README.md#ApiKeyAuthToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1AccountAccountIdIpAclIpAclIdPut**
> apiV1AccountAccountIdIpAclIpAclIdPut(accountId, xAuthID, xAuthToken, contentType, body)

Update an IP ACL

Update an IP ACL entry.

### Example
```dart
import 'package:vobiz/api.dart';
// TODO Configure API key authorization: ApiKeyAuthID
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthID').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthID').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: ApiKeyAuthToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthToken').apiKeyPrefix = 'Bearer';

final api_instance = TrunkApi();
final accountId = accountId_example; // String | 
final xAuthID = {{auth_id}}; // String | 
final xAuthToken = {{auth_token}}; // String | 
final contentType = application/json; // String | 
final body = Object(); // Object | 

try {
    api_instance.apiV1AccountAccountIdIpAclIpAclIdPut(accountId, xAuthID, xAuthToken, contentType, body);
} catch (e) {
    print('Exception when calling TrunkApi->apiV1AccountAccountIdIpAclIpAclIdPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **String**|  | 
 **xAuthID** | **String**|  | [optional] 
 **xAuthToken** | **String**|  | [optional] 
 **contentType** | **String**|  | [optional] 
 **body** | **Object**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[ApiKeyAuthID](../README.md#ApiKeyAuthID), [ApiKeyAuthToken](../README.md#ApiKeyAuthToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1AccountAccountIdIpAclPost**
> apiV1AccountAccountIdIpAclPost(accountId, xAuthID, xAuthToken, contentType, body)

Create IP ACL

Create an IP Access Control List entry for trunk authentication.

### Example
```dart
import 'package:vobiz/api.dart';
// TODO Configure API key authorization: ApiKeyAuthID
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthID').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthID').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: ApiKeyAuthToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthToken').apiKeyPrefix = 'Bearer';

final api_instance = TrunkApi();
final accountId = accountId_example; // String | 
final xAuthID = {{auth_id}}; // String | 
final xAuthToken = {{auth_token}}; // String | 
final contentType = application/json; // String | 
final body = Object(); // Object | 

try {
    api_instance.apiV1AccountAccountIdIpAclPost(accountId, xAuthID, xAuthToken, contentType, body);
} catch (e) {
    print('Exception when calling TrunkApi->apiV1AccountAccountIdIpAclPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **String**|  | 
 **xAuthID** | **String**|  | [optional] 
 **xAuthToken** | **String**|  | [optional] 
 **contentType** | **String**|  | [optional] 
 **body** | **Object**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[ApiKeyAuthID](../README.md#ApiKeyAuthID), [ApiKeyAuthToken](../README.md#ApiKeyAuthToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1AccountAccountIdNumbersAssignDelete**
> apiV1AccountAccountIdNumbersAssignDelete(accountId, xAuthID, xAuthToken, contentType)

Unassign Number from Trunk

Remove a phone number from its trunk assignment. Returns 204 No Content.

### Example
```dart
import 'package:vobiz/api.dart';
// TODO Configure API key authorization: ApiKeyAuthID
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthID').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthID').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: ApiKeyAuthToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthToken').apiKeyPrefix = 'Bearer';

final api_instance = TrunkApi();
final accountId = accountId_example; // String | 
final xAuthID = {{auth_id}}; // String | 
final xAuthToken = {{auth_token}}; // String | 
final contentType = application/json; // String | 

try {
    api_instance.apiV1AccountAccountIdNumbersAssignDelete(accountId, xAuthID, xAuthToken, contentType);
} catch (e) {
    print('Exception when calling TrunkApi->apiV1AccountAccountIdNumbersAssignDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **String**|  | 
 **xAuthID** | **String**|  | [optional] 
 **xAuthToken** | **String**|  | [optional] 
 **contentType** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[ApiKeyAuthID](../README.md#ApiKeyAuthID), [ApiKeyAuthToken](../README.md#ApiKeyAuthToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1AccountAccountIdNumbersAssignPost**
> apiV1AccountAccountIdNumbersAssignPost(accountId, xAuthID, xAuthToken, contentType, body)

Assign Number to Trunk

Assign a phone number to a trunk group.

### Example
```dart
import 'package:vobiz/api.dart';
// TODO Configure API key authorization: ApiKeyAuthID
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthID').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthID').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: ApiKeyAuthToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthToken').apiKeyPrefix = 'Bearer';

final api_instance = TrunkApi();
final accountId = accountId_example; // String | 
final xAuthID = {{auth_id}}; // String | 
final xAuthToken = {{auth_token}}; // String | 
final contentType = application/json; // String | 
final body = Object(); // Object | 

try {
    api_instance.apiV1AccountAccountIdNumbersAssignPost(accountId, xAuthID, xAuthToken, contentType, body);
} catch (e) {
    print('Exception when calling TrunkApi->apiV1AccountAccountIdNumbersAssignPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **String**|  | 
 **xAuthID** | **String**|  | [optional] 
 **xAuthToken** | **String**|  | [optional] 
 **contentType** | **String**|  | [optional] 
 **body** | **Object**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[ApiKeyAuthID](../README.md#ApiKeyAuthID), [ApiKeyAuthToken](../README.md#ApiKeyAuthToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1AccountAccountIdOriginationUrisPost**
> apiV1AccountAccountIdOriginationUrisPost(accountId, xAuthID, xAuthToken, contentType, body)

Create Origination URI

Create an origination URI for inbound SIP routing.

### Example
```dart
import 'package:vobiz/api.dart';
// TODO Configure API key authorization: ApiKeyAuthID
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthID').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthID').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: ApiKeyAuthToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthToken').apiKeyPrefix = 'Bearer';

final api_instance = TrunkApi();
final accountId = accountId_example; // String | 
final xAuthID = {{auth_id}}; // String | 
final xAuthToken = {{auth_token}}; // String | 
final contentType = application/json; // String | 
final body = Object(); // Object | 

try {
    api_instance.apiV1AccountAccountIdOriginationUrisPost(accountId, xAuthID, xAuthToken, contentType, body);
} catch (e) {
    print('Exception when calling TrunkApi->apiV1AccountAccountIdOriginationUrisPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **String**|  | 
 **xAuthID** | **String**|  | [optional] 
 **xAuthToken** | **String**|  | [optional] 
 **contentType** | **String**|  | [optional] 
 **body** | **Object**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[ApiKeyAuthID](../README.md#ApiKeyAuthID), [ApiKeyAuthToken](../README.md#ApiKeyAuthToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1AccountAccountIdOriginationUrisUriIdDelete**
> apiV1AccountAccountIdOriginationUrisUriIdDelete(accountId, xAuthID, xAuthToken, contentType)

Delete an Origination URI

Delete an origination URI. Returns 204 No Content.

### Example
```dart
import 'package:vobiz/api.dart';
// TODO Configure API key authorization: ApiKeyAuthID
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthID').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthID').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: ApiKeyAuthToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthToken').apiKeyPrefix = 'Bearer';

final api_instance = TrunkApi();
final accountId = accountId_example; // String | 
final xAuthID = {{auth_id}}; // String | 
final xAuthToken = {{auth_token}}; // String | 
final contentType = application/json; // String | 

try {
    api_instance.apiV1AccountAccountIdOriginationUrisUriIdDelete(accountId, xAuthID, xAuthToken, contentType);
} catch (e) {
    print('Exception when calling TrunkApi->apiV1AccountAccountIdOriginationUrisUriIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **String**|  | 
 **xAuthID** | **String**|  | [optional] 
 **xAuthToken** | **String**|  | [optional] 
 **contentType** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[ApiKeyAuthID](../README.md#ApiKeyAuthID), [ApiKeyAuthToken](../README.md#ApiKeyAuthToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1AccountAccountIdOriginationUrisUriIdPut**
> apiV1AccountAccountIdOriginationUrisUriIdPut(accountId, xAuthID, xAuthToken, contentType, body)

Update an Origination URI

Update an origination URI.

### Example
```dart
import 'package:vobiz/api.dart';
// TODO Configure API key authorization: ApiKeyAuthID
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthID').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthID').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: ApiKeyAuthToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthToken').apiKeyPrefix = 'Bearer';

final api_instance = TrunkApi();
final accountId = accountId_example; // String | 
final xAuthID = {{auth_id}}; // String | 
final xAuthToken = {{auth_token}}; // String | 
final contentType = application/json; // String | 
final body = Object(); // Object | 

try {
    api_instance.apiV1AccountAccountIdOriginationUrisUriIdPut(accountId, xAuthID, xAuthToken, contentType, body);
} catch (e) {
    print('Exception when calling TrunkApi->apiV1AccountAccountIdOriginationUrisUriIdPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **String**|  | 
 **xAuthID** | **String**|  | [optional] 
 **xAuthToken** | **String**|  | [optional] 
 **contentType** | **String**|  | [optional] 
 **body** | **Object**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[ApiKeyAuthID](../README.md#ApiKeyAuthID), [ApiKeyAuthToken](../README.md#ApiKeyAuthToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1AccountAccountIdTrunksCredentialsGet**
> apiV1AccountAccountIdTrunksCredentialsGet(accountId, xAuthID, xAuthToken, contentType, limit, offset)

List All Credentials

Retrieve all SIP credentials.

### Example
```dart
import 'package:vobiz/api.dart';
// TODO Configure API key authorization: ApiKeyAuthID
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthID').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthID').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: ApiKeyAuthToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthToken').apiKeyPrefix = 'Bearer';

final api_instance = TrunkApi();
final accountId = accountId_example; // String | 
final xAuthID = {{auth_id}}; // String | 
final xAuthToken = {{auth_token}}; // String | 
final contentType = application/json; // String | 
final limit = 20; // int | Results per page
final offset = 0; // int | Pagination offset

try {
    api_instance.apiV1AccountAccountIdTrunksCredentialsGet(accountId, xAuthID, xAuthToken, contentType, limit, offset);
} catch (e) {
    print('Exception when calling TrunkApi->apiV1AccountAccountIdTrunksCredentialsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **String**|  | 
 **xAuthID** | **String**|  | [optional] 
 **xAuthToken** | **String**|  | [optional] 
 **contentType** | **String**|  | [optional] 
 **limit** | **int**| Results per page | [optional] 
 **offset** | **int**| Pagination offset | [optional] 

### Return type

void (empty response body)

### Authorization

[ApiKeyAuthID](../README.md#ApiKeyAuthID), [ApiKeyAuthToken](../README.md#ApiKeyAuthToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1AccountAccountIdTrunksGet**
> apiV1AccountAccountIdTrunksGet(accountId, xAuthID, xAuthToken, contentType, limit, offset)

List All Trunks

Retrieve all trunks.

### Example
```dart
import 'package:vobiz/api.dart';
// TODO Configure API key authorization: ApiKeyAuthID
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthID').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthID').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: ApiKeyAuthToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthToken').apiKeyPrefix = 'Bearer';

final api_instance = TrunkApi();
final accountId = accountId_example; // String | 
final xAuthID = {{auth_id}}; // String | 
final xAuthToken = {{auth_token}}; // String | 
final contentType = application/json; // String | 
final limit = 20; // int | Results per page
final offset = 0; // int | Pagination offset

try {
    api_instance.apiV1AccountAccountIdTrunksGet(accountId, xAuthID, xAuthToken, contentType, limit, offset);
} catch (e) {
    print('Exception when calling TrunkApi->apiV1AccountAccountIdTrunksGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **String**|  | 
 **xAuthID** | **String**|  | [optional] 
 **xAuthToken** | **String**|  | [optional] 
 **contentType** | **String**|  | [optional] 
 **limit** | **int**| Results per page | [optional] 
 **offset** | **int**| Pagination offset | [optional] 

### Return type

void (empty response body)

### Authorization

[ApiKeyAuthID](../README.md#ApiKeyAuthID), [ApiKeyAuthToken](../README.md#ApiKeyAuthToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1AccountAccountIdTrunksIpAclGet**
> apiV1AccountAccountIdTrunksIpAclGet(accountId, xAuthID, xAuthToken, contentType, limit, offset)

List All IP ACLs

Retrieve all IP ACL entries.

### Example
```dart
import 'package:vobiz/api.dart';
// TODO Configure API key authorization: ApiKeyAuthID
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthID').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthID').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: ApiKeyAuthToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthToken').apiKeyPrefix = 'Bearer';

final api_instance = TrunkApi();
final accountId = accountId_example; // String | 
final xAuthID = {{auth_id}}; // String | 
final xAuthToken = {{auth_token}}; // String | 
final contentType = application/json; // String | 
final limit = 20; // int | Results per page
final offset = 0; // int | Pagination offset

try {
    api_instance.apiV1AccountAccountIdTrunksIpAclGet(accountId, xAuthID, xAuthToken, contentType, limit, offset);
} catch (e) {
    print('Exception when calling TrunkApi->apiV1AccountAccountIdTrunksIpAclGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **String**|  | 
 **xAuthID** | **String**|  | [optional] 
 **xAuthToken** | **String**|  | [optional] 
 **contentType** | **String**|  | [optional] 
 **limit** | **int**| Results per page | [optional] 
 **offset** | **int**| Pagination offset | [optional] 

### Return type

void (empty response body)

### Authorization

[ApiKeyAuthID](../README.md#ApiKeyAuthID), [ApiKeyAuthToken](../README.md#ApiKeyAuthToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1AccountAccountIdTrunksOriginationUrisGet**
> apiV1AccountAccountIdTrunksOriginationUrisGet(accountId, xAuthID, xAuthToken, contentType, limit, offset)

List All Origination URIs

Retrieve all origination URIs.

### Example
```dart
import 'package:vobiz/api.dart';
// TODO Configure API key authorization: ApiKeyAuthID
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthID').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthID').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: ApiKeyAuthToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthToken').apiKeyPrefix = 'Bearer';

final api_instance = TrunkApi();
final accountId = accountId_example; // String | 
final xAuthID = {{auth_id}}; // String | 
final xAuthToken = {{auth_token}}; // String | 
final contentType = application/json; // String | 
final limit = 20; // int | Results per page
final offset = 0; // int | Pagination offset

try {
    api_instance.apiV1AccountAccountIdTrunksOriginationUrisGet(accountId, xAuthID, xAuthToken, contentType, limit, offset);
} catch (e) {
    print('Exception when calling TrunkApi->apiV1AccountAccountIdTrunksOriginationUrisGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **String**|  | 
 **xAuthID** | **String**|  | [optional] 
 **xAuthToken** | **String**|  | [optional] 
 **contentType** | **String**|  | [optional] 
 **limit** | **int**| Results per page | [optional] 
 **offset** | **int**| Pagination offset | [optional] 

### Return type

void (empty response body)

### Authorization

[ApiKeyAuthID](../README.md#ApiKeyAuthID), [ApiKeyAuthToken](../README.md#ApiKeyAuthToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1AccountAccountIdTrunksPost**
> apiV1AccountAccountIdTrunksPost(accountId, xAuthID, xAuthToken, contentType, body)

Create Trunk

Create a new SIP trunk.

### Example
```dart
import 'package:vobiz/api.dart';
// TODO Configure API key authorization: ApiKeyAuthID
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthID').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthID').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: ApiKeyAuthToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthToken').apiKeyPrefix = 'Bearer';

final api_instance = TrunkApi();
final accountId = accountId_example; // String | 
final xAuthID = {{auth_id}}; // String | 
final xAuthToken = {{auth_token}}; // String | 
final contentType = application/json; // String | 
final body = Object(); // Object | 

try {
    api_instance.apiV1AccountAccountIdTrunksPost(accountId, xAuthID, xAuthToken, contentType, body);
} catch (e) {
    print('Exception when calling TrunkApi->apiV1AccountAccountIdTrunksPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **String**|  | 
 **xAuthID** | **String**|  | [optional] 
 **xAuthToken** | **String**|  | [optional] 
 **contentType** | **String**|  | [optional] 
 **body** | **Object**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[ApiKeyAuthID](../README.md#ApiKeyAuthID), [ApiKeyAuthToken](../README.md#ApiKeyAuthToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1AccountAccountIdTrunksTrunkIdDelete**
> apiV1AccountAccountIdTrunksTrunkIdDelete(accountId, xAuthID, xAuthToken, contentType)

Delete a Trunk

Delete a trunk. Returns 204 No Content.

### Example
```dart
import 'package:vobiz/api.dart';
// TODO Configure API key authorization: ApiKeyAuthID
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthID').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthID').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: ApiKeyAuthToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthToken').apiKeyPrefix = 'Bearer';

final api_instance = TrunkApi();
final accountId = accountId_example; // String | 
final xAuthID = {{auth_id}}; // String | 
final xAuthToken = {{auth_token}}; // String | 
final contentType = application/json; // String | 

try {
    api_instance.apiV1AccountAccountIdTrunksTrunkIdDelete(accountId, xAuthID, xAuthToken, contentType);
} catch (e) {
    print('Exception when calling TrunkApi->apiV1AccountAccountIdTrunksTrunkIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **String**|  | 
 **xAuthID** | **String**|  | [optional] 
 **xAuthToken** | **String**|  | [optional] 
 **contentType** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[ApiKeyAuthID](../README.md#ApiKeyAuthID), [ApiKeyAuthToken](../README.md#ApiKeyAuthToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1AccountAccountIdTrunksTrunkIdGet**
> apiV1AccountAccountIdTrunksTrunkIdGet(accountId, xAuthID, xAuthToken, contentType)

Retrieve a Trunk

Get details of a specific trunk.

### Example
```dart
import 'package:vobiz/api.dart';
// TODO Configure API key authorization: ApiKeyAuthID
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthID').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthID').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: ApiKeyAuthToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthToken').apiKeyPrefix = 'Bearer';

final api_instance = TrunkApi();
final accountId = accountId_example; // String | 
final xAuthID = {{auth_id}}; // String | 
final xAuthToken = {{auth_token}}; // String | 
final contentType = application/json; // String | 

try {
    api_instance.apiV1AccountAccountIdTrunksTrunkIdGet(accountId, xAuthID, xAuthToken, contentType);
} catch (e) {
    print('Exception when calling TrunkApi->apiV1AccountAccountIdTrunksTrunkIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **String**|  | 
 **xAuthID** | **String**|  | [optional] 
 **xAuthToken** | **String**|  | [optional] 
 **contentType** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[ApiKeyAuthID](../README.md#ApiKeyAuthID), [ApiKeyAuthToken](../README.md#ApiKeyAuthToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1AccountAccountIdTrunksTrunkIdPut**
> apiV1AccountAccountIdTrunksTrunkIdPut(accountId, xAuthID, xAuthToken, contentType, body)

Update a Trunk

Update an existing trunk.

### Example
```dart
import 'package:vobiz/api.dart';
// TODO Configure API key authorization: ApiKeyAuthID
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthID').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthID').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: ApiKeyAuthToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuthToken').apiKeyPrefix = 'Bearer';

final api_instance = TrunkApi();
final accountId = accountId_example; // String | 
final xAuthID = {{auth_id}}; // String | 
final xAuthToken = {{auth_token}}; // String | 
final contentType = application/json; // String | 
final body = Object(); // Object | 

try {
    api_instance.apiV1AccountAccountIdTrunksTrunkIdPut(accountId, xAuthID, xAuthToken, contentType, body);
} catch (e) {
    print('Exception when calling TrunkApi->apiV1AccountAccountIdTrunksTrunkIdPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **String**|  | 
 **xAuthID** | **String**|  | [optional] 
 **xAuthToken** | **String**|  | [optional] 
 **contentType** | **String**|  | [optional] 
 **body** | **Object**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[ApiKeyAuthID](../README.md#ApiKeyAuthID), [ApiKeyAuthToken](../README.md#ApiKeyAuthToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

