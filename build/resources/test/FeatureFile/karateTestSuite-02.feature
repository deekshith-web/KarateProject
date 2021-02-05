Feature: karat
  validating Json

  Scenario: Json test ase1
    Given def json = { "id" : "101", "tool": { "name":"Karate", "version":"0.9.6"}}
  * print json
    * print json.id
    * print json.tool.name

  Scenario: Json test case2
    Given def json =
    Given def json =
    """
    {
        "id" : "101",
        "tool": { "name":"Karate", "version":"0.9.6"}
     }
   """
    * print json
    * print json.id
    * print json.tool.name
  Scenario: Json test case5
    Given def json = { "id" : "101", "tool": { "name":"Karate", "version":"0.9.6"}}
    * print json
    * assert json.id == "101"
    * assert json.tool.name == "Karate"


  Scenario: Json test case4
    Given def json = { "id" : "101", "tool": { "name":"Karate", "version":"0.9.6"}}

    * match json.id == "101"
    * match json.tool == { "name":"Karate", "version":"0.9.8"}
