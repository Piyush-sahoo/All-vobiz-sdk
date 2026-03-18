//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class SubAccountApi {
  SubAccountApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// List All Sub-Accounts
  ///
  /// Retrieve all sub-accounts.
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
  /// * [int] page:
  ///   Page number
  ///
  /// * [int] size:
  ///   Results per page
  ///
  /// * [bool] activeOnly:
  ///   Filter active sub-accounts only
  Future<Response> apiV1AccountsAccountIdSubAccountsGetWithHttpInfo(String accountId, { String? xAuthID, String? xAuthToken, String? contentType, int? page, int? size, bool? activeOnly, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/accounts/{account_id}/sub-accounts/'
      .replaceAll('{account_id}', accountId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (size != null) {
      queryParams.addAll(_queryParams('', 'size', size));
    }
    if (activeOnly != null) {
      queryParams.addAll(_queryParams('', 'active_only', activeOnly));
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

  /// List All Sub-Accounts
  ///
  /// Retrieve all sub-accounts.
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
  /// * [int] page:
  ///   Page number
  ///
  /// * [int] size:
  ///   Results per page
  ///
  /// * [bool] activeOnly:
  ///   Filter active sub-accounts only
  Future<void> apiV1AccountsAccountIdSubAccountsGet(String accountId, { String? xAuthID, String? xAuthToken, String? contentType, int? page, int? size, bool? activeOnly, }) async {
    final response = await apiV1AccountsAccountIdSubAccountsGetWithHttpInfo(accountId,  xAuthID: xAuthID, xAuthToken: xAuthToken, contentType: contentType, page: page, size: size, activeOnly: activeOnly, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create Sub-Account
  ///
  /// Create a new sub-account under the master account.
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
  Future<Response> apiV1AccountsAccountIdSubAccountsPostWithHttpInfo(String accountId, { String? xAuthID, String? xAuthToken, String? contentType, Object? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/accounts/{account_id}/sub-accounts/'
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

  /// Create Sub-Account
  ///
  /// Create a new sub-account under the master account.
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
  Future<void> apiV1AccountsAccountIdSubAccountsPost(String accountId, { String? xAuthID, String? xAuthToken, String? contentType, Object? body, }) async {
    final response = await apiV1AccountsAccountIdSubAccountsPostWithHttpInfo(accountId,  xAuthID: xAuthID, xAuthToken: xAuthToken, contentType: contentType, body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete a Sub-Account
  ///
  /// Delete a sub-account. Returns 204 No Content.
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
  Future<Response> apiV1AccountsAccountIdSubAccountsSubAccountIdDeleteWithHttpInfo(String accountId, { String? xAuthID, String? xAuthToken, String? contentType, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/accounts/{account_id}/sub-accounts/:sub_account_id'
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

  /// Delete a Sub-Account
  ///
  /// Delete a sub-account. Returns 204 No Content.
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
  Future<void> apiV1AccountsAccountIdSubAccountsSubAccountIdDelete(String accountId, { String? xAuthID, String? xAuthToken, String? contentType, }) async {
    final response = await apiV1AccountsAccountIdSubAccountsSubAccountIdDeleteWithHttpInfo(accountId,  xAuthID: xAuthID, xAuthToken: xAuthToken, contentType: contentType, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Retrieve a Sub-Account
  ///
  /// Get details of a specific sub-account.
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
  Future<Response> apiV1AccountsAccountIdSubAccountsSubAccountIdGetWithHttpInfo(String accountId, { String? xAuthID, String? xAuthToken, String? contentType, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/accounts/{account_id}/sub-accounts/:sub_account_id'
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

  /// Retrieve a Sub-Account
  ///
  /// Get details of a specific sub-account.
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
  Future<void> apiV1AccountsAccountIdSubAccountsSubAccountIdGet(String accountId, { String? xAuthID, String? xAuthToken, String? contentType, }) async {
    final response = await apiV1AccountsAccountIdSubAccountsSubAccountIdGetWithHttpInfo(accountId,  xAuthID: xAuthID, xAuthToken: xAuthToken, contentType: contentType, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Update a Sub-Account
  ///
  /// Update sub-account settings.
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
  Future<Response> apiV1AccountsAccountIdSubAccountsSubAccountIdPutWithHttpInfo(String accountId, { String? xAuthID, String? xAuthToken, String? contentType, Object? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/accounts/{account_id}/sub-accounts/:sub_account_id'
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

  /// Update a Sub-Account
  ///
  /// Update sub-account settings.
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
  Future<void> apiV1AccountsAccountIdSubAccountsSubAccountIdPut(String accountId, { String? xAuthID, String? xAuthToken, String? contentType, Object? body, }) async {
    final response = await apiV1AccountsAccountIdSubAccountsSubAccountIdPutWithHttpInfo(accountId,  xAuthID: xAuthID, xAuthToken: xAuthToken, contentType: contentType, body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
