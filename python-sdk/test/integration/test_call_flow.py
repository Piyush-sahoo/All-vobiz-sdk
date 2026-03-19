"""
Vobiz Python SDK - Full Call Flow Integration Test
Uses direct HTTP requests for call_uuid operations (SDK has empty {} path params).
"""

import os
import time
import json
import requests
import pytest
import vobiz
from vobiz.api.call_api import CallApi

AUDIO_URL    = "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3"
ANSWER_URL   = "https://internal-test-xml.vobiz.ai/answer"
HANGUP_URL   = "https://internal-test-xml.vobiz.ai/hangup"
TRANSFER_URL = "https://internal-test-xml.vobiz.ai/answer"
BASE_URL     = "https://api.vobiz.ai"
STEP_DELAY   = 5

AUTH_ID         = os.environ.get("VOBIZ_AUTH_ID", "")
AUTH_TOKEN      = os.environ.get("VOBIZ_AUTH_TOKEN", "")
FROM_NUMBER     = os.environ.get("VOBIZ_FROM_NUMBER", "")
TO_NUMBER       = os.environ.get("VOBIZ_TO_NUMBER", "")
TRANSFER_NUMBER = os.environ.get("VOBIZ_TRANSFER_NUMBER", "")


def vobiz_request(method, path, body=None):
    headers = {
        "X-Auth-ID":    AUTH_ID,
        "X-Auth-Token": AUTH_TOKEN,
        "Content-Type": "application/json",
    }
    resp = requests.request(method, BASE_URL + path, headers=headers, json=body)
    return resp


@pytest.fixture(scope="module")
def call_uuid():
    if not all([AUTH_ID, AUTH_TOKEN, FROM_NUMBER, TO_NUMBER]):
        pytest.skip("VOBIZ_AUTH_ID, VOBIZ_AUTH_TOKEN, VOBIZ_FROM_NUMBER, VOBIZ_TO_NUMBER required")

    print("\n[Python] STEP 1: Making outbound call...")
    resp = vobiz_request("POST", f"/api/v1/Account/{AUTH_ID}/Call/", {
        "from":          FROM_NUMBER,
        "to":            TO_NUMBER,
        "answer_url":    ANSWER_URL,
        "answer_method": "POST",
        "hangup_url":    HANGUP_URL,
        "hangup_method": "POST",
    })
    assert resp.status_code < 300, f"Make Call failed: HTTP {resp.status_code} - {resp.text}"
    data = resp.json()
    uuid = data.get("request_uuid")
    if not uuid and "objects" in data:
        uuid = data["objects"][0].get("request_uuid")
    assert uuid, f"No request_uuid in response: {data}"
    print(f"[Python] STEP 1 PASS: HTTP {resp.status_code}, request_uuid = {uuid}")
    time.sleep(STEP_DELAY)
    return uuid


def test_step2_list_live_calls(call_uuid):
    print("[Python] STEP 2: Listing all live calls...")
    resp = vobiz_request("GET", f"/api/v1/Account/{AUTH_ID}/Call/?status=live")
    print(f"[Python] STEP 2 PASS: HTTP {resp.status_code}")
    time.sleep(STEP_DELAY)


def test_step3_get_single_live_call(call_uuid):
    print("[Python] STEP 3: Get single live call...")
    resp = vobiz_request("GET", f"/api/v1/Account/{AUTH_ID}/Call/{call_uuid}/?status=live")
    print(f"[Python] STEP 3 PASS: HTTP {resp.status_code}")
    time.sleep(STEP_DELAY)


def test_step4_speak_tts(call_uuid):
    print("[Python] STEP 4: Speak TTS...")
    resp = vobiz_request("POST", f"/api/v1/Account/{AUTH_ID}/Call/{call_uuid}/Speak/", {
        "text": "Hello from Vobiz Python SDK.", "voice": "WOMAN", "language": "en-US", "legs": "aleg"
    })
    print(f"[Python] STEP 4 PASS: HTTP {resp.status_code}")
    time.sleep(STEP_DELAY)


def test_step5_stop_tts(call_uuid):
    print("[Python] STEP 5: Stop TTS...")
    resp = vobiz_request("DELETE", f"/api/v1/Account/{AUTH_ID}/Call/{call_uuid}/Speak/")
    print(f"[Python] STEP 5 PASS: HTTP {resp.status_code}")


def test_step6_play_audio(call_uuid):
    print("[Python] STEP 6: Play audio...")
    resp = vobiz_request("POST", f"/api/v1/Account/{AUTH_ID}/Call/{call_uuid}/Play/", {
        "urls": [AUDIO_URL], "legs": "aleg", "loop": False, "mix": True
    })
    print(f"[Python] STEP 6 PASS: HTTP {resp.status_code}")
    time.sleep(STEP_DELAY)


def test_step7_stop_audio(call_uuid):
    print("[Python] STEP 7: Stop audio...")
    resp = vobiz_request("DELETE", f"/api/v1/Account/{AUTH_ID}/Call/{call_uuid}/Play/")
    print(f"[Python] STEP 7 PASS: HTTP {resp.status_code}")


def test_step8_start_recording(call_uuid):
    print("[Python] STEP 8: Start recording...")
    resp = vobiz_request("POST", f"/api/v1/Account/{AUTH_ID}/Call/{call_uuid}/Record/", {
        "time_limit": 60, "file_format": "mp3"
    })
    print(f"[Python] STEP 8 PASS: HTTP {resp.status_code}")
    time.sleep(STEP_DELAY)


def test_step9_dtmf(call_uuid):
    print("[Python] STEP 9: Send DTMF...")
    resp = vobiz_request("POST", f"/api/v1/Account/{AUTH_ID}/Call/{call_uuid}/DTMF/", {
        "digits": "1234", "leg": "aleg"
    })
    print(f"[Python] STEP 9 PASS: HTTP {resp.status_code}")


def test_step10_stop_recording(call_uuid):
    print("[Python] STEP 10: Stop recording...")
    resp = vobiz_request("DELETE", f"/api/v1/Account/{AUTH_ID}/Call/{call_uuid}/Record/")
    print(f"[Python] STEP 10 PASS: HTTP {resp.status_code}")


def test_step11_transfer(call_uuid):
    print("[Python] STEP 11: Transfer call...")
    transfer_to = TRANSFER_URL + (f"?to={TRANSFER_NUMBER}" if TRANSFER_NUMBER else "")
    resp = vobiz_request("POST", f"/api/v1/Account/{AUTH_ID}/Call/{call_uuid}/", {
        "legs": "aleg", "aleg_url": transfer_to, "aleg_method": "POST"
    })
    print(f"[Python] STEP 11 PASS: HTTP {resp.status_code}")
    time.sleep(STEP_DELAY)


def test_step12_hangup(call_uuid):
    print("[Python] STEP 12: Hang up...")
    resp = vobiz_request("DELETE", f"/api/v1/Account/{AUTH_ID}/Call/{call_uuid}/")
    print(f"[Python] STEP 12 PASS: HTTP {resp.status_code}")
    print("\n[Python] Call flow COMPLETE")
