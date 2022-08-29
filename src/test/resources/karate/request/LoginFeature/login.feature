Feature: login with a GET
  As QA automation
  I want to login
  To validate the status code and response

  Background: consume service
    * url url

  Scenario: Login a GET method

    Given path 'user','login'
    And method get
    Then status 200
    And match response == {"code": "#number","type": "#string","message": "#string"}
    And assert response.Time < 500

  Scenario Outline: login with Id invalidate

    Given path 'user','<id>'
    And request <id>
    When method get
    Then status 404
    And match response == {"code": "#number","type": "#string","message": "#string"}
    And assert response.Time < 500

    Examples:
      | id                             |
      | "adsdende"                     |
      | 123456789012345678903214569874 |
      | "*"                            |