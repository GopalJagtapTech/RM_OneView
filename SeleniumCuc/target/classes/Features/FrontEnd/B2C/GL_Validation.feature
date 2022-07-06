Feature: GL_Validation

  @run
  Scenario Outline: user should get success message when user clicks on Submit button from Gold loan application tab
    Given User is logged in "<CustID>" "<Password>"
    When user is on gold loan page
    And Clicks on Select State dropdown "<State>"
    And Clicks on Select City dropdown "<City>"
    And Clicks on Loan Amount field "<Amount>"
    And Clicks on terms and conditions checkbox
    And Clicks on Submit button
    Then user should get success message popup "<S_msg>"
    And Clicks on ok button
    Examples:
      |CustID|Password|State|City|Amount|S_msg|
      |57287651|Bajaj@123|MAHARASHTRA|Nagpur|15000|You have successfully submitted your details, Thank you.|

  Scenario Outline: user should get error message when enters incorrect Loan amount
    Given User is logged in "<CustID>" "<Password>"
    When user is on gold loan page
    And Clicks on Select State dropdown "<State>"
    And Clicks on Select City dropdown "<City>"
    And Clicks on Loan Amount field "<Amount>"
    Then user should get error message on screen "<E_msg>"
    Examples:
      |CustID|Password|State|City|Amount|E_msg|
      |57287651|Bajaj@123|MAHARASHTRA|Nagpur|1500|Loan Amount Should Be Between Rs 5000 and 25,00,000|

  Scenario Outline: user should get company address after selecting state and city
    Given User is logged in "<CustID>" "<Password>"
    When user is on gold loan page
    And Clicks on Select State dropdown "<State>"
    And Clicks on Select City dropdown "<City>"
    Then user should get company address on screen
    Examples:
      |CustID|Password|State|City|
      |57287651|Bajaj@123|MAHARASHTRA|Nagpur|
