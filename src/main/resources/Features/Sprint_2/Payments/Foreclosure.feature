@Payments
Feature: Payments- Foreclosure

  @foreclose
  Scenario Outline: Foreclosure- Foreclosure Charges- Redirection
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
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option | Tab         |
      | 9784698647    | 05081984 | Individual    | Loan payment | Other payments | 536LRDJE318970      | Foreclosure    | Foreclosure |

  @foreclose
  Scenario Outline: Foreclosure- Foreclosure Header & Charges
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
    And verify subtext is displayed for the respective "<Loan Account Number>" for Foreclosure
    Then verify if customer having Terms Loan then Total Foreclosure charges will be prepopulated at Top section
    And Verify Total Forclosure Charges fields is editable

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option | Tab         | Header Text              |
      | 9784698647    | 05081984 | Individual    | Loan payment | Other payments | 536LRDJE318970      | Foreclosure    | Foreclosure | Foreclosure/full payment |

  @foreclose
  Scenario Outline: Foreclosure- Overdue Loan - Foreclosure Details
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    Then verify Customer is redirected to the exact Payment Option "<Tab>"
    And verify the contents "<Labels>" along with labels are displayed in the section "<Section>" for Foreclosure Page

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option | Tab         | Labels                                                                                                               | Section             |
      | 9784698647    | 05081984 | Individual    | Loan payment | Other payments | 536LRDJE318970      | Foreclosure    | Foreclosure | Principal Outstanding Amount#Interest Outstanding Amount#EMI Overdues#Other Charges#Foreclosure Charges (4% + taxes) | Foreclosure Details |

  @foreclose
  Scenario Outline: Foreclosure- Download Forclosure Letter
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    Then verify after click on Download Forclosure Letter button whether it is downloadable

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option | Tab         |
      | 9784698647    | 05081984 | Individual    | Loan payment | Other payments | 536LRDJE318970      | Foreclosure    | Foreclosure |

  @foreclose
  Scenario Outline: Foreclosure-  Forclosure Reason DropDown
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    Then verify Foreclosure Reason section and contents are Displayed
    And verify All the "<Dropdown Reasons>" are displayed in the Foreclosure Reason from Drop down

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option | Tab         | Dropdown Reasons                                                                                                                                                                        |
      | 9784698647    | 05081984 | Individual    | Loan payment | Other payments | 536LRDJE318970      | Foreclosure    | Foreclosure | Applying for another loan#High rate of interest on existing loan#Transferring the loan to another bank#Managed to arrange for extra funds to close the loan#Don’t require funds anymore |

  @foreclose
  Scenario Outline: Foreclosure-  Forclosure Reason Selection
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    Then Verify customer is able to select any of Foreclosure Reason from Drop down

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option | Tab         |
      | 9784698647    | 05081984 | Individual    | Loan payment | Other payments | 536LRDJE318970      | Foreclosure    | Foreclosure |

  @foreclose
  Scenario Outline: Foreclosure-  Forclosure Reason Complete Journey
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    Then Verify customer is able to select any of Foreclosure Reason from Drop down
    And Customer clicks on "Proceed To Payment" Button
    And verify Customer is able to see the Popup for Foreclosure
    And Customer clicks on "Proceed to pay" Button in Foreclosure Popup
    Then verify Payment Page is displayed with the contents

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option | Tab         |
      | 9784698647    | 05081984 | Individual    | Loan payment | Other payments | 536LRDJE318970      | Foreclosure    | Foreclosure |

  @foreclose @new
  Scenario Outline: Foreclosure-  Cancel Button
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
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option | Tab         |
      | 9784698647    | 05081984 | Individual    | Loan payment | Other payments | 536LRDJE318970      | Foreclosure    | Foreclosure |

  @foreclose
  Scenario Outline: Foreclosure-  Non Selection of Reason
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    Then verify whether Proceed to Payment button is clickable without selecting Foreclosure Reason

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option | Tab         |
      | 9784698647    | 05081984 | Individual    | Loan payment | Other payments | 536LRDJE318970      | Foreclosure    | Foreclosure |

  @foreclose
  Scenario Outline: Foreclosure-  Contact Details Section - Overdue
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    Then verify Customer is redirected to the exact Payment Option "<Tab>"
    And verify the contents "<Labels>" along with labels are displayed in the section "<Section>" for Foreclosure Page

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option | Tab         | Labels                                       | Section         |
      | 9784698647    | 05081984 | Individual    | Loan payment | Other payments | 536LRDJE318970      | Foreclosure    | Foreclosure | Registered Email ID#Registered Mobile Number | Contact Details |

  @foreclose
  Scenario Outline: Foreclosure-  Other Charges Infotip - Overdue
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    Then verify Customer is redirected to the exact Payment Option "<Tab>"
    And verify OtherCharges info tip Icon with following "<PopupOptions>" Options
    And verify the message displayed at the bottom of Foreclosure Amount section

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option | Tab         | PopupOptions                                  |
      | 9784698647    | 05081984 | Individual    | Loan payment | Other payments | 536LRDJE318970      | Foreclosure    | Foreclosure | Bounce Charges & Penal Overdue#Penal Interest |

  @foreclose
  Scenario Outline: Foreclosure-  RHS verification & Buttons
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
    And verify the following button "<Disabled Button>" is disabled in the page

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option | Tab         | Options              | Buttons                   | Disabled Button    |
      | 9784698647    | 05081984 | Individual    | Loan payment | Other payments | 536LRDJE318970      | Foreclosure    | Foreclosure | FAQs#Raise a Request | Cancel,Proceed To Payment | Proceed To Payment |

  @foreclose
  Scenario Outline: Foreclosure- B2B- Foreclosure Charges verify if customer having B2b Loan Then Foreclosure charges are Applicable to customer while foreclosing the Loan
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>"
    Then verify if customer having Business Loan Then Foreclosure charges are Applicable to customer while foreclosing the Loan

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option |
      | 9527443732    | 05081984 | Individual    | Loan payment | Other payments | 4020CD0102788612      | Foreclosure    |

  @foreclose
  Scenario Outline: Foreclosure- verify 4.72% foreclosure charge is applicable for all Non-Flexi loans
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    Then verify Customer is redirected to the exact Payment Option "<Tab>"
    And verify 4.72% foreclosure charge is applicable for all Non-Flexi loans

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option | Tab         |
      | 9987062860    | 05081984 | Individual    | Loan payment | Other payments | 405PHT91293439      | Foreclosure    | Foreclosure |


    #######My Relations
  @foreclose @myrel
  Scenario Outline: Foreclosure- Make Payments Redirection
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"TERM LOAN" Account No"536LRDJE318970"
    And Customer Click on "Make Payments" CTA in RHS
    And selects a Payment Option "<Payment Option>" from Popup
    And Clicks on "PROCEED" Button
    Then verify Customer is redirected to the exact Payment Option "<Tab>"
    And verify Header is displayed "<Header Text>"
    And verify subtext "<SubText> "is displayed for the respective "536LRDJE318970"

    Examples:
      | Mobile Number | Date     | Customer Type | Payment Option | Tab         | Header Text              | SubText                                             |
      | 9784698647    | 04121956 | Individual    | Foreclosure    | Foreclosure | Foreclosure/full payment | Pay the entire amount for your Loan Account Number: |


  @foreclose @myrel
  Scenario Outline: Foreclosure- Make Payments RHS verification & Buttons
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"TERM LOAN" Account No"536LRDJE318970"
    And Customer Click on "Make Payments" CTA in RHS
    And selects a Payment Option "<Payment Option>" from Popup
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    Then verify options"<Options>" available under "Quick Actions" on RHS
    And verify the following buttons "<Buttons>" are displayed in the page
    And verify the following button "<Disabled Button>" is disabled in the page

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option | Tab         | Options              | Buttons                   | Disabled Button    |
      | 9784698647    | 05081984 | Individual    | Loan payment | Other payments | 536LRDJE318970      | Foreclosure    | Foreclosure | FAQs#Raise a Request | Cancel,Proceed To Payment | Proceed To Payment |


    #####new

  @foreclose
  Scenario Outline: Foreclosure- Customers redirection to Payment Checkout Page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    Then Verify customer is able to select any of Foreclosure Reason from Drop down
    And Customer clicks on "Proceed To Payment" Button
    And verify Customer is able to see the Popup for Foreclosure
    And Customer clicks on "Proceed to pay" Button in Foreclosure Popup
    Then Verify Customer Redirected to respective "<Url>" in same Tab

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option | Tab         | Url                                          |
      | 9784698647    | 05081984 | Individual    | Loan payment | Other payments | 536LRDJE318970      | Foreclosure    | Foreclosure | https://uatpayments.bajajfinserv.in/payments |

  @foreclose @myrel
  Scenario Outline: Foreclosure- Make Payments Redirection- Payment Journey
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"TERM LOAN" Account No"536LRDJE318970"
    And Customer Click on "Make Payments" CTA in RHS
    And selects a Payment Option "<Payment Option>" from Popup
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    Then Verify customer is able to select any of Foreclosure Reason from Drop down
    And Customer clicks on "Proceed To Payment" Button
    And verify Customer is able to see the Popup for Foreclosure
    And Customer clicks on "Proceed to pay" Button in Foreclosure Popup
    Then Verify Customer Redirected to respective "<Url>" in same Tab

    Examples:
      | Mobile Number | Date     | Customer Type | Payment Option | Tab         | Url                                          |
      | 9784698647    | 04121956 | Individual    | Foreclosure    | Foreclosure | https://uatpayments.bajajfinserv.in/payments |


  Scenario Outline: Foreclosure- FAQs Redirection
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
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option | Tab         |
      | 9784698647    | 05081984 | Individual    | Loan payment | Other payments | 536LRDJE318970      | Foreclosure    | Foreclosure |

  Scenario Outline: Foreclosure- Raise a Request Redirection
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
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option | Tab         |
      | 9784698647    | 05081984 | Individual    | Loan payment | Other payments | 536LRDJE318970      | Foreclosure    | Foreclosure |








