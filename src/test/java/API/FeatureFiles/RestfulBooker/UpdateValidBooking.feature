Feature: Update Valid booking

  Background: Initialize stuff
    Given url apiService
    * def signinToken = callonce read('AuthLogin.feature@login')
    * print signinToken
    * def authtoken = signinToken.response.token
    * def authorize = 'Basic YWRtaW46cGFzc3dvcmQxMjM='
    * def rqst = 
    """
    {
    firstname: 'Neil-Walter',
    lastname: 'White',
    totalprice: 5555,
    depositpaid: true,
    bookingdates: {
        checkin: '2023-01-01',
        checkout: '2023-01-11'
        },
    additionalneeds: 'Desserts'
    }
    """
  @ignore
  Scenario: Update Valid /booking/id
    Given path 'booking/11'
    And header Content-type = 'application/json'
    And header Accept = 'application/json'
    And header Cookie = authtoken
    And header Authorization = authorize
    And header x-access-token = authtoken
    And request rqst
    When method put
    Then status 200
    And print response
