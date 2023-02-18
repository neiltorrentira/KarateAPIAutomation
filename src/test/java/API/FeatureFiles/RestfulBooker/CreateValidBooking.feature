Feature: Create Valid booking

  Background: Initialize stuff
    Given url apiService
    * def signinToken = callonce read('AuthLogin.feature@login')
    * print signinToken
    * def authtoken = signinToken.response.token
    * def rqst =
    """
    {
    firstname: 'Zeth7',
    lastname: 'Torrentira7',
    totalprice: 5555,
    depositpaid: true,
    bookingdates: {
        checkin: '2023-01-01',
        checkout: '2023-01-11'
        },
    additionalneeds: 'Desserts'
    }
    """

  Scenario: Create Valid booking @/booking
    Given path 'booking'
    And header Content-type = 'application/json'
    And header Accept = 'application/json'
    And header x-access-token = authtoken
    And request rqst
    When method post
    Then status 200
    And print response
