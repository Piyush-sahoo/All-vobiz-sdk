//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:vobiz/api.dart';
import 'package:test/test.dart';


/// tests for RecordingApi
void main() {
  // final instance = RecordingApi();

  group('tests for RecordingApi', () {
    // List All Recordings
    //
    // Retrieve a paginated list of call recordings for your account.
    //
    //Future apiV1AccountAccountIdRecordingGet(String accountId, { String xAuthID, String xAuthToken, String contentType, int limit, int offset, String callUuid, String recordingType }) async
    test('test apiV1AccountAccountIdRecordingGet', () async {
      // TODO
    });

    // Export Historical Recordings
    //
    // Export recordings as a downloadable archive sent via email (async). Returns 202 Accepted.
    //
    //Future apiV1AccountAuthIdExportRecordingPost(String authId, { String xAuthID, String xAuthToken, String contentType, Object body }) async
    test('test apiV1AccountAuthIdExportRecordingPost', () async {
      // TODO
    });

    // Bulk Delete Recordings
    //
    // Delete multiple recordings matching filter criteria (async operation). Returns 202 Accepted.
    //
    //Future apiV1AccountAuthIdRecordingBulkDeleteDelete(String authId, { String xAuthID, String xAuthToken, String contentType, String addTimeGte, String addTimeLte, String callUuid, String fromNumber, String toNumber, String recordingFormat }) async
    test('test apiV1AccountAuthIdRecordingBulkDeleteDelete', () async {
      // TODO
    });

    // Delete a Recording
    //
    // Permanently delete a specific recording. Returns 204 No Content.
    //
    //Future apiV1AccountAuthIdRecordingDelete(String authId, { String xAuthID, String xAuthToken, String contentType }) async
    test('test apiV1AccountAuthIdRecordingDelete', () async {
      // TODO
    });

    // Retrieve a Recording
    //
    // Get detailed information about a specific recording.
    //
    //Future apiV1AccountAuthIdRecordingGet(String authId, { String xAuthID, String xAuthToken, String contentType }) async
    test('test apiV1AccountAuthIdRecordingGet', () async {
      // TODO
    });

  });
}
