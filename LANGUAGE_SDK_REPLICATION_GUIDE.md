# SDK Migration & Push Playbook (Replicable for Other Languages)

## What happened in this repo

This branch work did 4 major things:

1. **Refactored Go SDK structure**
   - Moved from older flat/generated layout to a modular structure (`client`, `interfaces`, `internal`, `models`, `services/*`, `xml/*`).
   - Unified module path to:
     - `github.com/vobiz/all-vobiz-sdk/go-sdk`

2. **Added deterministic tests**
   - Added no-network tests for core request/response behavior and XML rendering.
   - Kept tests stable and mock-based for CI safety.

3. **Validated both SDKs**
   - Go: `go test ./...` passed.
   - Node: `npm test` passed.

4. **Resolved push-protection/secret-history issues**
   - Initial push from legacy-history branch failed due GitHub secret scanning (old commits contained credential-like strings).
   - Solution: create a **clean branch from `origin/main`**, apply only safe current-state changes, sanitize credential-like values in test fixtures/mocks, and push that clean branch.

---

## Branch strategy used

- Dirty/legacy branch: `adithya-sdk-add`
- Clean delivery branch: `adithya-sdk-clean`

### Why this matters
If old commits contain secrets, **even if current files are clean**, push protection can still block the branch. Building from `origin/main` avoids inheriting blocked history.

---

## Replication process for any other language SDK

## 1) Work on a feature branch
- Do the refactor/migration for that language SDK.
- Keep changes scoped to that SDK folder and shared CI files if needed.

## 2) Add/keep deterministic tests
- Prefer mocked/unit tests over live-network where possible.
- Validate locally before commit.

## 3) Sanitize credential-like literals before push
In test fixtures/mocks/examples, replace hardcoded values with placeholders:
- Auth IDs → `YOUR_AUTH_ID`
- Auth tokens/API keys → `YOUR_AUTH_TOKEN`

Also sanitize fields like:
- `authId`
- `authToken`
- `auth_id`
- `auth_token`
- and account IDs embedded in resource URIs if they look like real credentials.

## 4) If push is blocked by secret scanning
Do this instead of force-unblocking:

1. Create a clean branch from `origin/main`.
2. Apply current intended changes (not secret-bearing history).
3. Re-run validation.
4. Commit and push clean branch.

This is safer and reusable across SDKs.

---

## Validation checklist (copy for each SDK)

- [ ] Working tree clean (`git status`)
- [ ] SDK tests pass
- [ ] No credential-like literals in tracked files
- [ ] No accidental local artifacts (`.env`, `.DS_Store`, ad-hoc reports)
- [ ] Commit messages clean and scoped
- [ ] Push succeeds without bypass links

---

## Commit hygiene template

Use small, purpose-based commits:

1. `refactor(<sdk>): migrate structure and API surface`
2. `test(<sdk>): add deterministic no-network coverage`
3. `chore(<sdk>): sanitize fixtures/mocks placeholders`

---

## Recommended placeholders standard (all languages)

Use these exact values across repos:

- `YOUR_AUTH_ID`
- `YOUR_AUTH_TOKEN`
- `YOUR_API_KEY`
- `YOUR_ACCOUNT_ID`

This consistency simplifies future secret-scanning cleanup and automation.

---

## Practical note

For Node specifically, test-only response fixtures in `lib/rest/request-test.js` may still trigger push protection if they resemble real auth patterns. Treat fixture URIs and auth-like fields as sensitive and normalize them early.
