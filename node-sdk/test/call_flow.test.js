'use strict';

/**
 * Vobiz Node.js SDK - Full Call Flow Integration Test (12 steps)
 * Uses the new lib/rest/client.js SDK structure.
 * Run: node test/call_flow.test.js
 */

const Vobiz = require('..');

const AUTH_ID         = process.env.VOBIZ_AUTH_ID         || '';
const AUTH_TOKEN      = process.env.VOBIZ_AUTH_TOKEN       || '';
const FROM_NUMBER     = process.env.VOBIZ_FROM_NUMBER      || '';
const TO_NUMBER       = process.env.VOBIZ_TO_NUMBER        || '';
const TRANSFER_NUMBER = process.env.VOBIZ_TRANSFER_NUMBER  || '';

const AUDIO_URL    = 'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3';
const ANSWER_URL   = 'https://internal-test-xml.vobiz.ai/answer';
const HANGUP_URL   = 'https://internal-test-xml.vobiz.ai/hangup';
const TRANSFER_URL = 'https://internal-test-xml.vobiz.ai/answer';

if (!AUTH_ID || !AUTH_TOKEN || !FROM_NUMBER || !TO_NUMBER) {
  console.log('SKIP: VOBIZ_AUTH_ID, VOBIZ_AUTH_TOKEN, VOBIZ_FROM_NUMBER, VOBIZ_TO_NUMBER required');
  process.exit(0);
}

const client = new Vobiz.Client(AUTH_ID, AUTH_TOKEN);
const sleep  = (ms) => new Promise(resolve => setTimeout(resolve, ms));

let passed = 0;
let failed = 0;

async function step(name, fn) {
  try {
    await fn();
    console.log(`[Node] PASS: ${name}`);
    passed++;
  } catch (err) {
    console.log(`[Node] FAIL: ${name} - ${err.message || err}`);
    failed++;
  }
}

async function main() {
  let requestUUID = '';

  // STEP 1: Make outbound call
  console.log('\n[Node] STEP 1: Making outbound call...');
  await step('Make Call', async () => {
    const call = await client.calls.create(FROM_NUMBER, TO_NUMBER, ANSWER_URL, {
      hangupUrl:    HANGUP_URL,
      hangupMethod: 'POST',
      answerMethod: 'POST',
    });
    requestUUID = call.requestUuid || call.request_uuid || '';
    if (!requestUUID) throw new Error(`No requestUuid in: ${JSON.stringify(call)}`);
    console.log(`  -> requestUuid = ${requestUUID}`);
  });

  if (!requestUUID) { console.log('[Node] Cannot continue without requestUuid'); process.exit(1); }
  await sleep(5000);

  // STEP 2: List all live calls
  await step('List Live Calls', async () => {
    const result = await client.calls.list({ status: 'live' });
    console.log(`  -> got ${Array.isArray(result) ? result.length : 'response'} items`);
  });
  await sleep(5000);

  // STEP 3: Get single live call
  await step('Get Single Live Call', async () => {
    const result = await client.calls.get(requestUUID);
    console.log(`  -> OK`);
  });
  await sleep(5000);

  // STEP 4: Speak TTS
  await step('Speak TTS', async () => {
    await client.calls.speakText(requestUUID, 'Hello from Vobiz Node SDK.', 'WOMAN', 'en-US', 'aleg');
    console.log(`  -> OK`);
  });
  await sleep(5000);

  // STEP 5: Stop TTS
  await step('Stop TTS', async () => {
    await client.calls.stopSpeaking(requestUUID);
    console.log(`  -> OK`);
  });

  // STEP 6: Play audio
  await step('Play Audio', async () => {
    await client.calls.playAudio(requestUUID, [AUDIO_URL], { legs: 'aleg' });
    console.log(`  -> OK`);
  });
  await sleep(5000);

  // STEP 7: Stop audio
  await step('Stop Audio', async () => {
    await client.calls.stopPlaying(requestUUID);
    console.log(`  -> OK`);
  });

  // STEP 8: Start recording
  await step('Start Recording', async () => {
    await client.calls.record(requestUUID, { timeLimit: 60, fileFormat: 'mp3' });
    console.log(`  -> OK`);
  });
  await sleep(5000);

  // STEP 9: Send DTMF
  await step('Send DTMF', async () => {
    await client.calls.sendDigits(requestUUID, '1234', 'aleg');
    console.log(`  -> OK`);
  });

  // STEP 10: Stop recording
  await step('Stop Recording', async () => {
    await client.calls.stopRecording(requestUUID);
    console.log(`  -> OK`);
  });

  // STEP 11: Transfer call
  await step('Transfer Call', async () => {
    const transferTo = TRANSFER_URL + (TRANSFER_NUMBER ? `?to=${TRANSFER_NUMBER}` : '');
    await client.calls.transfer(requestUUID, { alegUrl: transferTo, alegMethod: 'POST', legs: 'aleg' });
    console.log(`  -> OK`);
  });
  await sleep(5000);

  // STEP 12: Hang up
  await step('Hang Up', async () => {
    await client.calls.hangup(requestUUID);
    console.log(`  -> OK`);
  });

  console.log(`\n[Node] Call flow COMPLETE: ${passed} passed, ${failed} failed`);
  process.exit(failed > 0 ? 1 : 0);
}

main();
