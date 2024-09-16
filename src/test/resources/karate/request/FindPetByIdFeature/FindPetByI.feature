@findById
Feature: find a pet by id
  As QA automation
  I want to find a pet by id
  To validate the status code and response

  Background: consume service
    * url url

  Scenario: Find a Pet By Id
    * def petId = '123'

    Given path 'pet',petId
    When method GET
    Then status 200
    And match response == read('classpath:karate/request/AddPetFeature/responsePostAddPet.json')


  Scenario Outline: Find a pet with a Get method
    * def idPet = '<id>'
    * def responseError = read('classpath:karate/request/FindPetByIdFeature/responseErrorGetFind')

    Given path 'pet',idPet
    When method GET
    Then status 404
    And match == responseError
    Examples:
      | id       |
      | 701      |
      | 187898   |
      | gainsaid |
