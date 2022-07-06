Feature: Call me

  Scenario Outline: To verify customer submits message for Calling
    Given User is logged in "<CustID>" "<Password>"
    When User is on Insurance page
    And User enters message "<message>"
    And Clicks on Submit
    Then Sucess message pop-up should be displayed
    Examples:
      |CustID|Password|message|
      |39915194|Bajaj@123|Call me|
