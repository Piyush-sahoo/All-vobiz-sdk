/*
Vobiz Go SDK - Full Call Flow Integration Test
Uses direct HTTP for call_uuid operations since the generated SDK has empty {} path params.
*/

package vobiz

import (
	"bytes"
	"encoding/json"
	"fmt"
	"io"
	"net/http"
	"os"
	"testing"
	"time"

	openapiclient "github.com/vobiz/vobiz-go-sdk"
)

const (
	audioURL    = "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3"
	answerURL   = "https://internal-test-xml.vobiz.ai/answer"
	hangupURL   = "https://internal-test-xml.vobiz.ai/hangup"
	transferURL = "https://internal-test-xml.vobiz.ai/answer"
	baseURL     = "https://api.vobiz.ai"
	stepDelay   = 5 * time.Second
)

func getCallFlowClient(t *testing.T) (*openapiclient.APIClient, string, string, string, string, string) {
	authID          := os.Getenv("VOBIZ_AUTH_ID")
	authToken       := os.Getenv("VOBIZ_AUTH_TOKEN")
	fromNumber      := os.Getenv("VOBIZ_FROM_NUMBER")
	toNumber        := os.Getenv("VOBIZ_TO_NUMBER")
	transferNumber  := os.Getenv("VOBIZ_TRANSFER_NUMBER")

	if authID == "" || authToken == "" || fromNumber == "" || toNumber == "" {
		t.Skip("Skipping call flow: VOBIZ_AUTH_ID, VOBIZ_AUTH_TOKEN, VOBIZ_FROM_NUMBER, VOBIZ_TO_NUMBER required")
	}

	cfg := openapiclient.NewConfiguration()
	cfg.AddDefaultHeader("X-Auth-ID", authID)
	cfg.AddDefaultHeader("X-Auth-Token", authToken)
	return openapiclient.NewAPIClient(cfg), authID, authToken, fromNumber, toNumber, transferNumber
}

// vobizRequest makes a direct HTTP request to the Vobiz API
func vobizRequest(method, path, authID, authToken string, body interface{}) (map[string]interface{}, int, error) {
	var reqBody io.Reader
	if body != nil {
		data, _ := json.Marshal(body)
		reqBody = bytes.NewBuffer(data)
	}

	req, _ := http.NewRequest(method, baseURL+path, reqBody)
	req.Header.Set("X-Auth-ID", authID)
	req.Header.Set("X-Auth-Token", authToken)
	req.Header.Set("Content-Type", "application/json")

	resp, err := http.DefaultClient.Do(req)
	if err != nil {
		return nil, 0, err
	}
	defer resp.Body.Close()

	var result map[string]interface{}
	data, _ := io.ReadAll(resp.Body)
	json.Unmarshal(data, &result)

	if resp.StatusCode >= 400 {
		return result, resp.StatusCode, fmt.Errorf("HTTP %d: %s", resp.StatusCode, string(data))
	}
	return result, resp.StatusCode, nil
}

func Test_CallFlow(t *testing.T) {
	_, authID, authToken, fromNumber, toNumber, transferNumber := getCallFlowClient(t)

	// ── STEP 1: Make outbound call ─────────────────────────────────────────
	fmt.Println("\n[Go] STEP 1: Making outbound call...")
	result, status, err := vobizRequest("POST",
		fmt.Sprintf("/api/v1/Account/%s/Call/", authID),
		authID, authToken,
		map[string]interface{}{
			"from":          fromNumber,
			"to":            toNumber,
			"answer_url":    answerURL,
			"answer_method": "POST",
			"hangup_url":    hangupURL,
			"hangup_method": "POST",
		})
	if err != nil {
		t.Fatalf("STEP 1 FAILED - Make Call: %v", err)
	}

	requestUUID, _ := result["request_uuid"].(string)
	if requestUUID == "" {
		if objs, ok := result["objects"].([]interface{}); ok && len(objs) > 0 {
			if obj, ok := objs[0].(map[string]interface{}); ok {
				requestUUID, _ = obj["request_uuid"].(string)
			}
		}
	}
	if requestUUID == "" {
		t.Fatalf("STEP 1 FAILED - No request_uuid in response: %v", result)
	}
	fmt.Printf("[Go] STEP 1 PASS: HTTP %d, request_uuid = %s\n", status, requestUUID)
	time.Sleep(stepDelay)

	// ── STEP 2: List all live calls ────────────────────────────────────────
	fmt.Println("[Go] STEP 2: Listing all live calls...")
	_, status2, err2 := vobizRequest("GET",
		fmt.Sprintf("/api/v1/Account/%s/Call/?status=live", authID),
		authID, authToken, nil)
	if err2 != nil {
		fmt.Printf("[Go] STEP 2 WARN: %v\n", err2)
	} else {
		fmt.Printf("[Go] STEP 2 PASS: HTTP %d\n", status2)
	}
	time.Sleep(stepDelay)

	// ── STEP 3: Get single live call ───────────────────────────────────────
	fmt.Println("[Go] STEP 3: Get single live call...")
	_, status3, err3 := vobizRequest("GET",
		fmt.Sprintf("/api/v1/Account/%s/Call/%s/?status=live", authID, requestUUID),
		authID, authToken, nil)
	if err3 != nil {
		fmt.Printf("[Go] STEP 3 WARN: %v\n", err3)
	} else {
		fmt.Printf("[Go] STEP 3 PASS: HTTP %d\n", status3)
	}
	time.Sleep(stepDelay)

	// ── STEP 4: Speak TTS ──────────────────────────────────────────────────
	fmt.Println("[Go] STEP 4: Speaking TTS...")
	_, status4, err4 := vobizRequest("POST",
		fmt.Sprintf("/api/v1/Account/%s/Call/%s/Speak/", authID, requestUUID),
		authID, authToken,
		map[string]interface{}{
			"text": "Hello from Vobiz Go SDK.", "voice": "WOMAN", "language": "en-US", "legs": "aleg",
		})
	if err4 != nil {
		fmt.Printf("[Go] STEP 4 WARN: %v\n", err4)
	} else {
		fmt.Printf("[Go] STEP 4 PASS: HTTP %d\n", status4)
	}
	time.Sleep(stepDelay)

	// ── STEP 5: Stop TTS ───────────────────────────────────────────────────
	fmt.Println("[Go] STEP 5: Stop TTS...")
	_, status5, err5 := vobizRequest("DELETE",
		fmt.Sprintf("/api/v1/Account/%s/Call/%s/Speak/", authID, requestUUID),
		authID, authToken, nil)
	if err5 != nil {
		fmt.Printf("[Go] STEP 5 WARN: %v\n", err5)
	} else {
		fmt.Printf("[Go] STEP 5 PASS: HTTP %d\n", status5)
	}

	// ── STEP 6: Play audio ─────────────────────────────────────────────────
	fmt.Println("[Go] STEP 6: Play audio...")
	_, status6, err6 := vobizRequest("POST",
		fmt.Sprintf("/api/v1/Account/%s/Call/%s/Play/", authID, requestUUID),
		authID, authToken,
		map[string]interface{}{"urls": []string{audioURL}, "legs": "aleg", "loop": false, "mix": true})
	if err6 != nil {
		fmt.Printf("[Go] STEP 6 WARN: %v\n", err6)
	} else {
		fmt.Printf("[Go] STEP 6 PASS: HTTP %d\n", status6)
	}
	time.Sleep(stepDelay)

	// ── STEP 7: Stop audio ─────────────────────────────────────────────────
	fmt.Println("[Go] STEP 7: Stop audio...")
	_, status7, err7 := vobizRequest("DELETE",
		fmt.Sprintf("/api/v1/Account/%s/Call/%s/Play/", authID, requestUUID),
		authID, authToken, nil)
	if err7 != nil {
		fmt.Printf("[Go] STEP 7 WARN: %v\n", err7)
	} else {
		fmt.Printf("[Go] STEP 7 PASS: HTTP %d\n", status7)
	}

	// ── STEP 8: Start recording ────────────────────────────────────────────
	fmt.Println("[Go] STEP 8: Start recording...")
	_, status8, err8 := vobizRequest("POST",
		fmt.Sprintf("/api/v1/Account/%s/Call/%s/Record/", authID, requestUUID),
		authID, authToken,
		map[string]interface{}{"time_limit": 60, "file_format": "mp3"})
	if err8 != nil {
		fmt.Printf("[Go] STEP 8 WARN: %v\n", err8)
	} else {
		fmt.Printf("[Go] STEP 8 PASS: HTTP %d\n", status8)
	}
	time.Sleep(stepDelay)

	// ── STEP 9: Send DTMF ─────────────────────────────────────────────────
	fmt.Println("[Go] STEP 9: Send DTMF...")
	_, status9, err9 := vobizRequest("POST",
		fmt.Sprintf("/api/v1/Account/%s/Call/%s/DTMF/", authID, requestUUID),
		authID, authToken,
		map[string]interface{}{"digits": "1234", "leg": "aleg"})
	if err9 != nil {
		fmt.Printf("[Go] STEP 9 WARN: %v\n", err9)
	} else {
		fmt.Printf("[Go] STEP 9 PASS: HTTP %d\n", status9)
	}

	// ── STEP 10: Stop recording ────────────────────────────────────────────
	fmt.Println("[Go] STEP 10: Stop recording...")
	_, status10, err10 := vobizRequest("DELETE",
		fmt.Sprintf("/api/v1/Account/%s/Call/%s/Record/", authID, requestUUID),
		authID, authToken, nil)
	if err10 != nil {
		fmt.Printf("[Go] STEP 10 WARN: %v\n", err10)
	} else {
		fmt.Printf("[Go] STEP 10 PASS: HTTP %d\n", status10)
	}

	// ── STEP 11: Transfer call ─────────────────────────────────────────────
	fmt.Println("[Go] STEP 11: Transfer call...")
	transferTo := transferURL
	if transferNumber != "" {
		transferTo += "?to=" + transferNumber
	}
	_, status11, err11 := vobizRequest("POST",
		fmt.Sprintf("/api/v1/Account/%s/Call/%s/", authID, requestUUID),
		authID, authToken,
		map[string]interface{}{"legs": "aleg", "aleg_url": transferTo, "aleg_method": "POST"})
	if err11 != nil {
		fmt.Printf("[Go] STEP 11 WARN: %v\n", err11)
	} else {
		fmt.Printf("[Go] STEP 11 PASS: HTTP %d\n", status11)
	}
	time.Sleep(stepDelay)

	// ── STEP 12: Hang up ───────────────────────────────────────────────────
	fmt.Println("[Go] STEP 12: Hang up...")
	_, status12, err12 := vobizRequest("DELETE",
		fmt.Sprintf("/api/v1/Account/%s/Call/%s/", authID, requestUUID),
		authID, authToken, nil)
	if err12 != nil {
		fmt.Printf("[Go] STEP 12 WARN: %v\n", err12)
	} else {
		fmt.Printf("[Go] STEP 12 PASS: HTTP %d\n", status12)
	}

	fmt.Println("\n[Go] Call flow COMPLETE")
}
