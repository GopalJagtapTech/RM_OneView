Feature: Passbook- Wallet

  @wallet  @pass
  Scenario Outline:Wallet- To verify the options visible when customer is on Wallet section
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookBBPS" Url
    And Clicks on the Tab "Wallet" in Passbook Page
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookWallet" Url
    And verify the options visible when customer is on Wallet section

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu  |
      | 9033270991    | 13011992 | Individual    | Passbook |

  @wallet  @pass
  Scenario Outline:Wallet- To verify customer is able to view next five transactions after click on View More Button
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookBBPS" Url
    And Clicks on the Tab "Wallet" in Passbook Page
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookWallet" Url
    And verify View More Button is visible when customer having more than five transactions & able to view next five transaction after click on View More Button

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu  |
      | 9033270991    | 13011992 | Individual    | Passbook |

  @wallet  @pass
  Scenario Outline:Wallet- To verify customer is able to view max 20 transactions
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookBBPS" Url
    And Clicks on the Tab "Wallet" in Passbook Page
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookWallet" Url
    And verify customer is able to view max twenty transactions

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu  |
      | 9033270991    | 13011992 | Individual    | Passbook |

    @nodata
  Scenario Outline:Wallet- To verify View More Button is not displayed when less than equal to five transaction is present
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookBBPS" Url
    And Clicks on the Tab "Wallet" in Passbook Page
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookWallet" Url
    And verify View More Button is not displayed when less than equal to five transaction is present

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu  |
      |               | 13011992 | Individual    | Passbook |

  @wallet  @pass
  Scenario Outline: Wallet- To verify QR code window is displayed after click on Download the App section
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookBBPS" Url
    And Clicks on the Tab "Wallet" in Passbook Page
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookWallet" Url
    And Clicks on Download App Section
    Then verify Popup is displayed will all the contents

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu  |
      | 9033270991    | 13011992 | Individual    | Passbook |

  @wallet  @pass
  Scenario Outline:Wallet- To verify QR code window is closed after click on X button
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookBBPS" Url
    And Clicks on the Tab "Wallet" in Passbook Page
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookWallet" Url
    And Clicks on Download App Section
    And clicks on Popup Close Button
    Then verify Popup is closed in Passbook Page

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu  |
      | 9033270991    | 13011992 | Individual    | Passbook |


#######Filter
  @wallet  @pass
  Scenario Outline:Wallet- verify Filtering options are displayed for Bills & Recharges and Filter gets closed on click of cross Button
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookBBPS" Url
    And Clicks on the Tab "Wallet" in Passbook Page
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookWallet" Url
    And Customer clicks on Filter Icon
    And verify Filtering options are displayed for Wallet
    And verify Filter window gets Closed when customer click on X Button

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu  |
      | 9033270991    | 13011992 | Individual    | Passbook |

  @wallet  @pass
  Scenario Outline:Wallet- verify after click on Filter icon All option from Status and payment mode is selected by-default
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookBBPS" Url
    And Clicks on the Tab "Wallet" in Passbook Page
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookWallet" Url
    Then verify after click on Filter icon All option from Status and payment mode is selected by-default

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu  |
      | 9033270991    | 13011992 | Individual    | Passbook |

  @wallet  @pass
  Scenario Outline:Wallet- verify all selected options are deselected when customer click on Clear All Button
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookBBPS" Url
    And Clicks on the Tab "Wallet" in Passbook Page
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookWallet" Url
    And Customer clicks on Filter Icon
    And Customer selects an Status Option:"All" and Payment Option:"Credit Cards"
    And Clicks on "Apply" Button in Passbook Filter
    Then verify all selected options are deselected when customer click on Clear All Button

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu  |
      | 9033270991    | 13011992 | Individual    | Passbook |



    ##########View More
  @wallet  @pass
  Scenario Outline: Wallet -To verify customer is able to view next five transactions after click on View More Button
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookBBPS" Url
    And Clicks on the Tab "Wallet" in Passbook Page
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookWallet" Url
    And verify View More Button is visible when customer having more than five transactions & next five are visible on clicking view more

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu  |
      | 9033270991    | 13011992 | Individual    | Passbook |


  @wallet  @pass
  Scenario Outline: Wallet- To verify customer is able to view max 20 transactions
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookBBPS" Url
    And Clicks on the Tab "Wallet" in Passbook Page
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookWallet" Url
    And verify customer is able to view max twenty transactions

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu  |
      | 9033270991    | 13011992 | Individual    | Passbook |

  @wallet  @pass
  Scenario Outline: To verify Search Filter with Alphabets
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookBBPS" Url
    And Clicks on the Tab "Wallet" in Passbook Page
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookWallet" Url
    And Searches for a text "<Search Text>" in input box in Passbook Page
    Then verify the tiles are filtered for the text "<Search Text>"

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu  | Search Text |
      | 9033270991    | 13011992 | Individual    | Passbook | from        |

  @wallet  @pass
  Scenario Outline: To verify Search Filter with Alphabets- No Records
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookBBPS" Url
    And Clicks on the Tab "Wallet" in Passbook Page
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookWallet" Url
    And Searches for a text "<Search Text>" in input box in Passbook Page
    Then verify the tiles are filtered for the text "<Search Text>"

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu  | Search Text |
      | 9033270991    | 13011992 | Individual    | Passbook | Nov         |

  @wallet  @pass
  Scenario Outline: To verify Search Filter with Numericals
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookBBPS" Url
    And Clicks on the Tab "Wallet" in Passbook Page
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookWallet" Url
    And Searches for a text "<Search Text>" in input box in Passbook Page
    Then verify the tiles are filtered for the text "<Search Text>"

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu  | Search Text |
      | 9033270991    | 13011992 | Individual    | Passbook | 10          |

  @wallet  @pass
  Scenario Outline: To verify Search Filter with Numericals- No Records
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookBBPS" Url
    And Clicks on the Tab "Wallet" in Passbook Page
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookWallet" Url
    And Searches for a text "<Search Text>" in input box in Passbook Page
    Then verify the tiles are filtered for the text "<Search Text>"

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu  | Search Text |
      | 9033270991    | 13011992 | Individual    | Passbook | 15          |

#####Tile Arrow and Amount

  @wallet  @pass
  Scenario Outline:Wallet- To verify Credited Transactions Amount
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookBBPS" Url
    And Clicks on the Tab "Wallet" in Passbook Page
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookWallet" Url
    And verify the Amount part of Credited Transactions in Wallet
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu  |
      | 9033270991    | 13011992 | Individual    | Passbook |

  @wallet  @pass
  Scenario Outline:Wallet- To verify Debited Transactions Amount
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookBBPS" Url
    And Clicks on the Tab "Wallet" in Passbook Page
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookWallet" Url
    And verify the Amount part of Debited Transactions in Wallet

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu  |
      | 9033270991    | 13011992 | Individual    | Passbook |

#  @wallet  @pass  @checkfordebug
  Scenario Outline:Wallet- To verify Transactions Tile Contents
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookBBPS" Url
    And Clicks on the Tab "Wallet" in Passbook Page
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookWallet" Url
    And verify the contents in Transactions in Wallet

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu  |
      | 9033270991    | 13011992 | Individual    | Passbook |






######Filter Options

  Scenario Outline:Wallet- Verify Transactions are displayed for Filter Options Status: ,Payment Mode:
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookBBPS" Url
    And Clicks on the Tab "Wallet" in Passbook Page
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookWallet" Url
    And Customer clicks on Filter Icon
    And Customer selects an Status Option:"All" and Payment Option:"Credit Cards"
    And Clicks on "Apply" Button in Passbook Filter
#  Then
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu  |
      | 9033270991    | 13011992 | Individual    | Passbook |


