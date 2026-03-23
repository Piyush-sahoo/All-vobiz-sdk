# Node SDK Replication Reference (for other language SDKs)

This document lists the **authoritative Node SDK references** you should mirror to replicate behavior in another language SDK.

Scope: `/node-sdk` in this monorepo.

---

## 1) Canonical implementation entry points

Start here first, in this exact order:

1. `node-sdk/index.js`
   - Public package entry.
   - Re-exports REST client and JWT token helper.
2. `node-sdk/lib/rest/client.js`
   - Main SDK constructor (`Client`) and service wiring.
   - Defines **which resources are public** and which base URL each uses.
3. `node-sdk/lib/rest/axios.js`
   - HTTP transport behavior: headers, retry, timeout, proxy, error mapping.
4. `node-sdk/lib/rest/utils.js`
   - request/response key normalization (`camelCase` ↔ `snake_case`).
5. `node-sdk/lib/base.js`
   - shared resource patterns for legacy-style resources.

If a target language SDK diverges from these 5 files, behavior will drift.

---

## 2) Public SDK surface to mirror

From `Client` constructor in `node-sdk/lib/rest/client.js`, mirror these exposed services:

- Voice & calls:
  - `calls`
  - `recordings`
  - `conferences`
  - `cdr`
- Numbers & routing:
  - `numbers`
  - `endpoints`
  - `applications`
- SIP trunking:
  - `trunks`
  - `credentials`
  - `ipAcl`
  - `originationUris`
- Account:
  - `account`
  - `subaccounts`
  - `balance`
- Utility:
  - `AccessToken` (JWT helper)

Also mirror env fallback behavior:
- `VOBIZ_AUTH_ID`
- `VOBIZ_AUTH_TOKEN`

---

## 3) Base URL and routing contract (critical)

Node SDK uses **two API bases**:

1. Modern base:
   - `https://api.vobiz.ai/api/v1/account/{authId}`
2. Legacy voice base:
   - `https://api.vobiz.ai/api/v1/Account/{authId}`

Rules to replicate:

- Services wired to legacy client: `calls`, `recordings`, `conferences`, `endpoints`, `applications`
- Services wired to modern client: `cdr`, `numbers`, `trunks`, `credentials`, `ipAcl`, `originationUris`, `account`, `subaccounts`, `balance`
- `override_url` must be supported for endpoints that do not fit default concatenation (notably `account.getProfile()` and subaccounts URL rewriting).

---

## 4) HTTP transport behavior contract

Mirror these runtime behaviors from `node-sdk/lib/rest/axios.js`:

- Required headers on every request:
  - `X-Auth-ID`
  - `X-Auth-Token`
  - `User-Agent`
  - `Content-Type: application/json`
- GET requests send query params; non-GET send body.
- Empty plain-object payload should be omitted.
- Timeouts:
  - voice request: 10s
  - default: 30s
- Retry policy:
  - retry for 429 and 5xx
  - max retries: 3
  - `Retry-After` honored when present, otherwise exponential backoff.
- Error class mapping by status code via exception types in `lib/utils/exceptions.js`.

---

## 5) Naming normalization contract

From `node-sdk/lib/rest/utils.js`:

- Outgoing request params: convert camelCase keys to snake_case.
- Incoming response payload: convert keys to camelCase recursively.
- Preserve special filter keys with double-underscore operators (e.g., `created__gte`, `end_time__lt`).

This is a high-impact parity rule; if omitted, consumers will see different request/response shapes across SDKs.

---

## 6) Resource files to replicate (REST domains)

### A) Modern API resources (new style)

- `node-sdk/lib/resources/account.js`
- `node-sdk/lib/resources/balance.js`
- `node-sdk/lib/resources/cdr.js`
- `node-sdk/lib/resources/trunks.js`
- `node-sdk/lib/resources/credentials.js`
- `node-sdk/lib/resources/ipAcl.js`
- `node-sdk/lib/resources/originationUris.js`
- `node-sdk/lib/resources/subaccounts.js`

These are thin interfaces with explicit endpoint strings and direct response forwarding.

### B) Legacy voice resources (older style, built on base classes)

- `node-sdk/lib/resources/call.js`
- `node-sdk/lib/resources/conferences.js`
- `node-sdk/lib/resources/recordings.js`
- `node-sdk/lib/resources/endpoints.js`
- `node-sdk/lib/resources/applications.js`
- `node-sdk/lib/resources/numbers.js` (mixed legacy + modern methods)
- `node-sdk/lib/resources/messages.js` (exists but currently **not wired in Client**)

These include many helper response classes and `isVoiceRequest` flags.

---

## 7) Must-match endpoint behavior (minimum parity set)

For another language SDK, prioritize parity for these high-value operations first:

1. Auth/account profile
   - `account.getProfile()` → `/auth/me` via root override URL.
2. Trunks CRUD
   - `/trunks`, `/trunks/{id}`
3. Credentials CRUD
   - `/credentials`, `/credentials/{id}`, list via `/trunks/credentials`
4. IP ACL CRUD
   - `/ip-acl`, `/ip-acl/{id}`, list via `/trunks/ip-acl`
5. Origination URI CRUD
   - `/origination-uris`, `/origination-uris/{id}`, list via `/trunks/origination-uris`
6. Numbers
   - `list`, `listInventory`, `assign/unassign`, app link/unlink
7. Calls (legacy voice)
   - create/get/list queued/live, hangup, transfer, record controls, play/speak/digits, stream controls
8. Subaccounts CRUD
   - via rewritten `/accounts/{id}/sub-accounts` URL

---

## 8) XML generation layer to replicate

Reference folder:
- `node-sdk/lib/xml/`

Generator files (flat structure):
- `play.js`, `wait.js`, `hangup.js`, `redirect.js`, `dtmf.js`, `preanswer.js`, `stream.js`, `conference.js`
- `dial.js`, `gather.js`, `record.js`
- `speak.js`, `ssml.js`, `speak-and-wait.js`
- aggregation: `index.js`

Contract:
- Each function returns XML string payloads.
- Keep option names and defaults aligned.
- Keep `speak` language/voice behavior aligned with Node implementation docs/tests.

---

## 9) Security/JWT/signature utilities

Replicate these helpers where applicable:

- `node-sdk/lib/utils/jwt.js`
  - Access token claims and headers (`cty: vobiz;v=1`)
  - grant model (`voice.incoming_allow`, `voice.outgoing_allow`)
- `node-sdk/lib/utils/security.js`
  - old/new signature validation helpers
- `node-sdk/lib/utils/v3Security.js`
  - V3 signature logic (if used by your target SDK)

---

## 10) Type surface and docs references

Use as compatibility references (not always complete):

- `node-sdk/types/rest/client.d.ts`
- `node-sdk/types/base.d.ts`
- `node-sdk/types/resources/*.d.ts` (partial coverage)

Important: type files currently do **not** cover all modern resources (`trunks`, `credentials`, `ipAcl`, `originationUris`, etc.). If you generate types in another SDK, prefer runtime implementation as source of truth.

---

## 11) Test and validation artifacts to mirror

Primary runnable references:

- `node-sdk/test-sdk.js`
  - integration matrix with request-log assertions (method, base URL, path, headers, snake_case body).
- `node-sdk/test-apis.js`
  - broad endpoint sweep.
- `node-sdk/test-calls.js`
  - end-to-end live call actions.
- `node-sdk/test-all-xml.js`
  - XML behavior coverage.

Support artifacts:

- `.env` based execution in root (`VOBIZ_AUTH_ID`, `VOBIZ_AUTH_TOKEN`, test numbers)
- `node-sdk/server.js` + `node-sdk/public/` for local dashboard and webhook simulation.

---

## 12) Replication order (recommended)

For fastest successful port to another language:

1. Implement transport + retries + error mapping.
2. Implement key conversion wrapper.
3. Implement `Client` with same service wiring and base URL split.
4. Port modern CRUD resources (trunks/credentials/ipAcl/originationUris/account/subaccounts/cdr/balance).
5. Port voice legacy resources (`calls`, `recordings`, `conferences`, `endpoints`, `applications`).
6. Port numbers mixed behavior.
7. Port JWT/signature helpers.
8. Port XML generators.
9. Replicate tests and pass the same endpoint matrix.

---

## 13) Known inconsistencies to account for during replication

These exist in current Node SDK and should be consciously handled:

- `messages.js` exists but is not attached in `Client` export surface.
- Some docs mention old XML nested folder layout; runtime uses flat `lib/xml/*`.
- Type declarations are partial/out-of-sync for several modern resources.
- There are legacy files (`lib/rest/request.js`, `*-test.js` variants) that are not primary runtime path when using `Axios` client.

When building another language SDK, choose whether to:
- replicate these quirks for strict compatibility, or
- normalize them and document intentional divergences.

---

## 14) Minimal parity checklist

Use this as go/no-go before release:

- [ ] Constructor auth and env fallback parity
- [ ] modern + legacy base URL routing parity
- [ ] header, timeout, retry parity
- [ ] snake_case request + camelCase response parity
- [ ] trunk/credential/ipAcl/originationUri CRUD parity
- [ ] calls live/queued/cdr and call-control parity
- [ ] subaccounts override URL behavior parity
- [ ] XML generator output parity
- [ ] JWT token format parity
- [ ] integration test matrix parity

---

If you need, I can generate a second file with a **language-agnostic method-by-method endpoint matrix** (resource × method × HTTP verb × path) for direct implementation tracking.