Feature: Authentication

Background: Initialize Restful Booker
    Given url apiService
    #    * def decode =
    #    """
    #    var DecodePassword = Java.type('Utils.Utils');
    #    var dp = new DecodePassword();
    #    return dp.decode64(arg);
    #    """
    #    * def passwordDecoded = call decode Passwords
    #    * def username = UserName

  @login @ignore
  Scenario: Login and fetch token @/auth
    Given path 'auth'
    And header Content-type = 'application/json'
    And request {username: 'admin' , password: 'password123'}
    When method post
    Then status 200
    And print response
