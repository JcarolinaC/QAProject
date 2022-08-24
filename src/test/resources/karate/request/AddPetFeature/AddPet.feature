@add
Feature: Add new pet with a POST
  As QA automation
  I want to add a new pet
  To validate the status code and response

  Background: consume service
    * url url

  Scenario: Add a new pet post method

    * def responsePostAddPet = read('classpath:src/test/resources/karate/request/AddPetFeature/responsePostAddPet.json')

    Given path 'pet'
    And def jsonBody = read('classpath:karate/request/AddPetFeature/addPetData.json')
    And request jsonBody
    When method post
    Then status 200
    And match  response == responsePostAddPet

  Scenario Outline: Add a pet with a invalid data

    Given path 'pet'
    And request <id>
    When method post
    Then status 415
    And match response == <expected>
    Examples:
      | id                             | expected  |
      | "adsdende"                     | '#string' |
      | 123456789012345678903214569874 | '#string' |
      | " "                            | '#string' |
