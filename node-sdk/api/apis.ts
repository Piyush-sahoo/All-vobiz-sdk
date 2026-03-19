export * from './accountApi';
import { AccountApi } from './accountApi';
export * from './applicationApi';
import { ApplicationApi } from './applicationApi';
export * from './cDRApi';
import { CDRApi } from './cDRApi';
export * from './callApi';
import { CallApi } from './callApi';
export * from './conferenceApi';
import { ConferenceApi } from './conferenceApi';
export * from './endpointApi';
import { EndpointApi } from './endpointApi';
export * from './phoneNumbersApi';
import { PhoneNumbersApi } from './phoneNumbersApi';
export * from './recordingApi';
import { RecordingApi } from './recordingApi';
export * from './subAccountApi';
import { SubAccountApi } from './subAccountApi';
export * from './trunkApi';
import { TrunkApi } from './trunkApi';
import * as http from 'http';

export class HttpError extends Error {
    constructor (public response: http.IncomingMessage, public body: any, public statusCode?: number) {
        super('HTTP request failed');
        this.name = 'HttpError';
    }
}

export { RequestFile } from '../model/models';

export const APIS = [AccountApi, ApplicationApi, CDRApi, CallApi, ConferenceApi, EndpointApi, PhoneNumbersApi, RecordingApi, SubAccountApi, TrunkApi];
