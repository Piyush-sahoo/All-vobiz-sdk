/**
 * Vobiz Node.js/TypeScript SDK - Integration Tests (Read-Only)
 * Run: npx ts-node test/integration.test.ts
 * Requires: VOBIZ_AUTH_ID and VOBIZ_AUTH_TOKEN env vars
 */

import { AccountApi } from '../api/accountApi';
import { CallApi } from '../api/callApi';
import { RecordingApi } from '../api/recordingApi';
import { ConferenceApi } from '../api/conferenceApi';
import { ApplicationApi } from '../api/applicationApi';

const AUTH_ID    = process.env.VOBIZ_AUTH_ID    || '';
const AUTH_TOKEN = process.env.VOBIZ_AUTH_TOKEN  || '';

if (!AUTH_ID || !AUTH_TOKEN) {
    console.log('SKIP: VOBIZ_AUTH_ID or VOBIZ_AUTH_TOKEN not set');
    process.exit(0);
}

const DEFAULT_HEADERS = {
    'X-Auth-ID': AUTH_ID,
    'X-Auth-Token': AUTH_TOKEN,
};

let passed = 0;
let failed = 0;

async function runTest(name: string, fn: () => Promise<void>): Promise<void> {
    try {
        await fn();
        console.log(`[Node] PASS: ${name}`);
        passed++;
    } catch (err: any) {
        const status = err?.response?.statusCode || err?.message || err;
        console.log(`[Node] FAIL: ${name} - ${status}`);
        failed++;
    }
}

async function main() {
    const accountApi    = new AccountApi();
    const callApi       = new CallApi();
    const recordingApi  = new RecordingApi();
    const conferenceApi = new ConferenceApi();
    const appApi        = new ApplicationApi();

    await runTest('GetAccountDetails', async () => {
        const res = await accountApi.apiV1AuthMeGet(
            AUTH_ID, AUTH_TOKEN, 'application/json',
            { headers: DEFAULT_HEADERS }
        );
        console.log(`  -> HTTP ${res.response.statusCode}`);
    });

    await runTest('GetLiveCalls', async () => {
        const res = await callApi.apiV1AccountAuthIdCallGet(
            AUTH_ID, AUTH_ID, AUTH_TOKEN, 'application/json', 'live',
            { headers: DEFAULT_HEADERS }
        );
        console.log(`  -> HTTP ${res.response.statusCode}`);
    });

    await runTest('ListRecordings', async () => {
        const res = await recordingApi.apiV1AccountAccountIdRecordingGet(
            AUTH_ID, AUTH_ID, AUTH_TOKEN, 'application/json',
            20, 0, undefined, undefined,
            { headers: DEFAULT_HEADERS }
        );
        console.log(`  -> HTTP ${res.response.statusCode}`);
    });

    await runTest('ListConferences', async () => {
        const res = await conferenceApi.apiV1AccountAuthIdConferenceGet(
            AUTH_ID, AUTH_ID, AUTH_TOKEN, 'application/json',
            { headers: DEFAULT_HEADERS }
        );
        console.log(`  -> HTTP ${res.response.statusCode}`);
    });

    await runTest('ListApplications', async () => {
        const res = await appApi.apiV1AccountAuthIdApplicationGet(
            AUTH_ID, AUTH_ID, AUTH_TOKEN, 'application/json',
            20, 0,
            { headers: DEFAULT_HEADERS }
        );
        console.log(`  -> HTTP ${res.response.statusCode}`);
    });

    console.log(`\n[Node] Results: ${passed} passed, ${failed} failed`);
    process.exit(failed > 0 ? 1 : 0);
}

main();
