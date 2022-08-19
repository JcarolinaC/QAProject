Feature: Find a pet by Id
  As QA automation
  I want to find a pet by id
  To validate the status code and response

  Background: consume service
    * url url

    Scenario Outline: Find a pet with a Get method
      * def idPet = '<id>'
      * def responseError = read('classpath:karate/request/responseErrorGetFind.json')

      Given path 'pet',idPet
      When method GET
      Then status 404
      And match response == responseError

      Examples:
        |id|
        |701|
        |187898|
        |gainsaid|