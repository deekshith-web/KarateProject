Feature: Validating xml content

  Scenario: Json test ase1
    Given def xml = <info><id>101</id><tool><name>Karate</name><version>0.9.6</version></tool></info>
    * print xml
    * print xml/info/id
    * print json.info.id

  Scenario: Json test case2
    Given def xml =
      """
      <info>
        <id>101</id>
        <tool>
          <name>Karate</name>
          <version>0.9.6</version>
        </tool>
       </info>
      """
    * print xml
    * print xml/info/id
    * print json.info.id

  Scenario: xml test case3
    Given def xml = <info><id>101</id><tool><name>Karate</name><version>0.9.6</version></tool></info>
    * match  xml/info/id == 101
    * match xml.info.tool.name == "Karate"


  Scenario: xml test case4
    Given def xml = <info><id>101</id><tool><name>Karate</name><version>0.9.6</version></tool></info>
     * match xml contains "Karate"

  Scenario: xml test case5
    Given def xml = <info><id>101</id><tool><name>Karate</name><version>0.9.6</version></tool></info>
    * match xml contains "<name>Karate</name>"


  Scenario: xml test case6
    Given def xml =
    """
    <info>
  <tool>
  <name>Karate</name>
  <version>0.9.6</version>
  </tool>
  <tool>
  <name>IntelliJ</name>
  <version>2020.2</version>
  </tool>
  </info>
    """
    * match xml/info/tool[1]/name contains "Karate"
    * match xml/info/tool[2]/name contains "IntelliJ"


  Scenario: xml test case7
    Given def xml =
    """
    <info>
  <tool>
  <name>Karate</name>
  <version>0.9.6</version>
  </tool>
  <tool>
  <name>IntelliJ</name>
  <version>2020.2</version>
  </tool>
  </info>
    """
    * match eval( xml/info/tool[1]/name == "Karate" ) && eval( xml/info/tool[2]/name == "IntelliJ" )


