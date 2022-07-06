Feature: Collected list

  Scenario Outline: To view collected list
    Given url '<url>'
    And request body = {'agentId': 'CA1461', 'collectType': 'LOAN'}
    When method POST
    Then status 200
    And def Json = response
    And print Json
    And match Json.errorCode == 0
    And match Json.errorMessage == 'Success'
    Examples:
      |url|
      |http://14.141.204.73/Collection/collectedList_Version1|