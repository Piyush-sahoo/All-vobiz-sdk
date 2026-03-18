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


/// tests for CallApi
void main() {
  // final instance = CallApi();

  group('tests for CallApi', () {
    // Send DTMF Digits
    //
    // Send DTMF digits to an active call for automated IVR navigation.
    //
    //Future apiV1AccountAuthIdCallDTMFPost(String authId, { String xAuthID, String xAuthToken, String contentType, Object body }) async
    test('test apiV1AccountAuthIdCallDTMFPost', () async {
      // TODO
    });

    // Hang Up a Call
    //
    // Terminate an active call. Returns 204 No Content.
    //
    //Future apiV1AccountAuthIdCallDelete(String authId, { String xAuthID, String xAuthToken, String contentType }) async
    test('test apiV1AccountAuthIdCallDelete', () async {
      // TODO
    });

    // Retrieve All Queued Calls
    //
    // Get a list of all call UUIDs for calls currently queued and waiting to connect. Max 20 results.
    //
    //Future apiV1AccountAuthIdCallGet(String authId, { String xAuthID, String xAuthToken, String contentType, String status }) async
    test('test apiV1AccountAuthIdCallGet', () async {
      // TODO
    });

    // Retrieve a Queued Call
    //
    // Get details of a specific queued call.
    //
    //Future apiV1AccountAuthIdCallGet_0(String authId, { String xAuthID, String xAuthToken, String contentType, String status }) async
    test('test apiV1AccountAuthIdCallGet_0', () async {
      // TODO
    });

    // Stop Playing Audio on a Call
    //
    // Stop audio playback on an active call. Returns 204 No Content.
    //
    //Future apiV1AccountAuthIdCallPlayDelete(String authId, { String xAuthID, String xAuthToken, String contentType }) async
    test('test apiV1AccountAuthIdCallPlayDelete', () async {
      // TODO
    });

    // Play Audio on a Call
    //
    // Play audio file(s) during an active call.
    //
    //Future apiV1AccountAuthIdCallPlayPost(String authId, { String xAuthID, String xAuthToken, String contentType, Object body }) async
    test('test apiV1AccountAuthIdCallPlayPost', () async {
      // TODO
    });

    // Make an Outbound Call
    //
    // Initiate an outbound call to a PSTN number or SIP endpoint. Supports bulk calls (up to 1000 destinations using < separator).
    //
    //Future apiV1AccountAuthIdCallPost(String authId, { String xAuthID, String xAuthToken, String contentType, Object body }) async
    test('test apiV1AccountAuthIdCallPost', () async {
      // TODO
    });

    // Transfer a Call
    //
    // Transfer an in-progress call to a different URL for new call flow instructions.
    //
    //Future apiV1AccountAuthIdCallPost_0(String authId, { String xAuthID, String xAuthToken, String contentType, Object body }) async
    test('test apiV1AccountAuthIdCallPost_0', () async {
      // TODO
    });

    // Stop Recording a Call
    //
    // Stop active recording(s) on a call. Returns 204 No Content.
    //
    //Future apiV1AccountAuthIdCallRecordDelete(String authId, { String xAuthID, String xAuthToken, String contentType }) async
    test('test apiV1AccountAuthIdCallRecordDelete', () async {
      // TODO
    });

    // Start Recording a Call
    //
    // Begin recording an active call.
    //
    //Future apiV1AccountAuthIdCallRecordPost(String authId, { String xAuthID, String xAuthToken, String contentType, Object body }) async
    test('test apiV1AccountAuthIdCallRecordPost', () async {
      // TODO
    });

    // Stop Speaking Text on a Call
    //
    // Stop text-to-speech playback. Returns 204 No Content.
    //
    //Future apiV1AccountAuthIdCallSpeakDelete(String authId, { String xAuthID, String xAuthToken, String contentType }) async
    test('test apiV1AccountAuthIdCallSpeakDelete', () async {
      // TODO
    });

    // Speak Text on a Call (TTS)
    //
    // Convert text to speech and play it during an active call. Supports 29 languages.
    //
    //Future apiV1AccountAuthIdCallSpeakPost(String authId, { String xAuthID, String xAuthToken, String contentType, Object body }) async
    test('test apiV1AccountAuthIdCallSpeakPost', () async {
      // TODO
    });

  });
}
