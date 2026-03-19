import 'dart:io';
import 'dart:convert';
import 'package:http/http.dart' as http;

/// Vobiz Dart SDK - Full Call Flow Integration Test
/// Uses direct HTTP requests for call_uuid operations.
Future<void> main() async {
  final authId         = Platform.environment['VOBIZ_AUTH_ID']         ?? '';
  final authToken      = Platform.environment['VOBIZ_AUTH_TOKEN']       ?? '';
  final fromNumber     = Platform.environment['VOBIZ_FROM_NUMBER']      ?? '';
  final toNumber       = Platform.environment['VOBIZ_TO_NUMBER']        ?? '';
  final transferNumber = Platform.environment['VOBIZ_TRANSFER_NUMBER']  ?? '';

  if (authId.isEmpty || authToken.isEmpty || fromNumber.isEmpty || toNumber.isEmpty) {
    print('SKIP: Required env vars not set');
    exit(0);
  }

  const audioUrl    = 'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3';
  const answerUrl   = 'https://internal-test-xml.vobiz.ai/answer';
  const hangupUrl   = 'https://internal-test-xml.vobiz.ai/hangup';
  const transferUrl = 'https://internal-test-xml.vobiz.ai/answer';
  const baseUrl     = 'https://api.vobiz.ai';

  final headers = {
    'X-Auth-ID':    authId,
    'X-Auth-Token': authToken,
    'Content-Type': 'application/json',
  };

  Future<Map<String, dynamic>> vobizRequest(String method, String path, [Map<String, dynamic>? body]) async {
    final uri  = Uri.parse('$baseUrl$path');
    final bodyStr = body != null ? jsonEncode(body) : '';
    http.Response resp;
    switch (method) {
      case 'POST':   resp = await http.post(uri,   headers: headers, body: bodyStr); break;
      case 'DELETE': resp = await http.delete(uri, headers: headers, body: bodyStr); break;
      default:       resp = await http.get(uri,    headers: headers);
    }
    print('  -> HTTP ${resp.statusCode}');
    try { return jsonDecode(resp.body) as Map<String, dynamic>; }
    catch (_) { return {}; }
  }

  final sleep = (int sec) => Future.delayed(Duration(seconds: sec));
  int passed = 0, failed = 0;

  Future<void> step(String name, Future<void> Function() fn) async {
    try { await fn(); print('[Dart] PASS: $name'); passed++; }
    catch (e) { print('[Dart] FAIL: $name - $e'); failed++; }
  }

  // STEP 1: Make outbound call
  print('\n[Dart] STEP 1: Making outbound call...');
  String requestUUID = '';
  await step('Make Call', () async {
    final data = await vobizRequest('POST', '/api/v1/Account/$authId/Call/', {
      'from': fromNumber, 'to': toNumber,
      'answer_url': answerUrl, 'answer_method': 'POST',
      'hangup_url': hangupUrl, 'hangup_method': 'POST',
    });
    requestUUID = data['request_uuid'] as String? ??
        ((data['objects'] as List?)?.first as Map?)?.get('request_uuid') as String? ?? '';
    if (requestUUID.isEmpty) throw Exception('No request_uuid in: $data');
    print('  -> request_uuid = $requestUUID');
  });
  if (requestUUID.isEmpty) { print('[Dart] Cannot continue'); exit(1); }
  await sleep(5);

  await step('List Live Calls', () async {
    await vobizRequest('GET', '/api/v1/Account/$authId/Call/?status=live');
  });
  await sleep(5);

  await step('Get Single Live Call', () async {
    await vobizRequest('GET', '/api/v1/Account/$authId/Call/$requestUUID/?status=live');
  });
  await sleep(5);

  await step('Speak TTS', () async {
    await vobizRequest('POST', '/api/v1/Account/$authId/Call/$requestUUID/Speak/',
        {'text': 'Hello from Vobiz Dart SDK.', 'voice': 'WOMAN', 'language': 'en-US', 'legs': 'aleg'});
  });
  await sleep(5);

  await step('Stop TTS', () async {
    await vobizRequest('DELETE', '/api/v1/Account/$authId/Call/$requestUUID/Speak/');
  });

  await step('Play Audio', () async {
    await vobizRequest('POST', '/api/v1/Account/$authId/Call/$requestUUID/Play/',
        {'urls': [audioUrl], 'legs': 'aleg', 'loop': false, 'mix': true});
  });
  await sleep(5);

  await step('Stop Audio', () async {
    await vobizRequest('DELETE', '/api/v1/Account/$authId/Call/$requestUUID/Play/');
  });

  await step('Start Recording', () async {
    await vobizRequest('POST', '/api/v1/Account/$authId/Call/$requestUUID/Record/',
        {'time_limit': 60, 'file_format': 'mp3'});
  });
  await sleep(5);

  await step('Send DTMF', () async {
    await vobizRequest('POST', '/api/v1/Account/$authId/Call/$requestUUID/DTMF/',
        {'digits': '1234', 'leg': 'aleg'});
  });

  await step('Stop Recording', () async {
    await vobizRequest('DELETE', '/api/v1/Account/$authId/Call/$requestUUID/Record/');
  });

  await step('Transfer Call', () async {
    final transferTo = transferUrl + (transferNumber.isNotEmpty ? '?to=$transferNumber' : '');
    await vobizRequest('POST', '/api/v1/Account/$authId/Call/$requestUUID/',
        {'legs': 'aleg', 'aleg_url': transferTo, 'aleg_method': 'POST'});
  });
  await sleep(5);

  await step('Hang Up', () async {
    await vobizRequest('DELETE', '/api/v1/Account/$authId/Call/$requestUUID/');
  });

  print('\n[Dart] Call flow COMPLETE: $passed passed, $failed failed');
  exit(failed > 0 ? 1 : 0);
}
