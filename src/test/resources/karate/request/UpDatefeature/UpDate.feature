@upDate
Feature: Up Date a Pet PUT
  As QA automation
  I want to Up date a pet
  To validate the status code and response

  Background: consume service
    * url url

  Scenario: Up date a pet method PUT
    * def requestUpdate = {"id": "#(id)", "category": {"id": "#(idCategory)", "name": "#(nameCategory)"},"name": "#(name)","photoUrls": ["#(photoUrls)"],"tags": [{"id": "#(idTags)","name": "#(nameTags)"}],"status": "#(status)"}
    * def responseUpDate = read('classpath:karate/request/UpDatefeature/requestUpDate.json')

    Given path 'pet'
    And request requestUpdate
    When method put
    Then status 200
    And match  response == responseUpDate


  Scenario Outline: Up date a pet with a invalidate data

    Given path 'pet'
    And request <id>
    When method put
    Then status <code>
    And match response == <expected>

    Examples:
      | id    | code | expected  |
      | "tom" | 415  | '#string' |
      | "*/"  | 415  | '#string' |
      | " "   | 415  | '#string' |