Feature:karate TestSuite 11
  End to End Api testing (api chainging )

  @rest
  Scenario: REST API TestCase1
    Given url "http://dummy.restapiexample.com/api/v1/create"
    And request {"name":"Deekshith","salary":"12","age":"29"}
    When method post
    Then status 200
    * print response
    * def id = response.data.id
    * print id

    Given url "http://dummy.restapiexample.com/api/v1/employee/" + id
    When method get
    Then status 200
    * print response

    Given url "http://dummy.restapiexample.com/api/v1/update/" + id
    And request {"name":"Deekshith","salary":"18","age":"29"}
    When method put
    Then status 200
    * print response

    Given url "http://dummy.restapiexample.com/api/v1/update/" + id
    When method delete
    Then status 200
    * print response
    * assert response.message == "successfully! deleted record"
