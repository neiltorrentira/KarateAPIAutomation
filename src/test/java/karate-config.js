function fn() {
  var env = karate.env; // get system property 'karate.env'
  karate.log('Karate.env System Property was : ', env);
  if (!env) {
    env = 'prod';
  }
  var config = {
    env: env,
    Authorization: 'Basic YWRtaW46cGFzc3dvcmQxMjM=',
    ReqEmail: 'eve.holt@reqres.in',
    ReqPassword: 'Y2l0eXNsaWNrYQ',
    UserName: 'admin',
    Passwords: 'cGFzc3dvcmQxMjM',
    password: 'password123',
    apiService: 'http://localhost:3001',
    restfulBooker: 'http://localhost:3001',
    wireMock: 'http://localhost:9876'
  }
  if (env == 'dev') {
    config.apiService = 'http://localhost:3001'
  } else if (env == 'prod') {
    config.apiService = 'https://restful-booker.herokuapp.com'
  } else if (env == 'wiremock') {
    config.apiService = 'http://localhost:9876'
  } else if (env == 'req') {
       config.apiService = 'https://reqres.in/'
  }
  karate.configure('connectTimeout', 6000);
  karate.configure('readTimeout', 6000);
  return config;
}