# Universal SDK README (Go / Node / Ruby)

This is the shared SDK reference for all languages in this repository.

Current primary parity baselines:
- Go SDK: [vobiz-go](vobiz-go)
- Node SDK: [node-sdk](node-sdk)
- Ruby SDK: [ruby-sdk](ruby-sdk)

As new language SDKs are added, update this file first.

---

## 1) Cross-language parity contract

Every SDK should keep parity for:

1. Authentication
   - Header auth with `X-Auth-ID` and `X-Auth-Token`
   - Env support where relevant

2. Base URL routing
   - Modern base: `/api/v1/account/{authId}`
   - Legacy voice base: `/api/v1/Account/{authId}`

3. Core resources
   - account, balance, cdr
   - calls, recordings, conferences
   - numbers, endpoints, applications
   - trunks, credentials, ip-acl, origination-uris
   - subaccounts

4. XML support
   - all XML verb/builders used by voice flows

5. Test coverage
   - API reachability tests
   - live call flow tests (where possible)
   - XML validation tests

---

## 2) Node SDK is the primary behavior reference

Use these as the source-of-truth for behavior and sequencing:

- [node-sdk/test-sdk.js](node-sdk/test-sdk.js)
- [node-sdk/test-apis.js](node-sdk/test-apis.js)
- [node-sdk/test-calls.js](node-sdk/test-calls.js)
- [node-sdk/lib/xml](node-sdk/lib/xml)

---

## 3) Language-specific quick map

### Node
- SDK: [node-sdk](node-sdk)
- API tests: [node-sdk/test-apis.js](node-sdk/test-apis.js)
- Live call tests: [node-sdk/test-calls.js](node-sdk/test-calls.js)
- XML tests: [node-sdk/test-all-xml.js](node-sdk/test-all-xml.js)

### Ruby
- SDK: [ruby-sdk](ruby-sdk)
- Node-parity client: [ruby-sdk/lib/vobiz/sdk/client.rb](ruby-sdk/lib/vobiz/sdk/client.rb)
- XML builders: [ruby-sdk/lib/vobiz/xml.rb](ruby-sdk/lib/vobiz/xml.rb)
- API tests: [ruby-sdk/test-apis.rb](ruby-sdk/test-apis.rb)
- Live call tests: [ruby-sdk/test-calls.rb](ruby-sdk/test-calls.rb)
- Integration checks: [ruby-sdk/spec/integration/internal_vobiz_server_spec.rb](ruby-sdk/spec/integration/internal_vobiz_server_spec.rb)

### Go
- SDK: [vobiz-go](vobiz-go)
- Keep this section updated with exact test entrypoints as Go parity evolves.

---

## 4) Required env vars for live/server tests

Common:
- `VOBIZ_AUTH_ID`
- `VOBIZ_AUTH_TOKEN`

Call-flow tests:
- `FROM_NUMBER`
- `TO_NUMBER`
- `VOBIZ_XML_ANSWER_URL`
- `VOBIZ_HANGUP_URL` (optional but recommended)

Debug:
- `VOBIZ_DEBUG=true`

---

## 5) Standard test run commands

### Node
- `cd node-sdk && npm test`
- `cd node-sdk && node test-apis.js`
- `cd node-sdk && node test-calls.js`

### Ruby
- `cd ruby-sdk && ruby test-apis.rb`
- `cd ruby-sdk && ruby test-calls.rb`
- `cd ruby-sdk && bundle exec rspec spec/integration/internal_vobiz_server_spec.rb`

### Go
- `cd vobiz-go && go test ./...`

---

## 6) Rules for adding new language SDKs

When adding a new SDK:

1. Mirror Node endpoint behavior first.
2. Implement all XML builders.
3. Add API reachability and live-call tests.
4. Add language section to this file with links.
5. Update parity status table below.

---

## 7) Parity status table

| Language | Endpoint Parity | XML Parity | API Tests | Live Call Tests | Maintainer |
|---|---|---|---|---|---|
| Node | ✅ | ✅ | ✅ | ✅ | SDK Team |
| Ruby | ✅ (Node-style layer) | ✅ | ✅ | ✅ | SDK Team |
| Go | In progress | In progress | ✅ | In progress | SDK Team |

---

## 8) Documentation update protocol

Whenever any SDK changes:

1. Update this file in same PR/commit set.
2. Update language-local README.
3. Add or update test files.
4. Add a short changelog entry in commit message prefix:
   - `feat(<lang>-sdk): ...`
   - `test(<lang>-sdk): ...`
   - `docs(sdk): ...`

---

## 9) Security and repository hygiene

- Never commit real credentials.
- Use placeholders in docs/tests:
  - `YOUR_AUTH_ID`
  - `YOUR_AUTH_TOKEN`
- Remove generated metadata/build artifacts unless required for builds.

---

This file is intentionally universal. Keep it concise, linked, and current.