Feature: Passbook NTB/PTB
@run
  Scenario Outline:  To verify Transactions details is displayed when customer click on passbook tab from hamburger menu for NTB and PTB - "<Tab>"
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "Passbook"
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookBBPS" Url
    And Clicks on the Tab "<Tab>" in Passbook Page
    And verify the options visible when customer is on Bills and Recharge section for "<Cust Type>"
    Then "Bills and Recharge" should be displayed along with below details for each transaction
#  1. Filter icon
#  2. Below tab in cockpit menu: -
#  a. Bills and Recharges
#  b. Wallets
#  3. Search tab with icon
#  4. Transaction tiles with below details: -
#  a. vendor name with number
#  b. vendor logo
#  c. Transaction date
#  d. Amount with RS as suffix
#  e. Arrow in Red colour for debit upwards direction and green colour for credit amount down-words direction
#  f. mode of payment
#  g. mode of payment logo
#  h. Transaction status
#  5. pre-approved offers section with multiple offer banners in footer section
#  6. Deal Details Section with count, banners and View All option
    Examples:
      | Mobile Number | Date     | Customer Type | Tab                | Cust Type |
      | 8329596976    | 12031970 | Individual    | Bills and Recharge | NTB       |
#      | 9008421140    | 12031970 | Individual    | Bills and Recharge | PTB       |

  Scenario Outline:  To verify Transactions details is displayed when customer click on passbook tab from hamburger menu for NTB and PTB - "<Tab>"
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "Passbook"
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookBBPS" Url
    And Clicks on the Tab "<Tab>" in Passbook Page
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookWallet" Url
    And verify the options visible when customer is on Bills and Recharge section for "<Cust Type>"
    Then "Wallet" should be displayed along with below details for each transaction

    Examples:
      | Mobile Number | Date     | Customer Type | Tab    | Cust Type |
      | 8329596976    | 12031970 | Individual    | Wallet | NTB       |
      | 9008421140    | 12031970 | Individual    | Wallet | PTB       |




