const queryString = require('querystring');
const request = require('request');

function Request(config) {
  let headers = {
    'X-Auth-ID': config.authId || 'TEST_AUTH_ID',
    'X-Auth-Token': config.authToken || 'TEST_AUTH_TOKEN',
    'User-Agent': config.userAgent,
    'Content-Type': 'application/json'
  };

  return (method, action, params) => {
    params = params || {};
    var options = {
      url: config.url + '/' + action,
      method: method,
      formData: params || '',
      headers: headers,
      json: true
    };

    if (method == 'GET' && options.formData !== '') {
      let query = '?' + queryString.stringify(params);
      options.url += query;
    }

    if (typeof config.proxy !== 'undefined') {
      options.proxy = config.proxy;
    }

    if (typeof config.timeout !== 'undefined') {
      options.timeout = config.timeout;
    }

    return new Promise((resolve, reject) => {
      request(options, (error, response, body) => {
        if (error) return reject(error);
        resolve({ response, body });
      });
    });
  };
}

module.exports = {
  Request
};