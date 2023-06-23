Feature: Parent & Linked loon breakup for Foreclosure payment
#Hamburger flow
  @pass
  Scenario Outline: To verify after proceeding for Foreclosure we are redirected to Foreclosure details page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/ForeclosurePay" Url
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option | Tab         |
      | 9784698647    | 05081984 | Individual    | Loan payment | Other payments | 536LRDJE318970      | Foreclosure    | Foreclosure |

  @fail
  Scenario Outline: To verify after clicking on Foreclosure tool tip 'Linked Loan Charges Breakup' are displayed (Customer must have active Parent Child Loan and be eligible for Foreclosure)
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    Then verify Customer is redirected to the exact Payment Option "<Tab>"
    And Clicks on tooltip for "Foreclosure Amount"
    Then "Linked Loan Charges Breakup" with Labels-"<Labels>" and Charges"<Charges>"should be displayed for "Foreclosure"
#  i)Charges Breakup
#  i)Principal outstanding
#  ii)Interest outstanding
#  iii)EMI Overdue
#  iv)Other Charges
#  ii)Parent
#  iii)Linked Loan
#  iv)Total Amount
#  v)Got it CTA
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option | Tab         | Labels                                             | Charges                                                                 |
      | 9784698647    | 05081984 | Individual    | Loan payment | Other payments | 536LRDJE318970      | Foreclosure    | Foreclosure | Charges Breakup, Parent, Linked Loan, Total Amount | Principal Outstanding, Interest Outstanding, EMI Overdue, Other Charges |

  @nodata
  Scenario Outline: To verify after clicking on Foreclosure tool tip 'Linked Loan Charges Breakup' are displayed (Customer must have active Parent, No Child Loan and be eligible for Foreclosure)
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    Then verify Customer is redirected to the exact Payment Option "<Tab>"
    And Click on tooltip
    Then Below message to be displayed on 'Linked Loan Charges Breakup' tooltip
#  1.Message: You do not have any linked loan for this loan account number
#  2.Ok CTA
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option | Tab         |
      | 9784698647    | 05081984 | Individual    | Loan payment | Other payments | 536LRDJE318970      | Foreclosure    | Foreclosure |

  @nodata
  Scenario Outline: To verify after clicking on Foreclosure tool tip 'Linked Loan Charges Breakup' are displayed (Customer must have active Parent Child Loan charges = 0 and be eligible for Foreclosure)
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    And Customer is redirected to the exact Payment Option "<Tab>"
    And Click on tooltip
    Then Linked Loan Charges Breakup with below Fields should be displayed :
#  i)Charges Breakup
#  i)Principal outstanding
#  ii)Interest outstanding
#  iii)EMI Overdue
#  iv)Other Charges
#  ii)Parent
#  iii)Linked Loan (charges should be displayed as 0)
#  iv)Total Amount
#  v)Got it CTA
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option | Tab         |
      | 9784698647    | 05081984 | Individual    | Loan payment | Other payments | 536LRDJE318970      | Foreclosure    | Foreclosure |

  @nodata
  Scenario Outline: To verify after clicking on Foreclosure tool tip 'Linked Loan Charges Breakup' are displayed (Customer must have active Parent Child Loan and be eligible for Foreclosure and Missed Overdue eligibility flag should be 'N')
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    Then verify Customer is redirected to the exact Payment Option "<Tab>"
    And Clicks on tooltip for "Foreclosure Amount"
    Then "Linked Loan Charges Breakup" with Labels-"<Labels>" and Charges"<Charges>"should be displayed for "Foreclosure"
#  i)Charges Breakup
#  i)Principal outstanding
#  ii)Interest outstanding
#  ii)Parent
#  iii)Linked Loan
#  iv)Total Amount
#  v)Got it CTA
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option | Tab         |
      | 9784698647    | 05081984 | Individual    | Loan payment | Other payments | 536LRDJE318970      | Foreclosure    | Foreclosure |

  @pass
  Scenario Outline: To verify after clicking on Got it CTA on toot tip we are redirected to Foreclosure details page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    Then verify Customer is redirected to the exact Payment Option "<Tab>"
    And Clicks on tooltip for "Foreclosure Amount"
    And Click on "got it" CTA in Popup
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/ForeclosurePay" Url
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option | Tab         |
      | 9784698647    | 05081984 | Individual    | Loan payment | Other payments | 536LRDJE318970      | Foreclosure    | Foreclosure |

  @pass
  Scenario Outline: To verify Proceed to Payment CTA is disabled when Foreclosure reason is not selected
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    Then verify Customer is redirected to the exact Payment Option "<Tab>"
    Then "Proceed To Payment" CTA should be disabled
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option | Tab         |
      | 9784698647    | 05081984 | Individual    | Loan payment | Other payments | 536LRDJE318970      | Foreclosure    | Foreclosure |

  @pass
  Scenario Outline: To verify after clicking on contact details tool tip content is displayed
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    Then verify Customer is redirected to the exact Payment Option "<Tab>"
    And Clicks on tooltip for "Contact Details"
    Then Below content should be displayed for "Contact Details"
#  1.Payment confirmation will be sent on his email ID and mobile number
#  2.Done CTA
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option | Tab         |
      | 9784698647    | 05081984 | Individual    | Loan payment | Other payments | 536LRDJE318970      | Foreclosure    | Foreclosure |

  @pass
  Scenario Outline: To verify after clicking on Done CTA on toot tip we are redirected to Foreclosure details page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    Then verify Customer is redirected to the exact Payment Option "<Tab>"
    And Clicks on tooltip for "Contact Details"
    And Click on "Done" CTA in Popup
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/ForeclosurePay" Url
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option | Tab         |
      | 9784698647    | 05081984 | Individual    | Loan payment | Other payments | 536LRDJE318970      | Foreclosure    | Foreclosure |

  @pass
  Scenario Outline: To verify after clicking on Proceed to Payment CTA we are redirected to Payment Checkout Page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    Then verify Customer is redirected to the exact Payment Option "<Tab>"
    Then Verify customer is able to select any of Foreclosure Reason from Drop down
    And Customer clicks on "Proceed To Payment" Button
    And verify Customer is able to see the Popup for Foreclosure
    And Customer clicks on "Proceed to pay" Button in Foreclosure Popup
    Then Verify Customer Redirected to respective "https://uatpayments.bajajfinserv.in/payments" in same Tab
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option | Tab         |
      | 9784698647    | 05081984 | Individual    | Loan payment | Other payments | 536LRDJE318970      | Foreclosure    | Foreclosure |

  @check
  Scenario Outline: To verify after cancelling Payment from Payment Gateway Page we are redirected to Payment Unsuccessful
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    Then verify Customer is redirected to the exact Payment Option "<Tab>"
    Then Verify customer is able to select any of Foreclosure Reason from Drop down
    And Customer clicks on "Proceed To Payment" Button
    And verify Customer is able to see the Popup for Foreclosure
    And Customer clicks on "Proceed to pay" Button in Foreclosure Popup
    Then Verify Customer Redirected to respective "https://uatpayments.bajajfinserv.in/payments" in same Tab
    And Customer clicks on "Cancel" Button
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/Receipt" Url

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option | Tab         | Payment method |
      | 9784698647    | 05081984 | Individual    | Loan payment | Other payments | 536LRDJE318970      | Foreclosure    | Foreclosure | UPI            |

  @check
  Scenario Outline: To verify after cancelling Payment from Payment Gateway Page we are redirected to Payment Unsuccessful- Details
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    Then verify Customer is redirected to the exact Payment Option "<Tab>"
    Then Verify customer is able to select any of Foreclosure Reason from Drop down
    And Customer clicks on "Proceed To Payment" Button
    And verify Customer is able to see the Popup for Foreclosure
    And Customer clicks on "Proceed to pay" Button in Foreclosure Popup
    Then Verify Customer Redirected to respective "https://uatpayments.bajajfinserv.in/payments" in same Tab
    And Customer clicks on "Cancel" Button
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/Receipt" Url
    And verify customer is able to view Labels in Payment Cancellation Page
    And verify options"<Options>" available under "Quick Actions" on RHS
    And verify the following buttons "<Buttons>" are displayed in the page
    And verify Pre-approved Offers section is displayed in Cancelled Page
    And verify Payment Failure reason is displayed

#  1.Transaction details
#  2.Payment Failure reason
#  3.Retry CTA
#  4.RAR CTA
#  5.Pre-approved Offers
#  6.Need Assistance section
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option | Tab         |Options              |Buttons|
      | 9784698647    | 05081984 | Individual    | Loan payment | Other payments | 536LRDJE318970      | Foreclosure    | Foreclosure | FAQs#Raise a Request | BACK TO HOMEPAGE,RETRY PAYMENT     |

