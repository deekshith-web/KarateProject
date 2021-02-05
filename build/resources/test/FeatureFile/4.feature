Feature: karate test suite 24
  using scenario and feature level testt fixturem karate config

  Background: init
    * print "from background block"

    * configure afterScenario =
    """
    function (){
    karate.log("from after scenario")
    }
    """
    * configure afterFeature =
    """
    function (){
    karate.log("from after feature")
    }
    """


  Scenario: karate hooks test case1
    * print "from scenario block"
