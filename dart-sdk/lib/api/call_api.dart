//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class CallApi {
  CallApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Send DTMF Digits
  ///
  /// Send DTMF digits to an active call for automated IVR navigation.
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
  Future<Response> apiV1AccountAuthIdCallDTMFPostWithHttpInfo(String authId, { String? xAuthID, String? xAuthToken, String? contentType, Object? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/Account/{auth_id}/Call/{}/DTMF/'
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

  /// Send DTMF Digits
  ///
  /// Send DTMF digits to an active call for automated IVR navigation.
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
  Future<void> apiV1AccountAuthIdCallDTMFPost(String authId, { String? xAuthID, String? xAuthToken, String? contentType, Object? body, }) async {
    final response = await apiV1AccountAuthIdCallDTMFPostWithHttpInfo(authId,  xAuthID: xAuthID, xAuthToken: xAuthToken, contentType: contentType, body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Hang Up a Call
  ///
  /// Terminate an active call. Returns 204 No Content.
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
  Future<Response> apiV1AccountAuthIdCallDeleteWithHttpInfo(String authId, { String? xAuthID, String? xAuthToken, String? contentType, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/Account/{auth_id}/Call/{}/'
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

  /// Hang Up a Call
  ///
  /// Terminate an active call. Returns 204 No Content.
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
  Future<void> apiV1AccountAuthIdCallDelete(String authId, { String? xAuthID, String? xAuthToken, String? contentType, }) async {
    final response = await apiV1AccountAuthIdCallDeleteWithHttpInfo(authId,  xAuthID: xAuthID, xAuthToken: xAuthToken, contentType: contentType, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Retrieve All Queued Calls
  ///
  /// Get a list of all call UUIDs for calls currently queued and waiting to connect. Max 20 results.
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
  /// * [String] status:
  ///   Must be 'queued'
  Future<Response> apiV1AccountAuthIdCallGetWithHttpInfo(String authId, { String? xAuthID, String? xAuthToken, String? contentType, String? status, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/Account/{auth_id}/Call/'
      .replaceAll('{auth_id}', authId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (status != null) {
      queryParams.addAll(_queryParams('', 'status', status));
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

  /// Retrieve All Queued Calls
  ///
  /// Get a list of all call UUIDs for calls currently queued and waiting to connect. Max 20 results.
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
  /// * [String] status:
  ///   Must be 'queued'
  Future<void> apiV1AccountAuthIdCallGet(String authId, { String? xAuthID, String? xAuthToken, String? contentType, String? status, }) async {
    final response = await apiV1AccountAuthIdCallGetWithHttpInfo(authId,  xAuthID: xAuthID, xAuthToken: xAuthToken, contentType: contentType, status: status, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Retrieve a Queued Call
  ///
  /// Get details of a specific queued call.
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
  /// * [String] status:
  ///   Must be 'queued'
  Future<Response> apiV1AccountAuthIdCallGet_1WithHttpInfo(String authId, { String? xAuthID, String? xAuthToken, String? contentType, String? status, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/Account/{auth_id}/Call/{}/'
      .replaceAll('{auth_id}', authId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (status != null) {
      queryParams.addAll(_queryParams('', 'status', status));
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

  /// Retrieve a Queued Call
  ///
  /// Get details of a specific queued call.
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
  /// * [String] status:
  ///   Must be 'queued'
  Future<void> apiV1AccountAuthIdCallGet_1(String authId, { String? xAuthID, String? xAuthToken, String? contentType, String? status, }) async {
    final response = await apiV1AccountAuthIdCallGet_1WithHttpInfo(authId,  xAuthID: xAuthID, xAuthToken: xAuthToken, contentType: contentType, status: status, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Stop Playing Audio on a Call
  ///
  /// Stop audio playback on an active call. Returns 204 No Content.
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
  Future<Response> apiV1AccountAuthIdCallPlayDeleteWithHttpInfo(String authId, { String? xAuthID, String? xAuthToken, String? contentType, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/Account/{auth_id}/Call/{}/Play/'
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

  /// Stop Playing Audio on a Call
  ///
  /// Stop audio playback on an active call. Returns 204 No Content.
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
  Future<void> apiV1AccountAuthIdCallPlayDelete(String authId, { String? xAuthID, String? xAuthToken, String? contentType, }) async {
    final response = await apiV1AccountAuthIdCallPlayDeleteWithHttpInfo(authId,  xAuthID: xAuthID, xAuthToken: xAuthToken, contentType: contentType, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Play Audio on a Call
  ///
  /// Play audio file(s) during an active call.
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
  Future<Response> apiV1AccountAuthIdCallPlayPostWithHttpInfo(String authId, { String? xAuthID, String? xAuthToken, String? contentType, Object? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/Account/{auth_id}/Call/{}/Play/'
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

  /// Play Audio on a Call
  ///
  /// Play audio file(s) during an active call.
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
  Future<void> apiV1AccountAuthIdCallPlayPost(String authId, { String? xAuthID, String? xAuthToken, String? contentType, Object? body, }) async {
    final response = await apiV1AccountAuthIdCallPlayPostWithHttpInfo(authId,  xAuthID: xAuthID, xAuthToken: xAuthToken, contentType: contentType, body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Make an Outbound Call
  ///
  /// Initiate an outbound call to a PSTN number or SIP endpoint. Supports bulk calls (up to 1000 destinations using < separator).
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
  Future<Response> apiV1AccountAuthIdCallPostWithHttpInfo(String authId, { String? xAuthID, String? xAuthToken, String? contentType, Object? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/Account/{auth_id}/Call/'
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

  /// Make an Outbound Call
  ///
  /// Initiate an outbound call to a PSTN number or SIP endpoint. Supports bulk calls (up to 1000 destinations using < separator).
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
  Future<void> apiV1AccountAuthIdCallPost(String authId, { String? xAuthID, String? xAuthToken, String? contentType, Object? body, }) async {
    final response = await apiV1AccountAuthIdCallPostWithHttpInfo(authId,  xAuthID: xAuthID, xAuthToken: xAuthToken, contentType: contentType, body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Transfer a Call
  ///
  /// Transfer an in-progress call to a different URL for new call flow instructions.
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
  Future<Response> apiV1AccountAuthIdCallPost_2WithHttpInfo(String authId, { String? xAuthID, String? xAuthToken, String? contentType, Object? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/Account/{auth_id}/Call/{}/'
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

  /// Transfer a Call
  ///
  /// Transfer an in-progress call to a different URL for new call flow instructions.
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
  Future<void> apiV1AccountAuthIdCallPost_2(String authId, { String? xAuthID, String? xAuthToken, String? contentType, Object? body, }) async {
    final response = await apiV1AccountAuthIdCallPost_2WithHttpInfo(authId,  xAuthID: xAuthID, xAuthToken: xAuthToken, contentType: contentType, body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Stop Recording a Call
  ///
  /// Stop active recording(s) on a call. Returns 204 No Content.
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
  Future<Response> apiV1AccountAuthIdCallRecordDeleteWithHttpInfo(String authId, { String? xAuthID, String? xAuthToken, String? contentType, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/Account/{auth_id}/Call/{}/Record/'
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

  /// Stop Recording a Call
  ///
  /// Stop active recording(s) on a call. Returns 204 No Content.
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
  Future<void> apiV1AccountAuthIdCallRecordDelete(String authId, { String? xAuthID, String? xAuthToken, String? contentType, }) async {
    final response = await apiV1AccountAuthIdCallRecordDeleteWithHttpInfo(authId,  xAuthID: xAuthID, xAuthToken: xAuthToken, contentType: contentType, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Start Recording a Call
  ///
  /// Begin recording an active call.
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
  Future<Response> apiV1AccountAuthIdCallRecordPostWithHttpInfo(String authId, { String? xAuthID, String? xAuthToken, String? contentType, Object? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/Account/{auth_id}/Call/{}/Record/'
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

  /// Start Recording a Call
  ///
  /// Begin recording an active call.
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
  Future<void> apiV1AccountAuthIdCallRecordPost(String authId, { String? xAuthID, String? xAuthToken, String? contentType, Object? body, }) async {
    final response = await apiV1AccountAuthIdCallRecordPostWithHttpInfo(authId,  xAuthID: xAuthID, xAuthToken: xAuthToken, contentType: contentType, body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Stop Speaking Text on a Call
  ///
  /// Stop text-to-speech playback. Returns 204 No Content.
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
  Future<Response> apiV1AccountAuthIdCallSpeakDeleteWithHttpInfo(String authId, { String? xAuthID, String? xAuthToken, String? contentType, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/Account/{auth_id}/Call/{}/Speak/'
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

  /// Stop Speaking Text on a Call
  ///
  /// Stop text-to-speech playback. Returns 204 No Content.
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
  Future<void> apiV1AccountAuthIdCallSpeakDelete(String authId, { String? xAuthID, String? xAuthToken, String? contentType, }) async {
    final response = await apiV1AccountAuthIdCallSpeakDeleteWithHttpInfo(authId,  xAuthID: xAuthID, xAuthToken: xAuthToken, contentType: contentType, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Speak Text on a Call (TTS)
  ///
  /// Convert text to speech and play it during an active call. Supports 29 languages.
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
  Future<Response> apiV1AccountAuthIdCallSpeakPostWithHttpInfo(String authId, { String? xAuthID, String? xAuthToken, String? contentType, Object? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/Account/{auth_id}/Call/{}/Speak/'
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

  /// Speak Text on a Call (TTS)
  ///
  /// Convert text to speech and play it during an active call. Supports 29 languages.
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
  Future<void> apiV1AccountAuthIdCallSpeakPost(String authId, { String? xAuthID, String? xAuthToken, String? contentType, Object? body, }) async {
    final response = await apiV1AccountAuthIdCallSpeakPostWithHttpInfo(authId,  xAuthID: xAuthID, xAuthToken: xAuthToken, contentType: contentType, body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
