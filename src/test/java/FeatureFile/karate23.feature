Feature: karate test suite 23
  Reading global variable from karate config

  Scenario: karate config test case
    Given url baseUrl
    And path  listUsers
    * method get
    * status 200
    * print response