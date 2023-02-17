Feature: Validate "ping" for Restful Booker

  Background: Initialize stuff
    Given url apiService
    #* configure retry = { count: 10, interval: 5000 }

  Scenario: Validate /ping response 201
    Given path 'ping'
    When method get
    Then status 201
    And print response
    And match response == 'Created'