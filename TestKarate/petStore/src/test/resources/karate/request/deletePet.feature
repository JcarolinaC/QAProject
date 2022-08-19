Feature: Delete a pet
  As QA automation
  I want to delete a pet
  To validate the status code and response

  Background: consume service
    * url url

  Scenario: Delete a pet a Id

    * def responsePostAddPet = read('classpath:karate/request/responsePostAddPet.json')

    Given path 'pet','#id'
    When method Delete
    Then status 200
    And match response == {code: '#number',type: '#string',message: '#string'}|
