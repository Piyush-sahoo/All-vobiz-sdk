# vobiz-node — Beginner Guide

This guide is for developers using `vobiz-node` for the first time.

## 1) What this SDK is

`vobiz-node` is a Node.js wrapper around Vobiz APIs.

Instead of writing raw HTTP requests, you call SDK methods like:

- `client.calls.create(...)`
- `client.messages.create(...)`
- `client.cdr.get(...)`

Full API details are in [README.md](README.md).

## 2) Prerequisites

- Node.js 14+
- Vobiz account credentials (`Auth ID`, `Auth Token`)

## 3) Install

```bash
npm install vobiz-node
```

## 4) Configure authentication

### Option A: Direct values

```js
const { Client } = require('vobiz-node');
const client = new Client('YOUR_AUTH_ID', 'YOUR_AUTH_TOKEN');
```

### Option B: Environment variables

```bash
export VOBIZ_AUTH_ID=YOUR_AUTH_ID
export VOBIZ_AUTH_TOKEN=YOUR_AUTH_TOKEN
```

```js
const { Client } = require('vobiz-node');
const client = new Client();
```

## 5) First script (copy/paste)

```js
const { Client } = require('vobiz-node');

async function main() {
  const client = new Client(process.env.VOBIZ_AUTH_ID, process.env.VOBIZ_AUTH_TOKEN);

  const message = await client.messages.create({
    src: '+14155551234',
    dst: '+14155555678',
    text: 'Hello from vobiz-node beginner script'
  });

  console.log('Message:', message);
}

main().catch((err) => {
  console.error('SDK error:', err?.message || err);
  process.exit(1);
});
```

## 6) First useful operations

### Make a call

```js
const call = await client.calls.create(
  '+14155551234',
  '+14155555678',
  'https://example.com/answer'
);
```

### Send SMS

```js
const msg = await client.messages.create({
  src: '+14155551234',
  dst: '+14155555678',
  text: 'Hello from node'
});
```

### Retrieve CDRs

```js
const cdr = await client.cdr.get({ limit: 10, offset: 0 });
```

### Lookup a number

```js
const info = await client.lookup.get('+14155550100', { type: 'carrier' });
```

## 7) Error handling and retries

Use `try/catch` for every async call path:

```js
try {
  const data = await client.calls.get('CALL_UUID');
  console.log(data);
} catch (err) {
  // include request context when logging
  console.error('calls.get failed:', err?.message || err);
}
```

For production apps, add:

- request timeout configuration
- retry policy for transient failures
- structured logging with call/message UUIDs

## 8) Webhooks and XML basics

For call flows, your `answer_url` should return Vobiz XML.

If your app runs locally, use a tunnel and ensure the webhook URL is reachable from Vobiz.

## 9) Run tests in this repository

```bash
npm test
```

Primary integration test harness: [test-sdk.js](test-sdk.js).

## 10) Recommended learning path in repo

1. [README.md](README.md)
2. [examples](examples)
3. [test-sdk.js](test-sdk.js)
4. `lib/resources/*` service implementations

## 11) Common beginner mistakes

- Missing env vars
- Invalid phone number formatting
- Non-public webhook URLs for live call flows
- Not awaiting promises
- No `try/catch` around async API calls
