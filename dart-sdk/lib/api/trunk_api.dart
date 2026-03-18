//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class TrunkApi {
  TrunkApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Delete a Credential
  ///
  /// Delete a SIP credential. Returns 204 No Content.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] accountId (required):
  ///
  /// * [String] xAuthID:
  ///
  /// * [String] xAuthToken:
  ///
  /// * [String] contentType:
  Future<Response> apiV1AccountAccountIdCredentialsCredentialIdDeleteWithHttpInfo(String accountId, { String? xAuthID, String? xAuthToken, String? contentType, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/account/{account_id}/credentials/:credential_id'
      .replaceAll('{account_id}', accountId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (xAuthID != null) {
      headerParams[r'X-Auth-ID'] = parameterToString(xAuthID);
    }
    if (xAuthToken != null) {
      headerParams[r'X-Auth-Token'] = parameterToString(xAuthToken);
    }
    if (contentType != null) {
      headerParams[r'Content-Type'] = parameterToString(contentType);
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Delete a Credential
  ///
  /// Delete a SIP credential. Returns 204 No Content.
  ///
  /// Parameters:
  ///
  /// * [String] accountId (required):
  ///
  /// * [String] xAuthID:
  ///
  /// * [String] xAuthToken:
  ///
  /// * [String] contentType:
  Future<void> apiV1AccountAccountIdCredentialsCredentialIdDelete(String accountId, { String? xAuthID, String? xAuthToken, String? contentType, }) async {
    final response = await apiV1AccountAccountIdCredentialsCredentialIdDeleteWithHttpInfo(accountId,  xAuthID: xAuthID, xAuthToken: xAuthToken, contentType: contentType, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Update a Credential
  ///
  /// Update SIP credential settings.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] accountId (required):
  ///
  /// * [String] xAuthID:
  ///
  /// * [String] xAuthToken:
  ///
  /// * [String] contentType:
  ///
  /// * [Object] body:
  Future<Response> apiV1AccountAccountIdCredentialsCredentialIdPutWithHttpInfo(String accountId, { String? xAuthID, String? xAuthToken, String? contentType, Object? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/account/{account_id}/credentials/:credential_id'
      .replaceAll('{account_id}', accountId);

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (xAuthID != null) {
      headerParams[r'X-Auth-ID'] = parameterToString(xAuthID);
    }
    if (xAuthToken != null) {
      headerParams[r'X-Auth-Token'] = parameterToString(xAuthToken);
    }
    if (contentType != null) {
      headerParams[r'Content-Type'] = parameterToString(contentType);
    }

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Update a Credential
  ///
  /// Update SIP credential settings.
  ///
  /// Parameters:
  ///
  /// * [String] accountId (required):
  ///
  /// * [String] xAuthID:
  ///
  /// * [String] xAuthToken:
  ///
  /// * [String] contentType:
  ///
  /// * [Object] body:
  Future<void> apiV1AccountAccountIdCredentialsCredentialIdPut(String accountId, { String? xAuthID, String? xAuthToken, String? contentType, Object? body, }) async {
    final response = await apiV1AccountAccountIdCredentialsCredentialIdPutWithHttpInfo(accountId,  xAuthID: xAuthID, xAuthToken: xAuthToken, contentType: contentType, body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create Credential
  ///
  /// Create SIP authentication credentials for a trunk.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] accountId (required):
  ///
  /// * [String] xAuthID:
  ///
  /// * [String] xAuthToken:
  ///
  /// * [String] contentType:
  ///
  /// * [Object] body:
  Future<Response> apiV1AccountAccountIdCredentialsPostWithHttpInfo(String accountId, { String? xAuthID, String? xAuthToken, String? contentType, Object? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/account/{account_id}/credentials'
      .replaceAll('{account_id}', accountId);

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (xAuthID != null) {
      headerParams[r'X-Auth-ID'] = parameterToString(xAuthID);
    }
    if (xAuthToken != null) {
      headerParams[r'X-Auth-Token'] = parameterToString(xAuthToken);
    }
    if (contentType != null) {
      headerParams[r'Content-Type'] = parameterToString(contentType);
    }

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Create Credential
  ///
  /// Create SIP authentication credentials for a trunk.
  ///
  /// Parameters:
  ///
  /// * [String] accountId (required):
  ///
  /// * [String] xAuthID:
  ///
  /// * [String] xAuthToken:
  ///
  /// * [String] contentType:
  ///
  /// * [Object] body:
  Future<void> apiV1AccountAccountIdCredentialsPost(String accountId, { String? xAuthID, String? xAuthToken, String? contentType, Object? body, }) async {
    final response = await apiV1AccountAccountIdCredentialsPostWithHttpInfo(accountId,  xAuthID: xAuthID, xAuthToken: xAuthToken, contentType: contentType, body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete an IP ACL
  ///
  /// Delete an IP ACL entry. Returns 204 No Content.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] accountId (required):
  ///
  /// * [String] xAuthID:
  ///
  /// * [String] xAuthToken:
  ///
  /// * [String] contentType:
  Future<Response> apiV1AccountAccountIdIpAclIpAclIdDeleteWithHttpInfo(String accountId, { String? xAuthID, String? xAuthToken, String? contentType, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/account/{account_id}/ip-acl/:ip_acl_id'
      .replaceAll('{account_id}', accountId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (xAuthID != null) {
      headerParams[r'X-Auth-ID'] = parameterToString(xAuthID);
    }
    if (xAuthToken != null) {
      headerParams[r'X-Auth-Token'] = parameterToString(xAuthToken);
    }
    if (contentType != null) {
      headerParams[r'Content-Type'] = parameterToString(contentType);
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Delete an IP ACL
  ///
  /// Delete an IP ACL entry. Returns 204 No Content.
  ///
  /// Parameters:
  ///
  /// * [String] accountId (required):
  ///
  /// * [String] xAuthID:
  ///
  /// * [String] xAuthToken:
  ///
  /// * [String] contentType:
  Future<void> apiV1AccountAccountIdIpAclIpAclIdDelete(String accountId, { String? xAuthID, String? xAuthToken, String? contentType, }) async {
    final response = await apiV1AccountAccountIdIpAclIpAclIdDeleteWithHttpInfo(accountId,  xAuthID: xAuthID, xAuthToken: xAuthToken, contentType: contentType, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Update an IP ACL
  ///
  /// Update an IP ACL entry.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] accountId (required):
  ///
  /// * [String] xAuthID:
  ///
  /// * [String] xAuthToken:
  ///
  /// * [String] contentType:
  ///
  /// * [Object] body:
  Future<Response> apiV1AccountAccountIdIpAclIpAclIdPutWithHttpInfo(String accountId, { String? xAuthID, String? xAuthToken, String? contentType, Object? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/account/{account_id}/ip-acl/:ip_acl_id'
      .replaceAll('{account_id}', accountId);

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (xAuthID != null) {
      headerParams[r'X-Auth-ID'] = parameterToString(xAuthID);
    }
    if (xAuthToken != null) {
      headerParams[r'X-Auth-Token'] = parameterToString(xAuthToken);
    }
    if (contentType != null) {
      headerParams[r'Content-Type'] = parameterToString(contentType);
    }

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Update an IP ACL
  ///
  /// Update an IP ACL entry.
  ///
  /// Parameters:
  ///
  /// * [String] accountId (required):
  ///
  /// * [String] xAuthID:
  ///
  /// * [String] xAuthToken:
  ///
  /// * [String] contentType:
  ///
  /// * [Object] body:
  Future<void> apiV1AccountAccountIdIpAclIpAclIdPut(String accountId, { String? xAuthID, String? xAuthToken, String? contentType, Object? body, }) async {
    final response = await apiV1AccountAccountIdIpAclIpAclIdPutWithHttpInfo(accountId,  xAuthID: xAuthID, xAuthToken: xAuthToken, contentType: contentType, body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create IP ACL
  ///
  /// Create an IP Access Control List entry for trunk authentication.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] accountId (required):
  ///
  /// * [String] xAuthID:
  ///
  /// * [String] xAuthToken:
  ///
  /// * [String] contentType:
  ///
  /// * [Object] body:
  Future<Response> apiV1AccountAccountIdIpAclPostWithHttpInfo(String accountId, { String? xAuthID, String? xAuthToken, String? contentType, Object? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/account/{account_id}/ip-acl'
      .replaceAll('{account_id}', accountId);

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (xAuthID != null) {
      headerParams[r'X-Auth-ID'] = parameterToString(xAuthID);
    }
    if (xAuthToken != null) {
      headerParams[r'X-Auth-Token'] = parameterToString(xAuthToken);
    }
    if (contentType != null) {
      headerParams[r'Content-Type'] = parameterToString(contentType);
    }

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Create IP ACL
  ///
  /// Create an IP Access Control List entry for trunk authentication.
  ///
  /// Parameters:
  ///
  /// * [String] accountId (required):
  ///
  /// * [String] xAuthID:
  ///
  /// * [String] xAuthToken:
  ///
  /// * [String] contentType:
  ///
  /// * [Object] body:
  Future<void> apiV1AccountAccountIdIpAclPost(String accountId, { String? xAuthID, String? xAuthToken, String? contentType, Object? body, }) async {
    final response = await apiV1AccountAccountIdIpAclPostWithHttpInfo(accountId,  xAuthID: xAuthID, xAuthToken: xAuthToken, contentType: contentType, body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Unassign Number from Trunk
  ///
  /// Remove a phone number from its trunk assignment. Returns 204 No Content.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] accountId (required):
  ///
  /// * [String] xAuthID:
  ///
  /// * [String] xAuthToken:
  ///
  /// * [String] contentType:
  Future<Response> apiV1AccountAccountIdNumbersAssignDeleteWithHttpInfo(String accountId, { String? xAuthID, String? xAuthToken, String? contentType, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/account/{account_id}/numbers/{}/assign'
      .replaceAll('{account_id}', accountId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (xAuthID != null) {
      headerParams[r'X-Auth-ID'] = parameterToString(xAuthID);
    }
    if (xAuthToken != null) {
      headerParams[r'X-Auth-Token'] = parameterToString(xAuthToken);
    }
    if (contentType != null) {
      headerParams[r'Content-Type'] = parameterToString(contentType);
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Unassign Number from Trunk
  ///
  /// Remove a phone number from its trunk assignment. Returns 204 No Content.
  ///
  /// Parameters:
  ///
  /// * [String] accountId (required):
  ///
  /// * [String] xAuthID:
  ///
  /// * [String] xAuthToken:
  ///
  /// * [String] contentType:
  Future<void> apiV1AccountAccountIdNumbersAssignDelete(String accountId, { String? xAuthID, String? xAuthToken, String? contentType, }) async {
    final response = await apiV1AccountAccountIdNumbersAssignDeleteWithHttpInfo(accountId,  xAuthID: xAuthID, xAuthToken: xAuthToken, contentType: contentType, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Assign Number to Trunk
  ///
  /// Assign a phone number to a trunk group.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] accountId (required):
  ///
  /// * [String] xAuthID:
  ///
  /// * [String] xAuthToken:
  ///
  /// * [String] contentType:
  ///
  /// * [Object] body:
  Future<Response> apiV1AccountAccountIdNumbersAssignPostWithHttpInfo(String accountId, { String? xAuthID, String? xAuthToken, String? contentType, Object? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/account/{account_id}/numbers/{}/assign'
      .replaceAll('{account_id}', accountId);

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (xAuthID != null) {
      headerParams[r'X-Auth-ID'] = parameterToString(xAuthID);
    }
    if (xAuthToken != null) {
      headerParams[r'X-Auth-Token'] = parameterToString(xAuthToken);
    }
    if (contentType != null) {
      headerParams[r'Content-Type'] = parameterToString(contentType);
    }

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Assign Number to Trunk
  ///
  /// Assign a phone number to a trunk group.
  ///
  /// Parameters:
  ///
  /// * [String] accountId (required):
  ///
  /// * [String] xAuthID:
  ///
  /// * [String] xAuthToken:
  ///
  /// * [String] contentType:
  ///
  /// * [Object] body:
  Future<void> apiV1AccountAccountIdNumbersAssignPost(String accountId, { String? xAuthID, String? xAuthToken, String? contentType, Object? body, }) async {
    final response = await apiV1AccountAccountIdNumbersAssignPostWithHttpInfo(accountId,  xAuthID: xAuthID, xAuthToken: xAuthToken, contentType: contentType, body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create Origination URI
  ///
  /// Create an origination URI for inbound SIP routing.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] accountId (required):
  ///
  /// * [String] xAuthID:
  ///
  /// * [String] xAuthToken:
  ///
  /// * [String] contentType:
  ///
  /// * [Object] body:
  Future<Response> apiV1AccountAccountIdOriginationUrisPostWithHttpInfo(String accountId, { String? xAuthID, String? xAuthToken, String? contentType, Object? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/account/{account_id}/origination-uris'
      .replaceAll('{account_id}', accountId);

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (xAuthID != null) {
      headerParams[r'X-Auth-ID'] = parameterToString(xAuthID);
    }
    if (xAuthToken != null) {
      headerParams[r'X-Auth-Token'] = parameterToString(xAuthToken);
    }
    if (contentType != null) {
      headerParams[r'Content-Type'] = parameterToString(contentType);
    }

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Create Origination URI
  ///
  /// Create an origination URI for inbound SIP routing.
  ///
  /// Parameters:
  ///
  /// * [String] accountId (required):
  ///
  /// * [String] xAuthID:
  ///
  /// * [String] xAuthToken:
  ///
  /// * [String] contentType:
  ///
  /// * [Object] body:
  Future<void> apiV1AccountAccountIdOriginationUrisPost(String accountId, { String? xAuthID, String? xAuthToken, String? contentType, Object? body, }) async {
    final response = await apiV1AccountAccountIdOriginationUrisPostWithHttpInfo(accountId,  xAuthID: xAuthID, xAuthToken: xAuthToken, contentType: contentType, body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete an Origination URI
  ///
  /// Delete an origination URI. Returns 204 No Content.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] accountId (required):
  ///
  /// * [String] xAuthID:
  ///
  /// * [String] xAuthToken:
  ///
  /// * [String] contentType:
  Future<Response> apiV1AccountAccountIdOriginationUrisUriIdDeleteWithHttpInfo(String accountId, { String? xAuthID, String? xAuthToken, String? contentType, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/account/{account_id}/origination-uris/:uri_id'
      .replaceAll('{account_id}', accountId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (xAuthID != null) {
      headerParams[r'X-Auth-ID'] = parameterToString(xAuthID);
    }
    if (xAuthToken != null) {
      headerParams[r'X-Auth-Token'] = parameterToString(xAuthToken);
    }
    if (contentType != null) {
      headerParams[r'Content-Type'] = parameterToString(contentType);
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Delete an Origination URI
  ///
  /// Delete an origination URI. Returns 204 No Content.
  ///
  /// Parameters:
  ///
  /// * [String] accountId (required):
  ///
  /// * [String] xAuthID:
  ///
  /// * [String] xAuthToken:
  ///
  /// * [String] contentType:
  Future<void> apiV1AccountAccountIdOriginationUrisUriIdDelete(String accountId, { String? xAuthID, String? xAuthToken, String? contentType, }) async {
    final response = await apiV1AccountAccountIdOriginationUrisUriIdDeleteWithHttpInfo(accountId,  xAuthID: xAuthID, xAuthToken: xAuthToken, contentType: contentType, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Update an Origination URI
  ///
  /// Update an origination URI.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] accountId (required):
  ///
  /// * [String] xAuthID:
  ///
  /// * [String] xAuthToken:
  ///
  /// * [String] contentType:
  ///
  /// * [Object] body:
  Future<Response> apiV1AccountAccountIdOriginationUrisUriIdPutWithHttpInfo(String accountId, { String? xAuthID, String? xAuthToken, String? contentType, Object? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/account/{account_id}/origination-uris/:uri_id'
      .replaceAll('{account_id}', accountId);

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (xAuthID != null) {
      headerParams[r'X-Auth-ID'] = parameterToString(xAuthID);
    }
    if (xAuthToken != null) {
      headerParams[r'X-Auth-Token'] = parameterToString(xAuthToken);
    }
    if (contentType != null) {
      headerParams[r'Content-Type'] = parameterToString(contentType);
    }

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Update an Origination URI
  ///
  /// Update an origination URI.
  ///
  /// Parameters:
  ///
  /// * [String] accountId (required):
  ///
  /// * [String] xAuthID:
  ///
  /// * [String] xAuthToken:
  ///
  /// * [String] contentType:
  ///
  /// * [Object] body:
  Future<void> apiV1AccountAccountIdOriginationUrisUriIdPut(String accountId, { String? xAuthID, String? xAuthToken, String? contentType, Object? body, }) async {
    final response = await apiV1AccountAccountIdOriginationUrisUriIdPutWithHttpInfo(accountId,  xAuthID: xAuthID, xAuthToken: xAuthToken, contentType: contentType, body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List All Credentials
  ///
  /// Retrieve all SIP credentials.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] accountId (required):
  ///
  /// * [String] xAuthID:
  ///
  /// * [String] xAuthToken:
  ///
  /// * [String] contentType:
  ///
  /// * [int] limit:
  ///   Results per page
  ///
  /// * [int] offset:
  ///   Pagination offset
  Future<Response> apiV1AccountAccountIdTrunksCredentialsGetWithHttpInfo(String accountId, { String? xAuthID, String? xAuthToken, String? contentType, int? limit, int? offset, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/account/{account_id}/trunks/credentials'
      .replaceAll('{account_id}', accountId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (offset != null) {
      queryParams.addAll(_queryParams('', 'offset', offset));
    }

    if (xAuthID != null) {
      headerParams[r'X-Auth-ID'] = parameterToString(xAuthID);
    }
    if (xAuthToken != null) {
      headerParams[r'X-Auth-Token'] = parameterToString(xAuthToken);
    }
    if (contentType != null) {
      headerParams[r'Content-Type'] = parameterToString(contentType);
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// List All Credentials
  ///
  /// Retrieve all SIP credentials.
  ///
  /// Parameters:
  ///
  /// * [String] accountId (required):
  ///
  /// * [String] xAuthID:
  ///
  /// * [String] xAuthToken:
  ///
  /// * [String] contentType:
  ///
  /// * [int] limit:
  ///   Results per page
  ///
  /// * [int] offset:
  ///   Pagination offset
  Future<void> apiV1AccountAccountIdTrunksCredentialsGet(String accountId, { String? xAuthID, String? xAuthToken, String? contentType, int? limit, int? offset, }) async {
    final response = await apiV1AccountAccountIdTrunksCredentialsGetWithHttpInfo(accountId,  xAuthID: xAuthID, xAuthToken: xAuthToken, contentType: contentType, limit: limit, offset: offset, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List All Trunks
  ///
  /// Retrieve all trunks.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] accountId (required):
  ///
  /// * [String] xAuthID:
  ///
  /// * [String] xAuthToken:
  ///
  /// * [String] contentType:
  ///
  /// * [int] limit:
  ///   Results per page
  ///
  /// * [int] offset:
  ///   Pagination offset
  Future<Response> apiV1AccountAccountIdTrunksGetWithHttpInfo(String accountId, { String? xAuthID, String? xAuthToken, String? contentType, int? limit, int? offset, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/account/{account_id}/trunks'
      .replaceAll('{account_id}', accountId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (offset != null) {
      queryParams.addAll(_queryParams('', 'offset', offset));
    }

    if (xAuthID != null) {
      headerParams[r'X-Auth-ID'] = parameterToString(xAuthID);
    }
    if (xAuthToken != null) {
      headerParams[r'X-Auth-Token'] = parameterToString(xAuthToken);
    }
    if (contentType != null) {
      headerParams[r'Content-Type'] = parameterToString(contentType);
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// List All Trunks
  ///
  /// Retrieve all trunks.
  ///
  /// Parameters:
  ///
  /// * [String] accountId (required):
  ///
  /// * [String] xAuthID:
  ///
  /// * [String] xAuthToken:
  ///
  /// * [String] contentType:
  ///
  /// * [int] limit:
  ///   Results per page
  ///
  /// * [int] offset:
  ///   Pagination offset
  Future<void> apiV1AccountAccountIdTrunksGet(String accountId, { String? xAuthID, String? xAuthToken, String? contentType, int? limit, int? offset, }) async {
    final response = await apiV1AccountAccountIdTrunksGetWithHttpInfo(accountId,  xAuthID: xAuthID, xAuthToken: xAuthToken, contentType: contentType, limit: limit, offset: offset, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List All IP ACLs
  ///
  /// Retrieve all IP ACL entries.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] accountId (required):
  ///
  /// * [String] xAuthID:
  ///
  /// * [String] xAuthToken:
  ///
  /// * [String] contentType:
  ///
  /// * [int] limit:
  ///   Results per page
  ///
  /// * [int] offset:
  ///   Pagination offset
  Future<Response> apiV1AccountAccountIdTrunksIpAclGetWithHttpInfo(String accountId, { String? xAuthID, String? xAuthToken, String? contentType, int? limit, int? offset, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/account/{account_id}/trunks/ip-acl'
      .replaceAll('{account_id}', accountId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (offset != null) {
      queryParams.addAll(_queryParams('', 'offset', offset));
    }

    if (xAuthID != null) {
      headerParams[r'X-Auth-ID'] = parameterToString(xAuthID);
    }
    if (xAuthToken != null) {
      headerParams[r'X-Auth-Token'] = parameterToString(xAuthToken);
    }
    if (contentType != null) {
      headerParams[r'Content-Type'] = parameterToString(contentType);
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// List All IP ACLs
  ///
  /// Retrieve all IP ACL entries.
  ///
  /// Parameters:
  ///
  /// * [String] accountId (required):
  ///
  /// * [String] xAuthID:
  ///
  /// * [String] xAuthToken:
  ///
  /// * [String] contentType:
  ///
  /// * [int] limit:
  ///   Results per page
  ///
  /// * [int] offset:
  ///   Pagination offset
  Future<void> apiV1AccountAccountIdTrunksIpAclGet(String accountId, { String? xAuthID, String? xAuthToken, String? contentType, int? limit, int? offset, }) async {
    final response = await apiV1AccountAccountIdTrunksIpAclGetWithHttpInfo(accountId,  xAuthID: xAuthID, xAuthToken: xAuthToken, contentType: contentType, limit: limit, offset: offset, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List All Origination URIs
  ///
  /// Retrieve all origination URIs.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] accountId (required):
  ///
  /// * [String] xAuthID:
  ///
  /// * [String] xAuthToken:
  ///
  /// * [String] contentType:
  ///
  /// * [int] limit:
  ///   Results per page
  ///
  /// * [int] offset:
  ///   Pagination offset
  Future<Response> apiV1AccountAccountIdTrunksOriginationUrisGetWithHttpInfo(String accountId, { String? xAuthID, String? xAuthToken, String? contentType, int? limit, int? offset, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/account/{account_id}/trunks/origination-uris'
      .replaceAll('{account_id}', accountId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (offset != null) {
      queryParams.addAll(_queryParams('', 'offset', offset));
    }

    if (xAuthID != null) {
      headerParams[r'X-Auth-ID'] = parameterToString(xAuthID);
    }
    if (xAuthToken != null) {
      headerParams[r'X-Auth-Token'] = parameterToString(xAuthToken);
    }
    if (contentType != null) {
      headerParams[r'Content-Type'] = parameterToString(contentType);
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// List All Origination URIs
  ///
  /// Retrieve all origination URIs.
  ///
  /// Parameters:
  ///
  /// * [String] accountId (required):
  ///
  /// * [String] xAuthID:
  ///
  /// * [String] xAuthToken:
  ///
  /// * [String] contentType:
  ///
  /// * [int] limit:
  ///   Results per page
  ///
  /// * [int] offset:
  ///   Pagination offset
  Future<void> apiV1AccountAccountIdTrunksOriginationUrisGet(String accountId, { String? xAuthID, String? xAuthToken, String? contentType, int? limit, int? offset, }) async {
    final response = await apiV1AccountAccountIdTrunksOriginationUrisGetWithHttpInfo(accountId,  xAuthID: xAuthID, xAuthToken: xAuthToken, contentType: contentType, limit: limit, offset: offset, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create Trunk
  ///
  /// Create a new SIP trunk.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] accountId (required):
  ///
  /// * [String] xAuthID:
  ///
  /// * [String] xAuthToken:
  ///
  /// * [String] contentType:
  ///
  /// * [Object] body:
  Future<Response> apiV1AccountAccountIdTrunksPostWithHttpInfo(String accountId, { String? xAuthID, String? xAuthToken, String? contentType, Object? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/account/{account_id}/trunks'
      .replaceAll('{account_id}', accountId);

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (xAuthID != null) {
      headerParams[r'X-Auth-ID'] = parameterToString(xAuthID);
    }
    if (xAuthToken != null) {
      headerParams[r'X-Auth-Token'] = parameterToString(xAuthToken);
    }
    if (contentType != null) {
      headerParams[r'Content-Type'] = parameterToString(contentType);
    }

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Create Trunk
  ///
  /// Create a new SIP trunk.
  ///
  /// Parameters:
  ///
  /// * [String] accountId (required):
  ///
  /// * [String] xAuthID:
  ///
  /// * [String] xAuthToken:
  ///
  /// * [String] contentType:
  ///
  /// * [Object] body:
  Future<void> apiV1AccountAccountIdTrunksPost(String accountId, { String? xAuthID, String? xAuthToken, String? contentType, Object? body, }) async {
    final response = await apiV1AccountAccountIdTrunksPostWithHttpInfo(accountId,  xAuthID: xAuthID, xAuthToken: xAuthToken, contentType: contentType, body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete a Trunk
  ///
  /// Delete a trunk. Returns 204 No Content.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] accountId (required):
  ///
  /// * [String] xAuthID:
  ///
  /// * [String] xAuthToken:
  ///
  /// * [String] contentType:
  Future<Response> apiV1AccountAccountIdTrunksTrunkIdDeleteWithHttpInfo(String accountId, { String? xAuthID, String? xAuthToken, String? contentType, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/account/{account_id}/trunks/:trunk_id'
      .replaceAll('{account_id}', accountId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (xAuthID != null) {
      headerParams[r'X-Auth-ID'] = parameterToString(xAuthID);
    }
    if (xAuthToken != null) {
      headerParams[r'X-Auth-Token'] = parameterToString(xAuthToken);
    }
    if (contentType != null) {
      headerParams[r'Content-Type'] = parameterToString(contentType);
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Delete a Trunk
  ///
  /// Delete a trunk. Returns 204 No Content.
  ///
  /// Parameters:
  ///
  /// * [String] accountId (required):
  ///
  /// * [String] xAuthID:
  ///
  /// * [String] xAuthToken:
  ///
  /// * [String] contentType:
  Future<void> apiV1AccountAccountIdTrunksTrunkIdDelete(String accountId, { String? xAuthID, String? xAuthToken, String? contentType, }) async {
    final response = await apiV1AccountAccountIdTrunksTrunkIdDeleteWithHttpInfo(accountId,  xAuthID: xAuthID, xAuthToken: xAuthToken, contentType: contentType, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Retrieve a Trunk
  ///
  /// Get details of a specific trunk.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] accountId (required):
  ///
  /// * [String] xAuthID:
  ///
  /// * [String] xAuthToken:
  ///
  /// * [String] contentType:
  Future<Response> apiV1AccountAccountIdTrunksTrunkIdGetWithHttpInfo(String accountId, { String? xAuthID, String? xAuthToken, String? contentType, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/account/{account_id}/trunks/:trunk_id'
      .replaceAll('{account_id}', accountId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (xAuthID != null) {
      headerParams[r'X-Auth-ID'] = parameterToString(xAuthID);
    }
    if (xAuthToken != null) {
      headerParams[r'X-Auth-Token'] = parameterToString(xAuthToken);
    }
    if (contentType != null) {
      headerParams[r'Content-Type'] = parameterToString(contentType);
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Retrieve a Trunk
  ///
  /// Get details of a specific trunk.
  ///
  /// Parameters:
  ///
  /// * [String] accountId (required):
  ///
  /// * [String] xAuthID:
  ///
  /// * [String] xAuthToken:
  ///
  /// * [String] contentType:
  Future<void> apiV1AccountAccountIdTrunksTrunkIdGet(String accountId, { String? xAuthID, String? xAuthToken, String? contentType, }) async {
    final response = await apiV1AccountAccountIdTrunksTrunkIdGetWithHttpInfo(accountId,  xAuthID: xAuthID, xAuthToken: xAuthToken, contentType: contentType, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Update a Trunk
  ///
  /// Update an existing trunk.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] accountId (required):
  ///
  /// * [String] xAuthID:
  ///
  /// * [String] xAuthToken:
  ///
  /// * [String] contentType:
  ///
  /// * [Object] body:
  Future<Response> apiV1AccountAccountIdTrunksTrunkIdPutWithHttpInfo(String accountId, { String? xAuthID, String? xAuthToken, String? contentType, Object? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/account/{account_id}/trunks/:trunk_id'
      .replaceAll('{account_id}', accountId);

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (xAuthID != null) {
      headerParams[r'X-Auth-ID'] = parameterToString(xAuthID);
    }
    if (xAuthToken != null) {
      headerParams[r'X-Auth-Token'] = parameterToString(xAuthToken);
    }
    if (contentType != null) {
      headerParams[r'Content-Type'] = parameterToString(contentType);
    }

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Update a Trunk
  ///
  /// Update an existing trunk.
  ///
  /// Parameters:
  ///
  /// * [String] accountId (required):
  ///
  /// * [String] xAuthID:
  ///
  /// * [String] xAuthToken:
  ///
  /// * [String] contentType:
  ///
  /// * [Object] body:
  Future<void> apiV1AccountAccountIdTrunksTrunkIdPut(String accountId, { String? xAuthID, String? xAuthToken, String? contentType, Object? body, }) async {
    final response = await apiV1AccountAccountIdTrunksTrunkIdPutWithHttpInfo(accountId,  xAuthID: xAuthID, xAuthToken: xAuthToken, contentType: contentType, body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
