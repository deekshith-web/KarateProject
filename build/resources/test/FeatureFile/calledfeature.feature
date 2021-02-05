Feature:  called feature suite
  validating called featue test case

  Scenario: calledFeature testcase1

    Given url "https://www.w3schools.com/xml/tempconvert.asmx/CelsiusToFahrenheit"
    And header Content-Type = "application/x-wwW-form-urlencoded"
    And request "Celsius=40"
    And method POST
    And status 200
    * print responseType

    * match response contains "104"
    * assert responseTime <= 1000
    * print responseTime
    * print response