package ai.vobiz.api;

import ai.vobiz.ApiClient;
import ai.vobiz.ApiException;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.condition.EnabledIfEnvironmentVariable;

import static org.junit.jupiter.api.Assertions.*;

/**
 * Vobiz Java SDK - Integration Tests (Read-Only)
 */
@EnabledIfEnvironmentVariable(named = "VOBIZ_AUTH_ID", matches = ".+")
public class VobizIntegrationTest {

    private static ApiClient client;
    private static String authId;
    private static String authToken;

    @BeforeAll
    static void setup() {
        authId    = System.getenv("VOBIZ_AUTH_ID");
        authToken = System.getenv("VOBIZ_AUTH_TOKEN");
        client = new ApiClient();
        client.addDefaultHeader("X-Auth-ID", authId);
        client.addDefaultHeader("X-Auth-Token", authToken);
    }

    @Test
    void testGetAccountDetails() throws ApiException {
        AccountApi api = new AccountApi(client);
        api.apiV1AuthMeGet(authId, authToken, "application/json");
        System.out.println("[Java] GetAccountDetails: OK");
    }

    @Test
    void testGetLiveCalls() throws ApiException {
        CallApi api = new CallApi(client);
        api.apiV1AccountAuthIdCallGet(authId, authId, authToken, "application/json", "live");
        System.out.println("[Java] GetLiveCalls: OK");
    }

    @Test
    void testListRecordings() throws ApiException {
        RecordingApi api = new RecordingApi(client);
        api.apiV1AccountAccountIdRecordingGet(authId, authId, authToken, "application/json", 20, 0, null, null);
        System.out.println("[Java] ListRecordings: OK");
    }

    @Test
    void testListConferences() throws ApiException {
        ConferenceApi api = new ConferenceApi(client);
        api.apiV1AccountAuthIdConferenceGet(authId, authId, authToken, "application/json");
        System.out.println("[Java] ListConferences: OK");
    }

    @Test
    void testListApplications() throws ApiException {
        ApplicationApi api = new ApplicationApi(client);
        api.apiV1AccountAuthIdApplicationGet(authId, authId, authToken, "application/json", 20, 0);
        System.out.println("[Java] ListApplications: OK");
    }
}
