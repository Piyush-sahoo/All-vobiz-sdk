/**
 * Vobiz Node.js SDK - Full Call Flow Integration Test
 * Uses direct HTTP requests for call_uuid operations.
 */

import * as https from 'https';

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

const sleep = (ms: number) => new Promise(resolve => setTimeout(resolve, ms));

function vobizRequest(method: string, path: string, body?: object): Promise<{ status: number; data: any }> {
    return new Promise((resolve, reject) => {
        const payload = body ? JSON.stringify(body) : '';
        const options = {
            hostname: 'api.vobiz.ai',
            path,
            method,
            headers: {
                'X-Auth-ID':     AUTH_ID,
                'X-Auth-Token':  AUTH_TOKEN,
                'Content-Type':  'application/json',
                'Content-Length': Buffer.byteLength(payload),
            },
        };
        const req = https.request(options, (res) => {
            let raw = '';
            res.on('data', chunk => raw += chunk);
            res.on('end', () => {
                let data: any = {};
                try { data = JSON.parse(raw); } catch {}
                resolve({ status: res.statusCode || 0, data });
            });
        });
        req.on('error', reject);
        if (payload) req.write(payload);
        req.end();
    });
}

let passed = 0;
let failed = 0;

async function step(name: string, fn: () => Promise<void>) {
    try {
        await fn();
        console.log(`[Node] PASS: ${name}`);
        passed++;
    } catch (err: any) {
        console.log(`[Node] FAIL: ${name} - ${err?.message || err}`);
        failed++;
    }
}

async function main() {
    // STEP 1: Make outbound call
    console.log('\n[Node] STEP 1: Making outbound call...');
    let requestUUID = '';
    await step('Make Call', async () => {
        const res = await vobizRequest('POST', `/api/v1/Account/${AUTH_ID}/Call/`, {
            from: FROM_NUMBER, to: TO_NUMBER,
            answer_url: ANSWER_URL, answer_method: 'POST',
            hangup_url: HANGUP_URL, hangup_method: 'POST',
        });
        if (res.status >= 300) throw new Error(`HTTP ${res.status}`);
        requestUUID = res.data?.request_uuid || res.data?.objects?.[0]?.request_uuid || '';
        if (!requestUUID) throw new Error(`No request_uuid in: ${JSON.stringify(res.data)}`);
        console.log(`  -> HTTP ${res.status}, request_uuid = ${requestUUID}`);
    });
    if (!requestUUID) { console.log('[Node] Cannot continue without request_uuid'); process.exit(1); }
    await sleep(5000);

    // STEP 2: List all live calls
    await step('List Live Calls', async () => {
        const res = await vobizRequest('GET', `/api/v1/Account/${AUTH_ID}/Call/?status=live`);
        console.log(`  -> HTTP ${res.status}`);
    });
    await sleep(5000);

    // STEP 3: Get single live call
    await step('Get Single Live Call', async () => {
        const res = await vobizRequest('GET', `/api/v1/Account/${AUTH_ID}/Call/${requestUUID}/?status=live`);
        console.log(`  -> HTTP ${res.status}`);
    });
    await sleep(5000);

    // STEP 4: Speak TTS
    await step('Speak TTS', async () => {
        const res = await vobizRequest('POST', `/api/v1/Account/${AUTH_ID}/Call/${requestUUID}/Speak/`,
            { text: 'Hello from Vobiz Node SDK.', voice: 'WOMAN', language: 'en-US', legs: 'aleg' });
        console.log(`  -> HTTP ${res.status}`);
    });
    await sleep(5000);

    // STEP 5: Stop TTS
    await step('Stop TTS', async () => {
        const res = await vobizRequest('DELETE', `/api/v1/Account/${AUTH_ID}/Call/${requestUUID}/Speak/`);
        console.log(`  -> HTTP ${res.status}`);
    });

    // STEP 6: Play audio
    await step('Play Audio', async () => {
        const res = await vobizRequest('POST', `/api/v1/Account/${AUTH_ID}/Call/${requestUUID}/Play/`,
            { urls: [AUDIO_URL], legs: 'aleg', loop: false, mix: true });
        console.log(`  -> HTTP ${res.status}`);
    });
    await sleep(5000);

    // STEP 7: Stop audio
    await step('Stop Audio', async () => {
        const res = await vobizRequest('DELETE', `/api/v1/Account/${AUTH_ID}/Call/${requestUUID}/Play/`);
        console.log(`  -> HTTP ${res.status}`);
    });

    // STEP 8: Start recording
    await step('Start Recording', async () => {
        const res = await vobizRequest('POST', `/api/v1/Account/${AUTH_ID}/Call/${requestUUID}/Record/`,
            { time_limit: 60, file_format: 'mp3' });
        console.log(`  -> HTTP ${res.status}`);
    });
    await sleep(5000);

    // STEP 9: Send DTMF
    await step('Send DTMF', async () => {
        const res = await vobizRequest('POST', `/api/v1/Account/${AUTH_ID}/Call/${requestUUID}/DTMF/`,
            { digits: '1234', leg: 'aleg' });
        console.log(`  -> HTTP ${res.status}`);
    });

    // STEP 10: Stop recording
    await step('Stop Recording', async () => {
        const res = await vobizRequest('DELETE', `/api/v1/Account/${AUTH_ID}/Call/${requestUUID}/Record/`);
        console.log(`  -> HTTP ${res.status}`);
    });

    // STEP 11: Transfer
    await step('Transfer Call', async () => {
        const transferTo = TRANSFER_URL + (TRANSFER_NUMBER ? `?to=${TRANSFER_NUMBER}` : '');
        const res = await vobizRequest('POST', `/api/v1/Account/${AUTH_ID}/Call/${requestUUID}/`,
            { legs: 'aleg', aleg_url: transferTo, aleg_method: 'POST' });
        console.log(`  -> HTTP ${res.status}`);
    });
    await sleep(5000);

    // STEP 12: Hang up
    await step('Hang Up', async () => {
        const res = await vobizRequest('DELETE', `/api/v1/Account/${AUTH_ID}/Call/${requestUUID}/`);
        console.log(`  -> HTTP ${res.status}`);
    });

    console.log(`\n[Node] Call flow COMPLETE: ${passed} passed, ${failed} failed`);
    process.exit(failed > 0 ? 1 : 0);
}

main();
