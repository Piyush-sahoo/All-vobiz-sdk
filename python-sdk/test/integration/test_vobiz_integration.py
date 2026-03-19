"""
Vobiz Python SDK - Integration Tests (Read-Only)
Run: pytest test/integration/test_vobiz_integration.py -v
Requires: VOBIZ_AUTH_ID and VOBIZ_AUTH_TOKEN env vars
"""

import os
import pytest
import vobiz
from vobiz.api.account_api import AccountApi
from vobiz.api.call_api import CallApi
from vobiz.api.recording_api import RecordingApi
from vobiz.api.conference_api import ConferenceApi
from vobiz.api.application_api import ApplicationApi


AUTH_ID    = os.environ.get("VOBIZ_AUTH_ID", "")
AUTH_TOKEN = os.environ.get("VOBIZ_AUTH_TOKEN", "")


@pytest.fixture(scope="module")
def api_client():
    if not AUTH_ID or not AUTH_TOKEN:
        pytest.skip("VOBIZ_AUTH_ID or VOBIZ_AUTH_TOKEN not set")

    configuration = vobiz.Configuration(
        host="https://api.vobiz.ai"
    )
    configuration.api_key["X-Auth-ID"]    = AUTH_ID
    configuration.api_key["X-Auth-Token"] = AUTH_TOKEN

    with vobiz.ApiClient(configuration) as client:
        yield client


def test_get_account_details(api_client):
    api = AccountApi(api_client)
    api.api_v1_auth_me_get(
        x_auth_id=AUTH_ID,
        x_auth_token=AUTH_TOKEN
    )
    print("[Python] GetAccountDetails: OK")


def test_get_live_calls(api_client):
    api = CallApi(api_client)
    api.api_v1_account_auth_id_call_get(
        auth_id=AUTH_ID,
        x_auth_id=AUTH_ID,
        x_auth_token=AUTH_TOKEN,
        status="live"
    )
    print("[Python] GetLiveCalls: OK")


def test_list_recordings(api_client):
    api = RecordingApi(api_client)
    api.api_v1_account_account_id_recording_get(
        account_id=AUTH_ID,
        x_auth_id=AUTH_ID,
        x_auth_token=AUTH_TOKEN
    )
    print("[Python] ListRecordings: OK")


def test_list_conferences(api_client):
    api = ConferenceApi(api_client)
    api.api_v1_account_auth_id_conference_get(
        auth_id=AUTH_ID,
        x_auth_id=AUTH_ID,
        x_auth_token=AUTH_TOKEN
    )
    print("[Python] ListConferences: OK")


def test_list_applications(api_client):
    api = ApplicationApi(api_client)
    api.api_v1_account_auth_id_application_get(
        auth_id=AUTH_ID,
        x_auth_id=AUTH_ID,
        x_auth_token=AUTH_TOKEN
    )
    print("[Python] ListApplications: OK")
