Feature: Passbook- Bills & Recharges

  @pass @2501
  Scenario Outline: To verify the options visible when customer is on Pasbook Page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookBBPS" Url
    And verify the options visible when customer is on Bills and Recharge section

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu  |
      | 9033270991    | 13011992 | Individual    | Passbook |

  @pass @2501
  Scenario Outline: verify By default Bills and Recharge section is selected
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookBBPS" Url
    And verify By default Bills and Recharge section is selected

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu  |
      | 9033270991    | 13011992 | Individual    | Passbook |

  @pass
  Scenario Outline: To verify customer is able to view next five transactions after click on View More Button
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookBBPS" Url
    And verify View More Button is visible when customer having more than five transactions & able to view next five transaction after click on View More Button

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu  |
      | 9033270991    | 13011992 | Individual    | Passbook |

  @pass
  Scenario Outline: To verify customer is able to view max 20 transactions
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookBBPS" Url
    And verify customer is able to view max twenty transactions

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu  |
      | 7698444382    | 13011992 | Individual    | Passbook |

  @nodata
  Scenario Outline: To verify View More Button is not displayed when less than equal to five transaction is present
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookBBPS" Url
    And verify View More Button is not displayed when less than equal to five transaction is present

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu  |
      |               | 13011992 | Individual    | Passbook |

 @filter @pass
  Scenario Outline: verify Filtering options are displayed for Bills & Recharges and Filter gets closed on click of cross Button
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookBBPS" Url
    And Customer clicks on Filter Icon
    And verify Filtering options are displayed for Bills & Recharges
    And verify Filter window gets Closed when customer click on X Button

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu  |
      | 9033270991    | 13011992 | Individual    | Passbook |

  @pass @2501
  Scenario Outline: verify after click on Filter icon "All" option from Status and payment mode is selected by-default
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookBBPS" Url
    Then verify after click on Filter icon All option from Status and payment mode is selected by-default

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu  |
      | 9033270991    | 13011992 | Individual    | Passbook |

  @filter @pass
  Scenario Outline: Verify Transactions are displayed for Options Status:All, Mode:All - Debited
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookBBPS" Url
    And Customer clicks on Filter Icon
    Then verify customer is able to view the transactions after click on Apply button with below selected options:-a. Status- All b. Payment Mode:- All - Debited

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu  |
      | 9033270991    | 13011992 | Individual    | Passbook |

   @nodata
  Scenario Outline: Verify Transactions are displayed for Options Status:All, Mode:All - Credited
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookBBPS" Url
    And Customer clicks on Filter Icon
    Then verify customer is able to view the transactions after click on Apply button with below selected options:-a. Status- All b. Payment Mode:- All- Credited

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu  |
      |               | 13011992 | Individual    | Passbook |

  @filter @pass
  Scenario Outline: Verify Transactions are displayed for Options Status:All, Mode:Credit Cards
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookBBPS" Url
    And verify customer is able to view the transactions after click on Apply now button with below selected options:- a. Status- All b. Payment Mode:- Credit Cards

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu  |
      | 9033270991    | 13011992 | Individual    | Passbook |

  @filter  @pass
  Scenario Outline: Verify Transactions are displayed for Options Status:All, Mode:Debit Cards
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookBBPS" Url
    And verify customer is able to view the transactions after click on Apply now button with below selected options:- a. Status- All b. Payment Mode:- Debit Cards

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu  |
      | 7698444382    | 13011992 | Individual    | Passbook |

  @filter @pass
  Scenario Outline: Verify Transactions are displayed for Options Status:All, Mode:UPI
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookBBPS" Url
    And verify customer is able to view the transactions after click on Apply now button with below selected options:-a. Status- All b. Payment Mode:- UPI

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu  |
      | 7698444382    | 13011992 | Individual    | Passbook |

  @filter @pass
  Scenario Outline: Verify Transactions are displayed for Options Status:All, Mode:Wallet
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookBBPS" Url
    And verify customer is able to view the transactions after click on Apply now button with below selected options:-a. Status- All b. Payment Mode:- Wallet

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu  |
      | 9033270991    | 13011992 | Individual    | Passbook |

  @filter  @pass
  Scenario Outline: Verify Transactions are displayed for Options Status:All, Mode:Net Banking
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookBBPS" Url
    And verify customer is able to view the transactions after click on Apply now button with below selected options:-a. Status- All b. Payment Mode:- Net Banking

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu  |
      | 8390187456    | 13011992 | Individual    | Passbook |

  @filter @pass
  Scenario Outline: Verify Transactions are displayed for Options Status:Failed, Mode:All
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookBBPS" Url
    And verify customer is able to view the transactions after click on Apply now button with below selected options:-a. Status- Failed b. Payment Mode:- All

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu  |
      | 9033270991    | 13011992 | Individual    | Passbook |

  @filter @pass
  Scenario Outline: Verify Transactions are displayed for Options Status:Failed, Mode:Credit Cards
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookBBPS" Url
    And verify customer is able to view the transactions after click on Apply now button with below selected options:-a. Status- Failed b. Payment Mode:- Credit Cards

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu  |
      | 9033270991    | 13011992 | Individual    | Passbook |

  @filter @pass
  Scenario Outline: Verify Transactions are displayed for Options Status:Failed, Mode:Debit Cards
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookBBPS" Url
    And verify customer is able to view the transactions after click on Apply now button with below selected options:-a. Status- Failed b. Payment Mode:- Debit Cards

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu  |
      | 7698444382    | 13011992 | Individual    | Passbook |

  @filter @pass
  Scenario Outline: Verify Transactions are displayed for Options Status:Failed, Mode:UPI
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookBBPS" Url
    And verify customer is able to view the transactions after click on Apply now button with below selected options:-a. Status- Failed b. Payment Mode:- UPI

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu  |
      | 7698444382    | 13011992 | Individual    | Passbook |

  @filter @pass
  Scenario Outline: Verify Transactions are displayed for Options Status:Failed, Mode:Wallet
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookBBPS" Url
    And verify customer is able to view the transactions after click on Apply now button with below selected options:-a. Status- Failed b. Payment Mode:- Wallet

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu  |
      | 9033270991    | 13011992 | Individual    | Passbook |

  @filter @pass
  Scenario Outline: Verify Transactions are displayed for Options Status:Failed, Mode:Net Banking
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookBBPS" Url
    And verify customer is able to view the transactions after click on Apply now button with below selected options:-a. Status- Failed b. Payment Mode:- Net Banking

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu  |
      | 8390187456    | 13011992 | Individual    | Passbook |

  @filter  @pass
  Scenario Outline: Verify Transactions are displayed for Options Status:Success, Mode:All
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookBBPS" Url
    And verify customer is able to view the transactions after click on Apply now button with below selected options:-a. Status- Success b. Payment Mode:- All

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu  |
      | 8390187456    | 13011992 | Individual    | Passbook |

  @filter @pass
  Scenario Outline: Verify Transactions are displayed for Options Status:Success, Mode:Credit Cards
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookBBPS" Url
    And verify customer is able to view the transactions after click on Apply now button with below selected options:-a. Status- Success b. Payment Mode:- Credit Cards

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu  |
      | 9033270991    | 13011992 | Individual    | Passbook |

  @filter @pass
  Scenario Outline: Verify Transactions are displayed for Options Status:Success, Mode:Debit Cards
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookBBPS" Url
    And verify customer is able to view the transactions after click on Apply now button with below selected options:-a. Status- Success b. Payment Mode:- Debit Cards

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu  |
      | 7698444382    | 13011992 | Individual    | Passbook |
  @nodata
  Scenario Outline: Verify Transactions are displayed for Options Status:Success, Mode:UPI
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookBBPS" Url
    And verify customer is able to view the transactions after click on Apply now button with below selected options:-a. Status- Success b. Payment Mode:- UPI

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu  |
      | 9033270991    | 13011992 | Individual    | Passbook |

  @filter @pass
  Scenario Outline: Verify Transactions are displayed for Options Status:Success, Mode:Wallet
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookBBPS" Url
    And verify customer is able to view the transactions after click on Apply now button with below selected options:-a. Status- Success b. Payment Mode:- Wallet

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu  |
      | 7698444382    | 13011992 | Individual    | Passbook |

  @filter @pass
  Scenario Outline: Verify Transactions are displayed for Options Status:Success, Mode:Net Banking
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookBBPS" Url
    And verify customer is able to view the transactions after click on Apply now button with below selected options:-a. Status- Success b. Payment Mode:- Net Banking

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu  |
      | 8390187456    | 13011992 | Individual    | Passbook |

  @filter @pass
  Scenario Outline: Verify Transactions are displayed for Options Status:Pending, Mode:All
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookBBPS" Url
    And verify customer is able to view the transactions after click on Apply now button with below selected options:-a. Status- Pending b. Payment Mode:- All

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu  |
      | 9033270991    | 13011992 | Individual    | Passbook |

  @filter @pass
  Scenario Outline: Verify Transactions are displayed for Options Status:Pending, Mode:Credit Cards
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookBBPS" Url
    And verify customer is able to view the transactions after click on Apply now button with below selected options:-a. Status- Pending b. Payment Mode:- Credit Cards

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu  |
      | 9033270991    | 13011992 | Individual    | Passbook |

  @nodata
  Scenario Outline: Verify Transactions are displayed for Options Status:Pending, Mode:Debit Cards
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookBBPS" Url
    And verify customer is able to view the transactions after click on Apply now button with below selected options:-a. Status- Pending b. Payment Mode:- Debit Cards

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu  |
      | 9033270991    | 13011992 | Individual    | Passbook |

  @nodata
  Scenario Outline: Verify Transactions are displayed for Options Status:Pending, Mode:UPI
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookBBPS" Url
    And verify customer is able to view the transactions after click on Apply now button with below selected options:-a. Status- Pending b. Payment Mode:- UPI

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu  |
      | 9033270991    | 13011992 | Individual    | Passbook |

  @filter @pass
  Scenario Outline: Verify Transactions are displayed for Options Status:Pending, Mode:Wallet
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookBBPS" Url
    And verify customer is able to view the transactions after click on Apply now button with below selected options:-a. Status- Pending b. Payment Mode:- Wallet

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu  |
      | 9033270991    | 13011992 | Individual    | Passbook |

  @nodata
  Scenario Outline: Verify Transactions are displayed for Options Status:Pending, Mode:Net Banking
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookBBPS" Url
    And verify customer is able to view the transactions after click on Apply now button with below selected options:-a. Status- Pending b. Payment Mode:- Net Banking

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu  |
      | 9033270991    | 13011992 | Individual    | Passbook |

  @filter @pass
  Scenario Outline: verify all selected options are deselected when customer click on Clear All Button
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookBBPS" Url
    And Customer clicks on Filter Icon
    And customer selects filter options:-a. Status- Pending b. Payment Mode:- Net Banking
    Then verify all selected options are deselected when customer click on Clear All Button

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu  |
      | 9033270991    | 13011992 | Individual    | Passbook |

##########NN
  @check
  Scenario Outline: To verify QR code window is displayed after click on Download the App section
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookBBPS" Url
    And Clicks on Download App Section
    Then verify Popup is displayed will all the contents

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu  |
      | 9033270991    | 13011992 | Individual    | Passbook |

  @pass @2501
  Scenario Outline: To verify QR code window is closed after click on X button
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookBBPS" Url
    And Clicks on Download App Section
    And clicks on Popup Close Button
    Then verify Popup is closed in Passbook Page

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu  |
      | 9033270991    | 13011992 | Individual    | Passbook |

#####Search Filter
  @pass @2501
  Scenario Outline: To verify Search Filter with Alphabets
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookBBPS" Url
    And Searches for a text "<Search Text>" in input box in Passbook Page
    Then verify the tiles are filtered for the text "<Search Text>"

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu  | Search Text |
      | 9033270991    | 13011992 | Individual    | Passbook | from        |

  @pass @2501
  Scenario Outline: To verify Search Filter with Alphabets- No Records
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookBBPS" Url
    And Searches for a text "<Search Text>" in input box in Passbook Page
    Then verify the tiles are filtered for the text "<Search Text>"

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu  | Search Text |
      | 9033270991    | 13011992 | Individual    | Passbook | Nov         |

  @pass @2501
  Scenario Outline: To verify Search Filter with Numericals
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookBBPS" Url
    And Searches for a text "<Search Text>" in input box in Passbook Page
    Then verify the tiles are filtered for the text "<Search Text>"

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu  | Search Text |
      | 9033270991    | 13011992 | Individual    | Passbook | 10          |

  @pass @2501
  Scenario Outline: To verify Search Filter with Numericals- No Records
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookBBPS" Url
    And Searches for a text "<Search Text>" in input box in Passbook Page
    Then verify the tiles are filtered for the text "<Search Text>"

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu  | Search Text |
      | 9033270991    | 13011992 | Individual    | Passbook | 15          |

#########Transactions
  @pass @transact
  Scenario Outline: To verify Transactions Page-  Success - Top Section
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookBBPS" Url
    And Customer clicks on Filter Icon
    And Customer selects an Status Option:"Success" and Payment Option:"All"
    And Clicks on "Apply" Button in Passbook Filter
    And Clicks on a "Success" Transaction in Bills and Recharge
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/TransactionBBPSDetails" Url
    And verify the Top Section in Success Transaction

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu  |
      | 9033270991    | 13011992 | Individual    | Passbook |

  @pass @transact
  Scenario Outline: To verify Transactions Page-  Failed - Top Section
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookBBPS" Url
    And Customer clicks on Filter Icon
    And Customer selects an Status Option:"Failed" and Payment Option:"All"
    And Clicks on "Apply" Button in Passbook Filter
    And Clicks on a "Failed" Transaction in Bills and Recharge
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/TransactionBBPSDetails" Url
    And verify the Top Section in Failed Transaction

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu  |
      | 9033270991    | 13011992 | Individual    | Passbook |

  @pass @transact
  Scenario Outline: To verify Transactions Page-  Pending - Top Section
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookBBPS" Url
    And Customer clicks on Filter Icon
    And Customer selects an Status Option:"Pending" and Payment Option:"All"
    And Clicks on "Apply" Button in Passbook Filter
    And Clicks on a "Pending" Transaction in Bills and Recharge
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/TransactionBBPSDetails" Url
    And verify the Top Section in Pending Transaction

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu  |
      | 9033270991    | 13011992 | Individual    | Passbook |

  @pass @transact
  Scenario Outline: To verify Transactions Details-  Success Transaction
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookBBPS" Url
    And Customer clicks on Filter Icon
    And Customer selects an Status Option:"Success" and Payment Option:"All"
    And Clicks on "Apply" Button in Passbook Filter
    And Clicks on a "Success" Transaction in Bills and Recharge
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/TransactionBBPSDetails" Url
    And verify the Transaction Details in "Success" Transaction

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu  |
      | 9033270991    | 13011992 | Individual    | Passbook |

  @pass @transact
  Scenario Outline: To verify Transactions Details-  Failed Transaction
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookBBPS" Url
    And Customer clicks on Filter Icon
    And Customer selects an Status Option:"Failed" and Payment Option:"All"
    And Clicks on "Apply" Button in Passbook Filter
    And Clicks on a "Failed" Transaction in Bills and Recharge
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/TransactionBBPSDetails" Url
    And verify the Transaction Details in "Failed" Transaction

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu  |
      | 9033270991    | 13011992 | Individual    | Passbook |

  @pass @transact
  Scenario Outline: To verify Transactions Details-  Pending Transaction
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookBBPS" Url
    And Customer clicks on Filter Icon
    And Customer selects an Status Option:"Pending" and Payment Option:"All"
    And Clicks on "Apply" Button in Passbook Filter
    And Clicks on a "Pending" Transaction in Bills and Recharge
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/TransactionBBPSDetails" Url
    And verify the Transaction Details in "Pending" Transaction

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu  |
      | 9033270991    | 13011992 | Individual    | Passbook |

  @pass @transact
  Scenario Outline: To verify Payment Made Details-  Success Transaction
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookBBPS" Url
    And Customer clicks on Filter Icon
    And Customer selects an Status Option:"Success" and Payment Option:"All"
    And Clicks on "Apply" Button in Passbook Filter
    And Clicks on a "Success" Transaction in Bills and Recharge
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/TransactionBBPSDetails" Url
    And verify the Payment Made Details in "Success" Transaction

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu  |
      | 9033270991    | 13011992 | Individual    | Passbook |

  @pass @transact
  Scenario Outline: To verify Payment Made Details-  Failed Transaction
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookBBPS" Url
    And Customer clicks on Filter Icon
    And Customer selects an Status Option:"Failed" and Payment Option:"All"
    And Clicks on "Apply" Button in Passbook Filter
    And Clicks on a "Failed" Transaction in Bills and Recharge
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/TransactionBBPSDetails" Url
    And verify the Payment Made Details in "Failed" Transaction

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu  |
      | 9033270991    | 13011992 | Individual    | Passbook |

  @pass @transact
  Scenario Outline: To verify Payment Made Details-  Pending Transaction
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookBBPS" Url
    And Customer clicks on Filter Icon
    And Customer selects an Status Option:"Pending" and Payment Option:"All"
    And Clicks on "Apply" Button in Passbook Filter
    And Clicks on a "Pending" Transaction in Bills and Recharge
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/TransactionBBPSDetails" Url
    And verify the Payment Made Details in "Pending" Transaction

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu  |
      | 9033270991    | 13011992 | Individual    | Passbook |

  @pass @transact
  Scenario Outline: To verify Bills Section-  Success Transaction
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookBBPS" Url
    And Customer clicks on Filter Icon
    And Customer selects an Status Option:"Success" and Payment Option:"All"
    And Clicks on "Apply" Button in Passbook Filter
    And Clicks on a "Success" Transaction in Bills and Recharge
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/TransactionBBPSDetails" Url
    And verify the Bills Section in "Success" Transaction

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu  |
      | 9033270991    | 13011992 | Individual    | Passbook |

  @pass @transact
  Scenario Outline: To verify Bills Section-  Failed Transaction
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookBBPS" Url
    And Customer clicks on Filter Icon
    And Customer selects an Status Option:"Failed" and Payment Option:"All"
    And Clicks on "Apply" Button in Passbook Filter
    And Clicks on a "Failed" Transaction in Bills and Recharge
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/TransactionBBPSDetails" Url
    And verify the Bills Section in "Failed" Transaction

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu  |
      | 9033270991    | 13011992 | Individual    | Passbook |

  @pass @transact
  Scenario Outline: To verify Bills Section-  Pending Transaction
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookBBPS" Url
    And Customer clicks on Filter Icon
    And Customer selects an Status Option:"Pending" and Payment Option:"All"
    And Clicks on "Apply" Button in Passbook Filter
    And Clicks on a "Pending" Transaction in Bills and Recharge
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/TransactionBBPSDetails" Url
    And verify the Bills Section in "Pending" Transaction

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu  |
      | 9033270991    | 13011992 | Individual    | Passbook |

  @pass @transact
  Scenario Outline: To verify Download Receipt-  Success Transaction
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookBBPS" Url
    And Customer clicks on Filter Icon
    And Customer selects an Status Option:"Success" and Payment Option:"All"
    And Clicks on "Apply" Button in Passbook Filter
    And Clicks on a "Success" Transaction in Bills and Recharge
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/TransactionBBPSDetails" Url
    And Customer clicks on Download Button of Receipt in Transaction Details
    Then verify the Receipt "PaymentReceipt.pdf" is downloaded

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu  |
      | 9033270991    | 13011992 | Individual    | Passbook |

  @pass @transact
  Scenario Outline: To verify Download Receipt-  Failed Transaction
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookBBPS" Url
    And Customer clicks on Filter Icon
    And Customer selects an Status Option:"Failed" and Payment Option:"All"
    And Clicks on "Apply" Button in Passbook Filter
    And Clicks on a "Failed" Transaction in Bills and Recharge
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/TransactionBBPSDetails" Url
    And Customer clicks on Download Button of Receipt in Transaction Details
    Then verify the Receipt "PaymentReceipt.pdf" is downloaded

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu  |
      | 9033270991    | 13011992 | Individual    | Passbook |

  @pass @transact
  Scenario Outline: To verify Amount Format-  Success Transaction
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookBBPS" Url
    And Customer clicks on Filter Icon
    And Customer selects an Status Option:"Success" and Payment Option:"All"
    And Clicks on "Apply" Button in Passbook Filter
    And Clicks on a "Success" Transaction in Bills and Recharge
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/TransactionBBPSDetails" Url
    And verify Amount Formats for all Amounts in Bills Transaction Page - Success

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu  |
      | 9033270991    | 13011992 | Individual    | Passbook |

  @pass @transact @amount @2501
  Scenario Outline: To verify Amount Formats-  Failed Transaction
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookBBPS" Url
    And Customer clicks on Filter Icon
    And Customer selects an Status Option:"Failed" and Payment Option:"All"
    And Clicks on "Apply" Button in Passbook Filter
    And Clicks on a "Failed" Transaction in Bills and Recharge
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/TransactionBBPSDetails" Url
    And verify Amount Formats for all Amounts in Bills Transaction Page - Failed

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu  |
      | 9033270991    | 13011992 | Individual    | Passbook |

  @pass @transact @amount @2501
  Scenario Outline: To verify Amount Formats-  Pending Transaction
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookBBPS" Url
    And Customer clicks on Filter Icon
    And Customer selects an Status Option:"Pending" and Payment Option:"All"
    And Clicks on "Apply" Button in Passbook Filter
    And Clicks on a "Pending" Transaction in Bills and Recharge
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/TransactionBBPSDetails" Url
    And verify Amount Formats for all Amounts in Bills Transaction Page - Pending

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu  |
      | 9033270991    | 13011992 | Individual    | Passbook |

#  @pass @transact @date
  Scenario Outline: To verify Date Format-  Success Transaction
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookBBPS" Url
    And Customer clicks on Filter Icon
    And Customer selects an Status Option:"Success" and Payment Option:"All"
    And Clicks on "Apply" Button in Passbook Filter
    And Clicks on a "Success" Transaction in Bills and Recharge
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/TransactionBBPSDetails" Url
    And verify Date Formats for all Dates in Bills Transaction Page

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu  |
      | 9033270991    | 13011992 | Individual    | Passbook |

#  @pass @transact @date
  Scenario Outline: To verify Date Formats-  Failed Transaction
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookBBPS" Url
    And Customer clicks on Filter Icon
    And Customer selects an Status Option:"Failed" and Payment Option:"All"
    And Clicks on "Apply" Button in Passbook Filter
    And Clicks on a "Failed" Transaction in Bills and Recharge
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/TransactionBBPSDetails" Url
    And verify Date Formats for all Dates in Bills Transaction Page

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu  |
      | 9033270991    | 13011992 | Individual    | Passbook |

#  @pass @transact @date
  Scenario Outline: To verify Date Formats-  Pending Transaction
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookBBPS" Url
    And Customer clicks on Filter Icon
    And Customer selects an Status Option:"Pending" and Payment Option:"All"
    And Clicks on "Apply" Button in Passbook Filter
    And Clicks on a "Pending" Transaction in Bills and Recharge
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/TransactionBBPSDetails" Url
    And verify Date Formats for all Dates in Bills Transaction Page

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu  |
      | 9033270991    | 13011992 | Individual    | Passbook |

  @pass @transact @mob
  Scenario Outline: To verify Mobile Number-  Success Transaction
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookBBPS" Url
    And Customer clicks on Filter Icon
    And Customer selects an Status Option:"Success" and Payment Option:"All"
    And Clicks on "Apply" Button in Passbook Filter
    And Clicks on a "Success" Transaction in Bills and Recharge
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/TransactionBBPSDetails" Url
    And verify Mobile Number format in Transaction Details

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu  |
      | 9033270991    | 13011992 | Individual    | Passbook |

  @pass @transact @mob
  Scenario Outline: To verify Mobile Number-  Failed Transaction
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookBBPS" Url
    And Customer clicks on Filter Icon
    And Customer selects an Status Option:"Failed" and Payment Option:"All"
    And Clicks on "Apply" Button in Passbook Filter
    And Clicks on a "Failed" Transaction in Bills and Recharge
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/TransactionBBPSDetails" Url
    And verify Mobile Number format in Transaction Details

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu  |
      | 9033270991    | 13011992 | Individual    | Passbook |

  @pass @transact @mob
  Scenario Outline: To verify Mobile Number-  Pending Transaction
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookBBPS" Url
    And Customer clicks on Filter Icon
    And Customer selects an Status Option:"Pending" and Payment Option:"All"
    And Clicks on "Apply" Button in Passbook Filter
    And Clicks on a "Pending" Transaction in Bills and Recharge
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/TransactionBBPSDetails" Url
    And verify Mobile Number format in Transaction Details

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu  |
      | 9033270991    | 13011992 | Individual    | Passbook |


