Feature: PL Validation

  Scenario Outline: Validation message should be displayed when Monthly salary is less than 15,000
    Given User is logged in "<CustID>" "<Password>"
    When user is on personal loan page
    And user enters Monthly Salary less than fifteen thousand "<Monthly_Sal>"
    Then validation message should be displayed "<Msg>"
    Examples:
      |CustID|Password|Monthly_Sal|Msg|
      |50006944|Bajaj@123|14999|Your monthly salary should be Rs. 15,000 or above|


  Scenario Outline: Validation message should not be displayed when Monthly salary is more than 15,000
    Given User is logged in "<CustID>" "<Password>"
    When user is on personal loan page
    And user enters Monthly Salary more than fifteen thousand "<Monthly_Sal>"
    Then validation message should not be displayed
    Examples:
      |CustID|Password|Monthly_Sal|
      |50006944|Bajaj@123|15000|
      |50006944|Bajaj@123|15001|

  Scenario Outline: User should not be able to select DOB less than 18 years than today's date
    Given User is logged in "<CustID>" "<Password>"
    When user is on personal loan page
    And user selects DOB "<DOB>" less than eighteen years
    Then user should not be able to select date
    Examples:
      |CustID|Password|DOB|
      |50006944|Bajaj@123|27/11/2003|

  Scenario Outline: User should be able to select DOB more than 18 years than today's date
    Given User is logged in "<CustID>" "<Password>"
    When user is on personal loan page
    And user selects DOB "<DOB>" equal to and more than eighteen years
    Then user should be able to select date
    Examples:
      |CustID|Password|DOB|
      |50006944|Bajaj@123|11 January 1970|
#      |50006944|Bajaj@123|20/11/2003|