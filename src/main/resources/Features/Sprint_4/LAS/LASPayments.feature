Feature: LAS Payments

  ##############PART PAYMENT###################################
  @pass
  Scenario Outline: Verify after clicking on LAS tile we are redirected to Part Prepayment details page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And Clicks on "<LAS>" tile
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/LASPartPayment" Url

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | LAS             |
      | 9545219299    | 02021999 | Individual    | Loan payment | Other payments | V428LAS00004845 |

  @pass
  Scenario Outline: Verify minimum amount is prepopulated in input field for part prepayment
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And Clicks on "<LAS>" tile
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/LASPartPayment" Url
    Then Minimum amount should be prepopulated in Input field
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | LAS             |
      | 9545219299    | 02021999 | Individual    | Loan payment | Other payments | V428LAS00004845 |

  @pass
  Scenario Outline: Verify Inline message is displayed when customer enters amount outside the range(less than minimum amount and more than maximum amount)
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And Clicks on "<LAS>" tile
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/LASPartPayment" Url
    And Inline message should be displayed as "Enter amount between {min} & {Max}" when the Amount entered is out of Range
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | LAS             |
      | 9545219299    | 02021999 | Individual    | Loan payment | Other payments | V428LAS00004845 |


  @pass
  Scenario Outline: verify Online Payment CTA is disabled when customer enters amount outside the range (less than the minimum amount)
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And Clicks on "<LAS>" tile
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/LASPartPayment" Url
    And "Online payment" CTA should be disabled when the entered Amount is less than Minimum
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | LAS             |
      | 9545219299    | 02021999 | Individual    | Loan payment | Other payments | V428LAS00004845 |

  @pass
  Scenario Outline: verify Online Payment CTA is disabled when customer enters amount outside the range (more than the maximum amount)
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And Clicks on "<LAS>" tile
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/LASPartPayment" Url
    And "Online payment" CTA should be disabled when the entered Amount is more than Maximum
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | LAS             |
      | 9545219299    | 02021999 | Individual    | Loan payment | Other payments | V428LAS00004845 |

  @pass
  Scenario Outline: Verify Invalid input is accepted in the input field
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And Clicks on "<LAS>" tile
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/LASPartPayment" Url
    And User should not be allowed to enter "<Invalid input>"
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | LAS             | Invalid input                         |
      | 9545219299    | 02021999 | Individual    | Loan payment | Other payments | V428LAS00004845 | []\,./*&#@$!,        , ABCXYZ, 101... |

  @pass
  Scenario Outline: Verify after clicking on tooltip Part Prepayment Details are displayed
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And Clicks on "<LAS>" tile
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/LASPartPayment" Url
#    And Click on Tooltip of Part prepayment Details
    Then Below details should be displayed for "New Loan Details" with "Current Principle Outstanding" and "New Principle Outstanding"

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | LAS             |
      | 9545219299    | 02021999 | Individual    | Loan payment | Other payments | V428LAS00004845 |


#  Scenario Outline: Verify after clicking on GOT IT CTA the tool tip is closed
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User is on Home Page
#    And Clicks on Hamburger Menu
#    And Selects an SubMenu from Hamburger "<SubMenu>"
#    And Clicks on SubListmenu "<SubListMenu>"
#    And Clicks on "<LAS>" tile
#    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/LASPartPayment" Url
#    And Click on Tooltip of Part prepayment Details
#    And Click on Got it CTA
#    Then Tool tip should be closed
#    Examples:
#      | Mobile Number | Date     | Customer Type | SubMenu       | SubListMenu    | LAS             |
#      | 9545219299    | 02021999 | Individual    | Loan payment | Other payments | V428LAS00004845 |

#  Scenario Outline: Verify after clicking on cross icon CTA the tool tip is closed
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User is on Home Page
#    And Clicks on Hamburger Menu
#    And Selects an SubMenu from Hamburger "<SubMenu>"
#    And Clicks on SubListmenu "<SubListMenu>"
#    And Clicks on "<LAS>" tile
#    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/LASPartPayment" Url
#    And Click on Tooltip of Part prepayment Details
#    And Click on Cross icon CTA
#    Then Tool tip should be closed
#    Examples:
#      | Mobile Number | Date     | Customer Type | SubMenu       | SubListMenu    | LAS             | Amount |
#      | 9545219299    | 02021999 | Individual    | Loan payment | Other payments | V428LAS00004845 |        |
  @pass
  Scenario Outline: Verify registered email id and mobile number are displayed under Payment confirmation to be sent on this
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And Clicks on "<LAS>" tile
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/LASPartPayment" Url
    And verify Payment Confirmation Details are displayed with "Registered Email ID" and "Registered Mobile Number"

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | LAS             |
      | 9545219299    | 02021999 | Individual    | Loan payment | Other payments | V428LAS00004845 |

  @pass
  Scenario Outline: Verify registered email id and mobile number are in masked format under Payment confirmation to be sent on this
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And Clicks on "<LAS>" tile
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/LASPartPayment" Url
    Then Customer should able to view first TWO & last TWO letters of Email
    And Customer should able to view last FOUR digits of Mobile number.
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | LAS             |
      | 9545219299    | 02021999 | Individual    | Loan payment | Other payments | V428LAS00004845 |

  @pass
  Scenario Outline: Verify after clicking on RAR CTA user is redirected to RAR details page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And Clicks on "<LAS>" tile
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/LASPartPayment" Url
    And Customer clicks on "Raise a Request" option in RHS
    And Verify Customer Redirected to "MyAccountService/Helpandsupport/LogRequest" Url
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | LAS             |
      | 9545219299    | 02021999 | Individual    | Loan payment | Other payments | V428LAS00004845 |

  @pass
  Scenario Outline: Verify after clicking on FAQ CTA user is redirected to FAQ details page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And Clicks on "<LAS>" tile
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/LASPartPayment" Url
    And Customer clicks on "FAQ" option in RHS
    And Verify Customer Redirected to "MyAccountService/HelpAndSupport/RARFAQCategory" Url

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | LAS             |
      | 9545219299    | 02021999 | Individual    | Loan payment | Other payments | V428LAS00004845 |

  @pass
  Scenario Outline: Verify after clicking on Offline Payment CTA pop up is displayed
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And Clicks on "<LAS>" tile
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/LASPartPayment" Url
    And Enter Valid amount for LAS Missed Interest
    And Click on "Offline Payment" CTA
    Then Offline Method Pop up should be displayed

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | LAS             |
      | 9545219299    | 02021999 | Individual    | Loan payment | Other payments | V428LAS00004845 |

  @pass
  Scenario Outline: Verify content displayed on Offline method pop up
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And Clicks on "<LAS>" tile
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/LASPartPayment" Url
    And Enter Valid amount for LAS PartPayment
    And Click on "Offline Payment" CTA
    Then Offline Method Pop up should be displayed
    And Content should be displayed for popup with below Details "<Details>"

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | LAS             | Details                                                           |
      | 9545219299    | 02021999 | Individual    | Loan payment | Other payments | V428LAS00004845 | Beneficiary Name, Bank Account, Bank Name, IFSC Code, Branch Name |

  @pass
  Scenario Outline: Verify after clicking on GOT IT CTA customer is redirected to previous screen(Part Prepayment details page)
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And Clicks on "<LAS>" tile
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/LASPartPayment" Url
    And Enter Valid amount for LAS PartPayment
    And Click on "Offline Payment" CTA
    Then Offline Method Pop up should be displayed
    And Click on "GOT IT" CTA present on pop up
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/LASPartPayment" Url
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | LAS             | Amount |
      | 9545219299    | 02021999 | Individual    | Loan payment | Other payments | V428LAS00004845 |        |

  @pass
  Scenario Outline: Verify after clicking on Online Payment CTA customer is redirected to Payment Checkout Page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And Clicks on "<LAS>" tile
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/LASPartPayment" Url
    And Enter Valid amount for LAS PartPayment
    And Click on "Online payment" CTA
    Then Verify Customer Redirected to respective URL "https://uatpayments.bajajfinserv.in/payments"
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | LAS             |
      | 9545219299    | 02021999 | Individual    | Loan payment | Other payments | V428LAS00004845 |

#  Payment Unsuccessful and Cancelled – Hamburger flow
  @pass
  Scenario Outline: Verify after Cancelling the transaction from Payment Checkout page user is redirected to Payment Cancelled Page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And Clicks on "<LAS>" tile
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/LASPartPayment" Url
    And Enter Valid amount for LAS PartPayment
    And Click on "Online payment" CTA
    Then Verify Customer Redirected to respective URL "https://uatpayments.bajajfinserv.in/payments"
    And Customer clicks on "Cancel" Button
    Then Verify Customer Redirected to respective URL "MyAccountPayments/LoanPay/Receipt"

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | LAS             |
      | 9545219299    | 02021999 | Individual    | Loan payment | Other payments | V428LAS00004845 |

  @check
  Scenario Outline: Verify after clicking on RAR under Quick Actions on Payment Cancelled Page we are redirected to RAR details page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And Clicks on "<LAS>" tile
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/LASPartPayment" Url
    And Enter Valid amount for LAS PartPayment
    And Click on "Online payment" CTA
    Then Verify Customer Redirected to respective URL "https://uatpayments.bajajfinserv.in/payments"
    And Customer clicks on "Cancel" Button
    Then Verify Customer Redirected to respective URL "MyAccountPayments/LoanPay/Receipt"
    And Customer clicks on "Raise a Request" option in RHS
    And Verify Customer Redirected to "MyAccountService/Helpandsupport/LogRequest" Url
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | LAS             |
      | 9545219299    | 02021999 | Individual    | Loan payment | Other payments | V428LAS00004845 |

  @check
  Scenario Outline: Verify after clicking on FAQ under Quick Actions on Payment Cancelled Page we are redirected to FAQ details page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And Clicks on "<LAS>" tile
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/LASPartPayment" Url
    And Enter Valid amount for LAS PartPayment
    And Click on "Online payment" CTA
    Then Verify Customer Redirected to respective URL "https://uatpayments.bajajfinserv.in/payments"
    And Customer clicks on "Cancel" Button
    Then Verify Customer Redirected to respective URL "MyAccountPayments/LoanPay/Receipt"
    And Customer clicks on "FAQs" option in RHS
    And Verify Customer Redirected to "MyAccountService/HelpAndSupport/RARFAQCategory" Url
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | LAS             |
      | 9545219299    | 02021999 | Individual    | Loan payment | Other payments | V428LAS00004845 |

  @pass
  Scenario Outline: Verify preapproved Offers section
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And Clicks on "<LAS>" tile
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/LASPartPayment" Url
    And Enter Valid amount for LAS PartPayment
    And Click on "Online payment" CTA
    Then Verify Customer Redirected to respective URL "https://uatpayments.bajajfinserv.in/payments"
    And Customer clicks on "Cancel" Button
    Then Verify Customer Redirected to respective URL "MyAccountPayments/LoanPay/Receipt"
    Then Pre-approved Offers section should be displayed same as the Pre-approved Offers section displayed on Home Page
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | LAS             |
      | 9545219299    | 02021999 | Individual    | Loan payment | Other payments | V428LAS00004845 |

  @pass
  Scenario Outline: Verify after clicking on Retry CTA under on Payment Cancelled Page we are redirected to Part Prepayment details page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And Clicks on "<LAS>" tile
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/LASPartPayment" Url
    And Enter Valid amount for LAS PartPayment
    And Click on "Online payment" CTA
    Then Verify Customer Redirected to respective URL "https://uatpayments.bajajfinserv.in/payments"
    And Customer clicks on "Cancel" Button
    Then Verify Customer Redirected to respective URL "MyAccountPayments/LoanPay/Receipt"
    And Click on "RETRY PAYMENT" CTA
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/LASPartPayment" Url
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | LAS             |
      | 9545219299    | 02021999 | Individual    | Loan payment | Other payments | V428LAS00004845 |

  @pass
  Scenario Outline: Verify after clicking on Back To Homepage CTA on Payment Cancelled Page we are redirected to Home page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And Clicks on "<LAS>" tile
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/LASPartPayment" Url
    And Enter Valid amount for LAS PartPayment
    And Click on "Online payment" CTA
    Then Verify Customer Redirected to respective URL "https://uatpayments.bajajfinserv.in/payments"
    And Customer clicks on "Cancel" Button
    Then Verify Customer Redirected to respective URL "MyAccountPayments/LoanPay/Receipt"
    And Click on "BACK TO HOMEPAGE" CTA
    Then Verify Customer Redirected to "MyAccountCustomer/Home" Url
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | LAS             |
      | 9545219299    | 02021999 | Individual    | Loan payment | Other payments | V428LAS00004845 |

#####Make Payments
  Scenario Outline: Verify after clicking on Make Payment we are redirected to Part Prepayment details page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using FAS No"<Account No>"
    And Customer Click on "Make Payments" CTA in RHS
    Then verify Page Redirection to "/MyAccountPayments/LoanPay/LASPartPayment" Url with SSO
    And verify "Part Pre-payment" Tab is selected by Default in LAS Payments page
    Examples:
      | Mobile Number | Date     | Customer Type | Account No |
      | 9545219299    | 02021999 | Individual    | 104175     |



    #  Missed Interests
#Hamburger flow
  @MI
  Scenario Outline: Verify after clicking on Missed Interest option from Cockpit menu we are redirected to Missed Interest details page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And Clicks on "<LAS>" tile
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/LASPartPayment" Url
    And Clicks on the Tab "Missed Interest Payments" in LAS Payments page
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/LASInterestPayment" Url
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | LAS             |
      | 9545219299    | 02021999 | Individual    | Loan payment | Other payments | V428LAS00004845 |

  @MI
  Scenario Outline: Verify minimum amount is prepopulated in input field for missed interest
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And Clicks on "<LAS>" tile
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/LASPartPayment" Url
    And Clicks on the Tab "Missed Interest Payments" in LAS Payments page
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/LASInterestPayment" Url
    Then Minimum amount should be prepopulated in Input field for Missed Interests
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | LAS             |
      | 9545219299    | 02021999 | Individual    | Loan payment | Other payments | V428LAS00004845 |

  @MI
  Scenario Outline: Verify Inline message is displayed when customer enters amount outside the range(less than min amount & more than max amount)
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And Clicks on "<LAS>" tile
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/LASPartPayment" Url
    And Clicks on the Tab "Missed Interest Payments" in LAS Payments page
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/LASInterestPayment" Url
    And Inline message should be displayed as Enter amount between min & Max when the Amount entered is out of Range

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | LAS             |
      | 9545219299    | 02021999 | Individual    | Loan payment | Other payments | V428LAS00004845 |

  @MI
  Scenario Outline: verify Online Payment CTA is disabled when customer enters amount outside the range (less than the minimum amount)
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And Clicks on "<LAS>" tile
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/LASPartPayment" Url
    And Clicks on the Tab "Missed Interest Payments" in LAS Payments page
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/LASInterestPayment" Url
    And "Online payment" CTA should be disabled when Customer enters less than the Minimum amount given for Missed Interest

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | LAS             |
      | 9545219299    | 02021999 | Individual    | Loan payment | Other payments | V428LAS00004845 |

  @MI
  Scenario Outline: verify Online Payment CTA is disabled when customer enters amount outside the range (more than the maximum amount)
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And Clicks on "<LAS>" tile
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/LASPartPayment" Url
    And Clicks on the Tab "Missed Interest Payments" in LAS Payments page
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/LASInterestPayment" Url
    And "Online payment" CTA should be disabled when Customer enters more than the maximum amount given for Missed Interest
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | LAS             |
      | 9545219299    | 02021999 | Individual    | Loan payment | Other payments | V428LAS00004845 |

  @MI
  Scenario Outline: Verify Invalid input is accepted in the input field
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And Clicks on "<LAS>" tile
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/LASPartPayment" Url
    And Clicks on the Tab "Missed Interest Payments" in LAS Payments page
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/LASInterestPayment" Url
    And User should not be allowed to enter "<Invalid input>" for Missed Interests

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | LAS             | Invalid input                         |
      | 9545219299    | 02021999 | Individual    | Loan payment | Other payments | V428LAS00004845 | []\,./*&#@$!,        , ABCXYZ, 101... |

  @MI
  Scenario Outline: Verify registered email id and mobile number are in masked format under Payment confirmation to be sent on this
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And Clicks on "<LAS>" tile
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/LASPartPayment" Url
    And Clicks on the Tab "Missed Interest Payments" in LAS Payments page
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/LASInterestPayment" Url
    Then Customer should able to view first TWO & last TWO letters of Email
    And Customer should able to view last FOUR digits of Mobile number.
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | LAS             |
      | 9545219299    | 02021999 | Individual    | Loan payment | Other payments | V428LAS00004845 |

  @MI
  Scenario Outline: Verify after clicking on RAR CTA user is redirected to RAR details page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And Clicks on "<LAS>" tile
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/LASPartPayment" Url
    And Clicks on the Tab "Missed Interest Payments" in LAS Payments page
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/LASInterestPayment" Url
    And Customer clicks on "Raise a Request" option in RHS
    And Verify Customer Redirected to "MyAccountService/Helpandsupport/LogRequest" Url
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | LAS             |
      | 9545219299    | 02021999 | Individual    | Loan payment | Other payments | V428LAS00004845 |

  @MI
  Scenario Outline: Verify after clicking on FAQ CTA user is redirected to FAQ details page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And Clicks on "<LAS>" tile
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/LASPartPayment" Url
    And Clicks on the Tab "Missed Interest Payments" in LAS Payments page
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/LASInterestPayment" Url
    And Customer clicks on "FAQ" option in RHS
    And Verify Customer Redirected to "MyAccountService/HelpAndSupport/RARFAQCategory" Url
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | LAS             |
      | 9545219299    | 02021999 | Individual    | Loan payment | Other payments | V428LAS00004845 |

  @MI
  Scenario Outline: Verify after clicking on Offline Payment CTA pop up is displayed
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And Clicks on "<LAS>" tile
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/LASPartPayment" Url
    And Clicks on the Tab "Missed Interest Payments" in LAS Payments page
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/LASInterestPayment" Url
    And Enter Valid amount for LAS Missed Interest
    And Click on "Offline Payment" CTA
    Then Offline Method Pop up should be displayed
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | LAS             |
      | 9545219299    | 02021999 | Individual    | Loan payment | Other payments | V428LAS00004845 |

  @MI
  Scenario Outline: Verify content displayed on Offline method pop up
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And Clicks on "<LAS>" tile
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/LASPartPayment" Url
    And Clicks on the Tab "Missed Interest Payments" in LAS Payments page
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/LASInterestPayment" Url
    And Enter Valid amount for LAS Missed Interest
    And Click on "Offline Payment" CTA
    Then Offline Method Pop up should be displayed
    And Content should be displayed for popup with below Details "<Details>"

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | LAS             | Details                                                           |
      | 9545219299    | 02021999 | Individual    | Loan payment | Other payments | V428LAS00004845 | Beneficiary Name, Bank Account, Bank Name, IFSC Code, Branch Name |

  @MI
  Scenario Outline: Verify after clicking on GOT IT CTA customer is redirected to previous screen(Missed Interest details page)
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And Clicks on "<LAS>" tile
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/LASPartPayment" Url
    And Clicks on the Tab "Missed Interest Payments" in LAS Payments page
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/LASInterestPayment" Url
    And Enter Valid amount for LAS Missed Interest
    And Click on "Offline Payment" CTA
    Then Offline Method Pop up should be displayed
    And Click on "GOT IT" CTA present on pop up
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/LASInterestPayment" Url
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | LAS             |
      | 9545219299    | 02021999 | Individual    | Loan payment | Other payments | V428LAS00004845 |

  @MI
  Scenario Outline: Verify after clicking on Online Payment CTA customer is redirected to Payment Checkout Page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And Clicks on "<LAS>" tile
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/LASPartPayment" Url
    And Clicks on the Tab "Missed Interest Payments" in LAS Payments page
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/LASInterestPayment" Url
    And Enter Valid amount for LAS Missed Interest
    And Click on "Online payment" CTA
    Then Verify Customer Redirected to respective URL "https://uatpayments.bajajfinserv.in/payments"

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | LAS             |
      | 9545219299    | 02021999 | Individual    | Loan payment | Other payments | V428LAS00004845 |

  @MI
  Scenario Outline: Verify after Cancelling the transaction from Payment Checkout page user is redirected to Payment Cancelled Page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And Clicks on "<LAS>" tile
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/LASPartPayment" Url
    And Clicks on the Tab "Missed Interest Payments" in LAS Payments page
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/LASInterestPayment" Url
    And Enter Valid amount for LAS Missed Interest
    And Click on "Online payment" CTA
    Then Verify Customer Redirected to respective URL "https://uatpayments.bajajfinserv.in/payments"
    And Customer clicks on "Cancel" Button
    Then Verify Customer Redirected to respective URL "MyAccountPayments/LoanPay/Receipt"

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | LAS             |
      | 9545219299    | 02021999 | Individual    | Loan payment | Other payments | V428LAS00004845 |


  @MI
  Scenario Outline: Verify after clicking on Retry CTA under on Payment Cancelled Page we are redirected to Missed Interest details page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And Clicks on "<LAS>" tile
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/LASPartPayment" Url
    And Clicks on the Tab "Missed Interest Payments" in LAS Payments page
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/LASInterestPayment" Url
    And Enter Valid amount for LAS Missed Interest
    And Click on "Online payment" CTA
    Then Verify Customer Redirected to respective URL "https://uatpayments.bajajfinserv.in/payments"
    And Customer clicks on "Cancel" Button
    Then Verify Customer Redirected to respective URL "MyAccountPayments/LoanPay/Receipt"
    And Click on "RETRY PAYMENT" CTA
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/LASInterestPayment" Url
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | LAS             |
      | 9545219299    | 02021999 | Individual    | Loan payment | Other payments | V428LAS00004845 |

  @MI
  Scenario Outline: Verify after clicking on FAQ under Quick Actions on Payment Cancelled Page we are redirected to FAQ details page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And Clicks on "<LAS>" tile
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/LASPartPayment" Url
    And Clicks on the Tab "Missed Interest Payments" in LAS Payments page
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/LASInterestPayment" Url
    And Enter Valid amount for LAS Missed Interest
    And Click on "Online payment" CTA
    Then Verify Customer Redirected to respective URL "https://uatpayments.bajajfinserv.in/payments"
    And Customer clicks on "Cancel" Button
    Then Verify Customer Redirected to respective URL "MyAccountPayments/LoanPay/Receipt"
    And Customer clicks on "FAQs" option in RHS
    And Verify Customer Redirected to "MyAccountService/HelpAndSupport/RARFAQCategory" Url

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | LAS             |
      | 9545219299    | 02021999 | Individual    | Loan payment | Other payments | V428LAS00004845 |

  @MI
  Scenario Outline: Verify after clicking on RAR under Quick Actions on Payment Cancelled Page we are redirected to RAR details page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And Clicks on "<LAS>" tile
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/LASPartPayment" Url
    And Clicks on the Tab "Missed Interest Payments" in LAS Payments page
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/LASInterestPayment" Url
    And Enter Valid amount for LAS Missed Interest
    And Click on "Online payment" CTA
    Then Verify Customer Redirected to respective URL "https://uatpayments.bajajfinserv.in/payments"
    And Customer clicks on "Cancel" Button
    Then Verify Customer Redirected to respective URL "MyAccountPayments/LoanPay/Receipt"
    And Customer clicks on "Raise a Request" option in RHS
    And Verify Customer Redirected to "MyAccountService/Helpandsupport/LogRequest" Url

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | LAS             |
      | 9545219299    | 02021999 | Individual    | Loan payment | Other payments | V428LAS00004845 |



    ##########My Relations
  @MI
  Scenario Outline: Verify after clicking on Missed Interests from Cockpit menu we are redirected to Missed Interest details page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using FAS No"<Account No>"
    And Customer Click on "Make Payments" CTA in RHS
    Then verify Page Redirection to "/MyAccountPayments/LoanPay/LASPartPayment" Url with SSO
    And Clicks on the Tab "Missed Interest Payments" in LAS Payments page
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/LASInterestPayment" Url
    Examples:
      | Mobile Number | Date     | Customer Type | Account No |
      | 9545219299    | 02021999 | Individual    | 104175     |





