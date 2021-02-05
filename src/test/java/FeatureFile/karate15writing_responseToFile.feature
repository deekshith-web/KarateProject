Feature:  karate test suite 16
  Interacting with DB



  Scenario: writing file
    * def util = Java.type("misc.Utils")
    Given url "https://reqres.in/api/users?page=2"
    When method get
    Then status 200
   * def res = get response $.data[0].email
    # * def res = get response
    * print res
    * util.writeToFile("result.txt",res)

Scenario: reading file
  * def data = read("classpath:result.txt")
  * print data
