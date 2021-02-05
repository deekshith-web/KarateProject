Feature: karate TestSuite 1
  validating data type operations
  
  Scenario:  karate data Type validation
    * def a = 10
    * def b = "karate"
    * def c = true
    * match a == "#number"
    * match b == "#string"
    * match c == "#boolean"


