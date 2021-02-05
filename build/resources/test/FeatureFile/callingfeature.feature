Feature:  calling feature suite
  validating calling featue test case

  Scenario: callingFeature testcase1
    * def result = call read("calledfeature.feature")
    * print result
    * assert result.respnse.string._ == 104
