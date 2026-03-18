//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class PhoneNumbersApi {
  PhoneNumbersApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// List Inventory Numbers
  ///
  /// Browse available phone numbers in inventory for purchase.
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
  ///
  /// * [String] country:
  ///   Filter by country code
  ///
  /// * [int] page:
  ///   Page number
  ///
  /// * [int] perPage:
  ///   Results per page
  Future<Response> apiV1AccountAuthIdInventoryNumbersGetWithHttpInfo(String authId, { String? xAuthID, String? xAuthToken, String? contentType, String? country, int? page, int? perPage, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/account/{auth_id}/inventory/numbers'
      .replaceAll('{auth_id}', authId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (country != null) {
      queryParams.addAll(_queryParams('', 'country', country));
    }
    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (perPage != null) {
      queryParams.addAll(_queryParams('', 'per_page', perPage));
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

  /// List Inventory Numbers
  ///
  /// Browse available phone numbers in inventory for purchase.
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
  ///
  /// * [String] country:
  ///   Filter by country code
  ///
  /// * [int] page:
  ///   Page number
  ///
  /// * [int] perPage:
  ///   Results per page
  Future<void> apiV1AccountAuthIdInventoryNumbersGet(String authId, { String? xAuthID, String? xAuthToken, String? contentType, String? country, int? page, int? perPage, }) async {
    final response = await apiV1AccountAuthIdInventoryNumbersGetWithHttpInfo(authId,  xAuthID: xAuthID, xAuthToken: xAuthToken, contentType: contentType, country: country, page: page, perPage: perPage, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Unrent a Phone Number
  ///
  /// Release (unrent) a phone number from your account.
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
  Future<Response> apiV1AccountAuthIdNumbersE164NumberDeleteWithHttpInfo(String authId, { String? xAuthID, String? xAuthToken, String? contentType, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/account/{auth_id}/numbers/:e164_number'
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
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Unrent a Phone Number
  ///
  /// Release (unrent) a phone number from your account.
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
  Future<void> apiV1AccountAuthIdNumbersE164NumberDelete(String authId, { String? xAuthID, String? xAuthToken, String? contentType, }) async {
    final response = await apiV1AccountAuthIdNumbersE164NumberDeleteWithHttpInfo(authId,  xAuthID: xAuthID, xAuthToken: xAuthToken, contentType: contentType, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List Account Phone Numbers
  ///
  /// Retrieve all phone numbers associated with your account.
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
  Future<Response> apiV1AccountAuthIdNumbersGetWithHttpInfo(String authId, { String? xAuthID, String? xAuthToken, String? contentType, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/account/{auth_id}/numbers'
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

  /// List Account Phone Numbers
  ///
  /// Retrieve all phone numbers associated with your account.
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
  Future<void> apiV1AccountAuthIdNumbersGet(String authId, { String? xAuthID, String? xAuthToken, String? contentType, }) async {
    final response = await apiV1AccountAuthIdNumbersGetWithHttpInfo(authId,  xAuthID: xAuthID, xAuthToken: xAuthToken, contentType: contentType, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Purchase from Inventory
  ///
  /// Purchase a phone number from available inventory.
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
  ///
  /// * [Object] body:
  Future<Response> apiV1AccountAuthIdNumbersPurchaseFromInventoryPostWithHttpInfo(String authId, { String? xAuthID, String? xAuthToken, String? contentType, Object? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/account/{auth_id}/numbers/purchase-from-inventory'
      .replaceAll('{auth_id}', authId);

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

  /// Purchase from Inventory
  ///
  /// Purchase a phone number from available inventory.
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
  ///
  /// * [Object] body:
  Future<void> apiV1AccountAuthIdNumbersPurchaseFromInventoryPost(String authId, { String? xAuthID, String? xAuthToken, String? contentType, Object? body, }) async {
    final response = await apiV1AccountAuthIdNumbersPurchaseFromInventoryPostWithHttpInfo(authId,  xAuthID: xAuthID, xAuthToken: xAuthToken, contentType: contentType, body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
