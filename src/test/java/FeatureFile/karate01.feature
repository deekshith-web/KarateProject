Feature: karate TestSuite 1
  This is my first karate
  
  Scenario:  karate Test Casee1
    Given def a = 10
    And def b = 20
    When def c = a + b
    Then assert c == 30
    And print " c = ", c
    And karate.log("end of the test")


  Scenario:  karate Test Casee2
    Given def a = 10
    * def b = 20
    When def c = a + b
    Then assert c == 30
    * print " c = ", c
    * karate.log("end of the test")

  Scenario:  karate Test Casee3
    * def a = 10
    * def b = 20
    * def c = a + b
    * assert c == 30
    * print " c = ", c
    * karate.log("end of the test")