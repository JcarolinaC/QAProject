Feature: Create a User with a POST
  As QA automation
  I want to create user
  To validate the status code and response

  Background: consume service
    * url url

  Scenario: Create User post method

    * def jsonBody = read('classpath:karate/request/CreateUserFeature/bodyCreateUser.json')

    Given path 'user'
    And request jsonBody
    When method post
    Then status 200
    And match response == {"code": "#number","type": "#string","message": "#string"}
    And assert response.Time < 500

  Scenario Outline: Create a user with Id invalidate

    Given path 'pet'
    And request <id>
    When method post
    Then status 415
    And match response == <expected>
    And assert response.Time < 500

    Examples:
      | id                             | expected  |
      | "adsdende"                     | '#string' |
      | 123456789012345678903214569874 | '#string' |
      | "*"                            | '#string' |
