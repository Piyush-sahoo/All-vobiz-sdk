# Vobiz.Api.TrunkApi

All URIs are relative to *https://api.vobiz.ai*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**ApiV1AccountAccountIdCredentialsCredentialIdDelete**](TrunkApi.md#apiv1accountaccountidcredentialscredentialiddelete) | **DELETE** /api/v1/account/{account_id}/credentials/:credential_id | Delete a Credential |
| [**ApiV1AccountAccountIdCredentialsCredentialIdPut**](TrunkApi.md#apiv1accountaccountidcredentialscredentialidput) | **PUT** /api/v1/account/{account_id}/credentials/:credential_id | Update a Credential |
| [**ApiV1AccountAccountIdCredentialsPost**](TrunkApi.md#apiv1accountaccountidcredentialspost) | **POST** /api/v1/account/{account_id}/credentials | Create Credential |
| [**ApiV1AccountAccountIdIpAclIpAclIdDelete**](TrunkApi.md#apiv1accountaccountidipaclipacliddelete) | **DELETE** /api/v1/account/{account_id}/ip-acl/:ip_acl_id | Delete an IP ACL |
| [**ApiV1AccountAccountIdIpAclIpAclIdPut**](TrunkApi.md#apiv1accountaccountidipaclipaclidput) | **PUT** /api/v1/account/{account_id}/ip-acl/:ip_acl_id | Update an IP ACL |
| [**ApiV1AccountAccountIdIpAclPost**](TrunkApi.md#apiv1accountaccountidipaclpost) | **POST** /api/v1/account/{account_id}/ip-acl | Create IP ACL |
| [**ApiV1AccountAccountIdNumbersAssignDelete**](TrunkApi.md#apiv1accountaccountidnumbersassigndelete) | **DELETE** /api/v1/account/{account_id}/numbers/{}/assign | Unassign Number from Trunk |
| [**ApiV1AccountAccountIdNumbersAssignPost**](TrunkApi.md#apiv1accountaccountidnumbersassignpost) | **POST** /api/v1/account/{account_id}/numbers/{}/assign | Assign Number to Trunk |
| [**ApiV1AccountAccountIdOriginationUrisPost**](TrunkApi.md#apiv1accountaccountidoriginationurispost) | **POST** /api/v1/account/{account_id}/origination-uris | Create Origination URI |
| [**ApiV1AccountAccountIdOriginationUrisUriIdDelete**](TrunkApi.md#apiv1accountaccountidoriginationurisuriiddelete) | **DELETE** /api/v1/account/{account_id}/origination-uris/:uri_id | Delete an Origination URI |
| [**ApiV1AccountAccountIdOriginationUrisUriIdPut**](TrunkApi.md#apiv1accountaccountidoriginationurisuriidput) | **PUT** /api/v1/account/{account_id}/origination-uris/:uri_id | Update an Origination URI |
| [**ApiV1AccountAccountIdTrunksCredentialsGet**](TrunkApi.md#apiv1accountaccountidtrunkscredentialsget) | **GET** /api/v1/account/{account_id}/trunks/credentials | List All Credentials |
| [**ApiV1AccountAccountIdTrunksGet**](TrunkApi.md#apiv1accountaccountidtrunksget) | **GET** /api/v1/account/{account_id}/trunks | List All Trunks |
| [**ApiV1AccountAccountIdTrunksIpAclGet**](TrunkApi.md#apiv1accountaccountidtrunksipaclget) | **GET** /api/v1/account/{account_id}/trunks/ip-acl | List All IP ACLs |
| [**ApiV1AccountAccountIdTrunksOriginationUrisGet**](TrunkApi.md#apiv1accountaccountidtrunksoriginationurisget) | **GET** /api/v1/account/{account_id}/trunks/origination-uris | List All Origination URIs |
| [**ApiV1AccountAccountIdTrunksPost**](TrunkApi.md#apiv1accountaccountidtrunkspost) | **POST** /api/v1/account/{account_id}/trunks | Create Trunk |
| [**ApiV1AccountAccountIdTrunksTrunkIdDelete**](TrunkApi.md#apiv1accountaccountidtrunkstrunkiddelete) | **DELETE** /api/v1/account/{account_id}/trunks/:trunk_id | Delete a Trunk |
| [**ApiV1AccountAccountIdTrunksTrunkIdGet**](TrunkApi.md#apiv1accountaccountidtrunkstrunkidget) | **GET** /api/v1/account/{account_id}/trunks/:trunk_id | Retrieve a Trunk |
| [**ApiV1AccountAccountIdTrunksTrunkIdPut**](TrunkApi.md#apiv1accountaccountidtrunkstrunkidput) | **PUT** /api/v1/account/{account_id}/trunks/:trunk_id | Update a Trunk |

<a id="apiv1accountaccountidcredentialscredentialiddelete"></a>
# **ApiV1AccountAccountIdCredentialsCredentialIdDelete**
> void ApiV1AccountAccountIdCredentialsCredentialIdDelete (string accountId, string xAuthID = null, string xAuthToken = null, string contentType = null)

Delete a Credential

Delete a SIP credential. Returns 204 No Content.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **accountId** | **string** |  |  |
| **xAuthID** | **string** |  | [optional]  |
| **xAuthToken** | **string** |  | [optional]  |
| **contentType** | **string** |  | [optional]  |

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
| **200** | Successful response |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="apiv1accountaccountidcredentialscredentialidput"></a>
# **ApiV1AccountAccountIdCredentialsCredentialIdPut**
> void ApiV1AccountAccountIdCredentialsCredentialIdPut (string accountId, string xAuthID = null, string xAuthToken = null, string contentType = null, Object body = null)

Update a Credential

Update SIP credential settings.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **accountId** | **string** |  |  |
| **xAuthID** | **string** |  | [optional]  |
| **xAuthToken** | **string** |  | [optional]  |
| **contentType** | **string** |  | [optional]  |
| **body** | **Object** |  | [optional]  |

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
| **200** | Successful response |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="apiv1accountaccountidcredentialspost"></a>
# **ApiV1AccountAccountIdCredentialsPost**
> void ApiV1AccountAccountIdCredentialsPost (string accountId, string xAuthID = null, string xAuthToken = null, string contentType = null, Object body = null)

Create Credential

Create SIP authentication credentials for a trunk.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **accountId** | **string** |  |  |
| **xAuthID** | **string** |  | [optional]  |
| **xAuthToken** | **string** |  | [optional]  |
| **contentType** | **string** |  | [optional]  |
| **body** | **Object** |  | [optional]  |

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
| **200** | Successful response |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="apiv1accountaccountidipaclipacliddelete"></a>
# **ApiV1AccountAccountIdIpAclIpAclIdDelete**
> void ApiV1AccountAccountIdIpAclIpAclIdDelete (string accountId, string xAuthID = null, string xAuthToken = null, string contentType = null)

Delete an IP ACL

Delete an IP ACL entry. Returns 204 No Content.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **accountId** | **string** |  |  |
| **xAuthID** | **string** |  | [optional]  |
| **xAuthToken** | **string** |  | [optional]  |
| **contentType** | **string** |  | [optional]  |

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
| **200** | Successful response |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="apiv1accountaccountidipaclipaclidput"></a>
# **ApiV1AccountAccountIdIpAclIpAclIdPut**
> void ApiV1AccountAccountIdIpAclIpAclIdPut (string accountId, string xAuthID = null, string xAuthToken = null, string contentType = null, Object body = null)

Update an IP ACL

Update an IP ACL entry.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **accountId** | **string** |  |  |
| **xAuthID** | **string** |  | [optional]  |
| **xAuthToken** | **string** |  | [optional]  |
| **contentType** | **string** |  | [optional]  |
| **body** | **Object** |  | [optional]  |

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
| **200** | Successful response |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="apiv1accountaccountidipaclpost"></a>
# **ApiV1AccountAccountIdIpAclPost**
> void ApiV1AccountAccountIdIpAclPost (string accountId, string xAuthID = null, string xAuthToken = null, string contentType = null, Object body = null)

Create IP ACL

Create an IP Access Control List entry for trunk authentication.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **accountId** | **string** |  |  |
| **xAuthID** | **string** |  | [optional]  |
| **xAuthToken** | **string** |  | [optional]  |
| **contentType** | **string** |  | [optional]  |
| **body** | **Object** |  | [optional]  |

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
| **200** | Successful response |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="apiv1accountaccountidnumbersassigndelete"></a>
# **ApiV1AccountAccountIdNumbersAssignDelete**
> void ApiV1AccountAccountIdNumbersAssignDelete (string accountId, string xAuthID = null, string xAuthToken = null, string contentType = null)

Unassign Number from Trunk

Remove a phone number from its trunk assignment. Returns 204 No Content.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **accountId** | **string** |  |  |
| **xAuthID** | **string** |  | [optional]  |
| **xAuthToken** | **string** |  | [optional]  |
| **contentType** | **string** |  | [optional]  |

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
| **200** | Successful response |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="apiv1accountaccountidnumbersassignpost"></a>
# **ApiV1AccountAccountIdNumbersAssignPost**
> void ApiV1AccountAccountIdNumbersAssignPost (string accountId, string xAuthID = null, string xAuthToken = null, string contentType = null, Object body = null)

Assign Number to Trunk

Assign a phone number to a trunk group.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **accountId** | **string** |  |  |
| **xAuthID** | **string** |  | [optional]  |
| **xAuthToken** | **string** |  | [optional]  |
| **contentType** | **string** |  | [optional]  |
| **body** | **Object** |  | [optional]  |

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
| **200** | Successful response |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="apiv1accountaccountidoriginationurispost"></a>
# **ApiV1AccountAccountIdOriginationUrisPost**
> void ApiV1AccountAccountIdOriginationUrisPost (string accountId, string xAuthID = null, string xAuthToken = null, string contentType = null, Object body = null)

Create Origination URI

Create an origination URI for inbound SIP routing.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **accountId** | **string** |  |  |
| **xAuthID** | **string** |  | [optional]  |
| **xAuthToken** | **string** |  | [optional]  |
| **contentType** | **string** |  | [optional]  |
| **body** | **Object** |  | [optional]  |

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
| **200** | Successful response |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="apiv1accountaccountidoriginationurisuriiddelete"></a>
# **ApiV1AccountAccountIdOriginationUrisUriIdDelete**
> void ApiV1AccountAccountIdOriginationUrisUriIdDelete (string accountId, string xAuthID = null, string xAuthToken = null, string contentType = null)

Delete an Origination URI

Delete an origination URI. Returns 204 No Content.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **accountId** | **string** |  |  |
| **xAuthID** | **string** |  | [optional]  |
| **xAuthToken** | **string** |  | [optional]  |
| **contentType** | **string** |  | [optional]  |

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
| **200** | Successful response |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="apiv1accountaccountidoriginationurisuriidput"></a>
# **ApiV1AccountAccountIdOriginationUrisUriIdPut**
> void ApiV1AccountAccountIdOriginationUrisUriIdPut (string accountId, string xAuthID = null, string xAuthToken = null, string contentType = null, Object body = null)

Update an Origination URI

Update an origination URI.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **accountId** | **string** |  |  |
| **xAuthID** | **string** |  | [optional]  |
| **xAuthToken** | **string** |  | [optional]  |
| **contentType** | **string** |  | [optional]  |
| **body** | **Object** |  | [optional]  |

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
| **200** | Successful response |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="apiv1accountaccountidtrunkscredentialsget"></a>
# **ApiV1AccountAccountIdTrunksCredentialsGet**
> void ApiV1AccountAccountIdTrunksCredentialsGet (string accountId, string xAuthID = null, string xAuthToken = null, string contentType = null, int limit = null, int offset = null)

List All Credentials

Retrieve all SIP credentials.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **accountId** | **string** |  |  |
| **xAuthID** | **string** |  | [optional]  |
| **xAuthToken** | **string** |  | [optional]  |
| **contentType** | **string** |  | [optional]  |
| **limit** | **int** | Results per page | [optional]  |
| **offset** | **int** | Pagination offset | [optional]  |

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
| **200** | Successful response |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="apiv1accountaccountidtrunksget"></a>
# **ApiV1AccountAccountIdTrunksGet**
> void ApiV1AccountAccountIdTrunksGet (string accountId, string xAuthID = null, string xAuthToken = null, string contentType = null, int limit = null, int offset = null)

List All Trunks

Retrieve all trunks.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **accountId** | **string** |  |  |
| **xAuthID** | **string** |  | [optional]  |
| **xAuthToken** | **string** |  | [optional]  |
| **contentType** | **string** |  | [optional]  |
| **limit** | **int** | Results per page | [optional]  |
| **offset** | **int** | Pagination offset | [optional]  |

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
| **200** | Successful response |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="apiv1accountaccountidtrunksipaclget"></a>
# **ApiV1AccountAccountIdTrunksIpAclGet**
> void ApiV1AccountAccountIdTrunksIpAclGet (string accountId, string xAuthID = null, string xAuthToken = null, string contentType = null, int limit = null, int offset = null)

List All IP ACLs

Retrieve all IP ACL entries.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **accountId** | **string** |  |  |
| **xAuthID** | **string** |  | [optional]  |
| **xAuthToken** | **string** |  | [optional]  |
| **contentType** | **string** |  | [optional]  |
| **limit** | **int** | Results per page | [optional]  |
| **offset** | **int** | Pagination offset | [optional]  |

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
| **200** | Successful response |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="apiv1accountaccountidtrunksoriginationurisget"></a>
# **ApiV1AccountAccountIdTrunksOriginationUrisGet**
> void ApiV1AccountAccountIdTrunksOriginationUrisGet (string accountId, string xAuthID = null, string xAuthToken = null, string contentType = null, int limit = null, int offset = null)

List All Origination URIs

Retrieve all origination URIs.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **accountId** | **string** |  |  |
| **xAuthID** | **string** |  | [optional]  |
| **xAuthToken** | **string** |  | [optional]  |
| **contentType** | **string** |  | [optional]  |
| **limit** | **int** | Results per page | [optional]  |
| **offset** | **int** | Pagination offset | [optional]  |

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
| **200** | Successful response |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="apiv1accountaccountidtrunkspost"></a>
# **ApiV1AccountAccountIdTrunksPost**
> void ApiV1AccountAccountIdTrunksPost (string accountId, string xAuthID = null, string xAuthToken = null, string contentType = null, Object body = null)

Create Trunk

Create a new SIP trunk.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **accountId** | **string** |  |  |
| **xAuthID** | **string** |  | [optional]  |
| **xAuthToken** | **string** |  | [optional]  |
| **contentType** | **string** |  | [optional]  |
| **body** | **Object** |  | [optional]  |

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
| **200** | Successful response |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="apiv1accountaccountidtrunkstrunkiddelete"></a>
# **ApiV1AccountAccountIdTrunksTrunkIdDelete**
> void ApiV1AccountAccountIdTrunksTrunkIdDelete (string accountId, string xAuthID = null, string xAuthToken = null, string contentType = null)

Delete a Trunk

Delete a trunk. Returns 204 No Content.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **accountId** | **string** |  |  |
| **xAuthID** | **string** |  | [optional]  |
| **xAuthToken** | **string** |  | [optional]  |
| **contentType** | **string** |  | [optional]  |

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
| **200** | Successful response |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="apiv1accountaccountidtrunkstrunkidget"></a>
# **ApiV1AccountAccountIdTrunksTrunkIdGet**
> void ApiV1AccountAccountIdTrunksTrunkIdGet (string accountId, string xAuthID = null, string xAuthToken = null, string contentType = null)

Retrieve a Trunk

Get details of a specific trunk.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **accountId** | **string** |  |  |
| **xAuthID** | **string** |  | [optional]  |
| **xAuthToken** | **string** |  | [optional]  |
| **contentType** | **string** |  | [optional]  |

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
| **200** | Successful response |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="apiv1accountaccountidtrunkstrunkidput"></a>
# **ApiV1AccountAccountIdTrunksTrunkIdPut**
> void ApiV1AccountAccountIdTrunksTrunkIdPut (string accountId, string xAuthID = null, string xAuthToken = null, string contentType = null, Object body = null)

Update a Trunk

Update an existing trunk.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **accountId** | **string** |  |  |
| **xAuthID** | **string** |  | [optional]  |
| **xAuthToken** | **string** |  | [optional]  |
| **contentType** | **string** |  | [optional]  |
| **body** | **Object** |  | [optional]  |

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
| **200** | Successful response |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

