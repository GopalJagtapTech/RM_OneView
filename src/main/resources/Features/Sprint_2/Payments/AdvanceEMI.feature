@Payments
Feature: Payments- AdvanceEMI


    ############ADVANCE EMI############################33
  @adv
  Scenario Outline: Advance EMI- Advance EMI Page- Redirection
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    Then verify Customer is redirected to the exact Payment Option "<Tab>"

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option | Tab          |
      | 9109600780    | 05081984 | Individual    | Loan payment | Other payments | P454FSC4430362      | Advance EMIs   | Advance EMIs |

  @adv
  Scenario Outline: Advance EMI- Advance EMI Page- Static Msgs
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    Then verify Customer is redirected to the exact Payment Option "<Tab>"
    And verify Static msgs are displayed in the Advance EMI page

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option | Tab          |
      | 9109600780    | 05081984 | Individual    | Loan payment | Other payments | P454FSC4430362      | Advance EMIs   | Advance EMIs |

  @adv
  Scenario Outline: Advance EMI- Advance EMI Page- Advance EMI Details - 5 EMIs
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    Then verify Customer is redirected to the exact Payment Option "<Tab>"
    And verify Advance EMI Details are displayed in the Advance EMI page

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option | Tab          |
      | 9109600780    | 05081984 | Individual    | Loan payment | Other payments | P454FSC4430362      | Advance EMIs   | Advance EMIs |

  @adv
  Scenario Outline: Advance EMI- Advance EMI Page- Term Loan - verify DropdownOptions in Month(5 should be displayed)
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    Then verify Customer is redirected to the exact Payment Option "<Tab>"
    And verify Advance EMI Details dropdown contains 5 Options for "Term Loan - Five Months Period"

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option | Tab          |
      | 9109600780    | 05081984 | Individual    | Loan payment | Other payments | P454FSC4430362      | Advance EMIs   | Advance EMIs |

  @adv @check1
  Scenario Outline: Advance EMI- Advance EMI Page- Term Loan - verify DropdownOptions for next 5 months
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    Then verify Customer is redirected to the exact Payment Option "<Tab>"
    And verify Advance EMI Details dropdown contains 5 Options started by the following month

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option | Tab          |
      | 9109600780    | 05081984 | Individual    | Loan payment | Other payments | P454FSC4430362      | Advance EMIs   | Advance EMIs |

  @adv
  Scenario Outline: Advance EMI- Advance EMI Page- verify Contact Details Section
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    Then verify Customer is redirected to the exact Payment Option "<Tab>"
    And verify the contents "<Labels>" along with labels are displayed in the section "<Section>"

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option | Tab          | Labels                                       | Section         |
      | 9109600780    | 05081984 | Individual    | Loan payment | Other payments | P454FSC4430362      | Advance EMIs   | Advance EMIs | Registered Email ID#Registered Mobile Number | Contact Details |


  @adv @check
  Scenario Outline: Advance EMI- Cancel Button
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    Then verify customer is redirected to home page when click on Cancel button

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option | Tab          |
      | 9109600780    | 05081984 | Individual    | Loan payment | Other payments | P454FSC4430362      | Advance EMIs   | Advance EMIs |

  @adv @check
  Scenario Outline: Advance EMI-  RHS verification & Buttons
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    Then verify options"<Options>" available under "Quick Actions" on RHS
    And verify the following buttons "<Buttons>" are displayed in the page

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option | Tab          | Options              | Buttons                   |
      | 9109600780    | 05081984 | Individual    | Loan payment | Other payments | P454FSC4430362      | Advance EMIs   | Advance EMIs | FAQs#Raise a Request | Cancel,Proceed To Payment |

  @adv
  Scenario Outline: Advance EMI-  verify on selecting month & year from the drop down the amount for advance payment is displayed
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    Then verify the Amount displayed for the number of months 2 selected

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option | Tab          |
      | 9109600780    | 05081984 | Individual    | Loan payment | Other payments | P454FSC4430362      | Advance EMIs   | Advance EMIs |

  @adv
  Scenario Outline: Advance EMI- FAQs Redirection
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    And Customer clicks on "FAQs" option in RHS
    Then Verify Customer Redirected to "MyAccountService/HelpAndSupport/RARFAQCategory" Url

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option | Tab          |
      | 9109600780    | 05081984 | Individual    | Loan payment | Other payments | P454FSC4430362      | Advance EMIs   | Advance EMIs |

  @adv
  Scenario Outline: Advance EMI- Raise a Request Redirection
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    And Customer clicks on "Raise a Request" option in RHS
    Then Verify Customer Redirected to "MyAccountService/Helpandsupport/LogRequest" Url

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option | Tab          |
      | 9109600780    | 05081984 | Individual    | Loan payment | Other payments | P454FSC4430362      | Advance EMIs   | Advance EMIs |

  @adv
  Scenario Outline: Advance EMI- Make Payments Popup and its contents
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>"
    Then verify Make Payments popup is displayed for that "<Loan Account Number>"
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option | Tab          |
      | 9109600780    | 05081984 | Individual    | Loan payment | Other payments | P454FSC4430362      | Advance EMIs   | Advance EMIs |

  @adv
  Scenario Outline: Advance EMI- Make Payments Popup- Proceed Button Disabled without Reason
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>"
    Then verify "PROCEED" Button is disabled

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option | Tab          |
      | 9109600780    | 05081984 | Individual    | Loan payment | Other payments | P454FSC4430362      | Advance EMIs   | Advance EMIs |



    ############Make Payments
  @adv @mr @myrel
  Scenario Outline: Advance EMI- Make Payments Redirection
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"TERM LOAN" Account No"P454FSC4430362"
    And Customer Click on "Make Payments" CTA in RHS
    And selects a Payment Option "<Payment Option>" from Popup
    And Clicks on "PROCEED" Button
    Then verify Customer is redirected to the exact Payment Option "<Tab>"
    And verify Header is displayed "<Header Text>"
    And verify subtext "<SubText> "is displayed for the respective "P454FSC4430362"

    Examples:
      | Mobile Number | Date     | Customer Type | Payment Option | Tab          | Header Text             | SubText                                                   |
      | 9109600780    | 04121956 | Individual    | Advance EMIs   | Advance EMIs | Pay your EMI in advance | Repay up to five EMIs in advance for Loan Account Number: |


  @adv @mr @myrel
  Scenario Outline: Advance EMI- Make Payments Page RHS verification & Buttons
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"TERM LOAN" Account No"P454FSC4430362"
    And Customer Click on "Make Payments" CTA in RHS
    And selects a Payment Option "<Payment Option>" from Popup
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    Then verify options"<Options>" available under "Quick Actions" on RHS
    And verify the following buttons "<Buttons>" are displayed in the page

    Examples:
      | Mobile Number | Date     | Customer Type | Payment Option | Tab          | Options              | Buttons                   |
      | 9109600780    | 04121956 | Individual    | Advance EMIs   | Advance EMIs | FAQs#Raise a Request | Cancel,Proceed To Payment |


#########New

  @adv @new
  Scenario Outline: Advance EMI- Customers redirection to Payment Checkout Page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    Then verify the Amount displayed for the number of months 2 selected
    And Customer clicks on "Proceed To Payment" Button
#    And Customer clicks on "Proceed to pay" Button
    Then Verify Customer Redirected to respective URL "<Url>"

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option | Tab          | Url                                          |
      | 9109600780    | 05081984 | Individual    | Loan payment | Other payments | P454FSC4430362      | Advance EMIs   | Advance EMIs | https://uatpayments.bajajfinserv.in/payments |


  @adv @mr @new @myrel
  Scenario Outline: Advance EMI- Make Payments- Customers redirection to Payment Checkout Page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"TERM LOAN" Account No"P454FSC4430362"
    And Customer Click on "Make Payments" CTA in RHS
    And selects a Payment Option "<Payment Option>" from Popup
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    And Customer clicks on "Proceed To Payment" Button
#    And Customer clicks on "Proceed to pay" Button
    Then Verify Customer Redirected to respective URL "<Url>"

    Examples:
      | Mobile Number | Date     | Customer Type | Payment Option | Tab          | Url                                          |
      | 9109600780    | 04121956 | Individual    | Advance EMIs   | Advance EMIs | https://uatpayments.bajajfinserv.in/payments |
