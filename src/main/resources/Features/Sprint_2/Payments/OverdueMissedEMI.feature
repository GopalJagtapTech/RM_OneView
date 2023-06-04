@Payments @chek
Feature: Payments - Overdue - Missed EMI

  #Overdue- Missed EMI
  @od @1 @ham
  Scenario Outline: Overdue- Missed EMI- Redirection
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then verify Loan Payment page displayed for Overdue Missed EMI

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu |
      | 9910955211    | 05081984 | Individual    | Loan payment | Overdue     |

  @od @1 @ham @regfail
  Scenario Outline: Overdue- Missed EMI - Overdue Page Contents
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed for Overdue Missed EMI
    Then verify the contents on Loan Payment Page for Overdue Payments
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu |
      | 9910955211    | 05081984 | Individual    | Loan payment | Overdue     |

  @od @1 @ham
  Scenario Outline: Overdue- Missed EMI - RHS & Buttons
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed for Overdue Missed EMI
    Then verify options"<Options>" available under "Quick Actions" on RHS
    And verify the following buttons "<Buttons>" are displayed in the page

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu | Options              | Buttons        |
      | 9910955211    | 05081984 | Individual    | Loan payment | Overdue     | FAQs#Raise a Request | Proceed To Pay |

  @od @1 @ham
  Scenario Outline: Overdue- Missed EMI - verify Proceed To Pay disabled without selecting a loan
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed for Overdue Missed EMI
    Then verify the following button "<Disabled Button>" is disabled in the page

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu | Disabled Button |
      | 9910955211    | 26051982 | Individual    | Loan payment | Overdue     | Proceed To Pay  |

  @od @1 @ham @regfail
  Scenario Outline: Overdue- Missed EMI- Overdue Details & Other Charges of info tooltip
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed for Overdue Missed EMI
    Then verify overdue details are displayed when customer click on down arrow accordion for any of the loan under Loans with overdue section & All other charges are displayed when customer click on Other Charges tooltip (info icon)

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu |
      | 9910955211    | 26051982 | Individual    | Loan payment | Overdue     |

  @od @1 @ham
  Scenario Outline: Overdue- Missed EMI- customer don’t have any LAN with overdue
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then verify "<ErrorMsg>" is displayed where customer don’t have any LAN with overdue

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu | ErrorMsg                                              |
      | 8900000000    | 04121956 | Individual    | Loan payment | Overdue     | You do not have an overdue amount for any active Loan |

  @od @1 @ham @regfail
  Scenario Outline: Overdue- Missed EMI- Single & Multiple Loan Selection
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed for Overdue Missed EMI
    Then verify if Customer will be able to select one Loan & Multiple loan at a time for Payment

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu |
      | 9015683146    | 20081992 | Individual    | Loan payment | Overdue     |

  @od @1 @ham @regfail
  Scenario Outline: Overdue- Missed EMI- Total Amount to pay should be pre-populated on Selection of multiple loans
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed for Overdue Missed EMI
    Then verify if Customer select multiple loan at a time then Total Amount to pay should be pre-populated

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu |
      | 9015683146    | 20081992 | Individual    | Loan payment | Overdue     |



    #####HomePage Pay Now
  @od @mr @1 @fail @regfail @myrel
  Scenario Outline: Overdue- Missed EMI- Pay Now Redirection
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on Pay Now Button for a Loan Tile "401SPFGM842918" from My Relations in Home Page
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    And verify Header is displayed "<Header Text>"
    And verify subtext "<SubText>"is displayed for the respective "401SPFGM842918"

    Examples:
      | Mobile Number | Date     | Customer Type | Tab                    | Header Text            | SubText                                                    |
      | 9953037058    | 04121956 | Individual    | Overdue or missed EMIs | Overdue or missed EMIs | Clear your outstanding instalment for Loan Account Number: |


    #######My Relation flow

  @od @mr @1 @fail
  Scenario Outline: Overdue- Missed EMI- Make Payments Redirection
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"FLEXI TERM LOAN" Account No"401SPFGM842918"
    And Customer Click on "Make Payments" CTA in RHS
    And selects a Payment Option "<Payment Option>" from Popup
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    And verify Header is displayed "<Header Text>"
    And verify subtext "<SubText>"is displayed for the respective "401SPFGM842918"

    Examples:
      | Mobile Number | Date     | Customer Type | Payment Option         | Tab                    | Header Text            | SubText                                                    |
      | 9953037058    | 04121956 | Individual    | Overdue or missed EMIs | Overdue or missed EMIs | Overdue or missed EMIs | Clear your outstanding instalment for Loan Account Number: |

  @od @mr @fail
  Scenario Outline: Overdue- Missed EMI- Make Payments Page RHS verification & Buttons
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"FLEXI TERM LOAN" Account No"401SPFGM842918"
    And Customer Click on "Make Payments" CTA in RHS
    And selects a Payment Option "<Payment Option>" from Popup
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    Then verify options"<Options>" available under "Quick Actions" on RHS
    And verify the following buttons "<Buttons>" are displayed in the page
#    And verify the following button "<Disabled Button>" is disabled in the page

    Examples:
      | Mobile Number | Date     | Customer Type | Payment Option         | Tab                    | Options              | Buttons                   | Disabled Button    |
      | 9953037058    | 04121956 | Individual    | Overdue or missed EMIs | Overdue or missed EMIs | FAQs#Raise a Request | Cancel,Proceed To Payment | Proceed To Payment |

  @od @mr @1
  Scenario Outline: Overdue- Missed EMI- Make Payments Page - Contact Details Section
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"FLEXI TERM LOAN" Account No"401SPFGM842918"
    And Customer Click on "Make Payments" CTA in RHS
    And selects a Payment Option "<Payment Option>" from Popup
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    And verify the contents "<Labels>" along with labels are displayed in the section "<Section>"

    Examples:
      | Mobile Number | Date     | Customer Type | Payment Option         | Tab                    | Labels                                       | Section         |
      | 9953037058    | 04121956 | Individual    | Overdue or missed EMIs | Overdue or missed EMIs | Registered Email ID#Registered Mobile Number | Contact Details |

  @od @mr
  Scenario Outline: Overdue- Missed EMI- Make Payments Page - Overdue Details section
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"FLEXI TERM LOAN" Account No"401SPFGM842918"
    And Customer Click on "Make Payments" CTA in RHS
    And selects a Payment Option "<Payment Option>" from Popup
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    Then verify Overdue Details section is visible along with Labels
    And verify OtherCharges info tip Icon with following "<PopupOptions>" Options
    Examples:
      | Mobile Number | Date     | Customer Type | Payment Option         | Tab                    | PopupOptions                                |
      | 9953037058    | 04121956 | Individual    | Overdue or missed EMIs | Overdue or missed EMIs | Bounce Charges#Penal Interest#Penal Overdue |

  @od @mr
  Scenario Outline: Overdue- Missed EMI - verify Enter Amount to Pay Text field is editable
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"FLEXI TERM LOAN" Account No"401SPFGM842918"
    And Customer Click on "Make Payments" CTA in RHS
    And selects a Payment Option "<Payment Option>" from Popup
    And Clicks on "PROCEED" Button
    Then verify Customer is redirected to the exact Payment Option "<Tab>"
    And verify Enter Amount to Pay Text field is editable

    Examples:
      | Mobile Number | Date     | Customer Type | Payment Option         | Tab                    |
      | 9953037058    | 04121956 | Individual    | Overdue or missed EMIs | Overdue or missed EMIs |

  @od @mr @check1
  Scenario Outline: Overdue- Missed EMI - verify message is displayed when customer entered invalid data
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"FLEXI TERM LOAN" Account No"401SPFGM842918"
    And Customer Click on "Make Payments" CTA in RHS
    And selects a Payment Option "<Payment Option>" from Popup
    And Clicks on "PROCEED" Button
    Then verify Customer is redirected to the exact Payment Option "<Tab>"
    And verify validation message is displayed when customer entered invalid data in Enter Amount to Pay Text field

    Examples:
      | Mobile Number | Date     | Customer Type | Payment Option         | Tab                    |
      | 9953037058    | 04121956 | Individual    | Overdue or missed EMIs | Overdue or missed EMIs |

  @od @mr
  Scenario Outline: Overdue- Missed EMI- No Amount in Text Box
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"FLEXI TERM LOAN" Account No"401SPFGM842918"
    And Customer Click on "Make Payments" CTA in RHS
    And selects a Payment Option "<Payment Option>" from Popup
    And Clicks on "PROCEED" Button
    Then verify Customer is redirected to the exact Payment Option "<Tab>"
    And verify  validation message is displayed when customer does not enter amount Enter Amount to pay field  and click on Proceed to Pay button

    Examples:
      | Mobile Number | Date     | Customer Type | Payment Option         | Tab                    |
      | 9953037058    | 04121956 | Individual    | Overdue or missed EMIs | Overdue or missed EMIs |

  @od @mr
  Scenario Outline: Overdue- Missed EMI- Valid Amount in Text Box
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"FLEXI TERM LOAN" Account No"401SPFGM842918"
    And Customer Click on "Make Payments" CTA in RHS
    And selects a Payment Option "<Payment Option>" from Popup
    And Clicks on "PROCEED" Button
    Then verify Customer is redirected to the exact Payment Option "<Tab>"
    Then verify if customer enter valid amount i.e. Total overdues amount in Enter Amount to pay text field and click on Proceed to Pay button

    Examples:
      | Mobile Number | Date     | Customer Type | Payment Option         | Tab                    |
      | 9953037058    | 04121956 | Individual    | Overdue or missed EMIs | Overdue or missed EMIs |

  @od @mr @check
  Scenario Outline: Overdue- Missed EMI- Maximum Amount in Input Box
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"FLEXI TERM LOAN" Account No"401SPFGM842918"
    And Customer Click on "Make Payments" CTA in RHS
    And selects a Payment Option "<Payment Option>" from Popup
    And Clicks on "PROCEED" Button
    Then verify Customer is redirected to the exact Payment Option "<Tab>"
    Then verify if customer enter more than Maximum Amount, then Error Msg is displayed

    Examples:
      | Mobile Number | Date     | Customer Type | Payment Option         | Tab                    |
      | 9953037058    | 04121956 | Individual    | Overdue or missed EMIs | Overdue or missed EMIs |

  @od @mr
  Scenario Outline: Overdue- Missed EMI- RHS Options
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"FLEXI TERM LOAN" Account No"401SPFGM842918"
    And Customer Click on "Make Payments" CTA in RHS
    And selects a Payment Option "<Payment Option>" from Popup
    And Clicks on "PROCEED" Button
    Then verify Customer is redirected to the exact Payment Option "<Tab>"
    Then verify options"<Options>" available under "Quick Actions" on RHS

    Examples:
      | Mobile Number | Date     | Customer Type | Payment Option         | Tab                    | Options              |
      | 9953037058    | 04121956 | Individual    | Overdue or missed EMIs | Overdue or missed EMIs | FAQs#Raise a Request |

  @od @mr
  Scenario Outline: Overdue- Missed EMI- FAQs Redirection
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"FLEXI TERM LOAN" Account No"401SPFGM842918"
    And Customer Click on "Make Payments" CTA in RHS
    And selects a Payment Option "<Payment Option>" from Popup
    And Clicks on "PROCEED" Button
    Then verify Customer is redirected to the exact Payment Option "<Tab>"
    And Customer clicks on "FAQs" option in RHS
    And Verify Customer Redirected to "MyAccountService/HelpAndSupport/RARFAQCategory" Url

    Examples:
      | Mobile Number | Date     | Customer Type | Payment Option         | Tab                    |
      | 9953037058    | 04121956 | Individual    | Overdue or missed EMIs | Overdue or missed EMIs |

  @od @mr
  Scenario Outline: Overdue- Missed EMI- Raise a Request Redirection
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"FLEXI TERM LOAN" Account No"401SPFGM842918"
    And Customer Click on "Make Payments" CTA in RHS
    And selects a Payment Option "<Payment Option>" from Popup
    And Clicks on "PROCEED" Button
    Then verify Customer is redirected to the exact Payment Option "<Tab>"
    And Customer clicks on "Raise a Request" option in RHS
    And Verify Customer Redirected to "MyAccountService/Helpandsupport/LogRequest" Url

    Examples:
      | Mobile Number | Date     | Customer Type | Payment Option         | Tab                    |
      | 9953037058    | 04121956 | Individual    | Overdue or missed EMIs | Overdue or missed EMIs |

  Scenario Outline: Overdue- Missed EMI- Make Payments- Redirection to Payment checkout
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"FLEXI TERM LOAN" Account No"401SPFGM842918"
    And Customer Click on "Make Payments" CTA in RHS
    And selects a Payment Option "<Payment Option>" from Popup
    And Clicks on "PROCEED" Button
    Then verify Customer is redirected to the exact Payment Option "<Tab>"
    And Customer clicks on "Proceed To Payment" Button
    Then Verify Customer Redirected to respective URL "<Url>"

    Examples:
      | Mobile Number | Date     | Customer Type | Payment Option         | Tab                    | Url                                          |
      | 9953037058    | 04121956 | Individual    | Overdue or missed EMIs | Overdue or missed EMIs | https://uatpayments.bajajfinserv.in/payments |


##########New

  @od @1 @new @ham
  Scenario Outline: Overdue- Missed EMI- Redirection to Payment Checkout Page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed for Overdue Missed EMI
    Then verify if Customer will be able to select one Loan & Multiple loan at a time for Payment
    And Customer clicks on "Proceed To Pay" Button
    Then Verify Customer Redirected to respective URL "<Url>"

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu | Url                                          |
      | 9015683146    | 20081992 | Individual    | Loan payment | Overdue     | https://uatpayments.bajajfinserv.in/payments |

#Other Payment flow
  @new @ham
  Scenario Outline: Overdue- Missed EMI- Other Payments Redirection
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option         | Tab                    |
      | 9015683146    | 05081984 | Individual    | Loan payment | Other payments | 4010CDEI501927         | Overdue or missed EMIs | Overdue or missed EMIs |

  @new @ham @regfail
  Scenario Outline: Overdue- Missed EMI- Other Payments - Overdue Page contents- Headers
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    And verify Header is displayed "<Header Text>"
    And verify subtext "<SubText>"is displayed for the respective "4010CDEI501927"

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option         | Tab                    | Header Text            | SubText                                                    |
      | 9015683146    | 05081984 | Individual    | Loan payment | Other payments | 4010CDEI501927         | Overdue or missed EMIs | Overdue or missed EMIs | Overdue or missed EMIs | Clear your outstanding instalment for Loan Account Number: |

  @new @ham
  Scenario Outline: Overdue- Missed EMI- Other Payments - Overdue Page contents- RHS verification & Buttons
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
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option         | Tab                    | Options              | Buttons                   |
      | 9015683146    | 05081984 | Individual    | Loan payment | Other payments | 4010CDEI501927         | Overdue or missed EMIs | Overdue or missed EMIs | FAQs#Raise a Request | Cancel,Proceed To Payment |

  @new @ham
  Scenario Outline: Overdue- Missed EMI- Other Payments - Overdue Page - Redirection to Payment Checkout
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    And Customer clicks on "Proceed To Payment" Button
    Then Verify Customer Redirected to respective URL "<Url>"

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option         | Tab                    | Url                                          |
      | 9015683146    | 05081984 | Individual    | Loan payment | Other payments | 4010CDEI501927         | Overdue or missed EMIs | Overdue or missed EMIs | https://uatpayments.bajajfinserv.in/payments |


