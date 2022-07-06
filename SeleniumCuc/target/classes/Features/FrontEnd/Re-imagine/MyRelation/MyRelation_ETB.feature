Feature: My Relation ETB

  Scenario Outline: To verify My relation section is displayed
    Given User is logged in "<CustID>" "<Password>"
    When Customer clicks on view all option
    Then My relation section should be displayed to ETB customers
    Examples:
      |CustID|Password|
      |39915194|Bajaj@123|

  Scenario Outline: To verify My relation section is not displayed
    Given User is logged in "<CustID>" "<Password>"
    When Customer clicks on view all option
    Then My relation section should not be displayed to NTB customers
    Examples:
      |CustID|Password|
      |39915194|Bajaj@123|





