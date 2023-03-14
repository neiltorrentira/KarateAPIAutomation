Feature: Create Valid Random booking

  Background: Initialize
    Given url apiService
    * def signinToken = callonce read('AuthLogin.feature@login')
    * print signinToken
    * def authtoken = signinToken.response.token
    * def utils = Java.type('Utils.Utils')
    * def randomFirst = utils.RandomString()
    * def randomLast = utils.RandomString()
    * def randomNum = utils.RandomNum()
    * def firstname = 'User_' + randomFirst
    * def lastname = randomLast + randomNum
    * def totalprice = randomNum
    * def rqstBody =
    """
    {
    firstname: '#(firstname)',
    lastname: '#(lastname)',
    totalprice: '#(totalprice)',
    depositpaid: true,
    bookingdates: {
        checkin: '2023-01-21',
        checkout: '2023-01-31'
        },
    additionalneeds: 'Desserts'
    }
    """

  @create
  Scenario: Create Valid Random booking @/booking
    Given path 'booking'
    And header Content-type = 'application/json'
    And header Accept = 'application/json'
    And header x-access-token = authtoken
    And request rqstBody
    When method post
    Then status 200
    And print response
    And print authtoken
