Feature: 3035189 Settlement Payment Option in My Account
#Hamburger flow
  @Ham @pass
  Scenario Outline: To verify after proceeding with Settlement Payment option we are redirected to Settlement details page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    Then Customer should be redirected to "<URL>" Settlement details page.
    Examples:
      | Mobile Number | Date       | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option     | Tab                | URL                                     |
      | 7890581383    | 02-02-1999 | Individual    | Loan payment | Other payments | 410PMTEW457223      | Settlement Payment | Settlement Payment | MyAccountPayments/LoanPay/SettlementPay |

  @Ham @pass
  Scenario Outline: To verify minimum amount is displayed as Rs.1
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    Then Customer should be redirected to "<URL>" Settlement details page.
    Then Verify minimum amount is displayed as Rs.One
    Examples:
      | Mobile Number | Date       | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option     | Tab                | URL                                     |
      | 7890581383    | 02-02-1999 | Individual    | Loan payment | Other payments | 410PMTEW457223      | Settlement Payment | Settlement Payment | MyAccountPayments/LoanPay/SettlementPay |

  @Ham @pass
  Scenario Outline: To verify maximum amount is prepopulated in Enter amount field
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    Then Customer should be redirected to "<URL>" Settlement details page.
    Then Verify maximum amount is prepopulated in Enter amount field

    Examples:
      | Mobile Number | Date       | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option     | Tab                | URL                                     |
      | 7890581383    | 02-02-1999 | Individual    | Loan payment | Other payments | 410PMTEW457223      | Settlement Payment | Settlement Payment | MyAccountPayments/LoanPay/SettlementPay |

  @Ham
  Scenario Outline: To verify Proceed CTA is disabled when invalid or no amount is displayed.
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    Then Customer should be redirected to "<URL>" Settlement details page.
    And Proceed CTA should be disabled when Entered amount is out of the given range

    Examples:
      | Mobile Number | Date       | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option     | Tab                | URL                                     |
      | 7890581383    | 02-02-1999 | Individual    | Loan payment | Other payments | 410PMTEW457223      | Settlement Payment | Settlement Payment | MyAccountPayments/LoanPay/SettlementPay |

  @Ham
  Scenario Outline: To verify details displayed on Settlement details page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    Then Customer should be redirected to "<URL>" Settlement details page.
    Then Below details should be displayed "Settlement Status,Settlement Approved Date,Settlement Last Date" and "Total Outstanding Amount,Total Settlement Amount,Settlement Amount Received Till Now"
    Examples:
      | Mobile Number | Date       | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option     | Tab                | URL                                     |
      | 7890581383    | 02-02-1999 | Individual    | Loan payment | Other payments | 410PMTEW457223      | Settlement Payment | Settlement Payment | MyAccountPayments/LoanPay/SettlementPay |

  @Ham @pass
  Scenario Outline: To verify Scheduled details section displayed on Settlement details page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    Then Customer should be redirected to "<URL>" Settlement details page.
    Then Below details "Date#Amount" should be displayed under Schedule details section

    Examples:
      | Mobile Number | Date       | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option     | Tab                | URL                                     |
      | 7890581383    | 02-02-1999 | Individual    | Loan payment | Other payments | 410PMTEW457223      | Settlement Payment | Settlement Payment | MyAccountPayments/LoanPay/SettlementPay |


  @Ham @pass
  Scenario Outline: To verify contact details section
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    Then Customer should be redirected to "<URL>" Settlement details page.
    Then Below details "Registered Email ID,Registered Mobile Number" should be displayed under contact details section
#  1.Tooltip
#  2.Registered email id
#  3.Registered mobile number
    Examples:
      | Mobile Number | Date       | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option     | Tab                | URL                                     |
      | 7890581383    | 02-02-1999 | Individual    | Loan payment | Other payments | 410PMTEW457223      | Settlement Payment | Settlement Payment | MyAccountPayments/LoanPay/SettlementPay |

  @nodata
  Scenario Outline: To verify contact details tooltip
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    Then Customer should be redirected to "<URL>" Settlement details page.
    And Click on tooltip icon
    Then Below message should be displayed on tooltip
#  	Payment confirmation will be sent here
    Examples:
      | Mobile Number | Date       | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option     | Tab                | URL                                     |
      | 7890581383    | 02-02-1999 | Individual    | Loan payment | Other payments | 410PMTEW457223      | Settlement Payment | Settlement Payment | MyAccountPayments/LoanPay/SettlementPay |

  @Ham @pass
  Scenario Outline: To verify after clicking on FAQs under Quick Actions we are redirected to FAQ details page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    Then Customer should be redirected to "<URL>" Settlement details page.
    And Customer clicks on "FAQs" option in RHS
    Then Verify Customer Redirected to "MyAccountService/HelpAndSupport/RARFAQCategory" Url

    Examples:
      | Mobile Number | Date       | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option     | Tab                | URL                                     |
      | 7890581383    | 02-02-1999 | Individual    | Loan payment | Other payments | 410PMTEW457223      | Settlement Payment | Settlement Payment | MyAccountPayments/LoanPay/SettlementPay |

  @Ham @pass
  Scenario Outline: To verify after clicking on RAR under Quick Actions we are redirected to RAR details page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    Then Customer should be redirected to "<URL>" Settlement details page.
    And Customer clicks on "Raise a Request" option in RHS
    Then Verify Customer Redirected to "MyAccountService/Helpandsupport/LogRequest" Url
    Examples:
      | Mobile Number | Date       | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option     | Tab                | URL                                     |
      | 7890581383    | 02-02-1999 | Individual    | Loan payment | Other payments | 410PMTEW457223      | Settlement Payment | Settlement Payment | MyAccountPayments/LoanPay/SettlementPay |

  @Ham @pass
  Scenario Outline: To verify after clicking on Proceed to Pay CTA we are redirected to Payment Checkout page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    Then Customer should be redirected to "<URL>" Settlement details page.
    And Enter valid amount for Settlement Payment
    And Customer clicks on "Proceed To Payment" Button
    Then Verify Customer Redirected to respective URL "<Url>"
    Examples:
      | Mobile Number | Date       | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option     | Tab                | URL                                     | Url                                          |
      | 7890581383    | 02-02-1999 | Individual    | Loan payment | Other payments | 410PMTEW457223      | Settlement Payment | Settlement Payment | MyAccountPayments/LoanPay/SettlementPay | https://uatpayments.bajajfinserv.in/payments |

  @Ham @pass
  Scenario Outline: To verify after clicking on Cancel CTA on Payment Checkout page we are redirected to Payment Cancelled page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    Then Customer should be redirected to "<URL>" Settlement details page.
    And Enter valid amount for Settlement Payment
    And Customer clicks on "Proceed To Payment" Button
    Then Verify Customer Redirected to respective URL "<Url>"
    And Customer clicks on "Cancel" Button
    Then Verify Customer Redirected to respective URL "<Url1>"
    Examples:
      | Mobile Number | Date       | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option     | Tab                | URL                                     | Url                                          | Url1                              |
      | 7890581383    | 02-02-1999 | Individual    | Loan payment | Other payments | 410PMTEW457223      | Settlement Payment | Settlement Payment | MyAccountPayments/LoanPay/SettlementPay | https://uatpayments.bajajfinserv.in/payments | MyAccountPayments/LoanPay/Receipt |

  @Ham @pass
  Scenario Outline: To verify after cancelling payment from Payment gateway page we are redirected to Payment Unsuccessful page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    Then Customer should be redirected to "<URL>" Settlement details page.
    And Enter valid amount for Settlement Payment
    And Customer clicks on "Proceed To Payment" Button
    Then Verify Customer Redirected to respective URL "<Url>"
    And  Selects a Payment Gateway"Worldline"
    And Selects a Payment Method"UPI"
    And Click on PAY CTA in Payment Page
    Then Verify Customer Redirected to respective URL "<Payment Url>"
    And Click on Cancel CTA in worldline page
    Then Customer should be redirected to Payment Unsuccessful "<Payment Unsuccess>" Page
    Examples:
      | Mobile Number | Date       | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option     | Tab                | URL                                     | Url                                          | Payment Url                                        | Payment Unsuccess                                                    |
      | 7890581383    | 02-02-1999 | Individual    | Loan payment | Other payments | 410PMTEW457223      | Settlement Payment | Settlement Payment | MyAccountPayments/LoanPay/SettlementPay | https://uatpayments.bajajfinserv.in/payments | https://www.tpsl-india.in/PaymentGateway/txnreq.pg | https://uat-oneweb.bajajfinserv.in/MyAccountPayments/LoanPay/Receipt |

  @Ham @pass
  Scenario Outline: To verify details displayed on Payment Unsuccessful page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    Then Customer should be redirected to "<URL>" Settlement details page.
    And Enter valid amount for Settlement Payment
    And Customer clicks on "Proceed To Payment" Button
    Then Verify Customer Redirected to respective URL "<Url>"
    And  Selects a Payment Gateway"Worldline"
    And Selects a Payment Method"UPI"
    And Click on PAY CTA in Payment Page
    Then Verify Customer Redirected to respective URL "<Payment Url>"
    And Click on Cancel CTA in worldline page
    Then Customer should be redirected to Payment Unsuccessful "<Payment Unsuccess>" Page
    And Below reason "<Reason>" should be displayed for cancelling payment
    Then Below details "AMOUNT,TRANSACTION REF ID,Date,Time" should be displayed on Payment Unsuccessful page along with "LOAN ACCOUNT NUMBER"

    Examples:
      | Mobile Number | Date       | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option     | Tab                | URL                                     | Url                                          | Payment Url                                        | Payment Unsuccess                                                    | Reason                                                                          |
      | 7890581383    | 02-02-1999 | Individual    | Loan payment | Other payments | 410PMTEW457223      | Settlement Payment | Settlement Payment | MyAccountPayments/LoanPay/SettlementPay | https://uatpayments.bajajfinserv.in/payments | https://www.tpsl-india.in/PaymentGateway/txnreq.pg | https://uat-oneweb.bajajfinserv.in/MyAccountPayments/LoanPay/Receipt | The payment was unsuccessful as it was cancelled at your end. Please try again. |

  @Ham
  Scenario Outline: To verify after clicking on Retry CTA we are redirected to Settlement details page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    Then Customer should be redirected to "<URL>" Settlement details page.
    And Enter valid amount for Settlement Payment
    And Customer clicks on "Proceed To Payment" Button
    Then Verify Customer Redirected to respective URL "<Url>"
    And  Selects a Payment Gateway"Worldline"
    And Selects a Payment Method"UPI"
    And Click on PAY CTA in Payment Page
    Then Verify Customer Redirected to respective URL "<Payment Url>"
    And Click on Cancel CTA in worldline page
    Then Customer should be redirected to Payment Unsuccessful "<Payment Unsuccess>" Page
    And Customer clicks on "Retry Payment" Button
    Then Customer should be redirected to "<URL>" Settlement details page.
    And verify Customer is redirected to the exact Payment Option "<Tab>"

    Examples:
      | Mobile Number | Date       | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option     | Tab                | URL                                     | Url                                          | Payment Url                                        | Payment Unsuccess                                                    |
      | 7890581383    | 02-02-1999 | Individual    | Loan payment | Other payments | 410PMTEW457223      | Settlement Payment | Settlement Payment | MyAccountPayments/LoanPay/SettlementPay | https://uatpayments.bajajfinserv.in/payments | https://www.tpsl-india.in/PaymentGateway/txnreq.pg | https://uat-oneweb.bajajfinserv.in/MyAccountPayments/LoanPay/Receipt |

  @Ham
  Scenario Outline: To verify after clicking on RAR CTA we are redirected to RAR details page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    Then Customer should be redirected to "<URL>" Settlement details page.
    And Enter valid amount for Settlement Payment
    And Customer clicks on "Proceed To Payment" Button
    Then Verify Customer Redirected to respective URL "<Url>"
    And  Selects a Payment Gateway"Worldline"
    And Selects a Payment Method"UPI"
    And Click on PAY CTA in Payment Page
    Then Verify Customer Redirected to respective URL "<Payment Url>"
    And Click on Cancel CTA in worldline page
    Then Customer should be redirected to Payment Unsuccessful "<Payment Unsuccess>" Page
    And Customer clicks on "Raise A Request" Button
    And Verify Customer Redirected to "MyAccountService/Helpandsupport/LogRequest" Url
    Examples:
      | Mobile Number | Date       | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option     | Tab                | URL                                     | Url                                          | Payment Url                                        | Payment Unsuccess                                                    |
      | 7890581383    | 02-02-1999 | Individual    | Loan payment | Other payments | 410PMTEW457223      | Settlement Payment | Settlement Payment | MyAccountPayments/LoanPay/SettlementPay | https://uatpayments.bajajfinserv.in/payments | https://www.tpsl-india.in/PaymentGateway/txnreq.pg | https://uat-oneweb.bajajfinserv.in/MyAccountPayments/LoanPay/Receipt |

 ################# 3244056 Settlement Payment Option in My Account | Loan Services


#My Relations->Make Payments

  Scenario Outline: To verify after proceeding with Settlement Payment option we are redirected to Settlement details page - MR
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"Not Available" Account No"<Loan Account Number>"
    And Customer Click on "Make Payments" CTA in RHS
    And selects a Payment Option "<Payment Option>" from Popup
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    Then Customer should be redirected to "<URL>" Settlement details page.

    Examples:
      | Mobile Number | Date       | Customer Type | Loan Account Number | Payment Option     | Tab                | URL                                     |
      | 7890581383    | 02-02-1999 | Individual    | 410PMTEW457223      | Settlement Payment | Settlement Payment | MyAccountPayments/LoanPay/SettlementPay |

  Scenario Outline: To verify minimum amount is displayed as Rs.1 - MR
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"Not Available" Account No"<Loan Account Number>"
    And Customer Click on "Make Payments" CTA in RHS
    And selects a Payment Option "<Payment Option>" from Popup
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    Then Customer should be redirected to "<URL>" Settlement details page.
    Then Verify minimum amount is displayed as Rs.One
    Examples:
      | Mobile Number | Date       | Customer Type | Loan Account Number | Payment Option     | Tab                | URL                                     |
      | 7890581383    | 02-02-1999 | Individual    | 410PMTEW457223      | Settlement Payment | Settlement Payment | MyAccountPayments/LoanPay/SettlementPay |

  Scenario Outline: To verify maximum amount is prepopulated in Enter amount field - MR
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"Not Available" Account No"<Loan Account Number>"
    And Customer Click on "Make Payments" CTA in RHS
    And selects a Payment Option "<Payment Option>" from Popup
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    Then Customer should be redirected to "<URL>" Settlement details page.
    Then Verify maximum amount is prepopulated in Enter amount field
    Examples:
      | Mobile Number | Date       | Customer Type | Loan Account Number | Payment Option     | Tab                | URL                                     |
      | 7890581383    | 02-02-1999 | Individual    | 410PMTEW457223      | Settlement Payment | Settlement Payment | MyAccountPayments/LoanPay/SettlementPay |


  Scenario Outline: To verify Proceed CTA is disabled when invalid or no amount is displayed - MR
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"Not Available" Account No"<Loan Account Number>"
    And Customer Click on "Make Payments" CTA in RHS
    And selects a Payment Option "<Payment Option>" from Popup
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    Then Customer should be redirected to "<URL>" Settlement details page.
    And Proceed CTA should be disabled when Entered amount is out of the given range
    Examples:
      | Mobile Number | Date       | Customer Type | Loan Account Number | Payment Option     | Tab                | URL                                     |
      | 7890581383    | 02-02-1999 | Individual    | 410PMTEW457223      | Settlement Payment | Settlement Payment | MyAccountPayments/LoanPay/SettlementPay |

  Scenario Outline: To verify details displayed on Settlement details page - MR
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"Not Available" Account No"<Loan Account Number>"
    And Customer Click on "Make Payments" CTA in RHS
    And selects a Payment Option "<Payment Option>" from Popup
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    Then Customer should be redirected to "<URL>" Settlement details page.
    Then Below details should be displayed "Settlement Status,Settlement Approved Date,Settlement Last Date" and "Total Outstanding Amount,Total Settlement Amount,Settlement Amount Received Till Now"

    Examples:
      | Mobile Number | Date       | Customer Type | Loan Account Number | Payment Option     | Tab                | URL                                     |
      | 7890581383    | 02-02-1999 | Individual    | 410PMTEW457223      | Settlement Payment | Settlement Payment | MyAccountPayments/LoanPay/SettlementPay |


  Scenario Outline: To verify Scheduled details section displayed on Settlement details page - MR
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"Not Available" Account No"<Loan Account Number>"
    And Customer Click on "Make Payments" CTA in RHS
    And selects a Payment Option "<Payment Option>" from Popup
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    Then Customer should be redirected to "<URL>" Settlement details page.
    Then Below details "Date#Amount" should be displayed under Schedule details section
#  o	Date
#  o	Amount
    Examples:
      | Mobile Number | Date       | Customer Type | Loan Account Number | Payment Option     | Tab                | URL                                     |
      | 7890581383    | 02-02-1999 | Individual    | 410PMTEW457223      | Settlement Payment | Settlement Payment | MyAccountPayments/LoanPay/SettlementPay |

  Scenario Outline: To verify contact details section - MR
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"Not Available" Account No"<Loan Account Number>"
    And Customer Click on "Make Payments" CTA in RHS
    And selects a Payment Option "<Payment Option>" from Popup
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    Then Customer should be redirected to "<URL>" Settlement details page.
    Then Below details "Registered Email ID,Registered Mobile Number" should be displayed under contact details section
#  1.Tooltip
#  2.Registered email id
#  3.Registered mobile number
    Examples:
      | Mobile Number | Date       | Customer Type | Loan Account Number | Payment Option     | Tab                | URL                                     |
      | 7890581383    | 02-02-1999 | Individual    | 410PMTEW457223      | Settlement Payment | Settlement Payment | MyAccountPayments/LoanPay/SettlementPay |

  @bug
  Scenario Outline: To verify contact details tooltip - MR
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"Not Available" Account No"<Loan Account Number>"
    And Customer Click on "Make Payments" CTA in RHS
    And selects a Payment Option "<Payment Option>" from Popup
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    Then Customer should be redirected to "<URL>" Settlement details page.
    And Click on tooltip of contact details
    Then Below message should be displayed on tooltip
#  	Payment confirmation will be sent here
    Examples:
      | Mobile Number | Date       | Customer Type | Loan Account Number | Payment Option     | Tab                | URL                                     |
      | 7890581383    | 02-02-1999 | Individual    | 410PMTEW457223      | Settlement Payment | Settlement Payment | MyAccountPayments/LoanPay/SettlementPay |

  Scenario Outline: To verify after clicking on FAQs under Quick actions we are redirected to FAQs details page - MR
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"Not Available" Account No"<Loan Account Number>"
    And Customer Click on "Make Payments" CTA in RHS
    And selects a Payment Option "<Payment Option>" from Popup
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    Then Customer should be redirected to "<URL>" Settlement details page.
    And Customer clicks on "FAQs" option in RHS
    Then Verify Customer Redirected to "MyAccountService/HelpAndSupport/RARFAQCategory" Url
    Examples:
      | Mobile Number | Date       | Customer Type | Loan Account Number | Payment Option     | Tab                | URL                                     |
      | 7890581383    | 02-02-1999 | Individual    | 410PMTEW457223      | Settlement Payment | Settlement Payment | MyAccountPayments/LoanPay/SettlementPay |

  Scenario Outline: To verify after clicking on RAR under Quick actions we are redirected to RAR details page - MR
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"Not Available" Account No"<Loan Account Number>"
    And Customer Click on "Make Payments" CTA in RHS
    And selects a Payment Option "<Payment Option>" from Popup
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    Then Customer should be redirected to "<URL>" Settlement details page.
    And Customer clicks on "Raise a Request" option in RHS
    Then Verify Customer Redirected to "MyAccountService/Helpandsupport/LogRequest" Url
    Examples:
      | Mobile Number | Date       | Customer Type | Loan Account Number | Payment Option     | Tab                | URL                                     |
      | 7890581383    | 02-02-1999 | Individual    | 410PMTEW457223      | Settlement Payment | Settlement Payment | MyAccountPayments/LoanPay/SettlementPay |

  Scenario Outline: To verify after clicking on Proceed to Pay CTA we are redirected to Payment Checkout page - MR
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"Not Available" Account No"<Loan Account Number>"
    And Customer Click on "Make Payments" CTA in RHS
    And selects a Payment Option "<Payment Option>" from Popup
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    Then Customer should be redirected to "<URL>" Settlement details page.
    And Enter valid amount for Settlement Payment
    And Customer clicks on "Proceed To Payment" Button
    Then Verify Customer Redirected to respective URL "<Url>"
    Examples:
      | Mobile Number | Date       | Customer Type | Loan Account Number | Payment Option     | Tab                | URL                                     | Url                                          |
      | 7890581383    | 02-02-1999 | Individual    | 410PMTEW457223      | Settlement Payment | Settlement Payment | MyAccountPayments/LoanPay/SettlementPay | https://uatpayments.bajajfinserv.in/payments |

  Scenario Outline: To verify after clicking on Cancel CTA we are redirected to Payment Cancelled page - MR
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"Not Available" Account No"<Loan Account Number>"
    And Customer Click on "Make Payments" CTA in RHS
    And selects a Payment Option "<Payment Option>" from Popup
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    Then Customer should be redirected to "<URL>" Settlement details page.
    And Enter valid amount for Settlement Payment
    And Customer clicks on "Proceed To Payment" Button
    Then Verify Customer Redirected to respective URL "<Url>"
    And Customer clicks on "Cancel" Button
    Then Verify Customer Redirected to respective URL "<Url1>"
    Examples:
      | Mobile Number | Date       | Customer Type | Loan Account Number | Payment Option     | Tab                | URL                                     | Url                                          | Url1                              |
      | 7890581383    | 02-02-1999 | Individual    | 410PMTEW457223      | Settlement Payment | Settlement Payment | MyAccountPayments/LoanPay/SettlementPay | https://uatpayments.bajajfinserv.in/payments | MyAccountPayments/LoanPay/Receipt |

  Scenario Outline: To verify cancelling payment from Payment Gateway we are redirected to Payment Unsuccessful page - MR
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"Not Available" Account No"<Loan Account Number>"
    And Customer Click on "Make Payments" CTA in RHS
    And selects a Payment Option "<Payment Option>" from Popup
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    Then Customer should be redirected to "<URL>" Settlement details page.
    And Enter valid amount for Settlement Payment
    And Customer clicks on "Proceed To Payment" Button
    Then Verify Customer Redirected to respective URL "<Url>"
    And  Selects a Payment Gateway"Worldline"
    And Selects a Payment Method"UPI"
    And Click on PAY CTA in Payment Page
    Then Verify Customer Redirected to respective URL "<Payment Url>"
    And Click on Cancel CTA in worldline page
    Then Customer should be redirected to Payment Unsuccessful "<Payment Unsuccess>" Page
    Examples:
      | Mobile Number | Date       | Customer Type | Loan Account Number | Payment Option     | Tab                | URL                                     | Url                                          | Payment Url                                        | Payment Unsuccess                                                    |
      | 7890581383    | 02-02-1999 | Individual    | 410PMTEW457223      | Settlement Payment | Settlement Payment | MyAccountPayments/LoanPay/SettlementPay | https://uatpayments.bajajfinserv.in/payments | https://www.tpsl-india.in/PaymentGateway/txnreq.pg | https://uat-oneweb.bajajfinserv.in/MyAccountPayments/LoanPay/Receipt |

  Scenario Outline: To verify details displayed on Payment Unsuccessful page - MR
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"Not Available" Account No"<Loan Account Number>"
    And Customer Click on "Make Payments" CTA in RHS
    And selects a Payment Option "<Payment Option>" from Popup
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    Then Customer should be redirected to "<URL>" Settlement details page.
    And Enter valid amount for Settlement Payment
    And Customer clicks on "Proceed To Payment" Button
    Then Verify Customer Redirected to respective URL "<Url>"
    And  Selects a Payment Gateway"Worldline"
    And Selects a Payment Method"UPI"
    And Click on PAY CTA in Payment Page
    Then Verify Customer Redirected to respective URL "<Payment Url>"
    And Click on Cancel CTA in worldline page
    Then Customer should be redirected to Payment Unsuccessful "<Payment Unsuccess>" Page
    And Below reason "<Reason>" should be displayed for cancelling payment
    Then Below details "AMOUNT,TRANSACTION REF ID,Date,Time" should be displayed on Payment Unsuccessful page along with "LOAN ACCOUNT NUMBER"
#  -	Loan Account Number
#  -	Amount
#  -	Transaction Reference Number
#  -	Date
#  -	Time
#  -	Payment Failure reason
    Examples:
      | Mobile Number | Date       | Customer Type | Loan Account Number | Payment Option     | Tab                | URL                                     | Url                                          | Payment Url                                        | Payment Unsuccess                                                    |
      | 7890581383    | 02-02-1999 | Individual    | 410PMTEW457223      | Settlement Payment | Settlement Payment | MyAccountPayments/LoanPay/SettlementPay | https://uatpayments.bajajfinserv.in/payments | https://www.tpsl-india.in/PaymentGateway/txnreq.pg | https://uat-oneweb.bajajfinserv.in/MyAccountPayments/LoanPay/Receipt |

  Scenario Outline: To verify clicking on Retry CTA we are redirected to Settlement details page - MR
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"Not Available" Account No"<Loan Account Number>"
    And Customer Click on "Make Payments" CTA in RHS
    And selects a Payment Option "<Payment Option>" from Popup
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    Then Customer should be redirected to "<URL>" Settlement details page.
    And Enter valid amount for Settlement Payment
    And Customer clicks on "Proceed To Payment" Button
    Then Verify Customer Redirected to respective URL "<Url>"
    And  Selects a Payment Gateway"Worldline"
    And Selects a Payment Method"UPI"
    And Click on PAY CTA in Payment Page
    Then Verify Customer Redirected to respective URL "<Payment Url>"
    And Click on Cancel CTA in worldline page
    Then Customer should be redirected to Payment Unsuccessful "<Payment Unsuccess>" Page
    And Customer clicks on "Retry Payment" Button
    Then Customer should be redirected to "<URL>" Settlement details page.
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    Examples:
      | Mobile Number | Date       | Customer Type | Loan Account Number | Payment Option     | Tab                | URL                                     | Url                                          | Payment Url                                        | Payment Unsuccess                                                    |
      | 7890581383    | 02-02-1999 | Individual    | 410PMTEW457223      | Settlement Payment | Settlement Payment | MyAccountPayments/LoanPay/SettlementPay | https://uatpayments.bajajfinserv.in/payments | https://www.tpsl-india.in/PaymentGateway/txnreq.pg | https://uat-oneweb.bajajfinserv.in/MyAccountPayments/LoanPay/Receipt |

  Scenario Outline: To verify clicking on RAR CTA we are redirected to RAR details page - MR
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"Not Available" Account No"<Loan Account Number>"
    And Customer Click on "Make Payments" CTA in RHS
    And selects a Payment Option "<Payment Option>" from Popup
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    Then Customer should be redirected to "<URL>" Settlement details page.
    And Enter valid amount for Settlement Payment
    And Customer clicks on "Proceed To Payment" Button
    Then Verify Customer Redirected to respective URL "<Url>"
    And  Selects a Payment Gateway"Worldline"
    And Selects a Payment Method"UPI"
    And Click on PAY CTA in Payment Page
    Then Verify Customer Redirected to respective URL "<Payment Url>"
    And Click on Cancel CTA in worldline page
    Then Customer should be redirected to Payment Unsuccessful "<Payment Unsuccess>" Page
    And Customer clicks on "Raise A Request" Button
    And Verify Customer Redirected to "MyAccountService/Helpandsupport/LogRequest" Url
    Examples:
      | Mobile Number | Date       | Customer Type | Loan Account Number | Payment Option     | Tab                | URL                                     | Url                                          | Payment Url                                        | Payment Unsuccess                                                    |
      | 7890581383    | 02-02-1999 | Individual    | 410PMTEW457223      | Settlement Payment | Settlement Payment | MyAccountPayments/LoanPay/SettlementPay | https://uatpayments.bajajfinserv.in/payments | https://www.tpsl-india.in/PaymentGateway/txnreq.pg | https://uat-oneweb.bajajfinserv.in/MyAccountPayments/LoanPay/Receipt |




#  Test Data :
#  6I8GPLEG972513	7025872759
#  438GPL76697413	9888112921



