# VobizSDK

Complete Vobiz API collection covering all endpoints: Calls, Conferences, Recordings, Account, Phone Numbers, Applications, Endpoints, Trunks, Sub-Accounts, and CDR.

Base URL: https://api.vobiz.ai

Authentication: All requests require X-Auth-ID and X-Auth-Token headers.


## Installation & Usage

### Requirements

PHP 8.1 and later.

### Composer

To install the bindings via [Composer](https://getcomposer.org/), add the following to `composer.json`:

```json
{
  "repositories": [
    {
      "type": "vcs",
      "url": "https://github.com/GIT_USER_ID/GIT_REPO_ID.git"
    }
  ],
  "require": {
    "GIT_USER_ID/GIT_REPO_ID": "*@dev"
  }
}
```

Then run `composer install`

### Manual Installation

Download the files and include `autoload.php`:

```php
<?php
require_once('/path/to/VobizSDK/vendor/autoload.php');
```

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



// Configure API key authorization: ApiKeyAuthID
$config = Vobiz\Configuration::getDefaultConfiguration()->setApiKey('X-Auth-ID', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Vobiz\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-Auth-ID', 'Bearer');

// Configure API key authorization: ApiKeyAuthToken
$config = Vobiz\Configuration::getDefaultConfiguration()->setApiKey('X-Auth-Token', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Vobiz\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-Auth-Token', 'Bearer');


$apiInstance = new Vobiz\Api\AccountApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$account_id = 'account_id_example'; // string
$x_auth_id = {{auth_id}}; // string
$x_auth_token = {{auth_token}}; // string
$content_type = application/json; // string

try {
    $apiInstance->apiV1AccountAccountIdBalanceINRGet($account_id, $x_auth_id, $x_auth_token, $content_type);
} catch (Exception $e) {
    echo 'Exception when calling AccountApi->apiV1AccountAccountIdBalanceINRGet: ', $e->getMessage(), PHP_EOL;
}

```

## API Endpoints

All URIs are relative to *https://api.vobiz.ai*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AccountApi* | [**apiV1AccountAccountIdBalanceINRGet**](docs/Api/AccountApi.md#apiv1accountaccountidbalanceinrget) | **GET** /api/v1/account/{account_id}/balance/INR | Get Balance
*AccountApi* | [**apiV1AccountAccountIdTransactionsGet**](docs/Api/AccountApi.md#apiv1accountaccountidtransactionsget) | **GET** /api/v1/account/{account_id}/transactions | Get Transactions
*AccountApi* | [**apiV1AccountAuthIdConcurrencyGet**](docs/Api/AccountApi.md#apiv1accountauthidconcurrencyget) | **GET** /api/v1/account/{auth_id}/concurrency | Get Concurrency
*AccountApi* | [**apiV1AuthMeGet**](docs/Api/AccountApi.md#apiv1authmeget) | **GET** /api/v1/auth/me | Retrieve Account Details
*ApplicationApi* | [**apiV1AccountAuthIdApplicationDelete**](docs/Api/ApplicationApi.md#apiv1accountauthidapplicationdelete) | **DELETE** /api/v1/Account/{auth_id}/Application/{}/ | Delete an Application
*ApplicationApi* | [**apiV1AccountAuthIdApplicationGet**](docs/Api/ApplicationApi.md#apiv1accountauthidapplicationget) | **GET** /api/v1/Account/{auth_id}/Application/ | List All Applications
*ApplicationApi* | [**apiV1AccountAuthIdApplicationGet_0**](docs/Api/ApplicationApi.md#apiv1accountauthidapplicationget_0) | **GET** /api/v1/Account/{auth_id}/Application/{}/ | Retrieve an Application
*ApplicationApi* | [**apiV1AccountAuthIdApplicationPost**](docs/Api/ApplicationApi.md#apiv1accountauthidapplicationpost) | **POST** /api/v1/Account/{auth_id}/Application/ | Create Application
*ApplicationApi* | [**apiV1AccountAuthIdApplicationPost_0**](docs/Api/ApplicationApi.md#apiv1accountauthidapplicationpost_0) | **POST** /api/v1/Account/{auth_id}/Application/{}/ | Update an Application
*ApplicationApi* | [**apiV1AccountAuthIdNumbersApplicationDelete**](docs/Api/ApplicationApi.md#apiv1accountauthidnumbersapplicationdelete) | **DELETE** /api/v1/account/{auth_id}/numbers/{}/application | Unlink Number from Application
*ApplicationApi* | [**apiV1AccountAuthIdNumbersApplicationPost**](docs/Api/ApplicationApi.md#apiv1accountauthidnumbersapplicationpost) | **POST** /api/v1/account/{auth_id}/numbers/{}/application | Link Number to Application
*CDRApi* | [**apiV1AccountAccountIdCdrGet**](docs/Api/CDRApi.md#apiv1accountaccountidcdrget) | **GET** /api/v1/account/{account_id}/cdr | Get Call Detail Records
*CallApi* | [**apiV1AccountAuthIdCallDTMFPost**](docs/Api/CallApi.md#apiv1accountauthidcalldtmfpost) | **POST** /api/v1/Account/{auth_id}/Call/{}/DTMF/ | Send DTMF Digits
*CallApi* | [**apiV1AccountAuthIdCallDelete**](docs/Api/CallApi.md#apiv1accountauthidcalldelete) | **DELETE** /api/v1/Account/{auth_id}/Call/{}/ | Hang Up a Call
*CallApi* | [**apiV1AccountAuthIdCallGet**](docs/Api/CallApi.md#apiv1accountauthidcallget) | **GET** /api/v1/Account/{auth_id}/Call/ | Retrieve All Queued Calls
*CallApi* | [**apiV1AccountAuthIdCallGet_0**](docs/Api/CallApi.md#apiv1accountauthidcallget_0) | **GET** /api/v1/Account/{auth_id}/Call/{}/ | Retrieve a Queued Call
*CallApi* | [**apiV1AccountAuthIdCallPlayDelete**](docs/Api/CallApi.md#apiv1accountauthidcallplaydelete) | **DELETE** /api/v1/Account/{auth_id}/Call/{}/Play/ | Stop Playing Audio on a Call
*CallApi* | [**apiV1AccountAuthIdCallPlayPost**](docs/Api/CallApi.md#apiv1accountauthidcallplaypost) | **POST** /api/v1/Account/{auth_id}/Call/{}/Play/ | Play Audio on a Call
*CallApi* | [**apiV1AccountAuthIdCallPost**](docs/Api/CallApi.md#apiv1accountauthidcallpost) | **POST** /api/v1/Account/{auth_id}/Call/ | Make an Outbound Call
*CallApi* | [**apiV1AccountAuthIdCallPost_0**](docs/Api/CallApi.md#apiv1accountauthidcallpost_0) | **POST** /api/v1/Account/{auth_id}/Call/{}/ | Transfer a Call
*CallApi* | [**apiV1AccountAuthIdCallRecordDelete**](docs/Api/CallApi.md#apiv1accountauthidcallrecorddelete) | **DELETE** /api/v1/Account/{auth_id}/Call/{}/Record/ | Stop Recording a Call
*CallApi* | [**apiV1AccountAuthIdCallRecordPost**](docs/Api/CallApi.md#apiv1accountauthidcallrecordpost) | **POST** /api/v1/Account/{auth_id}/Call/{}/Record/ | Start Recording a Call
*CallApi* | [**apiV1AccountAuthIdCallSpeakDelete**](docs/Api/CallApi.md#apiv1accountauthidcallspeakdelete) | **DELETE** /api/v1/Account/{auth_id}/Call/{}/Speak/ | Stop Speaking Text on a Call
*CallApi* | [**apiV1AccountAuthIdCallSpeakPost**](docs/Api/CallApi.md#apiv1accountauthidcallspeakpost) | **POST** /api/v1/Account/{auth_id}/Call/{}/Speak/ | Speak Text on a Call (TTS)
*ConferenceApi* | [**apiV1AccountAuthIdConferenceDelete**](docs/Api/ConferenceApi.md#apiv1accountauthidconferencedelete) | **DELETE** /api/v1/Account/{auth_id}/Conference/ | Hang Up All Conferences
*ConferenceApi* | [**apiV1AccountAuthIdConferenceDelete_0**](docs/Api/ConferenceApi.md#apiv1accountauthidconferencedelete_0) | **DELETE** /api/v1/Account/{auth_id}/Conference/{}/ | Hang Up a Conference
*ConferenceApi* | [**apiV1AccountAuthIdConferenceGet**](docs/Api/ConferenceApi.md#apiv1accountauthidconferenceget) | **GET** /api/v1/Account/{auth_id}/Conference/ | List All Conferences
*ConferenceApi* | [**apiV1AccountAuthIdConferenceGet_0**](docs/Api/ConferenceApi.md#apiv1accountauthidconferenceget_0) | **GET** /api/v1/Account/{auth_id}/Conference/{}/ | Retrieve a Conference
*ConferenceApi* | [**apiV1AccountAuthIdConferenceMemberDeafDelete**](docs/Api/ConferenceApi.md#apiv1accountauthidconferencememberdeafdelete) | **DELETE** /api/v1/Account/{auth_id}/Conference/{}/Member/{}/Deaf/ | Undeaf a Conference Member
*ConferenceApi* | [**apiV1AccountAuthIdConferenceMemberDeafPost**](docs/Api/ConferenceApi.md#apiv1accountauthidconferencememberdeafpost) | **POST** /api/v1/Account/{auth_id}/Conference/{}/Member/{}/Deaf/ | Deaf a Conference Member
*ConferenceApi* | [**apiV1AccountAuthIdConferenceMemberDelete**](docs/Api/ConferenceApi.md#apiv1accountauthidconferencememberdelete) | **DELETE** /api/v1/Account/{auth_id}/Conference/{}/Member/{}/ | Hang Up a Conference Member
*ConferenceApi* | [**apiV1AccountAuthIdConferenceMemberKickPost**](docs/Api/ConferenceApi.md#apiv1accountauthidconferencememberkickpost) | **POST** /api/v1/Account/{auth_id}/Conference/{}/Member/{}/Kick/ | Kick a Conference Member
*ConferenceApi* | [**apiV1AccountAuthIdConferenceMemberMuteDelete**](docs/Api/ConferenceApi.md#apiv1accountauthidconferencemembermutedelete) | **DELETE** /api/v1/Account/{auth_id}/Conference/{}/Member/{}/Mute/ | Unmute a Conference Member
*ConferenceApi* | [**apiV1AccountAuthIdConferenceMemberMutePost**](docs/Api/ConferenceApi.md#apiv1accountauthidconferencemembermutepost) | **POST** /api/v1/Account/{auth_id}/Conference/{}/Member/{}/Mute/ | Mute a Conference Member
*ConferenceApi* | [**apiV1AccountAuthIdConferenceMemberPlayDelete**](docs/Api/ConferenceApi.md#apiv1accountauthidconferencememberplaydelete) | **DELETE** /api/v1/Account/{auth_id}/Conference/{}/Member/{}/Play/ | Stop Playing Audio to a Conference Member
*ConferenceApi* | [**apiV1AccountAuthIdConferenceMemberPlayPost**](docs/Api/ConferenceApi.md#apiv1accountauthidconferencememberplaypost) | **POST** /api/v1/Account/{auth_id}/Conference/{}/Member/{}/Play/ | Play Audio to a Conference Member
*ConferenceApi* | [**apiV1AccountAuthIdConferenceRecordDelete**](docs/Api/ConferenceApi.md#apiv1accountauthidconferencerecorddelete) | **DELETE** /api/v1/Account/{auth_id}/Conference/{}/Record/ | Stop Conference Recording
*ConferenceApi* | [**apiV1AccountAuthIdConferenceRecordPost**](docs/Api/ConferenceApi.md#apiv1accountauthidconferencerecordpost) | **POST** /api/v1/Account/{auth_id}/Conference/{}/Record/ | Start Conference Recording
*EndpointApi* | [**apiV1AccountAuthIdEndpointDelete**](docs/Api/EndpointApi.md#apiv1accountauthidendpointdelete) | **DELETE** /api/v1/Account/{auth_id}/Endpoint/{}/ | Delete an Endpoint
*EndpointApi* | [**apiV1AccountAuthIdEndpointGet**](docs/Api/EndpointApi.md#apiv1accountauthidendpointget) | **GET** /api/v1/Account/{auth_id}/Endpoint/ | List All Endpoints
*EndpointApi* | [**apiV1AccountAuthIdEndpointGet_0**](docs/Api/EndpointApi.md#apiv1accountauthidendpointget_0) | **GET** /api/v1/Account/{auth_id}/Endpoint/{}/ | Retrieve an Endpoint
*EndpointApi* | [**apiV1AccountAuthIdEndpointPost**](docs/Api/EndpointApi.md#apiv1accountauthidendpointpost) | **POST** /api/v1/Account/{auth_id}/Endpoint/ | Create Endpoint
*EndpointApi* | [**apiV1AccountAuthIdEndpointPost_0**](docs/Api/EndpointApi.md#apiv1accountauthidendpointpost_0) | **POST** /api/v1/Account/{auth_id}/Endpoint/{}/ | Update an Endpoint
*PhoneNumbersApi* | [**apiV1AccountAuthIdInventoryNumbersGet**](docs/Api/PhoneNumbersApi.md#apiv1accountauthidinventorynumbersget) | **GET** /api/v1/account/{auth_id}/inventory/numbers | List Inventory Numbers
*PhoneNumbersApi* | [**apiV1AccountAuthIdNumbersE164NumberDelete**](docs/Api/PhoneNumbersApi.md#apiv1accountauthidnumberse164numberdelete) | **DELETE** /api/v1/account/{auth_id}/numbers/:e164_number | Unrent a Phone Number
*PhoneNumbersApi* | [**apiV1AccountAuthIdNumbersGet**](docs/Api/PhoneNumbersApi.md#apiv1accountauthidnumbersget) | **GET** /api/v1/account/{auth_id}/numbers | List Account Phone Numbers
*PhoneNumbersApi* | [**apiV1AccountAuthIdNumbersPurchaseFromInventoryPost**](docs/Api/PhoneNumbersApi.md#apiv1accountauthidnumberspurchasefrominventorypost) | **POST** /api/v1/account/{auth_id}/numbers/purchase-from-inventory | Purchase from Inventory
*RecordingApi* | [**apiV1AccountAccountIdRecordingGet**](docs/Api/RecordingApi.md#apiv1accountaccountidrecordingget) | **GET** /api/v1/Account/{account_id}/Recording/ | List All Recordings
*RecordingApi* | [**apiV1AccountAuthIdExportRecordingPost**](docs/Api/RecordingApi.md#apiv1accountauthidexportrecordingpost) | **POST** /api/v1/Account/{auth_id}/export/recording/ | Export Historical Recordings
*RecordingApi* | [**apiV1AccountAuthIdRecordingBulkDeleteDelete**](docs/Api/RecordingApi.md#apiv1accountauthidrecordingbulkdeletedelete) | **DELETE** /api/v1/Account/{auth_id}/Recording/BulkDelete/ | Bulk Delete Recordings
*RecordingApi* | [**apiV1AccountAuthIdRecordingDelete**](docs/Api/RecordingApi.md#apiv1accountauthidrecordingdelete) | **DELETE** /api/v1/Account/{auth_id}/Recording/{}/ | Delete a Recording
*RecordingApi* | [**apiV1AccountAuthIdRecordingGet**](docs/Api/RecordingApi.md#apiv1accountauthidrecordingget) | **GET** /api/v1/Account/{auth_id}/Recording/{}/ | Retrieve a Recording
*SubAccountApi* | [**apiV1AccountsAccountIdSubAccountsGet**](docs/Api/SubAccountApi.md#apiv1accountsaccountidsubaccountsget) | **GET** /api/v1/accounts/{account_id}/sub-accounts/ | List All Sub-Accounts
*SubAccountApi* | [**apiV1AccountsAccountIdSubAccountsPost**](docs/Api/SubAccountApi.md#apiv1accountsaccountidsubaccountspost) | **POST** /api/v1/accounts/{account_id}/sub-accounts/ | Create Sub-Account
*SubAccountApi* | [**apiV1AccountsAccountIdSubAccountsSubAccountIdDelete**](docs/Api/SubAccountApi.md#apiv1accountsaccountidsubaccountssubaccountiddelete) | **DELETE** /api/v1/accounts/{account_id}/sub-accounts/:sub_account_id | Delete a Sub-Account
*SubAccountApi* | [**apiV1AccountsAccountIdSubAccountsSubAccountIdGet**](docs/Api/SubAccountApi.md#apiv1accountsaccountidsubaccountssubaccountidget) | **GET** /api/v1/accounts/{account_id}/sub-accounts/:sub_account_id | Retrieve a Sub-Account
*SubAccountApi* | [**apiV1AccountsAccountIdSubAccountsSubAccountIdPut**](docs/Api/SubAccountApi.md#apiv1accountsaccountidsubaccountssubaccountidput) | **PUT** /api/v1/accounts/{account_id}/sub-accounts/:sub_account_id | Update a Sub-Account
*TrunkApi* | [**apiV1AccountAccountIdCredentialsCredentialIdDelete**](docs/Api/TrunkApi.md#apiv1accountaccountidcredentialscredentialiddelete) | **DELETE** /api/v1/account/{account_id}/credentials/:credential_id | Delete a Credential
*TrunkApi* | [**apiV1AccountAccountIdCredentialsCredentialIdPut**](docs/Api/TrunkApi.md#apiv1accountaccountidcredentialscredentialidput) | **PUT** /api/v1/account/{account_id}/credentials/:credential_id | Update a Credential
*TrunkApi* | [**apiV1AccountAccountIdCredentialsPost**](docs/Api/TrunkApi.md#apiv1accountaccountidcredentialspost) | **POST** /api/v1/account/{account_id}/credentials | Create Credential
*TrunkApi* | [**apiV1AccountAccountIdIpAclIpAclIdDelete**](docs/Api/TrunkApi.md#apiv1accountaccountidipaclipacliddelete) | **DELETE** /api/v1/account/{account_id}/ip-acl/:ip_acl_id | Delete an IP ACL
*TrunkApi* | [**apiV1AccountAccountIdIpAclIpAclIdPut**](docs/Api/TrunkApi.md#apiv1accountaccountidipaclipaclidput) | **PUT** /api/v1/account/{account_id}/ip-acl/:ip_acl_id | Update an IP ACL
*TrunkApi* | [**apiV1AccountAccountIdIpAclPost**](docs/Api/TrunkApi.md#apiv1accountaccountidipaclpost) | **POST** /api/v1/account/{account_id}/ip-acl | Create IP ACL
*TrunkApi* | [**apiV1AccountAccountIdNumbersAssignDelete**](docs/Api/TrunkApi.md#apiv1accountaccountidnumbersassigndelete) | **DELETE** /api/v1/account/{account_id}/numbers/{}/assign | Unassign Number from Trunk
*TrunkApi* | [**apiV1AccountAccountIdNumbersAssignPost**](docs/Api/TrunkApi.md#apiv1accountaccountidnumbersassignpost) | **POST** /api/v1/account/{account_id}/numbers/{}/assign | Assign Number to Trunk
*TrunkApi* | [**apiV1AccountAccountIdOriginationUrisPost**](docs/Api/TrunkApi.md#apiv1accountaccountidoriginationurispost) | **POST** /api/v1/account/{account_id}/origination-uris | Create Origination URI
*TrunkApi* | [**apiV1AccountAccountIdOriginationUrisUriIdDelete**](docs/Api/TrunkApi.md#apiv1accountaccountidoriginationurisuriiddelete) | **DELETE** /api/v1/account/{account_id}/origination-uris/:uri_id | Delete an Origination URI
*TrunkApi* | [**apiV1AccountAccountIdOriginationUrisUriIdPut**](docs/Api/TrunkApi.md#apiv1accountaccountidoriginationurisuriidput) | **PUT** /api/v1/account/{account_id}/origination-uris/:uri_id | Update an Origination URI
*TrunkApi* | [**apiV1AccountAccountIdTrunksCredentialsGet**](docs/Api/TrunkApi.md#apiv1accountaccountidtrunkscredentialsget) | **GET** /api/v1/account/{account_id}/trunks/credentials | List All Credentials
*TrunkApi* | [**apiV1AccountAccountIdTrunksGet**](docs/Api/TrunkApi.md#apiv1accountaccountidtrunksget) | **GET** /api/v1/account/{account_id}/trunks | List All Trunks
*TrunkApi* | [**apiV1AccountAccountIdTrunksIpAclGet**](docs/Api/TrunkApi.md#apiv1accountaccountidtrunksipaclget) | **GET** /api/v1/account/{account_id}/trunks/ip-acl | List All IP ACLs
*TrunkApi* | [**apiV1AccountAccountIdTrunksOriginationUrisGet**](docs/Api/TrunkApi.md#apiv1accountaccountidtrunksoriginationurisget) | **GET** /api/v1/account/{account_id}/trunks/origination-uris | List All Origination URIs
*TrunkApi* | [**apiV1AccountAccountIdTrunksPost**](docs/Api/TrunkApi.md#apiv1accountaccountidtrunkspost) | **POST** /api/v1/account/{account_id}/trunks | Create Trunk
*TrunkApi* | [**apiV1AccountAccountIdTrunksTrunkIdDelete**](docs/Api/TrunkApi.md#apiv1accountaccountidtrunkstrunkiddelete) | **DELETE** /api/v1/account/{account_id}/trunks/:trunk_id | Delete a Trunk
*TrunkApi* | [**apiV1AccountAccountIdTrunksTrunkIdGet**](docs/Api/TrunkApi.md#apiv1accountaccountidtrunkstrunkidget) | **GET** /api/v1/account/{account_id}/trunks/:trunk_id | Retrieve a Trunk
*TrunkApi* | [**apiV1AccountAccountIdTrunksTrunkIdPut**](docs/Api/TrunkApi.md#apiv1accountaccountidtrunkstrunkidput) | **PUT** /api/v1/account/{account_id}/trunks/:trunk_id | Update a Trunk

## Models


## Authorization

Authentication schemes defined for the API:
### ApiKeyAuthID

- **Type**: API key
- **API key parameter name**: X-Auth-ID
- **Location**: HTTP header


### ApiKeyAuthToken

- **Type**: API key
- **API key parameter name**: X-Auth-Token
- **Location**: HTTP header


## Tests

To run the tests, use:

```bash
composer install
vendor/bin/phpunit
```

## Author



## About this package

This PHP package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: `1.0.0`
    - Generator version: `7.20.0`
- Build package: `org.openapitools.codegen.languages.PhpClientCodegen`
