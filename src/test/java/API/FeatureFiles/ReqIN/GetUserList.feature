Feature: Get All Users

  Background: Initialize
    Given url apiService
    * def signinToken = callonce read('ReqLogin.feature@login')
    * print signinToken
    * def authtoken = signinToken.response.token

  Scenario: Get All users @/api/users?page=2
    Given path 'api/users'
    And params 'page=2'
    And header Content-type = 'application/json'
    And  header x-access-token = authtoken
    When method get
    Then status 200
    And print response
