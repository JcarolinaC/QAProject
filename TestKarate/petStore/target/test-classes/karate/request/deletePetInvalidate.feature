Feature: Delete a pet
  As QA automation
  I want to delete a pet
  To validate the status code and response

  Background: consume service
    * url url

  Scenario Outline: Delete a pet with a invalid Id

    * def idPet = '<id>'

    Given path 'pet',idPet
    When method Delete
    Then status <code>
    And match response == <expected>

    Examples:
      |id  |code|expected|
      |701 |404 |''    |
      |gain|404 |{code: '#number',type: '#string',message: '#string'}|
      |    |405 |<?xml version="1.0" encoding="UTF-8" standalone="yes"?><apiResponse><type>unknown</type></apiResponse>    |