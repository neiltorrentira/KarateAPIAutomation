Feature: Authentication

Background: Initialize Restful Booker
    Given url apiService
    * def passwordDecode = Java.type('Utils.Utils')
    * def decodedPassword = passwordDecode.decode64(Passwords)
    * print decodedPassword
    * def username = UserName
    * print username

  @login @ignore
  Scenario: Login and fetch token @/auth
    Given path 'auth'
    And header Content-type = 'application/json'
    And request {username: '#(username)' , password: '#(decodedPassword)'}
    When method post
    Then status 200
    And print response
