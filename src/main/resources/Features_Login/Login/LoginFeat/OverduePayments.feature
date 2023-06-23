Feature: Overdue Payments Login Page(My Account)
#2 2 4 Failed
  Scenario Outline: To verify after selection Payments option in Hamburger menu payment options are displayed
    Given User is on Login Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then Verify Customer is able to view "<SubListMenus>" for "<SubMenu>"
    Examples:
      | SubMenu| SubListMenus|
      | Payments | Overdue#Other Payments|


  Scenario Outline: To verify after clicking on Overdue Payment under Payments, Account Login pop up is displayed
    Given User is on Login Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on "<SubListMenu>" of "<SubMenu>"
    Then verify Login Popup should be displayed

    Examples:
      | SubMenu  | SubListMenu |
      | Payments | Overdue |

  @overdue
  Scenario Outline: To verify after logging in we are redirected to Overdue details page
    Given User is on Login Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on "<SubListMenu>" of "<SubMenu>"
    Then verify Login Popup should be displayed
    And Enters Mobile Number and Date of Birth "<Mob>" "<DOB>"
    And Click on Get OTP
    And Enters "<OTP>"
    And Click on Submit
    Then User should be redirected to Overdue details Page
    When User logouts application
    Examples:
      |Mob|DOB |OTP| SubMenu  | SubListMenu |
      |  8956071386 |  11111999  |123456 | Payments | Overdue |
      |   9953037058| 11111999   |  123456 | Payments | Overdue |
      |   9744925187| 11111999   |  123456 | Payments | Overdue |



#Other Payments
  Scenario Outline: To verify after selection Payments in Hamburger menu, payment options are displayed
    Given User is on Login Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then Verify Customer is able to view "<SubListMenus>" for "<SubMenu>"
    Examples:
      | SubMenu| SubListMenus|
      | Payments | Overdue#Other Payments|

  Scenario Outline: To verify after clicking on Other Payments under Payments, Account Login pop up is displayed
    Given User is on Login Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on "<SubListMenu>" of "<SubMenu>"
    Then verify Login Popup should be displayed

    Examples:
      | SubMenu  | SubListMenu |
      | Payments | Other Payments |
  @overdueK
  Scenario Outline: To verify after logging in we are redirected to Active Loan details page
    Given User is on Login Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on "<SubListMenu>" of "<SubMenu>"
    Then verify Login Popup should be displayed
    And Enters Mobile Number and Date of Birth "<Mob>" "<DOB>"
    And Click on Get OTP
    And Enters "<OTP>"
    And Click on Submit
    Then User should be redirected to Active Loan details Page
    When User logouts application

    Examples:
      |Mob|DOB |OTP| SubMenu  | SubListMenu |
    #  |  8956071386 |  11111999  |123456 | Payments | Other Payments |
    #  |  9109600780 |  11111999  |123456 | Payments | Other Payments |
   #   |  9246616988 |  11111999  |123456 | Payments | Other Payments |
      |  9109600780 |  11111999  |123456 | Payments | Other Payments |
   #   |  9910955211 |  11111999  |123456 | Payments | Other Payments |


  @HomeK

  Scenario Outline: To verify Customer is redirected to Overdue payments page when customer click on Overdue Payments option under Hamburger
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on "<SubListMenu>" of "<SubMenu>"
    Then Customer should be redirected to respective "<Expected Url>"
    When User logouts application
    Examples:
      | Mobile Number | Date     | Customer Type |Expected Url| SubMenu  | SubListMenu |
      | 8956071386    | 26051982 | Individual| https://uat-oneweb.bajajfinserv.in/MyAccountPayments/LoanPay/ActiveLoanOverduePay | Loan payment | Overdue |


  @HomeK
  Scenario Outline: To verify Customer is redirected to Overdue payments page when customer click on Pay Your EMI under Payment Header Option
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And User click on Payment Option
    And Click on Pay Your EMI
    Then Customer should be redirected to respective "<Expected Url>"
    When User logouts application
    Examples:
      | Mobile Number | Date     | Customer Type |Expected Url|
      | 8956071386    | 26051982 | Individual| https://uat-oneweb.bajajfinserv.in/MyAccountPayments/LoanPay/EMI_Overdue |






