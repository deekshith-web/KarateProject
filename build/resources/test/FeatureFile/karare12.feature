Feature:  katare 12
  data driventesting

@ddt
  Scenario Outline: DDT Testcase1
    Given url "https://www.w3schools.com/xml/tempconvert.asmx/CelsiusToFahrenheit"
    And header Content-Type = "application/x-wwW-form-urlencoded"
    And request "Celsius=<Temp>"
    And method POST
    And status 200
    * print responseType
    * match response contains "<Results>"
    * assert responseTime <= 1000
    * print responseTime
    * print response

  Examples:
    |Temp |Results|
    | 37  |98.6   |
    |40   |104    |


  @ddt
  Scenario Outline: DDT Testcase2
    Given url "https://www.w3schools.com/xml/tempconvert.asmx/CelsiusToFahrenheit"
    And header Content-Type = "application/x-wwW-form-urlencoded"
    And request "Celsius=<Temp>"
    And method POST
    And status 200
    * print responseType
    * match response contains "<Result>"
    * assert responseTime <= 1000
    * print responseTime
    * print response

    Examples:
      | read("classpath:Data.csv")|