//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class RecordingApi {
  RecordingApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// List All Recordings
  ///
  /// Retrieve a paginated list of call recordings for your account.
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
  ///   Records per request (default: 20, max: 100)
  ///
  /// * [int] offset:
  ///   Pagination offset (default: 0)
  ///
  /// * [String] callUuid:
  ///   Filter by specific call UUID
  ///
  /// * [String] recordingType:
  ///   Filter by type: trunk or extension
  Future<Response> apiV1AccountAccountIdRecordingGetWithHttpInfo(String accountId, { String? xAuthID, String? xAuthToken, String? contentType, int? limit, int? offset, String? callUuid, String? recordingType, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/Account/{account_id}/Recording/'
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
    if (callUuid != null) {
      queryParams.addAll(_queryParams('', 'call_uuid', callUuid));
    }
    if (recordingType != null) {
      queryParams.addAll(_queryParams('', 'recording_type', recordingType));
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

  /// List All Recordings
  ///
  /// Retrieve a paginated list of call recordings for your account.
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
  ///   Records per request (default: 20, max: 100)
  ///
  /// * [int] offset:
  ///   Pagination offset (default: 0)
  ///
  /// * [String] callUuid:
  ///   Filter by specific call UUID
  ///
  /// * [String] recordingType:
  ///   Filter by type: trunk or extension
  Future<void> apiV1AccountAccountIdRecordingGet(String accountId, { String? xAuthID, String? xAuthToken, String? contentType, int? limit, int? offset, String? callUuid, String? recordingType, }) async {
    final response = await apiV1AccountAccountIdRecordingGetWithHttpInfo(accountId,  xAuthID: xAuthID, xAuthToken: xAuthToken, contentType: contentType, limit: limit, offset: offset, callUuid: callUuid, recordingType: recordingType, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Export Historical Recordings
  ///
  /// Export recordings as a downloadable archive sent via email (async). Returns 202 Accepted.
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
  Future<Response> apiV1AccountAuthIdExportRecordingPostWithHttpInfo(String authId, { String? xAuthID, String? xAuthToken, String? contentType, Object? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/Account/{auth_id}/export/recording/'
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

  /// Export Historical Recordings
  ///
  /// Export recordings as a downloadable archive sent via email (async). Returns 202 Accepted.
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
  Future<void> apiV1AccountAuthIdExportRecordingPost(String authId, { String? xAuthID, String? xAuthToken, String? contentType, Object? body, }) async {
    final response = await apiV1AccountAuthIdExportRecordingPostWithHttpInfo(authId,  xAuthID: xAuthID, xAuthToken: xAuthToken, contentType: contentType, body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Bulk Delete Recordings
  ///
  /// Delete multiple recordings matching filter criteria (async operation). Returns 202 Accepted.
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
  /// * [String] addTimeGte:
  ///   Delete recordings on/after this date (YYYY-MM-DD HH:MM:SS)
  ///
  /// * [String] addTimeLte:
  ///   Delete recordings on/before this date
  ///
  /// * [String] callUuid:
  ///   Delete recordings for specific call UUID
  ///
  /// * [String] fromNumber:
  ///   Delete by caller number (partial match)
  ///
  /// * [String] toNumber:
  ///   Delete by destination number (partial match)
  ///
  /// * [String] recordingFormat:
  ///   mp3 or wav
  Future<Response> apiV1AccountAuthIdRecordingBulkDeleteDeleteWithHttpInfo(String authId, { String? xAuthID, String? xAuthToken, String? contentType, String? addTimeGte, String? addTimeLte, String? callUuid, String? fromNumber, String? toNumber, String? recordingFormat, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/Account/{auth_id}/Recording/BulkDelete/'
      .replaceAll('{auth_id}', authId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (addTimeGte != null) {
      queryParams.addAll(_queryParams('', 'add_time__gte', addTimeGte));
    }
    if (addTimeLte != null) {
      queryParams.addAll(_queryParams('', 'add_time__lte', addTimeLte));
    }
    if (callUuid != null) {
      queryParams.addAll(_queryParams('', 'call_uuid', callUuid));
    }
    if (fromNumber != null) {
      queryParams.addAll(_queryParams('', 'from_number', fromNumber));
    }
    if (toNumber != null) {
      queryParams.addAll(_queryParams('', 'to_number', toNumber));
    }
    if (recordingFormat != null) {
      queryParams.addAll(_queryParams('', 'recording_format', recordingFormat));
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
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Bulk Delete Recordings
  ///
  /// Delete multiple recordings matching filter criteria (async operation). Returns 202 Accepted.
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
  /// * [String] addTimeGte:
  ///   Delete recordings on/after this date (YYYY-MM-DD HH:MM:SS)
  ///
  /// * [String] addTimeLte:
  ///   Delete recordings on/before this date
  ///
  /// * [String] callUuid:
  ///   Delete recordings for specific call UUID
  ///
  /// * [String] fromNumber:
  ///   Delete by caller number (partial match)
  ///
  /// * [String] toNumber:
  ///   Delete by destination number (partial match)
  ///
  /// * [String] recordingFormat:
  ///   mp3 or wav
  Future<void> apiV1AccountAuthIdRecordingBulkDeleteDelete(String authId, { String? xAuthID, String? xAuthToken, String? contentType, String? addTimeGte, String? addTimeLte, String? callUuid, String? fromNumber, String? toNumber, String? recordingFormat, }) async {
    final response = await apiV1AccountAuthIdRecordingBulkDeleteDeleteWithHttpInfo(authId,  xAuthID: xAuthID, xAuthToken: xAuthToken, contentType: contentType, addTimeGte: addTimeGte, addTimeLte: addTimeLte, callUuid: callUuid, fromNumber: fromNumber, toNumber: toNumber, recordingFormat: recordingFormat, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete a Recording
  ///
  /// Permanently delete a specific recording. Returns 204 No Content.
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
  Future<Response> apiV1AccountAuthIdRecordingDeleteWithHttpInfo(String authId, { String? xAuthID, String? xAuthToken, String? contentType, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/Account/{auth_id}/Recording/{}/'
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

  /// Delete a Recording
  ///
  /// Permanently delete a specific recording. Returns 204 No Content.
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
  Future<void> apiV1AccountAuthIdRecordingDelete(String authId, { String? xAuthID, String? xAuthToken, String? contentType, }) async {
    final response = await apiV1AccountAuthIdRecordingDeleteWithHttpInfo(authId,  xAuthID: xAuthID, xAuthToken: xAuthToken, contentType: contentType, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Retrieve a Recording
  ///
  /// Get detailed information about a specific recording.
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
  Future<Response> apiV1AccountAuthIdRecordingGetWithHttpInfo(String authId, { String? xAuthID, String? xAuthToken, String? contentType, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/Account/{auth_id}/Recording/{}/'
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

  /// Retrieve a Recording
  ///
  /// Get detailed information about a specific recording.
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
  Future<void> apiV1AccountAuthIdRecordingGet(String authId, { String? xAuthID, String? xAuthToken, String? contentType, }) async {
    final response = await apiV1AccountAuthIdRecordingGetWithHttpInfo(authId,  xAuthID: xAuthID, xAuthToken: xAuthToken, contentType: contentType, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
