Feature: karate TestSuite 08
  validating with regular expression
  
  Scenario:  karate regular expretion validation test case
    * def a = "10"
    * def b = "Karate"
    * def c = "Karate FrameWork training"

    * match a == "#regex [0-9]+"
    * match a == "#regex \\d+"

    * match b == "#regex \\w+"
    * match b == "#regex [A-Z]+[a-z]+"

    * match c == "#regex [A-Za-z\\s?]+"
    * match c == "#regex (\\w+\\s?)+"



