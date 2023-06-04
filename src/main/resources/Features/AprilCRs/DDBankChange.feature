Feature: DD Bank Change quick action

  Scenario Outline: To verify that customer is redirected to My relation page on click of  View All CTA of my relation on home page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer clicks on view all option
    Then Customer should be redirected to My Relation page
    Examples:
      | Mobile Number | Date | Customer Type  |
      | 8888890933 | 13/09/1990 | Individual  |
@Head
  Scenario Outline: To verify that customer is redirecting to loan details page on click of flexi loan
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer clicks on view all option
    And Click on Flexi loan Card "<LAN>"
    Then Customer should be redirected to My Relation Heading page
    Examples:
      | Mobile Number | Date | Customer Type  | LAN      |
      | 8888890933 | 13/09/1990 | Individual  | 400FLFHE869061 |


  Scenario Outline:  To verify that 'Drawdown Bank Change' CTA is visible
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer clicks on view all option
    And Click on Flexi loan Card "<LAN>"
    Then Drawdown Bank Change CTA should be visible
    Examples:
      | Mobile Number | Date | Customer Type  | LAN      |
      | 8888890933 | 13/09/1990 | Individual  | 400FLFHE869061 |


  Scenario Outline: To verify that popup message is displayed when getdrawdown api fails
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer clicks on view all option
    And Click on Flexi loan Card "<LAN>"
    And Click on  Drawdown Bank Change from RHS
    Then Popup with OK CTA should be dispalyed "<Message>"
    Examples:
      | Mobile Number | Date | Customer Type  | LAN      | Message |
      | 8888890933 | 13/09/1990 | Individual  | 400FLFHE869061 | We are unable to proceed with your request due to some technical issues. You will be redirected to our ‘Raise a Request’ section to change your bank account details.|



  Scenario Outline: To verify that customer is redirected to RAR page when clicks on OK CTA
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer clicks on view all option
    And Click on Flexi loan Card "<LAN>"
    And Click on  Drawdown Bank Change from RHS
    And Click on OK
    Then Customer should be redirected to RAR page
    Examples:
      | Mobile Number | Date | Customer Type  | LAN      |
      | 8888890933 | 13/09/1990 | Individual  | 400FLFHE869061 |
