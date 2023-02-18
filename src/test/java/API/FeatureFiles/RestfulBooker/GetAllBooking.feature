Feature: Get All booking

  Background: Initialize stuff
    Given url apiService
    * def signinToken = callonce read('AuthLogin.feature@login')
    * print signinToken
    * def authtoken = signinToken.response.token

  Scenario: Get All booking @/booking
    Given path 'booking'
    And header Content-type = 'application/json'
    And  header x-access-token = authtoken
    When method get
    Then status 200
    And print response
