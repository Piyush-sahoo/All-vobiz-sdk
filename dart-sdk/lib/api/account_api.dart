//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class AccountApi {
  AccountApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get Balance
  ///
  /// Retrieve the balance for a specific account and currency. Replace 'INR' with your currency code.
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
  Future<Response> apiV1AccountAccountIdBalanceINRGetWithHttpInfo(String accountId, { String? xAuthID, String? xAuthToken, String? contentType, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/account/{account_id}/balance/INR'
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

  /// Get Balance
  ///
  /// Retrieve the balance for a specific account and currency. Replace 'INR' with your currency code.
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
  Future<void> apiV1AccountAccountIdBalanceINRGet(String accountId, { String? xAuthID, String? xAuthToken, String? contentType, }) async {
    final response = await apiV1AccountAccountIdBalanceINRGetWithHttpInfo(accountId,  xAuthID: xAuthID, xAuthToken: xAuthToken, contentType: contentType, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get Transactions
  ///
  /// Retrieve a list of transactions for a specific account.
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
  ///   Records per page (default: 50)
  ///
  /// * [int] offset:
  ///   Pagination offset (default: 0)
  Future<Response> apiV1AccountAccountIdTransactionsGetWithHttpInfo(String accountId, { String? xAuthID, String? xAuthToken, String? contentType, int? limit, int? offset, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/account/{account_id}/transactions'
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

  /// Get Transactions
  ///
  /// Retrieve a list of transactions for a specific account.
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
  ///   Records per page (default: 50)
  ///
  /// * [int] offset:
  ///   Pagination offset (default: 0)
  Future<void> apiV1AccountAccountIdTransactionsGet(String accountId, { String? xAuthID, String? xAuthToken, String? contentType, int? limit, int? offset, }) async {
    final response = await apiV1AccountAccountIdTransactionsGetWithHttpInfo(accountId,  xAuthID: xAuthID, xAuthToken: xAuthToken, contentType: contentType, limit: limit, offset: offset, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get Concurrency
  ///
  /// Retrieve current concurrent call count and capacity.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] authId (required):
  ///
  /// * [String] xAuthID:
  ///
  /// * [String] xAuthToken:
  ///
  /// * [String] contentType:
  Future<Response> apiV1AccountAuthIdConcurrencyGetWithHttpInfo(String authId, { String? xAuthID, String? xAuthToken, String? contentType, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/account/{auth_id}/concurrency'
      .replaceAll('{auth_id}', authId);

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

  /// Get Concurrency
  ///
  /// Retrieve current concurrent call count and capacity.
  ///
  /// Parameters:
  ///
  /// * [String] authId (required):
  ///
  /// * [String] xAuthID:
  ///
  /// * [String] xAuthToken:
  ///
  /// * [String] contentType:
  Future<void> apiV1AccountAuthIdConcurrencyGet(String authId, { String? xAuthID, String? xAuthToken, String? contentType, }) async {
    final response = await apiV1AccountAuthIdConcurrencyGetWithHttpInfo(authId,  xAuthID: xAuthID, xAuthToken: xAuthToken, contentType: contentType, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Retrieve Account Details
  ///
  /// Retrieve complete account details including pricing tier, credentials, and account settings.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] xAuthID:
  ///
  /// * [String] xAuthToken:
  ///
  /// * [String] contentType:
  Future<Response> apiV1AuthMeGetWithHttpInfo({ String? xAuthID, String? xAuthToken, String? contentType, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/auth/me';

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

  /// Retrieve Account Details
  ///
  /// Retrieve complete account details including pricing tier, credentials, and account settings.
  ///
  /// Parameters:
  ///
  /// * [String] xAuthID:
  ///
  /// * [String] xAuthToken:
  ///
  /// * [String] contentType:
  Future<void> apiV1AuthMeGet({ String? xAuthID, String? xAuthToken, String? contentType, }) async {
    final response = await apiV1AuthMeGetWithHttpInfo( xAuthID: xAuthID, xAuthToken: xAuthToken, contentType: contentType, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
