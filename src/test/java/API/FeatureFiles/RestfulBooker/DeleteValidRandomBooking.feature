Feature: Delete Valid Random booking

  Background: Initialize
    Given url apiService
    * def UID = call read('CreateValidRandomBooking.feature@create')
    * def bookingId = UID.response.bookingid
    * def authtoken = UID.authtoken
    * print bookingId
    * print authtoken
    * def authorize = Authorization

  Scenario: Delete Valid Random /booking/{bookingId}
    Given path 'booking'
    And path bookingId
    And header Content-type = 'application/json'
    And header Accept = 'application/json'
    And header Cookie = authtoken
    And header Authorization = authorize
    And header x-access-token = authtoken
    When method delete
    Then status 201
    And print response

    Given path 'booking'
    And path bookingId
    When method get
    Then status 404
    And print response
