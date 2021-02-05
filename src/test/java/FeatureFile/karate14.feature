Feature:  java calling java static and non static method
    java static and non static method

  Scenario: Non static method TC

    * def env1 =
      """
      function()
      {
      var temp  = Java.type('misc.Utils')
      var utils = new temp();
      return utils.method2();
      }
      """
    * print env1()
    * def res =  call env1
    * print res


  Scenario: Non static method TC2

    * def env2 =
      """
      function()
      {
      var temp  = Java.type('misc.Utils')

      return temp.method1();
      }
      """
    * print env2()
    * def res =  call env2
    * print res