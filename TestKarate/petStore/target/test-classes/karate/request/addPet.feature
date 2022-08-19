Feature: Add new pet with a POST
  As QA automation
  I want to add a new pet
  To validate the status code and response

  Background: consume service
    * url url

    Scenario: Add a new pet post method

      * def responsePostAddPet = read('classpath:karate/request/responsePostAddPet.json')

      Given path 'pet'
      And def jsonBody = read('classpath:karate/request/addPetData.json')
      And request jsonBody
      When method post
      Then status 200
      And match  response == responsePostAddPet