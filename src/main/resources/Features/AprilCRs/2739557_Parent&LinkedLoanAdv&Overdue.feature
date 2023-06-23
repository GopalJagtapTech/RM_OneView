Feature: Parent & Linked loan breakup for Advance EMI & Missed EMI/Overdues

#  Parent & Linked loon breakup for Advance EMI and Missed EMI/Overdue 
#Advance EMI
#Hamburger flow
  @check @adv
  Scenario Outline: To verify after proceeding for Advance EMI we are redirected to Advance EMI details page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/AdvancePay" Url
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    Examples:
      | Mobile Number | Date       | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option | Tab          |
      | 6376643614    | 02-02-1999 | Individual    | Loan payment | Other payments | V71LRDJE957166      | Advance EMIs   | Advance EMIs |

  @check @adv
  Scenario Outline: To verify after clicking on Advance EMI tool tip 'Linked Loan Charges Breakup' are displayed (Customer must have active Parent Child Loan and be eligible for Advance EMI)
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/AdvancePay" Url
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    And Clicks on tooltip for "Advance EMI Details"
    Then "Linked Loan Charges Breakup" with Labels-"<Labels>" and Charges"<Charges>"should be displayed for "Advance EMI"

#  iii)EMI Overdue
#  iv)Other Charges
    Examples:
      | Mobile Number | Date       | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option | Tab          | Labels                                             | Charges                                                                 |
      | 6376643614    | 02-02-1999 | Individual    | Loan payment | Other payments | V71LRDJE957166      | Advance EMIs   | Advance EMIs | Charges Breakup, Parent, Linked Loan, Total Amount | Principal Outstanding, Interest Outstanding, EMI Overdue, Other Charges |

  @check @adv
  Scenario Outline: To verify after clicking on Got it CTA on tool tip we are redirected to Advance EMI details page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/AdvancePay" Url
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    And Clicks on tooltip for "Advance EMI Details"
    And Click on "got it" CTA in Popup
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/AdvancePay" Url
    Examples:
      | Mobile Number | Date       | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option | Tab          |
      | 6376643614    | 02-02-1999 | Individual    | Loan payment | Other payments | V71LRDJE957166      | Advance EMIs   | Advance EMIs |

  @check @adv
  Scenario Outline: To verify after clicking on contact details tool tip content is displayed
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/AdvancePay" Url
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    And Clicks on tooltip for "Contact Details"
    Then Below content should be displayed for "Contact Details"

    Examples:
      | Mobile Number | Date       | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option | Tab          |
      | 6376643614    | 02-02-1999 | Individual    | Loan payment | Other payments | V71LRDJE957166      | Advance EMIs   | Advance EMIs |

  @check @adv
  Scenario Outline: To verify after clicking on Done CTA on toot tip we are redirected to Advance EMI details page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/AdvancePay" Url
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    And Clicks on tooltip for "Contact Details"
    And Click on "Done" CTA in Popup
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/AdvancePay" Url
    Examples:
      | Mobile Number | Date       | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option | Tab          |
      | 6376643614    | 02-02-1999 | Individual    | Loan payment | Other payments | V71LRDJE957166      | Advance EMIs   | Advance EMIs |

  @check @adv
  Scenario Outline: To verify after clicking on Advance EMI tool tip 'Linked Loan Charges Breakup' are displayed (Customer must have active Parent, No Child Loan and be eligible for Advance EMI)
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/AdvancePay" Url
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    And Clicks on tooltip for "Advance EMI Details"
    Then Below message to be displayed on Linked Loan Charges Breakup tooltip

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option | Tab          |
      | 9886452807    | 05081984 | Individual    | Loan payment | Other payments | 404PHT81571781      | Advance EMIs   | Advance EMIs |


##########My Relations
  @adv
  Scenario Outline: To verify after proceeding for Advance EMI we are redirected to Advance EMI details page- My Relations
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    Then verify Customer clicks on "<LAN>"
    Then Verify Customer Redirected to "MyAccountLoanServices/Loans" Url
    And Customer Click on "Make Payments" CTA in RHS
    And selects a Payment Option "<Payment Option>" from Popup
    And Clicks on "PROCEED" Button
    Then verify Customer is redirected to the exact Payment Option "<Tab>"
    Examples:
      | Mobile Number | Date     | Customer Type | LAN            | Payment Option | Tab          |
      | 6376643614    | 05081984 | Individual    | V71LRDJE957166 | Advance EMIs   | Advance EMIs |

  @adv
  Scenario Outline: To verify after clicking on Advance EMI tool tip 'Linked Loan Charges Breakup' are displayed (Customer must have active Parent Child Loan and be eligible for Advance EMI) - My Relations
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    Then verify Customer clicks on "<LAN>"
    Then Verify Customer Redirected to "MyAccountLoanServices/Loans" Url
    And Customer Click on "Make Payments" CTA in RHS
    And selects a Payment Option "<Payment Option>" from Popup
    And Clicks on "PROCEED" Button
    Then verify Customer is redirected to the exact Payment Option "<Tab>"
    And Clicks on tooltip for "Advance EMI Details"
    Then "Linked Loan Charges Breakup" with Labels-"<Labels>" and Charges"<Charges>"should be displayed for "Advance EMI"

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
      | Mobile Number | Date     | Customer Type | LAN            | Payment Option | Tab          | Labels                                             | Charges                                                                 |
      | 6376643614    | 05081984 | Individual    | V71LRDJE957166 | Advance EMIs   | Advance EMIs | Charges Breakup, Parent, Linked Loan, Total Amount | Principal Outstanding, Interest Outstanding, EMI Overdue, Other Charges |

  @adv
  Scenario Outline: To verify after clicking on Advance EMI tool tip 'Linked Loan Charges Breakup' are displayed (Customer must have active Parent, No Child Loan and be eligible for Advance EMI) - My Relations
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    Then verify Customer clicks on "<LAN>"
    Then Verify Customer Redirected to "MyAccountLoanServices/Loans" Url
    And Customer Click on "Make Payments" CTA in RHS
    And selects a Payment Option "<Payment Option>" from Popup
    And Clicks on "PROCEED" Button
    Then verify Customer is redirected to the exact Payment Option "<Tab>"
    And Clicks on tooltip for "Advance EMI Details"
    Then Below message to be displayed on Linked Loan Charges Breakup tooltip
      #  1.Message: You do not have any linked loan for this loan account number
#  2.Ok CTA
    Examples:
      | Mobile Number | Date     | Customer Type | LAN            | Payment Option | Tab          |
      | 9886452807    | 05081984 | Individual    | 404PHT81571781 | Advance EMIs   | Advance EMIs |

  @nodata
  Scenario Outline: To verify after clicking on Advance EMI tool tip 'Linked Loan Charges Breakup' are displayed (Customer must have active Parent Child Loan charges = 0 and be eligible for Advance EMI) - My Relations
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    Then verify Customer clicks on "<LAN>"
    Then Verify Customer Redirected to "MyAccountLoanServices/Loans" Url
    And Customer Click on "Make Payments" CTA in RHS
    And selects a Payment Option "<Payment Option>" from Popup
    And Clicks on "PROCEED" Button
    Then verify Customer is redirected to the exact Payment Option "<Tab>"
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
      | Mobile Number | Date     | Customer Type | LAN            | Payment Option | Tab          |
      | 6376643614    | 05081984 | Individual    | V71LRDJE957166 | Advance EMIs   | Advance EMIs |

  @nodata
  Scenario Outline: To verify after clicking on Advance EMI tool tip 'Linked Loan Charges Breakup' are displayed (Customer must have active Parent Child Loan and be eligible for Advance EMI and Missed Overdue eligibility flag should be 'N') - My Relations
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    Then verify Customer clicks on "<LAN>"
    Then Verify Customer Redirected to "MyAccountLoanServices/Loans" Url
    And Customer Click on "Make Payments" CTA in RHS
    And selects a Payment Option "<Payment Option>" from Popup
    And Clicks on "PROCEED" Button
    Then verify Customer is redirected to the exact Payment Option "<Tab>"
    And Click on tooltip
    Then Linked Loan Charges Breakup with below Fields should be displayed :
#  i)Charges Breakup
#  i)Principal outstanding
#  ii)Interest outstanding
#  ii)Parent
#  iii)Linked Loan
#  iv)Total Amount
#  v)Got it CTA
    Examples:
      | Mobile Number | Date     | Customer Type | Loan Account Number | Payment Option | Tab          |
      | 6376643614    | 05081984 | Individual    | V71LRDJE957166      | Advance EMIs   | Advance EMIs |

  @adv
  Scenario Outline: To verify after clicking on Got it CTA on tool tip we are redirected to Advance EMI details page - My Relations
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    Then verify Customer clicks on "<LAN>"
    Then Verify Customer Redirected to "MyAccountLoanServices/Loans" Url
    And Customer Click on "Make Payments" CTA in RHS
    And selects a Payment Option "<Payment Option>" from Popup
    And Clicks on "PROCEED" Button
    Then verify Customer is redirected to the exact Payment Option "<Tab>"
    And Clicks on tooltip for "Advance EMI Details"
    And Click on "got it" CTA in Popup
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/AdvancePay" Url
    Examples:
      | Mobile Number | Date     | Customer Type | LAN            | Payment Option | Tab          |
      | 6376643614    | 05081984 | Individual    | V71LRDJE957166 | Advance EMIs   | Advance EMIs |

#  Scenario Outline: To verify Proceed to Payment CTA is disabled when Advance EMI reason is not selected - My Relations
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User is on Home Page
#    And Customer is able to view My Relations Section to ETB Customers
#    And Customer clicks on view all option
#    And My relations Page should be displayed
#    Then verify Customer clicks on "<LAN>"
#    Then Verify Customer Redirected to "MyAccountLoanServices/Loans" Url
#    And Customer Click on "Make Payments" CTA in RHS
#    And selects a Payment Option "<Payment Option>" from Popup
#    And Clicks on "PROCEED" Button
#    Then verify Customer is redirected to the exact Payment Option "<Tab>"
#    Then Proceed to Payment CTA should be disabled
#    Examples:
#      | Mobile Number | Date     | Customer Type | Loan Account Number | Payment Option | Tab         |
#      | 6376643614    | 05081984 | Individual    | 404PHT81571781      | Advance EMIs    | Advance EMIs |

  @adv
  Scenario Outline: To verify after clicking on contact details tool tip content is displayed - My Relations
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    Then verify Customer clicks on "<LAN>"
    Then Verify Customer Redirected to "MyAccountLoanServices/Loans" Url
    And Customer Click on "Make Payments" CTA in RHS
    And selects a Payment Option "<Payment Option>" from Popup
    And Clicks on "PROCEED" Button
    Then verify Customer is redirected to the exact Payment Option "<Tab>"
    And Clicks on tooltip for "Contact Details"
    Then Below content should be displayed for "Contact Details"
      #  1.Payment confirmation will be sent on his email ID and mobile number
#  2.Done CTA
    Examples:
      | Mobile Number | Date     | Customer Type | LAN            | Payment Option | Tab          |
      | 6376643614    | 05081984 | Individual    | V71LRDJE957166 | Advance EMIs   | Advance EMIs |

  @adv
  Scenario Outline: To verify after clicking on Done CTA on toot tip we are redirected to Advance EMI details page - My Relations
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    Then verify Customer clicks on "<LAN>"
    Then Verify Customer Redirected to "MyAccountLoanServices/Loans" Url
    And Customer Click on "Make Payments" CTA in RHS
    And selects a Payment Option "<Payment Option>" from Popup
    And Clicks on "PROCEED" Button
    Then verify Customer is redirected to the exact Payment Option "<Tab>"
    And Clicks on tooltip for "Contact Details"
    And Click on "Done" CTA in Popup
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/AdvancePay" Url

    Examples:
      | Mobile Number | Date     | Customer Type | LAN            | Payment Option | Tab          |
      | 6376643614    | 05081984 | Individual    | V71LRDJE957166 | Advance EMIs   | Advance EMIs |

  Scenario Outline: To verify after clicking on Proceed to Payment CTA we are redirected to Payment Checkout Page - My Relations
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    Then verify Customer clicks on "<LAN>"
    Then Verify Customer Redirected to "MyAccountLoanServices/Loans" Url
    And Customer Click on "Make Payments" CTA in RHS
    And selects a Payment Option "<Payment Option>" from Popup
    And Clicks on "PROCEED" Button
    Then verify Customer is redirected to the exact Payment Option "<Tab>"
    And Select Reason
    And Click on Proceed to Payment CTA
    Then Customer should be redirected to Payment Checkout page
    Examples:
      | Mobile Number | Date     | Customer Type | LAN            | Payment Option | Tab          |
      | 6376643614    | 05081984 | Individual    | V71LRDJE957166 | Advance EMIs   | Advance EMIs |






    ###########################
    # ########################Overdue
  @Over
  Scenario Outline: To verify after proceeding for Missed EMI/Overdue we are redirected to Missed EMI/Overdue details page
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
      | Mobile Number | Date       | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option         | Tab                    |
      | 9964215871    | 02/02/1999 | Individual    | Loan payment | Other payments | 422DPFHQ502008      | Overdue or missed EMIs | Overdue or missed EMIs |

  @Over
  Scenario Outline: To verify after clicking on Missed EMI/Overdue tool tip 'Linked Loan Charges Breakup' are displayed (Customer must have active Parent Child Loan and be eligible for Missed EMI/Overdue)
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    Then verify Customer is redirected to the exact Payment Option "<Tab>"
    And Clicks on tooltip for "Total Overdues"
    Then "Linked Loan Charges Breakup" with Labels-"<Labels>" and Charges"<Charges>"should be displayed for "Overdue"

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option         | Tab                    | Labels                                             | Charges                                                                 |
      | 9964215871    | 05081984 | Individual    | Loan payment | Other payments | 422DPFHQ502008      | Overdue or missed EMIs | Overdue or missed EMIs | Charges Breakup, Parent, Linked Loan, Total Amount | Principal Outstanding, Interest Outstanding, EMI Overdue, Other Charges |

  @Over
  Scenario Outline: To verify after clicking on Missed EMI/Overdue tool tip 'Linked Loan Charges Breakup' are displayed (Customer must have active Parent, No Child Loan and be eligible for Missed EMI/Overdue)
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    Then verify Customer is redirected to the exact Payment Option "<Tab>"
    And Clicks on tooltip for "Total Overdues"
    Then Below message to be displayed on Linked Loan Charges Breakup tooltip

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option         | Tab                    |
      | 9767667227    | 05081984 | Individual    | Loan payment | Other payments | 402WLTFV675153      | Overdue or missed EMIs | Overdue or missed EMIs |

  @Over
  Scenario Outline: To verify after clicking on Got it CTA on tool tip we are redirected to Missed EMI/Overdue details page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    Then verify Customer is redirected to the exact Payment Option "<Tab>"
    And Clicks on tooltip for "Total Overdues"
    And Click on "got it" CTA in Popup
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/EMI_Overdue" Url
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option         | Tab                    |
      | 9964215871    | 02/02/1999 | Individual    | Loan payment | Other payments | 422DPFHQ502008      | Overdue or missed EMIs | Overdue or missed EMIs |

  @Over
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

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option         | Tab                    |
      | 9767667227    | 05081984 | Individual    | Loan payment | Other payments | 402WLTFV675153      | Overdue or missed EMIs | Overdue or missed EMIs |

  @Over
  Scenario Outline: To verify after clicking on Done CTA on toot tip we are redirected to Missed EMI/Overdue details page
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
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/EMI_Overdue" Url
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option         | Tab                    |
      | 9767667227    | 05081984 | Individual    | Loan payment | Other payments | 402WLTFV675153      | Overdue or missed EMIs | Overdue or missed EMIs |

##########My Relations
  @Over
  Scenario Outline: To verify after proceeding for Missed EMI/Overdue we are redirected to Missed EMI/Overdue details page - MR
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    Then verify Customer clicks on "<LAN>"
    Then Verify Customer Redirected to "MyAccountLoanServices/Loans" Url
    And Customer Click on "Make Payments" CTA in RHS
    And selects a Payment Option "<Payment Option>" from Popup
    And Clicks on "PROCEED" Button
    Then verify Customer is redirected to the exact Payment Option "<Tab>"
    Examples:
      | Mobile Number | Date     | Customer Type | LAN            | Payment Option         | Tab                    |
      | 9767667227    | 05081984 | Individual    | 402WLTFV675153 | Overdue or missed EMIs | Overdue or missed EMIs |

  @Over
  Scenario Outline: To verify after clicking on Missed EMI/Overdue tool tip 'Linked Loan Charges Breakup' are displayed (Customer must have active Parent Child Loan and be eligible for Missed EMI/Overdue) - MR
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    Then verify Customer clicks on "<LAN>"
    Then Verify Customer Redirected to "MyAccountLoanServices/Loans" Url
    And Customer Click on "Make Payments" CTA in RHS
    And selects a Payment Option "<Payment Option>" from Popup
    And Clicks on "PROCEED" Button
    Then verify Customer is redirected to the exact Payment Option "<Tab>"
    And Clicks on tooltip for "Total Overdues"
    Then "Linked Loan Charges Breakup" with Labels-"<Labels>" and Charges"<Charges>"should be displayed for "Overdue"

    Examples:
      | Mobile Number | Date     | Customer Type | LAN            | Payment Option         | Tab                    | Labels                                             | Charges                                                                 |
      | 9964215871    | 05081984 | Individual    | 422DPFHQ502008 | Overdue or missed EMIs | Overdue or missed EMIs | Charges Breakup, Parent, Linked Loan, Total Amount | Principal Outstanding, Interest Outstanding, EMI Overdue, Other Charges |
#  9964215871    | 02/02/1999 | Individual    | Loan payment | Other payments | 422DPFHQ502008
  @Over
  Scenario Outline: To verify after clicking on Missed EMI/Overdue tool tip 'Linked Loan Charges Breakup' are displayed (Customer must have active Parent, No Child Loan and be eligible for Missed EMI/Overdue)- MR
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    Then verify Customer clicks on "<LAN>"
    Then Verify Customer Redirected to "MyAccountLoanServices/Loans" Url
    And Customer Click on "Make Payments" CTA in RHS
    And selects a Payment Option "<Payment Option>" from Popup
    And Clicks on "PROCEED" Button
    Then verify Customer is redirected to the exact Payment Option "<Tab>"
    And Clicks on tooltip for "Total Overdues"
    Then Below message to be displayed on Linked Loan Charges Breakup tooltip

    Examples:
      | Mobile Number | Date     | Customer Type | LAN            | Payment Option         | Tab                    |
      | 9767667227    | 05081984 | Individual    | 402WLTFV675153 | Overdue or missed EMIs | Overdue or missed EMIs |


  @Over
  Scenario Outline: To verify after clicking on Got it CTA on tool tip we are redirected to Missed EMI/Overdue details page- MR
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer clicks on view all option
    And My relations Page should be displayed
    Then verify Customer clicks on "<LAN>"
    Then Verify Customer Redirected to "MyAccountLoanServices/Loans" Url
    And Customer Click on "Make Payments" CTA in RHS
    And selects a Payment Option "<Payment Option>" from Popup
    And Clicks on "PROCEED" Button
    Then verify Customer is redirected to the exact Payment Option "<Tab>"
    And Clicks on tooltip for "Total Overdues"
    And Click on "got it" CTA in Popup
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/EMI_Overdue" Url
    Examples:
      | Mobile Number | Date     | Customer Type | LAN            | Payment Option         | Tab                    |
      | 9964215871    | 05081984 | Individual    | 422DPFHQ502008 | Overdue or missed EMIs | Overdue or missed EMIs |

  @Over
  Scenario Outline: To verify after clicking on contact details tool tip content is displayed- MR
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer clicks on view all option
    And My relations Page should be displayed
    Then verify Customer clicks on "<LAN>"
    Then Verify Customer Redirected to "MyAccountLoanServices/Loans" Url
    And Customer Click on "Make Payments" CTA in RHS
    And selects a Payment Option "<Payment Option>" from Popup
    And Clicks on "PROCEED" Button
    Then verify Customer is redirected to the exact Payment Option "<Tab>"
    And Clicks on tooltip for "Contact Details"
    Then Below content should be displayed for "Contact Details"

    Examples:
      | Mobile Number | Date     | Customer Type | LAN            | Payment Option         | Tab                    |
      | 9767667227    | 05081984 | Individual    | 402WLTFV675153 | Overdue or missed EMIs | Overdue or missed EMIs |

  @Over
  Scenario Outline: To verify after clicking on Done CTA on toot tip we are redirected to Missed EMI/Overdue details page- MR
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer clicks on view all option
    And My relations Page should be displayed
    Then verify Customer clicks on "<LAN>"
    Then Verify Customer Redirected to "MyAccountLoanServices/Loans" Url
    And Customer Click on "Make Payments" CTA in RHS
    And selects a Payment Option "<Payment Option>" from Popup
    And Clicks on "PROCEED" Button
    Then verify Customer is redirected to the exact Payment Option "<Tab>"
    And Clicks on tooltip for "Contact Details"
    And Click on "Done" CTA in Popup
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/EMI_Overdue" Url
    Examples:
      | Mobile Number | Date     | Customer Type | LAN            | Payment Option         | Tab                    |
      | 9767667227    | 05081984 | Individual    | 402WLTFV675153 | Overdue or missed EMIs | Overdue or missed EMIs |



#Customer id not available
  @nodata
  Scenario Outline: To verify after clicking on Advance EMI tool tip 'Linked Loan Charges Breakup' are displayed (Customer must have active Parent Child Loan charges = 0 and be eligible for Advance EMI)
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
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option | Tab          |
      |               | 05081984 | Individual    | Loan payment | Other payments |                     | Advance EMIs   | Advance EMIs |
###############This cust has no linked account
  Scenario Outline: To verify after clicking on Advance EMI tool tip 'Linked Loan Charges Breakup' are displayed (Customer must have active Parent Child Loan and be eligible for Advance EMI and Missed Overdue eligibility flag should be 'N')
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
    Then Linked Loan Charges Breakup with below Fields should be displayed :
#  i)Charges Breakup
#  i)Principal outstanding
#  ii)Interest outstanding
#  ii)Parent
#  iii)Linked Loan
#  iv)Total Amount
#  v)Got it CTA
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option | Tab          |
      | 9886452807    | 05081984 | Individual    | Loan payment | Other payments |                     | Advance EMIs   | Advance EMIs |

#####deferred
  Scenario Outline: To verify Proceed to Payment CTA is disabled when Advance EMI reason is not selected
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    Then verify Customer is redirected to the exact Payment Option "<Tab>"
    Then Proceed to Payment CTA should be disabled
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option | Tab          |
      |               | 05081984 | Individual    | Loan payment | Other payments |                     | Advance EMIs   | Advance EMIs |

#  Scenario Outline: To verify after clicking on Proceed to Payment CTA we are redirected to Payment Checkout Page
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User is on Home Page
#    And Clicks on Hamburger Menu
#    And Selects an SubMenu from Hamburger "<SubMenu>"
#    And Clicks on SubListmenu "<SubListMenu>"
#    And verify Loan Payment page displayed
#    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
#    And Clicks on "PROCEED" Button
#    Then verify Customer is redirected to the exact Payment Option "<Tab>"
#    And Select Reason
#    And Click on Proceed to Payment CTA
#    Then Customer should be redirected to Payment Checkout page
#    Examples:
#      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option | Tab         |
#      |               | 05081984 | Individual    | Loan payment | Other payments |                     | Advance EMIs    | Advance EMIs |

#My Relations



#Overdue 
#Hamburger flow

      #  Scenario Outline: To verify Proceed to Payment CTA is disabled when Missed EMI/Overdue reason is not selected
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User is on Home Page
#    And Clicks on Hamburger Menu
#    And Selects an SubMenu from Hamburger "<SubMenu>"
#    And Clicks on SubListmenu "<SubListMenu>"
#    And verify Loan Payment page displayed
#    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
#    And Clicks on "PROCEED" Button
#    Then verify Customer is redirected to the exact Payment Option "<Tab>"
#    Then Proceed to Payment CTA should be disabled
#    Examples:
#      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option         | Tab                    |
#      |               | 05081984 | Individual    | Loan payment | Other payments |                     | Overdue or missed EMIs | Overdue or missed EMIs |


#  Scenario Outline: To verify after clicking on Proceed to Payment CTA we are redirected to Payment Checkout Page
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User is on Home Page
#    And Clicks on Hamburger Menu
#    And Selects an SubMenu from Hamburger "<SubMenu>"
#    And Clicks on SubListmenu "<SubListMenu>"
#    And verify Loan Payment page displayed
#    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
#    And Clicks on "PROCEED" Button
#    Then verify Customer is redirected to the exact Payment Option "<Tab>"
#    And Select Reason
#    And Click on Proceed to Payment CTA
#    Then Customer should be redirected to Payment Checkout page
#    Examples:
#      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option         | Tab                    |
#      |               | 05081984 | Individual    | Loan payment | Other payments |                     | Overdue or missed EMIs | Overdue or missed EMIs |


  Scenario Outline: To verify after clicking on Missed EMI/Overdue tool tip 'Linked Loan Charges Breakup' are displayed (Customer must have active Parent Child Loan charges = 0 and be eligible for Missed EMI/Overdue)
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
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option         | Tab                    |
      |               | 05081984 | Individual    | Loan payment | Other payments |                     | Overdue or missed EMIs | Overdue or missed EMIs |

  Scenario Outline: To verify after clicking on Missed EMI/Overdue tool tip 'Linked Loan Charges Breakup' are displayed (Customer must have active Parent Child Loan and be eligible for Missed EMI/Overdue and Missed Overdue eligibility flag should be 'N')
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
    Then Linked Loan Charges Breakup with below Fields should be displayed :
#  i)Charges Breakup
#  i)Principal outstanding
#  ii)Interest outstanding
#  ii)Parent
#  iii)Linked Loan
#  iv)Total Amount
#  v)Got it CTA
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option         | Tab                    |
      |               | 05081984 | Individual    | Loan payment | Other payments |                     | Overdue or missed EMIs | Overdue or missed EMIs |


#My Relations

  Scenario Outline: To verify after clicking on Missed EMI/Overdue tool tip 'Linked Loan Charges Breakup' are displayed (Customer must have active Parent Child Loan charges = 0 and be eligible for Missed EMI/Overdue)
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on View All
    And Selects “<Loan Account Number>”
    And Clicks on Make Payment
    And Selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    Then verify Customer is redirected to the exact Payment Option "<Tab>"
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
      | Mobile Number | Date     | Customer Type | Loan Account Number | Payment Option         | Tab                    |
      |               | 05081984 | Individual    |                     | Overdue or missed EMIs | Overdue or missed EMIs |

  Scenario Outline: To verify after clicking on Missed EMI/Overdue tool tip 'Linked Loan Charges Breakup' are displayed (Customer must have active Parent Child Loan and be eligible for Missed EMI/Overdue and Missed Overdue eligibility flag should be 'N')
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on View All
    And Selects “<Loan Account Number>”
    And Clicks on Make Payment
    And Selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    Then verify Customer is redirected to the exact Payment Option "<Tab>"
    And Click on tooltip
    Then Linked Loan Charges Breakup with below Fields should be displayed :
#  i)Charges Breakup
#  i)Principal outstanding
#  ii)Interest outstanding
#  ii)Parent
#  iii)Linked Loan
#  iv)Total Amount
#  v)Got it CTA
    Examples:
      | Mobile Number | Date     | Customer Type | Loan Account Number | Payment Option         | Tab                    |
      |               | 05081984 | Individual    |                     | Overdue or missed EMIs | Overdue or missed EMIs |

  Scenario Outline: To verify after clicking on Got it CTA on tool tip we are redirected to Missed EMI/Overdue details page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on View All
    And Selects “<Loan Account Number>”
    And Clicks on Make Payment
    And Selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    Then verify Customer is redirected to the exact Payment Option "<Tab>"
    And Click on tooltip
    And Click on Got it CTA
    Then Customer should be redirected to Missed EMI/Overdue Details page
    Examples:
      | Mobile Number | Date     | Customer Type | Loan Account Number | Payment Option         | Tab                    |
      |               | 05081984 | Individual    |                     | Overdue or missed EMIs | Overdue or missed EMIs |

  Scenario Outline: To verify Proceed to Payment CTA is disabled when Missed EMI/Overdue reason is not selected
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on View All
    And Selects “<Loan Account Number>”
    And Clicks on Make Payment
    And Selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    Then verify Customer is redirected to the exact Payment Option "<Tab>"
    Then Proceed to Payment CTA should be disabled
    Examples:
      | Mobile Number | Date     | Customer Type | Loan Account Number | Payment Option         | Tab                    |
      |               | 05081984 | Individual    |                     | Overdue or missed EMIs | Overdue or missed EMIs |

  Scenario Outline: To verify after clicking on contact details tool tip content is displayed
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on View All
    And Selects “<Loan Account Number>”
    And Clicks on Make Payment
    And Selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    Then verify Customer is redirected to the exact Payment Option "<Tab>"
    And Click on contact details tool tip
    Then Below content should be displayed
#  1.Payment confirmation will be sent on his email ID and mobile number
#  2.Done CTA
    Examples:
      | Mobile Number | Date     | Customer Type | Loan Account Number | Payment Option         | Tab                    |
      |               | 05081984 | Individual    |                     | Overdue or missed EMIs | Overdue or missed EMIs |

  Scenario Outline: To verify after clicking on Done CTA on toot tip we are redirected to Missed EMI/Overdue details page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on View All
    And Selects “<Loan Account Number>”
    And Clicks on Make Payment
    And Selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    Then verify Customer is redirected to the exact Payment Option "<Tab>"
    And Click on contact details tool tip
    And Click on Done CTA
    Then Customer should be redirected to Missed EMI/Overdue Details page
    Examples:
      | Mobile Number | Date     | Customer Type | Loan Account Number | Payment Option         | Tab                    |
      |               | 05081984 | Individual    |                     | Overdue or missed EMIs | Overdue or missed EMIs |

  Scenario Outline: To verify after clicking on Proceed to Payment CTA we are redirected to Payment Checkout Page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on View All
    And Selects “<Loan Account Number>”
    And Clicks on Make Payment
    And Selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    Then verify Customer is redirected to the exact Payment Option "<Tab>"
    And Select Reason
    And Click on Proceed to Payment CTA
    Then Customer should be redirected to Payment Checkout page
    Examples:
      | Mobile Number | Date     | Customer Type | Loan Account Number | Payment Option         | Tab                    |
      |               | 05081984 | Individual    |                     | Overdue or missed EMIs | Overdue or missed EMIs |








