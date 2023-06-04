@Payments @chek
Feature: Payments - Part Prepayment

  @part @ham
  Scenario Outline: Part Prepayment- Part Prepayment Page- Redirection
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
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option  | Tab             |
      | 9966508108    | 05081984 | Individual    | Loan payment | Other payments | P400PSA5757086      | Part-prepayment | Part-prepayment |

  @part @ham
  Scenario Outline: Part Prepayment- Part Prepayment Page- Header and Sub Header -  Flexi Term Loan
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    Then verify Customer is redirected to the exact Payment Option "<Tab>"
    And verify Header is displayed "<Header Text>"
    And verify subtext "<SubText> "is displayed for the respective "P400PSA5757086"

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option  | Tab             | Header Text           | SubText                                                     |
      | 9966508108    | 05081984 | Individual    | Loan payment | Other payments | P400PSA5757086      | Part-prepayment | Part-prepayment | Part-prepay your loan | Pay a part of the remaining amount for Loan Account Number: |

  @part @ham
  Scenario Outline: Part Prepayment- Part Prepayment Page- Static Msgs -  Flexi Term Loan
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    Then verify Customer is redirected to the exact Payment Option "<Tab>"
    And verify Static msg displayed in Part Prepayment Page

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option  | Tab             |
      | 9966508108    | 05081984 | Individual    | Loan payment | Other payments | P400PSA5757086      | Part-prepayment | Part-prepayment |

  @part @ham
  Scenario Outline: Part Prepayment- Part Prepayment Page- Part Prepayment Details
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    Then verify Customer is redirected to the exact Payment Option "<Tab>"
#    And verify Advance EMI Details are displayed in the Advance EMI page


    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option  | Tab             |
      | 9966508108    | 05081984 | Individual    | Loan payment | Other payments | P400PSA5757086      | Part-prepayment | Part-prepayment |

  @part @ham
  Scenario Outline: Part Prepayment- Part Prepayment Page- verify Contact Details Section
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
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option  | Tab             | Labels                                       | Section         |
      | 9966508108    | 05081984 | Individual    | Loan payment | Other payments | P400PSA5757086      | Part-prepayment | Part-prepayment | Registered Email ID#Registered Mobile Number | Contact Details |


  @part @ham
  Scenario Outline: Part Prepayment-  Cancel Button
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    And Customer clicks on "Cancel" Button
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/ActiveLoanPay" Url

#    Then verify customer is redirected to home page when click on Cancel button

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option  | Tab             |
      | 9966508108    | 05081984 | Individual    | Loan payment | Other payments | P400PSA5757086      | Part-prepayment | Part-prepayment |

  @part @ham
  Scenario Outline: Part Prepayment-  RHS verification & Buttons
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
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option  | Tab             | Options              | Buttons                   |
      | 9966508108    | 05081984 | Individual    | Loan payment | Other payments | P400PSA5757086      | Part-prepayment | Part-prepayment | FAQs#Raise a Request | Cancel,Proceed To Payment |

  @part @ham
  Scenario Outline: Part Prepayment- FAQs Redirection
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
    And Verify Customer Redirected to "MyAccountService/HelpAndSupport/RARFAQCategory" Url

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option  | Tab             |
      | 9966508108    | 05081984 | Individual    | Loan payment | Other payments | P400PSA5757086      | Part-prepayment | Part-prepayment |

  @part @ham
  Scenario Outline: Part Prepayment- Raise a Request Redirection
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    Then verify Customer is redirected to the exact Payment Option "<Tab>"
    And Customer clicks on "Raise a Request" option in RHS
    And Verify Customer Redirected to "MyAccountService/Helpandsupport/LogRequest" Url

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option  | Tab             |
      | 9966508108    | 05081984 | Individual    | Loan payment | Other payments | P400PSA5757086      | Part-prepayment | Part-prepayment |

    ########Term Loan
  @part @ham
  Scenario Outline: Part Prepayment- verify validation should be displayed when user added invalid minimum amount and invalid maximum amount- Term Loan
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    Then verify validation should be displayed when user added invalid minimum amount and invalid maximum amount

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option  | Tab             |
      | 9921844153    | 05081984 | Individual    | Loan payment | Other payments | 402PLTHA584153      | Part-prepayment | Part-prepayment |

  @part @ham
  Scenario Outline: Part Prepayment-verify customer can pay Minimum amount and Maximum amount for part pre payment for Term loan - Term Loan
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    Then verify customer can pay Minimum amount and Maximum amount for part pre payment for Term loan

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option  | Tab             |
      | 9921844153    | 05081984 | Individual    | Loan payment | Other payments | 402PLTHA584153      | Part-prepayment | Part-prepayment |

  @part @ham @regfail
  Scenario Outline: Part Prepayment- verify that by default Minimum Amount for Part Payment is autopopulated in Enter Amount Box - Term Loan
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    Then  verify that by default Minimum Amount for Part Payment is autopopulated in Enter Amount Box

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option  | Tab             |
      | 9921844153    | 05081984 | Individual    | Loan payment | Other payments | 402PLTHA584153      | Part-prepayment | Part-prepayment |

  @part @ham
  Scenario Outline: Part Prepayment- verify Drop down options are displayed in Payment Option dropdown - Term Loan
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    Then  verify Drop down options "<DropDownOptions>" are displayed in Payment Option dropdown for Term Loan

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option  | Tab             | DropDownOptions               |
      | 9921844153    | 05081984 | Individual    | Loan payment | Other payments | 402PLTHA584153      | Part-prepayment | Part-prepayment | EMI reduction#Tenor reduction |

  @part @ham
  Scenario Outline: Part Prepayment- verify Proceed to Payment is disabled without selecting a dropdown Option - Term Loan
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    And verify the following button "<Disabled Button>" is disabled in the page

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option  | Tab             | Disabled Button    |
      | 9921844153    | 05081984 | Individual    | Loan payment | Other payments | 402PLTHA584153      | Part-prepayment | Part-prepayment | Proceed To Payment |

  @part @ham @smoke
  Scenario Outline: Part Prepayment- verify Proceed to Payment is enabled on selecting a dropdown Option - Term Loan
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    And verify Customer selects a dropdown Option "<DropDownOption>" in Payment Option dropdown
    Then verify the following button "<Enabled Button>" is enabled in the page

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option  | Tab             | Enabled Button     | DropDownOption |
      | 9921844153    | 05081984 | Individual    | Loan payment | Other payments | 402PLTHA584153      | Part-prepayment | Part-prepayment | Proceed To Payment | EMI reduction  |

  @part @debug @ham @regfail
  Scenario Outline: Part Prepayment- verify Customer redirected to Payments page for Part Payment - Term Loan
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    And verify Customer selects a dropdown Option "<DropDownOption>" in Payment Option dropdown
    And Customer clicks on "Proceed To Payment" Button
    And Customer clicks on "Proceed to pay" Button
Then Verify Customer Redirected to respective URL "<Url>"

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option  | Tab             | Url                                          | DropDownOption |
      | 9921844153    | 05081984 | Individual    | Loan payment | Other payments | 402PLTHA584153      | Part-prepayment | Part-prepayment | https://uatpayments.bajajfinserv.in/payments | EMI reduction  |

  @part @ham
  Scenario Outline: Part Prepayment- Verify Payment Details section - Term Loan
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    And verify the contents "<Labels>" along with labels are displayed in the section "<Section>" for Foreclosure Page

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option  | Tab             | Labels                                                  | Section         |
      | 9921844153    | 05081984 | Individual    | Loan payment | Other payments | 402PLTHA584153      | Part-prepayment | Part-prepayment | Next Adjustment Towards Loan#EMI Overdues#Other Charges | Payment Details |


  @part @ham
  Scenario Outline: Part Prepayment- Verify other charges infotip - Term Loan
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    Then verify OtherCharges info tip Icon with following "<PopupOptions>" Options

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option  | Tab             | PopupOptions                                |
      | 9921844153    | 05081984 | Individual    | Loan payment | Other payments | 402PLTHA584153      | Part-prepayment | Part-prepayment | Bounce Charges#Penal Overdue#Penal Interest |


  @part @new @ham
  Scenario Outline: Part Prepayment-  Cancel Button
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    And Customer clicks on "Cancel" Button
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/ActiveLoanPay" Url

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option  | Tab             |
      | 9921844153    | 05081984 | Individual    | Loan payment | Other payments | 402PLTHA584153      | Part-prepayment | Part-prepayment |

  @part @new @ham
  Scenario Outline: Part Prepayment-  RHS verification & Buttons
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
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option  | Tab             | Options              | Buttons                   |
      | 9921844153    | 05081984 | Individual    | Loan payment | Other payments | 402PLTHA584153      | Part-prepayment | Part-prepayment | FAQs#Raise a Request | Cancel,Proceed To Payment |

  @part @new @ham
  Scenario Outline: Part Prepayment- FAQs Redirection
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
    And Verify Customer Redirected to "MyAccountService/HelpAndSupport/RARFAQCategory" Url

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option  | Tab             |
      | 9921844153    | 05081984 | Individual    | Loan payment | Other payments | 402PLTHA584153      | Part-prepayment | Part-prepayment |

  @part @new @ham
  Scenario Outline: Part Prepayment- Raise a Request Redirection
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
    And Verify Customer Redirected to "MyAccountService/Helpandsupport/LogRequest" Url

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option  | Tab             |
      | 9921844153    | 05081984 | Individual    | Loan payment | Other payments | 402PLTHA584153      | Part-prepayment | Part-prepayment |


  @part @new @ham @regfail
  Scenario Outline: Part Prepayment- verify that on entering No Amount in Amount Box - Term Loan
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    Then verify when Customer enters No Amount in Amount Box
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option  | Tab             |
      | 9921844153    | 05081984 | Individual    | Loan payment | Other payments | 402PLTHA584153      | Part-prepayment | Part-prepayment |


########Make Payments

  ######Term Loan
  @part @new @mr
  Scenario Outline: Part Payment- My Relations- Redirection - Term Loan
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"TERM LOAN" Account No"402PLTHA584153"
    And Customer Click on "Make Payments" CTA in RHS
    And selects a Payment Option "<Payment Option>" from Popup
    And Clicks on "PROCEED" Button
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/Part_Payment" Url
    And verify Customer is redirected to the exact Payment Option "<Tab>"

    Examples:
      | Mobile Number | Date     | Customer Type | Payment Option  | Tab             |
      | 9921844153    | 04121956 | Individual    | Part-prepayment | Part-prepayment |

  @part @new @mr
  Scenario Outline: Part Prepayment-My Relations- verify validation should be displayed when user added invalid minimum amount and invalid maximum amount- Term Loan
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"TERM LOAN" Account No"402PLTHA584153"
    And Customer Click on "Make Payments" CTA in RHS
    And selects a Payment Option "<Payment Option>" from Popup
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    Then verify validation should be displayed when user added invalid minimum amount and invalid maximum amount

    Examples:
      | Mobile Number | Date     | Customer Type | Payment Option  | Tab             |
      | 9921844153    | 05081984 | Individual    | Part-prepayment | Part-prepayment |

  @part @new @mr
  Scenario Outline: Part Prepayment- My Relations-verify customer can pay Minimum amount and Maximum amount for part pre payment for Term loan - Term Loan
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"TERM LOAN" Account No"402PLTHA584153"
    And Customer Click on "Make Payments" CTA in RHS
    And selects a Payment Option "<Payment Option>" from Popup
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    Then verify customer can pay Minimum amount and Maximum amount for part pre payment for Term loan

    Examples:
      | Mobile Number | Date     | Customer Type | Payment Option  | Tab             |
      | 9921844153    | 05081984 | Individual    | Part-prepayment | Part-prepayment |

  @part @new @mr
  Scenario Outline: Part Prepayment- My Relations-verify that by default Minimum Amount for Part Payment is autopopulated in Enter Amount Box - Term Loan
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"TERM LOAN" Account No"402PLTHA584153"
    And Customer Click on "Make Payments" CTA in RHS
    And selects a Payment Option "<Payment Option>" from Popup
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    Then  verify that by default Minimum Amount for Part Payment is autopopulated in Enter Amount Box

    Examples:
      | Mobile Number | Date     | Customer Type | Payment Option  | Tab             |
      | 9921844153    | 05081984 | Individual    | Part-prepayment | Part-prepayment |

  @part @new @mr
  Scenario Outline: Part Prepayment- My Relations-verify Drop down options are displayed in Payment Option dropdown - Term Loan
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"TERM LOAN" Account No"402PLTHA584153"
    And Customer Click on "Make Payments" CTA in RHS
    And selects a Payment Option "<Payment Option>" from Popup
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    Then  verify Drop down options "<DropDownOptions>" are displayed in Payment Option dropdown for Term Loan

    Examples:
      | Mobile Number | Date     | Customer Type | Payment Option  | Tab             | DropDownOptions               |
      | 9921844153    | 05081984 | Individual    | Part-prepayment | Part-prepayment | EMI reduction#Tenor reduction |

  @part @new @mr
  Scenario Outline: Part Prepayment- My Relations-verify Proceed to Payment is disabled without selecting a dropdown Option - Term Loan
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"TERM LOAN" Account No"402PLTHA584153"
    And Customer Click on "Make Payments" CTA in RHS
    And selects a Payment Option "<Payment Option>" from Popup
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    And verify the following button "<Disabled Button>" is disabled in the page

    Examples:
      | Mobile Number | Date     | Customer Type | Payment Option  | Tab             | Disabled Button    |
      | 9921844153    | 05081984 | Individual    | Part-prepayment | Part-prepayment | Proceed To Payment |

  @part @new @mr
  Scenario Outline: Part Prepayment- My Relations-verify Proceed to Payment is enabled on selecting a dropdown Option - Term Loan
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"TERM LOAN" Account No"402PLTHA584153"
    And Customer Click on "Make Payments" CTA in RHS
    And selects a Payment Option "<Payment Option>" from Popup
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    And verify Customer selects a dropdown Option "<DropDownOption>" in Payment Option dropdown
    Then verify the following button "<Enabled Button>" is enabled in the page

    Examples:
      | Mobile Number | Date     | Customer Type | Payment Option  | Tab             | Enabled Button     | DropDownOption |
      | 9921844153    | 05081984 | Individual    | Part-prepayment | Part-prepayment | Proceed To Payment | EMI reduction  |


  @part @new @mr
  Scenario Outline: Part Prepayment- My Relations-Verify Payment Details section - Term Loan
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"TERM LOAN" Account No"402PLTHA584153"
    And Customer Click on "Make Payments" CTA in RHS
    And selects a Payment Option "<Payment Option>" from Popup
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    And verify the contents "<Labels>" along with labels are displayed in the section "<Section>" for Foreclosure Page

    Examples:
      | Mobile Number | Date     | Customer Type | Payment Option  | Tab             | Labels                                                  | Section         |
      | 9921844153    | 05081984 | Individual    | Part-prepayment | Part-prepayment | Next Adjustment Towards Loan#EMI Overdues#Other Charges | Payment Details |


  @part @new @mr
  Scenario Outline: Part Prepayment- My Relations-Verify other charges infotip - Term Loan
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"TERM LOAN" Account No"402PLTHA584153"
    And Customer Click on "Make Payments" CTA in RHS
    And selects a Payment Option "<Payment Option>" from Popup
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    Then verify OtherCharges info tip Icon with following "<PopupOptions>" Options

    Examples:
      | Mobile Number | Date     | Customer Type | Payment Option  | Tab             | PopupOptions                                |
      | 9921844153    | 05081984 | Individual    | Part-prepayment | Part-prepayment | Bounce Charges#Penal Overdue#Penal Interest |


  @part @new @debug @mr
  Scenario Outline: Part Prepayment- My Relations- verify Customer redirected to Payments page for Part Payment - Term Loan
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"TERM LOAN" Account No"402PLTHA584153"
    And Customer Click on "Make Payments" CTA in RHS
    And selects a Payment Option "<Payment Option>" from Popup
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    And verify Customer selects a dropdown Option "<DropDownOption>" in Payment Option dropdown
    And Customer clicks on "Proceed To Payment" Button
    And Customer clicks on "Proceed to pay" Button
Then Verify Customer Redirected to respective URL "<Url>"

    Examples:
      | Mobile Number | Date     | Customer Type | Payment Option  | Tab             | Url                                          | DropDownOption |
      | 9921844153    | 05081984 | Individual    | Part-prepayment | Part-prepayment | https://uatpayments.bajajfinserv.in/payments | EMI reduction  |

#########Flexi Loan

  @part @newflexi @ham
  Scenario Outline: Part Prepayment- verify validation should be displayed when user added invalid minimum amount and invalid maximum amount- Flexi Term Loan
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    Then verify validation should be displayed when user added invalid minimum amount and invalid maximum amount

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option  | Tab             |
      | 9966508108    | 05081984 | Individual    | Loan payment | Other payments | P400PSA5757086      | Part-prepayment | Part-prepayment |

  @part @newflexi @ham
  Scenario Outline: Part Prepayment- verify customer can pay Minimum amount and Maximum amount for part pre payment for Term loan -Flexi Term Loan
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    Then verify customer can pay Minimum amount and Maximum amount for part pre payment for Term loan

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option  | Tab             |
      | 9966508108    | 05081984 | Individual    | Loan payment | Other payments | P400PSA5757086      | Part-prepayment | Part-prepayment |

  @part @newflexi @ham
  Scenario Outline: Part Prepayment- verify that by default Minimum Amount for Part Payment is autopopulated in Enter Amount Box -Flexi Term Loan
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    Then verify that by default Minimum Amount for Part Payment is autopopulated in Enter Amount Box

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option  | Tab             |
      | 9966508108    | 05081984 | Individual    | Loan payment | Other payments | P400PSA5757086      | Part-prepayment | Part-prepayment |

  @part @newflexi @ham @regfail
  Scenario Outline: Part Prepayment- verify that on entering No Amount in Amount Box -Flexi Term Loan
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    Then verify when Customer enters No Amount in Amount Box
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option  | Tab             |
      | 9966508108    | 05081984 | Individual    | Loan payment | Other payments | P400PSA5757086      | Part-prepayment | Part-prepayment |

  @part @newflexi @ham
  Scenario Outline: Part Prepayment- verify that Customer is redirecting to Payment Checkout page -Flexi Term Loan
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
#    And Customer clicks on "Proceed to pay" Button
Then Verify Customer Redirected to respective URL "<Url>"

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option  | Tab             | Url                                          |
      | 9966508108    | 05081984 | Individual    | Loan payment | Other payments | P400PSA5757086      | Part-prepayment | Part-prepayment | https://uatpayments.bajajfinserv.in/payments |


