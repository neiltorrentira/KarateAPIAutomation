function fn() {
  var env = karate.env; // get system property 'karate.env'
  karate.log('Karate.env System Property was : ', env);
  if (!env) {
    env = 'dev';
  }
  var config = {
    env: env,
    myVarName: 'someValue',
    apiService: 'http://localhost:3001',
    restfulBooker: 'http://localhost:3001',
    wireMock: 'http://localhost:9876'
  }
  if (env == 'dev') {
    config.apiService = 'http://localhost:3001'
  } else if (env == 'wiremock') {
    config.apiService = 'http://localhost:9876'
  }
  karate.configure('connectTimeout', 5000);
  karate.configure('readTimeout', 5000);
  return config;
}