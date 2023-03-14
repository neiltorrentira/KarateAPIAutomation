Feature: Authentication

Background: Initialize Restful Booker
    Given url apiService
    * def utils = Java.type('Utils.Utils')
    * def decodedPassword = utils.decode64(ReqPassword)
    * print decodedPassword
    * def email = ReqEmail
    * print email

  @login #@ignore
  Scenario: Login and fetch token @/auth
    Given path 'api/login'
    And header Content-type = 'application/json'
    And request {email: '#(email)' , password: '#(decodedPassword)'}
    When method post
    Then status 200
    And print response
