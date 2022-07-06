Feature: PL CTA

  @run
  Scenario Outline: user should be redirected to Application Form tab when user clicks on Apply Now button from Features & Benefits
    Given User is logged in "<CustID>" "<Password>"
    When user is on personal loan page
    And Clicks on Features & Benefits tab
    And Clicks on Apply now button
    Then user should be redirected to Application Form tab
    Examples:
    |CustID|Password|
    |112103211|Bajaj@123|
#    |50006944|Bajaj@123|
#    |56514332|Bajaj@123|


  Scenario Outline: user should be redirected Application Form tab when user clicks on Apply Now button from Eligibility Criteria
    Given User is logged in "<CustID>" "<Password>"
    When user is on personal loan page
    And Clicks on Eligibility Criteria tab
    And Clicks on Apply now button
    Then user should be redirected to Application Form tab
    Examples:
      |CustID|Password|
      |50006944|Bajaj@123|

  Scenario Outline: user should be redirected Application Form tab when user clicks on Apply Now button from Documents Required
    Given User is logged in "<CustID>" "<Password>"
    When user is on personal loan page
    And Clicks on Documents Required tab
    And Clicks on Apply now button
    Then user should be redirected to Application Form tab
    Examples:
      |CustID|Password|
      |50006944|Bajaj@123|
