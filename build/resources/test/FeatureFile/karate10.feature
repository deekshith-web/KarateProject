Feature:karate TestSuite 10
  validating json otput of rest API with get method

  @rest
  Scenario: REST API TestCase1
    Given url "http://dummy.restapiexample.com/api/v1/employees"
    When method get 
    Then status 200
    * match responseType == "json"
    * match response.data[0].employee_name == "Tiger Nixon"
    * match response.status == "#string"



  @rest
  Scenario: REST API TestCase1
    Given url "http://dummy.restapiexample.com"
    And path "/api/v1/employees"
    When method get
    Then status 200
    * match responseType == "json"
    * match response.data[0].employee_name == "Tiger Nixon"
    * match response.status == "#string"