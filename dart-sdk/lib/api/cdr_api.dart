//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class CDRApi {
  CDRApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get Call Detail Records
  ///
  /// Retrieve call detail records with filtering and pagination.
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
  /// * [String] startDate:
  ///   Start date (YYYY-MM-DD)
  ///
  /// * [String] endDate:
  ///   End date (YYYY-MM-DD)
  ///
  /// * [int] perPage:
  ///   Results per page
  ///
  /// * [int] page:
  ///   Page number
  Future<Response> apiV1AccountAccountIdCdrGetWithHttpInfo(String accountId, { String? xAuthID, String? xAuthToken, String? contentType, String? startDate, String? endDate, int? perPage, int? page, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/account/{account_id}/cdr'
      .replaceAll('{account_id}', accountId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (startDate != null) {
      queryParams.addAll(_queryParams('', 'start_date', startDate));
    }
    if (endDate != null) {
      queryParams.addAll(_queryParams('', 'end_date', endDate));
    }
    if (perPage != null) {
      queryParams.addAll(_queryParams('', 'per_page', perPage));
    }
    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
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

  /// Get Call Detail Records
  ///
  /// Retrieve call detail records with filtering and pagination.
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
  /// * [String] startDate:
  ///   Start date (YYYY-MM-DD)
  ///
  /// * [String] endDate:
  ///   End date (YYYY-MM-DD)
  ///
  /// * [int] perPage:
  ///   Results per page
  ///
  /// * [int] page:
  ///   Page number
  Future<void> apiV1AccountAccountIdCdrGet(String accountId, { String? xAuthID, String? xAuthToken, String? contentType, String? startDate, String? endDate, int? perPage, int? page, }) async {
    final response = await apiV1AccountAccountIdCdrGetWithHttpInfo(accountId,  xAuthID: xAuthID, xAuthToken: xAuthToken, contentType: contentType, startDate: startDate, endDate: endDate, perPage: perPage, page: page, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
