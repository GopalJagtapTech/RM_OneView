Feature: User Story 3016383- Exact Failure reason visible to customer over payment failure

#Hamburger flow
  Scenario Outline: To verify the payment failure reason on Payment Unsuccessful page after cancelling the payment from Payment Gateway for UPI (Part Prepayment)
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
#   And Enters amount Rs.101
    And Customer clicks on "Proceed To Payment" Button
    And Customer clicks on "PROCEED" Button
    Then Verify Customer Redirected to Payment Page "<Url>" in same Tab
    And  Selects a Payment Gateway"<Payment Gateway>"
    And Selects a Payment Method"<Payment method>"
    And Click on PAY CTA in Payment Page
    Then Verify Customer Redirected to respective URL "<Payment Url>"
    And Click on Cancel CTA in worldline page
    Then Customer should be redirected to Payment Unsuccessful "<Payment Unsuccess>" Page
    And Below reason "<Reason>" should be displayed for cancelling payment

    Examples:
      | Mobile Number | Date       | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option  | Tab             | Payment Gateway | Payment method | Url                                          | Payment Url                                        | Payment Unsuccess                                                    | Reason                                                                          |
      | 9177881077    | 02-02-1999 | Individual    | Loan payment | Other payments | P400DHP2277628      | Part-prepayment | Part-prepayment | Worldline       | UPI            | https://uatpayments.bajajfinserv.in/payments | https://www.tpsl-india.in/PaymentGateway/txnreq.pg | https://uat-oneweb.bajajfinserv.in/MyAccountPayments/LoanPay/Receipt | The payment was unsuccessful as it was cancelled at your end. Please try again. |

  Scenario Outline: To verify the payment failure reason on Payment Unsuccessful page after cancelling the payment from Payment Gateway for UPI (Part Prepayment)
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
#  #  And Enters amount Rs.101
    And Customer clicks on "Proceed To Payment" Button
    And Customer clicks on "PROCEED" Button
    Then Verify Customer Redirected to Payment Page "<Url>" in same Tab
    And  Selects a Payment Gateway"<Payment Gateway>"
    And Selects a Payment Method"<Payment method>"
    And Click on PAY CTA in Payment Page
    Then Verify Customer Redirected to respective URL "<Payment Url>"
    And Click on Cancel Button in ccavenue page
    And Clicks on Cancel Transaction Button
    Then Customer should be redirected to Payment Unsuccessful "<Payment Unsuccess>" Page
    And Below reason "<Reason>" should be displayed for cancelling payment

    Examples:
      | Mobile Number | Date       | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option  | Tab             | Payment Gateway | Payment method | Url                                          | Payment Url                                | Payment Unsuccess                                                    | Reason                                                                          |
      | 9177881077    | 02-02-1999 | Individual    | Loan payment | Other payments | P400DHP2277628      | Part-prepayment | Part-prepayment | CC Avenue       | UPI            | https://uatpayments.bajajfinserv.in/payments | https://secure.ccavenue.com/transaction.do | https://uat-oneweb.bajajfinserv.in/MyAccountPayments/LoanPay/Receipt | The payment was unsuccessful as it was cancelled at your end. Please try again. |


  Scenario Outline: To verify the payment failure reason on Payment Unsuccessful page after cancelling the payment from Payment Gateway for Debit Card (Part Prepayment)
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
#  #  And Enters amount Rs.101
    And Customer clicks on "Proceed To Payment" Button
    And Customer clicks on "PROCEED" Button
    Then Verify Customer Redirected to Payment Page "<Url>" in same Tab
    And  Selects a Payment Gateway"<Payment Gateway>"
    And Selects a Payment Method"<Payment method>"
    And Click on PAY CTA in Payment Page
    Then Verify Customer Redirected to respective URL "<Payment Url>"
    And Click on Cancel CTA in worldline page
    Then Customer should be redirected to Payment Unsuccessful "<Payment Unsuccess>" Page
    And Below reason "<Reason>" should be displayed for cancelling payment
    Examples:
      | Mobile Number | Date       | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option  | Tab             | Payment Gateway | Payment method | Url                                          | Payment Url                                        | Payment Unsuccess                                                    | Reason                                                                          |
      | 9177881077    | 02-02-1999 | Individual    | Loan payment | Other payments | P400DHP2277628      | Part-prepayment | Part-prepayment | Worldline       | Debit Card     | https://uatpayments.bajajfinserv.in/payments | https://www.tpsl-india.in/PaymentGateway/txnreq.pg | https://uat-oneweb.bajajfinserv.in/MyAccountPayments/LoanPay/Receipt | The payment was unsuccessful as it was cancelled at your end. Please try again. |

  Scenario Outline: To verify the payment failure reason on Payment Unsuccessful page after cancelling the payment from Payment Gateway for Debit Card (Part Prepayment)
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
#  #  And Enters amount Rs.101
    And Customer clicks on "Proceed To Payment" Button
    And Customer clicks on "PROCEED" Button
    Then Verify Customer Redirected to Payment Page "<Url>" in same Tab
    And  Selects a Payment Gateway"<Payment Gateway>"
    And Selects a Payment Method"<Payment method>"
    And Click on PAY CTA in Payment Page
    Then Verify Customer Redirected to respective URL "<Payment Url>"
    And Click on Cancel Button in ccavenue page
    And Clicks on Cancel Transaction Button
    Then Customer should be redirected to Payment Unsuccessful "<Payment Unsuccess>" Page
    And Below reason "<Reason>" should be displayed for cancelling payment
    Examples:
      | Mobile Number | Date       | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option  | Tab             | Payment Gateway | Payment method | Url                                          | Payment Url                                | Payment Unsuccess                                                    | Reason                                                                          |
      | 9177881077    | 02-02-1999 | Individual    | Loan payment | Other payments | P400DHP2277628      | Part-prepayment | Part-prepayment | CC Avenue       | Debit Card     | https://uatpayments.bajajfinserv.in/payments | https://secure.ccavenue.com/transaction.do | https://uat-oneweb.bajajfinserv.in/MyAccountPayments/LoanPay/Receipt | The payment was unsuccessful as it was cancelled at your end. Please try again. |


  Scenario Outline: To verify the payment failure reason on Payment Unsuccessful page after cancelling the payment from Payment Gateway for Net Banking (Part Prepayment)
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
  #  And Enters amount Rs.101
    And Customer clicks on "Proceed To Payment" Button
    And Customer clicks on "PROCEED" Button
    Then Verify Customer Redirected to Payment Page "<Url>" in same Tab
    And  Selects a Payment Gateway"<Payment Gateway>"
    And Selects a Payment Method"<Payment method>"
    And Select "<Bank name>" from list
    And Click on PAY CTA in Payment Page
    Then Verify Customer Redirected to respective URL "<Payment Url>"
    And Click on Cancel CTA in NetBanking Page
    Then Customer should be redirected to Payment Unsuccessful "<Payment Unsuccess>" Page
    And Below reason "<Reason>" should be displayed for cancelling payment
    Examples:
      | Mobile Number | Date       | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option  | Tab             | Payment Gateway | Payment method | Bank name      | Payment Url                                                | Payment Unsuccess                                                    | Reason                                                                | Url                                          |
      | 9177881077    | 02-02-1999 | Individual    | Loan payment | Other payments | P400DHP2277628      | Part-prepayment | Part-prepayment | Worldline       | NetBanking     | BANK OF BARODA | https://feba.bobibanking.com/corp/AuthenticationController | https://uat-oneweb.bajajfinserv.in/MyAccountPayments/LoanPay/Receipt | Your transaction declined by the bank. Please connect with your bank. | https://uatpayments.bajajfinserv.in/payments |

  Scenario Outline: To verify the payment failure reason on Payment Unsuccessful page after cancelling the payment from Payment Gateway for Net Banking (Part Prepayment)
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
  #  And Enters amount Rs.101
    And Customer clicks on "Proceed To Payment" Button
    And Customer clicks on "PROCEED" Button
    Then Verify Customer Redirected to Payment Page "<Url>" in same Tab
    And  Selects a Payment Gateway"<Payment Gateway>"
    And Selects a Payment Method"<Payment method>"
    And Select "<Bank name>" from list
    And Click on PAY CTA in Payment Page
    Then Verify Customer Redirected to respective URL "<Payment Url>"
    And Click on Cancel CTA in NetBanking Page
    Then Customer should be redirected to Payment Unsuccessful "<Payment Unsuccess>" Page
    And Below reason "<Reason>" should be displayed for cancelling payment

    Examples:
      | Mobile Number | Date       | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option  | Tab             | Payment Gateway | Payment method | Bank name                | Payment Url                                                | Payment Unsuccess                                                    | Reason                                                                          | Url                                          |
      | 9177881077    | 02-02-1999 | Individual    | Loan payment | Other payments | P400DHP2277628      | Part-prepayment | Part-prepayment | CC Avenue       | NetBanking     | Bank of Baroda Corporate | https://feba.bobibanking.com/corp/AuthenticationController | https://uat-oneweb.bajajfinserv.in/MyAccountPayments/LoanPay/Receipt | The payment was unsuccessful as it was cancelled at your end. Please try again. | https://uatpayments.bajajfinserv.in/payments |

  Scenario Outline: To verify the payment failure reason on Payment Unsuccessful page after cancelling the payment from Payment Gateway for UPI (Overdue)
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
   #  And Enters amount Rs.1
    And Customer clicks on "Proceed To Payment" Button
    Then Verify Customer Redirected to Payment Page "<Url>" in same Tab
    And  Selects a Payment Gateway"<Payment Gateway>"
    And Selects a Payment Method"<Payment method>"
    And Click on PAY CTA in Payment Page
    Then Verify Customer Redirected to respective URL "<Payment Url>"
    And Click on Cancel CTA in worldline page
    Then Customer should be redirected to Payment Unsuccessful "<Payment Unsuccess>" Page
    And Below reason "<Reason>" should be displayed for cancelling payment
    Examples:
      | Mobile Number | Date       | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option         | Tab                    | Payment Gateway | Payment method | Url                                          | Payment Url                                        | Payment Unsuccess                                                    | Reason                                                                          |
      | 9953037058    | 02-02-1999 | Individual    | Loan payment | Other payments | 401SPFGM842918      | Overdue or missed EMIs | Overdue or missed EMIs | Worldline       | UPI            | https://uatpayments.bajajfinserv.in/payments | https://www.tpsl-india.in/PaymentGateway/txnreq.pg | https://uat-oneweb.bajajfinserv.in/MyAccountPayments/LoanPay/Receipt | The payment was unsuccessful as it was cancelled at your end. Please try again. |

  Scenario Outline: To verify the payment failure reason on Payment Unsuccessful page after cancelling the payment from Payment Gateway for UPI (Overdue)
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
   #  And Enters amount Rs.1
    And Customer clicks on "Proceed To Payment" Button
    Then Verify Customer Redirected to Payment Page "<Url>" in same Tab
    And  Selects a Payment Gateway"<Payment Gateway>"
    And Selects a Payment Method"<Payment method>"
    And Click on PAY CTA in Payment Page
    Then Verify Customer Redirected to respective URL "<Payment Url>"
    And Click on Cancel Button in ccavenue page
    And Clicks on Cancel Transaction Button
    Then Customer should be redirected to Payment Unsuccessful "<Payment Unsuccess>" Page
    And Below reason "<Reason>" should be displayed for cancelling payment
    Examples:
      | Mobile Number | Date       | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option         | Tab                    | Payment Gateway | Payment method | Url                                          | Payment Url                                | Payment Unsuccess                                                    | Reason |
      | 9953037058    | 02-02-1999 | Individual    | Loan payment | Other payments | 401SPFGM842918      | Overdue or missed EMIs | Overdue or missed EMIs | CC Avenue       | UPI            | https://uatpayments.bajajfinserv.in/payments | https://secure.ccavenue.com/transaction.do | https://uat-oneweb.bajajfinserv.in/MyAccountPayments/LoanPay/Receipt |        |


  Scenario Outline: To verify the payment failure reason on Payment Unsuccessful page after cancelling the payment from Payment Gateway for Debit Card (Overdue)
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
   #  And Enters amount Rs.1
    And Customer clicks on "Proceed To Payment" Button
    Then Verify Customer Redirected to Payment Page "<Url>" in same Tab
    And  Selects a Payment Gateway"<Payment Gateway>"
    And Selects a Payment Method"<Payment method>"
    And Click on PAY CTA in Payment Page
    Then Verify Customer Redirected to respective URL "<Payment Url>"
    And Click on Cancel CTA in worldline page
    Then Customer should be redirected to Payment Unsuccessful "<Payment Unsuccess>" Page
    And Below reason "<Reason>" should be displayed for cancelling payment
    Examples:
      | Mobile Number | Date       | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option         | Tab                    | Payment Gateway | Payment method | Url                                          | Payment Url                                        | Payment Unsuccess                                                    | Reason                                                                          |
      | 9953037058    | 02-02-1999 | Individual    | Loan payment | Other payments | 401SPFGM842918      | Overdue or missed EMIs | Overdue or missed EMIs | Worldline       | Debit Card     | https://uatpayments.bajajfinserv.in/payments | https://www.tpsl-india.in/PaymentGateway/txnreq.pg | https://uat-oneweb.bajajfinserv.in/MyAccountPayments/LoanPay/Receipt | The payment was unsuccessful as it was cancelled at your end. Please try again. |

  Scenario Outline: To verify the payment failure reason on Payment Unsuccessful page after cancelling the payment from Payment Gateway for Debit Card (Overdue)
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
   #  And Enters amount Rs.1
    And Customer clicks on "Proceed To Payment" Button
    Then Verify Customer Redirected to Payment Page "<Url>" in same Tab
    And  Selects a Payment Gateway"<Payment Gateway>"
    And Selects a Payment Method"<Payment method>"
    And Click on PAY CTA in Payment Page
    Then Verify Customer Redirected to respective URL "<Payment Url>"
    And Click on Cancel Button in ccavenue page
    And Clicks on Cancel Transaction Button
    Then Customer should be redirected to Payment Unsuccessful "<Payment Unsuccess>" Page
    And Below reason "<Reason>" should be displayed for cancelling payment
    Examples:
      | Mobile Number | Date       | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option         | Tab                    | Payment Gateway | Payment method | Url                                          | Payment Url                                | Payment Unsuccess                                                    | Reason                                                                          |
      | 9953037058    | 02-02-1999 | Individual    | Loan payment | Other payments | 401SPFGM842918      | Overdue or missed EMIs | Overdue or missed EMIs | CC Avenue       | Debit Card     | https://uatpayments.bajajfinserv.in/payments | https://secure.ccavenue.com/transaction.do | https://uat-oneweb.bajajfinserv.in/MyAccountPayments/LoanPay/Receipt | The payment was unsuccessful as it was cancelled at your end. Please try again. |


  Scenario Outline: To verify the payment failure reason on Payment Unsuccessful page after cancelling the payment from Payment Gateway for Net Banking Worldline(Overdue)
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
   #  And Enters amount Rs.1
    And Customer clicks on "Proceed To Payment" Button
    Then Verify Customer Redirected to Payment Page "<Url>" in same Tab
    And  Selects a Payment Gateway"<Payment Gateway>"
    And Selects a Payment Method"<Payment method>"
    And Select "<Bank name>" from list
    And Click on PAY CTA in Payment Page
    Then Verify Customer Redirected to respective URL "<Payment Url>"
    And Click on Cancel CTA in NetBanking Page
    Then Customer should be redirected to Payment Unsuccessful "<Payment Unsuccess>" Page
    And Below reason "<Reason>" should be displayed for cancelling payment

    Examples:
      | Mobile Number | Date       | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option         | Tab                    | Payment Gateway | Payment method | Bank name      | Url                                          | Payment Url                                                | Payment Unsuccess                                                    | Reason                                                                |
      | 9953037058    | 02-02-1999 | Individual    | Loan payment | Other payments | 401SPFGM842918      | Overdue or missed EMIs | Overdue or missed EMIs | Worldline       | NetBanking     | BANK OF BARODA | https://uatpayments.bajajfinserv.in/payments | https://feba.bobibanking.com/corp/AuthenticationController | https://uat-oneweb.bajajfinserv.in/MyAccountPayments/LoanPay/Receipt | Your transaction declined by the bank. Please connect with your bank. |

  Scenario Outline: To verify the payment failure reason on Payment Unsuccessful page after cancelling the payment from Payment Gateway for Net Banking (Overdue)
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
   #  And Enters amount Rs.1
    And Customer clicks on "Proceed To Payment" Button
    Then Verify Customer Redirected to Payment Page "<Url>" in same Tab
    And  Selects a Payment Gateway"<Payment Gateway>"
    And Selects a Payment Method"<Payment method>"
    And Select "<Bank name>" from list
    And Click on PAY CTA in Payment Page
    Then Verify Customer Redirected to respective URL "<Payment Url>"
    And Click on Cancel CTA in NetBanking Page
    Then Customer should be redirected to Payment Unsuccessful "<Payment Unsuccess>" Page
    And Below reason "<Reason>" should be displayed for cancelling payment
    Examples:
      | Mobile Number | Date       | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option         | Tab                    | Payment Gateway | Payment method | Bank name                | Url                                          | Payment Url                                                | Payment Unsuccess                                                    | Reason                                                                          |
      | 9953037058    | 02-02-1999 | Individual    | Loan payment | Other payments | 401SPFGM842918      | Overdue or missed EMIs | Overdue or missed EMIs | CC Avenue       | NetBanking     | Bank of Baroda Corporate | https://uatpayments.bajajfinserv.in/payments | https://feba.bobibanking.com/corp/AuthenticationController | https://uat-oneweb.bajajfinserv.in/MyAccountPayments/LoanPay/Receipt | The payment was unsuccessful as it was cancelled at your end. Please try again. |


  Scenario Outline: To verify the payment failure reason on Payment Unsuccessful page after cancelling the payment from Payment Gateway for UPI (Advance EMI)
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    Then verify the Amount displayed for the number of months 1 selected
    And Customer clicks on "Proceed To Payment" Button
  #  And Customer clicks on "PROCEED" Button if displayed for Payments Popup
    Then Verify Customer Redirected to respective URL "<Url>"
    And  Selects a Payment Gateway"<Payment Gateway>"
    And Selects a Payment Method"<Payment method>"
    And Click on PAY CTA in Payment Page
    Then Verify Customer Redirected to respective URL "<Payment Url>"
    And Click on Cancel CTA in worldline page
    Then Customer should be redirected to Payment Unsuccessful "<Payment Unsuccess>" Page
    And Below reason "<Reason>" should be displayed for cancelling payment
  #   “The payment was unsuccessful as it was cancelled at your end. Please try again”.
    Examples:
      | Mobile Number | Date       | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option | Tab          | Payment Gateway | Payment method | Url                                          | Payment Url                                        | Payment Unsuccess                                                    | Reason                                                                          |
      | 9109600780    | 02-02-1999 | Individual    | Loan payment | Other payments | P454FSC4430362      | Advance EMIs   | Advance EMIs | Worldline       | UPI            | https://uatpayments.bajajfinserv.in/payments | https://www.tpsl-india.in/PaymentGateway/txnreq.pg | https://uat-oneweb.bajajfinserv.in/MyAccountPayments/LoanPay/Receipt | The payment was unsuccessful as it was cancelled at your end. Please try again. |


  Scenario Outline: To verify the payment failure reason on Payment Unsuccessful page after cancelling the payment from Payment Gateway for UPI (Advance EMI)
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    Then verify the Amount displayed for the number of months 1 selected
    And Customer clicks on "Proceed To Payment" Button
  #  And Customer clicks on "PROCEED" Button if displayed for Payments Popup
    Then Verify Customer Redirected to respective URL "<Url>"
    And  Selects a Payment Gateway"<Payment Gateway>"
    And Selects a Payment Method"<Payment method>"
    And Click on PAY CTA in Payment Page
    Then Verify Customer Redirected to respective URL "<Payment Url>"
    And Click on Cancel Button in ccavenue page
    And Clicks on Cancel Transaction Button
    Then Customer should be redirected to Payment Unsuccessful "<Payment Unsuccess>" Page
    And Below reason "<Reason>" should be displayed for cancelling payment
  #   “The payment was unsuccessful as it was cancelled at your end. Please try again”.
    Examples:
      | Mobile Number | Date       | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option | Tab          | Payment Gateway | Payment method | Url                                          | Payment Url                                | Payment Unsuccess                                                    | Reason                                                                          |
      | 9109600780    | 02-02-1999 | Individual    | Loan payment | Other payments | P454FSC4430362      | Advance EMIs   | Advance EMIs | CC Avenue       | UPI            | https://uatpayments.bajajfinserv.in/payments | https://secure.ccavenue.com/transaction.do | https://uat-oneweb.bajajfinserv.in/MyAccountPayments/LoanPay/Receipt | The payment was unsuccessful as it was cancelled at your end. Please try again. |



########My Relations*************************************############

  Scenario Outline: To verify the payment failure reason on Payment Unsuccessful page after cancelling the payment from Payment Gateway for UPI (Advance EMI) - My Relations
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"Not Available" Account No"P454FSC4430362"
    And Customer Click on "Make Payments" CTA in RHS
    And selects a Payment Option "<Payment Option>" from Popup
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    Then verify the Amount displayed for the number of months 1 selected
    And Customer clicks on "Proceed To Payment" Button
  #  And Customer clicks on "PROCEED" Button if displayed for Payments Popup
    Then Verify Customer Redirected to respective URL "<Url>"
    And  Selects a Payment Gateway"<Payment Gateway>"
    And Selects a Payment Method"<Payment method>"
    And Click on PAY CTA in Payment Page
    Then Verify Customer Redirected to respective URL "<Payment Url>"
    And Click on Cancel CTA in worldline page
    Then Customer should be redirected to Payment Unsuccessful "<Payment Unsuccess>" Page
    And Below reason "<Reason>" should be displayed for cancelling payment
    Examples:
      | Mobile Number | Date       | Customer Type | Payment Option | Tab          | Payment Gateway | Payment method | Url                                          | Payment Url                                        | Payment Unsuccess                                                    | Reason                                                                          |
      | 9109600780    | 02-02-1999 | Individual    | Advance EMIs   | Advance EMIs | Worldline       | UPI            | https://uatpayments.bajajfinserv.in/payments | https://www.tpsl-india.in/PaymentGateway/txnreq.pg | https://uat-oneweb.bajajfinserv.in/MyAccountPayments/LoanPay/Receipt | The payment was unsuccessful as it was cancelled at your end. Please try again. |


  Scenario Outline: To verify the payment failure reason on Payment Unsuccessful page after cancelling the payment from Payment Gateway for UPI (Advance EMI) - My Relations
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"Not Available" Account No"P454FSC4430362"
    And Customer Click on "Make Payments" CTA in RHS
    And selects a Payment Option "<Payment Option>" from Popup
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    Then verify the Amount displayed for the number of months 1 selected
    And Customer clicks on "Proceed To Payment" Button
  #  And Customer clicks on "PROCEED" Button if displayed for Payments Popup
    Then Verify Customer Redirected to respective URL "<Url>"
    And  Selects a Payment Gateway"<Payment Gateway>"
    And Selects a Payment Method"<Payment method>"
    And Click on PAY CTA in Payment Page
    Then Verify Customer Redirected to respective URL "<Payment Url>"
    And Click on Cancel Button in ccavenue page
    And Clicks on Cancel Transaction Button
    Then Customer should be redirected to Payment Unsuccessful "<Payment Unsuccess>" Page
    And Below reason "<Reason>" should be displayed for cancelling payment
    Examples:
      | Mobile Number | Date       | Customer Type | Payment Option | Tab          | Payment Gateway | Payment method | Url                                          | Payment Url                                | Payment Unsuccess                                                    | Reason                                                                          |
      | 9109600780    | 02-02-1999 | Individual    | Advance EMIs   | Advance EMIs | CC Avenue       | UPI            | https://uatpayments.bajajfinserv.in/payments | https://secure.ccavenue.com/transaction.do | https://uat-oneweb.bajajfinserv.in/MyAccountPayments/LoanPay/Receipt | The payment was unsuccessful as it was cancelled at your end. Please try again. |


  Scenario Outline: To verify the payment failure reason on Payment Unsuccessful page after cancelling the payment from Payment Gateway for Debit card (Advance EMI)
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"Not Available" Account No"P454FSC4430362"
    And Customer Click on "Make Payments" CTA in RHS
    And selects a Payment Option "<Payment Option>" from Popup
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    Then verify the Amount displayed for the number of months 1 selected
    And Customer clicks on "Proceed To Payment" Button
  #  And Customer clicks on "PROCEED" Button if displayed for Payments Popup
    Then Verify Customer Redirected to respective URL "<Url>"
    And  Selects a Payment Gateway"<Payment Gateway>"
    And Selects a Payment Method"<Payment method>"
    And Click on PAY CTA in Payment Page
    Then Verify Customer Redirected to respective URL "<Payment Url>"
    And Click on Cancel CTA in worldline page
    Then Customer should be redirected to Payment Unsuccessful "<Payment Unsuccess>" Page
    And Below reason "<Reason>" should be displayed for cancelling payment
    Examples:
      | Mobile Number | Date       | Customer Type | Payment Option | Tab          | Payment Gateway | Payment method | Url                                          | Payment Url                                        | Payment Unsuccess                                                    | Reason                                                                          |
      | 9109600780    | 02-02-1999 | Individual    | Advance EMIs   | Advance EMIs | Worldline       | Debit card     | https://uatpayments.bajajfinserv.in/payments | https://www.tpsl-india.in/PaymentGateway/txnreq.pg | https://uat-oneweb.bajajfinserv.in/MyAccountPayments/LoanPay/Receipt | The payment was unsuccessful as it was cancelled at your end. Please try again. |

  Scenario Outline: To verify the payment failure reason on Payment Unsuccessful page after cancelling the payment from Payment Gateway for Debit card (Advance EMI)
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"Not Available" Account No"P454FSC4430362"
    And Customer Click on "Make Payments" CTA in RHS
    And selects a Payment Option "<Payment Option>" from Popup
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    Then verify the Amount displayed for the number of months 1 selected
    And Customer clicks on "Proceed To Payment" Button
  #  And Customer clicks on "PROCEED" Button if displayed for Payments Popup
    Then Verify Customer Redirected to respective URL "<Url>"
    And  Selects a Payment Gateway"<Payment Gateway>"
    And Selects a Payment Method"<Payment method>"
    And Click on PAY CTA in Payment Page
    Then Verify Customer Redirected to respective URL "<Payment Url>"
    And Click on Cancel Button in ccavenue page
    And Clicks on Cancel Transaction Button
    Then Customer should be redirected to Payment Unsuccessful "<Payment Unsuccess>" Page
    And Below reason "<Reason>" should be displayed for cancelling payment
    Examples:
      | Mobile Number | Date       | Customer Type | Payment Option | Tab          | Payment Gateway | Payment method | Url                                          | Payment Url                                | Payment Unsuccess                                                    | Reason                                                                          |
      | 9109600780    | 02-02-1999 | Individual    | Advance EMIs   | Advance EMIs | CC Avenue       | Debit card     | https://uatpayments.bajajfinserv.in/payments | https://secure.ccavenue.com/transaction.do | https://uat-oneweb.bajajfinserv.in/MyAccountPayments/LoanPay/Receipt | The payment was unsuccessful as it was cancelled at your end. Please try again. |



  Scenario Outline: To verify the payment failure reason on Payment Unsuccessful page after cancelling the payment from Payment Gateway for UPI (Foreclosure)
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"Not Available" Account No"P454FSC4430362"
    And Customer Click on "Make Payments" CTA in RHS
    And selects a Payment Option "<Payment Option>" from Popup
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    And Select reason
    And Click on Proceed to Pay CTA
    And  Selects a Payment Gateway"<Payment Gateway>"
    And Selects a Payment Method"<Payment method>"
    And Clicks on Pay CTA
    And Clicks on Cancel CTA on Gateway page
    And Below reason "<Reason>" should be displayed for cancelling payment
  #   “The payment was unsuccessful as it was cancelled at your end. Please try again”.

    Examples:
      | Mobile Number | Date       | Customer Type | Loan Account Number | Payment Option | Tab         | Payment Gateway | Payment method |
      | 9784698647    | 02-02-1999 | Individual    | 536LRDJE318970      | Foreclosure    | Foreclosure | Worldline       | UPI            |
      | 9784698647    | 02-02-1999 | Individual    | 536LRDJE318970      | Foreclosure    | Foreclosure | CC Avenue       | UPI            |


  Scenario Outline: To verify the payment failure reason on Payment Unsuccessful page after cancelling the payment from Payment Gateway for Debit card (Foreclosure)
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"Not Available" Account No"P454FSC4430362"
    And Customer Click on "Make Payments" CTA in RHS
    And selects a Payment Option "<Payment Option>" from Popup
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    And Select reason
    And Click on Proceed to Pay CTA
    And  Selects a Payment Gateway"<Payment Gateway>"
    And Selects a Payment Method"<Payment method>"
    And Clicks on Pay CTA
    And Clicks on Cancel CTA on Gateway page
    And Below reason "<Reason>" should be displayed for cancelling payment
  #   “The payment was unsuccessful as it was cancelled at your end. Please try again”.
    Examples:
      | Mobile Number | Date       | Customer Type | Loan Account Number | Payment Option | Tab         | Payment Gateway | Payment method |
      | 9784698647    | 02-02-1999 | Individual    | 536LRDJE318970      | Foreclosure    | Foreclosure | Worldline       | Debit card     |
      | 9784698647    | 02-02-1999 | Individual    | 536LRDJE318970      | Foreclosure    | Foreclosure | CC Avenue       | Debit card     |


  Scenario Outline: To verify the payment failure reason on Payment Unsuccessful page after cancelling the payment from Payment Gateway for Net Banking (Foreclosure)
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"Not Available" Account No"P454FSC4430362"
    And Customer Click on "Make Payments" CTA in RHS
    And selects a Payment Option "<Payment Option>" from Popup
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    And Select reason
    And Click on Proceed to Pay CTA
    And  Selects a Payment Gateway"<Payment Gateway>"
    And Selects a Payment Method"<Payment method>"
    And Enter Bank of Baroda in Search bar
    And Select Bank of Baroda from the drop down
    And Clicks on Pay CTA
    And Clicks on Cancel CTA on Gateway page
    And Below reason "<Reason>" should be displayed for cancelling payment
  “Your transaction declined by the bank. Please connect with your bank.”.
    Examples:
      | Mobile Number | Date       | Customer Type | Loan Account Number | Payment Option | Tab         | Payment Gateway | Payment method |
      | 9784698647    | 02-02-1999 | Individual    | 536LRDJE318970      | Foreclosure    | Foreclosure | Worldline       | NetBanking     |

  Scenario Outline: To verify the payment failure reason on Payment Unsuccessful page after cancelling the payment from Payment Gateway for Net Banking (Foreclosure)
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"Not Available" Account No"P454FSC4430362"
    And Customer Click on "Make Payments" CTA in RHS
    And selects a Payment Option "<Payment Option>" from Popup
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    And Select reason
    And Click on Proceed to Pay CTA
    And  Selects a Payment Gateway"<Payment Gateway>"
    And Selects a Payment Method"<Payment method>"
    And Enter Bank of Baroda in Search bar
    And Select Bank of Baroda from the drop down
    And Clicks on Pay CTA
    And Clicks on Cancel CTA on Gateway page
    And Below reason "<Reason>" should be displayed for cancelling payment
  “The payment was unsuccessful as it was cancelled at your end. Please try again.”.
    Examples:
      | Mobile Number | Date       | Customer Type | Loan Account Number | Payment Option | Tab         | Payment Gateway | Payment method |
      | 9784698647    | 02-02-1999 | Individual    | 536LRDJE318970      | Foreclosure    | Foreclosure | CC Avenue       | NetBanking     |


#PAYU

#Hamburger flow
  Scenario Outline: To verify the payment failure reason on Payment Unsuccessful page after cancelling the payment from Payment Gateway for UPI (Part Prepayment)
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
  #  And Enters amount Rs.101
    And Customer clicks on "Proceed To Payment" Button
    And Customer clicks on "PROCEED" Button
    And  Selects a Payment Gateway"<Payment Gateway>"
    And Selects a Payment Method"<Payment method>"
    And Clicks on Pay CTA
    And Clicks on Cancel CTA on Gateway page
    And Below reason "<Reason>" should be displayed for cancelling payment
  “Transaction failed due to the cancel key being pressed during the payment process”.
    Examples:
      | Mobile Number | Date       | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option  | Tab             | Payment Gateway | Payment method
      | 9177881077    | 02-02-1999 | Individual    | Loan payment | Other payments | P400DHP2277628      | Part-prepayment | Part-prepayment | PAYU            | UPI            |
      | 9177881077    | 02-02-1999 | Individual    | Loan payment | Other payments | P400DHP2277628      | Part-prepayment | Part-prepayment | PAYU            | Debit Card     |


  Scenario Outline: To verify the payment failure reason on Payment Unsuccessful page after cancelling the payment from Payment Gateway for Net Banking (Part Prepayment)
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
  #  And Enters amount Rs.101
    And Customer clicks on "Proceed To Payment" Button
    And Customer clicks on "PROCEED" Button
    And  Selects a Payment Gateway"<Payment Gateway>"
    And Selects a Payment Method"<Payment method>"
    And Enter Bank of Baroda in Search bar
    And Select Bank of Baroda from the drop down
    And Clicks on Pay CTA
    And Clicks on Cancel CTA on Gateway page
    And Below reason "<Reason>" should be displayed for cancelling payment
  “Your transaction has failed due to authorization failure from the bank's end. Please try after some time or check with your bank.”.
    Examples:
      | Mobile Number | Date       | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option  | Tab             | Payment Gateway | Payment method |
      | 9177881077    | 02-02-1999 | Individual    | Loan payment | Other payments | P400DHP2277628      | Part-prepayment | Part-prepayment | PAYU            | NetBanking     |

  Scenario Outline: To verify the payment failure reason on Payment Unsuccessful page after cancelling the payment from Payment Gateway for UPI (Overdue)
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
   #  And Enters amount Rs.1
    And Click on Proceed to Pay CTA
    And  Selects a Payment Gateway"<Payment Gateway>"
    And Selects a Payment Method"<Payment method>"
    And Clicks on Pay CTA
    And Clicks on Cancel CTA on Gateway page
    And Below reason "<Reason>" should be displayed for cancelling payment
  “Transaction failed due to the cancel key being pressed during the payment process.”.
    Examples:
      | Mobile Number | Date       | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option         | Tab                    | Payment Gateway | Payment method |
      | 9953037058    | 02-02-1999 | Individual    | Loan payment | Other payments | 401SPFGM842918      | Overdue or missed EMIs | Overdue or missed EMIs | PAYU            | UPI            |
      | 9953037058    | 02-02-1999 | Individual    | Loan payment | Other payments | 401SPFGM842918      | Overdue or missed EMIs | Overdue or missed EMIs | PAYU            | Debit Card     |

  Scenario Outline: To verify the payment failure reason on Payment Unsuccessful page after cancelling the payment from Payment Gateway for Net Banking (Overdue)
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
   #  And Enters amount Rs.1
    And Click on Proceed to Pay CTA
    And  Selects a Payment Gateway"<Payment Gateway>"
    And Selects a Payment Method"<Payment method>"
    And Enter Bank of Baroda in Search bar
    And Select Bank of Baroda from the drop down
    And Clicks on Pay CTA
    And Clicks on Cancel CTA on Gateway page
    And Below reason "<Reason>" should be displayed for cancelling payment
  “Your transaction has failed due to authorization failure from the bank's end. Please try after some time or check with your bank.”.
    Examples:
      | Mobile Number | Date       | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option         | Tab                    | Payment Gateway | Payment method |
      | 9953037058    | 02-02-1999 | Individual    | Loan payment | Other payments | 401SPFGM842918      | Overdue or missed EMIs | Overdue or missed EMIs | PAYU            | NetBanking     |


  Scenario Outline: To verify the payment failure reason on Payment Unsuccessful page after cancelling the payment from Payment Gateway for UPI (Advance EMI)
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    And Select month year
    And Click on Proceed to Pay CTA
    And  Selects a Payment Gateway"<Payment Gateway>"
    And Selects a Payment Method"<Payment method>"
    And Clicks on Pay CTA
    And Clicks on Cancel CTA on Gateway page
    And Below reason "<Reason>" should be displayed for cancelling payment
  “Transaction failed due to the cancel key being pressed during the payment process.”.
    Examples:
      | Mobile Number | Date       | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option | Tab          | Payment Gateway | Payment method |
      | 9109600780    | 02-02-1999 | Individual    | Loan payment | Other payments | P454FSC4430362      | Advance EMIs   | Advance EMIs | PAYU            | UPI            |
      | 9109600780    | 02-02-1999 | Individual    | Loan payment | Other payments | P454FSC4430362      | Advance EMIs   | Advance EMIs | PAYU            | Debit Card     |


  Scenario Outline: To verify the payment failure reason on Payment Unsuccessful page after cancelling the payment from Payment Gateway for Net Banking (Advance EMI)
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    And Select month and year
    And Click on Proceed to Pay CTA
    And  Selects a Payment Gateway"<Payment Gateway>"
    And Selects a Payment Method"<Payment method>"
    And Enter Bank of Baroda in Search bar
    And Select Bank of Baroda from the drop down
    And Clicks on Pay CTA
    And Clicks on Cancel CTA on Gateway page
    And Below reason "<Reason>" should be displayed for cancelling payment
  “Your transaction has failed due to authorization failure from the bank's end. Please try after some time or check with your bank.”.
    Examples:
      | Mobile Number | Date       | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option | Tab          | Payment Gateway | Payment method |
      | 9109600780    | 02-02-1999 | Individual    | Loan payment | Other payments | P454FSC4430362      | Advance EMIs   | Advance EMIs | PAYU            | NetBanking     |

  Scenario Outline: To verify the payment failure reason on Payment Unsuccessful page after cancelling the payment from Payment Gateway for UPI (Foreclosure)
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    And Select reason
    And Click on Proceed to Pay CTA
    And  Selects a Payment Gateway"<Payment Gateway>"
    And Selects a Payment Method"<Payment method>"
    And Clicks on Pay CTA
    And Clicks on Cancel CTA on Gateway page
    And Below reason "<Reason>" should be displayed for cancelling payment
  “Transaction failed due to the cancel key being pressed during the payment process.”.
    Examples:
      | Mobile Number | Date       | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option | Tab         | Payment Gateway | Payment method |
      | 9784698647    | 02-02-1999 | Individual    | Loan payment | Other payments | 536LRDJE318970      | Foreclosure    | Foreclosure | PAYU            | UPI            |
      | 9784698647    | 02-02-1999 | Individual    | Loan payment | Other payments | 536LRDJE318970      | Foreclosure    | Foreclosure | PAYU            | Debit card     |

  Scenario Outline: To verify the payment failure reason on Payment Unsuccessful page after cancelling the payment from Payment Gateway for Net Banking (Foreclosure)
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    And Select reason
    And Click on Proceed to Pay CTA
    And  Selects a Payment Gateway"<Payment Gateway>"
    And Selects a Payment Method"<Payment method>"
    And Enter Bank of Baroda in Search bar
    And Select Bank of Baroda from the drop down
    And Clicks on Pay CTA
    And Clicks on Cancel CTA on Gateway page
    And Below reason "<Reason>" should be displayed for cancelling payment
  “Your transaction has failed due to authorization failure from the bank's end. Please try after some time or check with your bank.”.
    Examples:
      | Mobile Number | Date       | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option | Tab         | Payment Gateway | Payment method |
      | 9784698647    | 02-02-1999 | Individual    | Loan payment | Other payments |                     | 536LRDJE318970 | Foreclosure | Foreclosure     | PAYU           | NetBanking |

#My Relations
  Scenario Outline: To verify the payment failure reason on Payment Unsuccessful page after cancelling the payment from Payment Gateway for UPI (Part Prepayment)
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"Not Available" Account No"P454FSC4430362"
    And Customer Click on "Make Payments" CTA in RHS
    And selects a Payment Option "<Payment Option>" from Popup
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
  #  And Enters amount Rs.101
    And Customer clicks on "Proceed To Payment" Button
    And Customer clicks on "PROCEED" Button
    And  Selects a Payment Gateway"<Payment Gateway>"
    And Selects a Payment Method"<Payment method>"
    And Clicks on Pay CTA
    And Clicks on Cancel CTA on Gateway page
    And Below reason "<Reason>" should be displayed for cancelling payment
  “Transaction failed due to the cancel key being pressed during the payment process.”.

    Examples:
      | Mobile Number | Date       | Customer Type | Loan Account Number | Payment Option  | Tab             | Payment Gateway | Payment method |
      | 9177881077    | 02-02-1999 | Individual    | P400DHP2277628      | Part-prepayment | Part-prepayment | PAYU            | UPI            |
      | 9177881077    | 02-02-1999 | Individual    | P400DHP2277628      | Part-prepayment | Part-prepayment | PAYU            | Debit card     |

  Scenario Outline: To verify the payment failure reason on Payment Unsuccessful page after cancelling the payment from Payment Gateway for Net Banking (Part Prepayment)
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"Not Available" Account No"P454FSC4430362"
    And Customer Click on "Make Payments" CTA in RHS
    And selects a Payment Option "<Payment Option>" from Popup
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
  #  And Enters amount Rs.101
    And Customer clicks on "Proceed To Payment" Button
    And Customer clicks on "PROCEED" Button
    And  Selects a Payment Gateway"<Payment Gateway>"
    And Selects a Payment Method"<Payment method>"
    And Enter Bank of Baroda in Search bar
    And Select Bank of Baroda from the drop down
    And Clicks on Pay CTA
    And Clicks on Cancel CTA on Gateway page
    And Below reason "<Reason>" should be displayed for cancelling payment
  “Your transaction has failed due to authorization failure from the bank's end. Please try after some time or check with your bank.”.
    Examples:
      | Mobile Number | Date       | Customer Type | Loan Account Number | Payment Option  | Tab             | Payment Gateway | Payment method |
      | 9177881077    | 02-02-1999 | Individual    | P400DHP2277628      | Part-prepayment | Part-prepayment | Worldline       | NetBanking     |
      | 9177881077    | 02-02-1999 | Individual    | P400DHP2277628      | Part-prepayment | Part-prepayment | PAYU            | NetBanking     |
      | 9177881077    | 02-02-1999 | Individual    | P400DHP2277628      | Part-prepayment | Part-prepayment | CC Avenue       | NetBanking     |

  Scenario Outline: To verify the payment failure reason on Payment Unsuccessful page after cancelling the payment from Payment Gateway for UPI (Overdue)
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"Not Available" Account No"P454FSC4430362"
    And Customer Click on "Make Payments" CTA in RHS
    And selects a Payment Option "<Payment Option>" from Popup
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
   #  And Enters amount Rs.1
    And Click on Proceed to Pay CTA
    And  Selects a Payment Gateway"<Payment Gateway>"
    And Selects a Payment Method"<Payment method>"
    And Clicks on Pay CTA
    And Clicks on Cancel CTA on Gateway page
    And Below reason "<Reason>" should be displayed for cancelling payment
  “Transaction failed due to the cancel key being pressed during the payment process.”.

    Examples:
      | Mobile Number | Date       | Customer Type | Loan Account Number | Payment Option         | Tab                    | Payment Gateway | Payment method |
      | 9953037058    | 02-02-1999 | Individual    | 401SPFGM842918      | Overdue or missed EMIs | Overdue or missed EMIs | PAYU            | UPI            |
      | 9953037058    | 02-02-1999 | Individual    | 401SPFGM842918      | Overdue or missed EMIs | Overdue or missed EMIs | PAYU            | Debit card     |

  Scenario Outline: To verify the payment failure reason on Payment Unsuccessful page after cancelling the payment from Payment Gateway for Net Banking (Overdue)
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"Not Available" Account No"P454FSC4430362"
    And Customer Click on "Make Payments" CTA in RHS
    And selects a Payment Option "<Payment Option>" from Popup
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
   #  And Enters amount Rs.1
    And Click on Proceed to Pay CTA
    And  Selects a Payment Gateway"<Payment Gateway>"
    And Selects a Payment Method"<Payment method>"
    And Enter Bank of Baroda in Search bar
    And Select Bank of Baroda from the drop down
    And Clicks on Pay CTA
    And Clicks on Cancel CTA on Gateway page
    And Below reason "<Reason>" should be displayed for cancelling payment
  “Your transaction has failed due to authorization failure from the bank's end. Please try after some time or check with your bank.”.
    Examples:
      | Mobile Number | Date       | Customer Type | Loan Account Number | Payment Option         | Tab                    | Payment Gateway | Payment method |
      | 9953037058    | 02-02-1999 | Individual    | 401SPFGM842918      | Overdue or missed EMIs | Overdue or missed EMIs | PAYU            | NetBanking     |


  Scenario Outline: To verify the payment failure reason on Payment Unsuccessful page after cancelling the payment from Payment Gateway for UPI (Advance EMI)
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"Not Available" Account No"P454FSC4430362"
    And Customer Click on "Make Payments" CTA in RHS
    And selects a Payment Option "<Payment Option>" from Popup
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    And Select month and year
    And Click on Proceed to Pay CTA
    And  Selects a Payment Gateway"<Payment Gateway>"
    And Selects a Payment Method"<Payment method>"
    And Clicks on Pay CTA
    And Clicks on Cancel CTA on Gateway page
    And Below reason "<Reason>" should be displayed for cancelling payment
  “Transaction failed due to the cancel key being pressed during the payment process.”.

    Examples:
      | Mobile Number | Date       | Customer Type | Loan Account Number | Payment Option | Tab          | Payment Gateway | Payment method |
      | 9953037058    | 02-02-1999 | Individual    | P454FSC4430362      | Advance EMIs   | Advance EMIs | PAYU            | UPI            |
      | 9953037058    | 02-02-1999 | Individual    | P454FSC4430362      | Advance EMIs   | Advance EMIs | PAYU            | Debit card     |


  Scenario Outline: To verify the payment failure reason on Payment Unsuccessful page after cancelling the payment from Payment Gateway for Net Banking (Advance EMI)
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"Not Available" Account No"P454FSC4430362"
    And Customer Click on "Make Payments" CTA in RHS
    And selects a Payment Option "<Payment Option>" from Popup
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    And Select month and year
    And Click on Proceed to Pay CTA
    And  Selects a Payment Gateway"<Payment Gateway>"
    And Selects a Payment Method"<Payment method>"
    And Enter Bank of Baroda in Search bar
    And Select Bank of Baroda from the drop down
    And Clicks on Pay CTA
    And Clicks on Cancel CTA on Gateway page
    And Below reason "<Reason>" should be displayed for cancelling payment
  “Your transaction has failed due to authorization failure from the bank's end. Please try after some time or check with your bank.”.
    Examples:
      | Mobile Number | Date       | Customer Type | Loan Account Number | Payment Option         | Tab                    | Payment Gateway | Payment method |
      | 9953037058    | 02-02-1999 | Individual    | P454FSC4430362      | Overdue or missed EMIs | Overdue or missed EMIs | PAYU            | NetBanking     |

  Scenario Outline: To verify the payment failure reason on Payment Unsuccessful page after cancelling the payment from Payment Gateway for UPI (Foreclosure)
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"Not Available" Account No"P454FSC4430362"
    And Customer Click on "Make Payments" CTA in RHS
    And selects a Payment Option "<Payment Option>" from Popup
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    And Select reason
    And Click on Proceed to Pay CTA
    And  Selects a Payment Gateway"<Payment Gateway>"
    And Selects a Payment Method"<Payment method>"
    And Clicks on Pay CTA
    And Clicks on Cancel CTA on Gateway page
    And Below reason "<Reason>" should be displayed for cancelling payment
  “Transaction failed due to the cancel key being pressed during the payment process.”.

    Examples:
      | Mobile Number | Date       | Customer Type | Loan Account Number | Payment Option | Tab         | Payment Gateway | Payment method |
      | 9784698647    | 02-02-1999 | Individual    | 536LRDJE318970      | Foreclosure    | Foreclosure | PAYU            | UPI            |
      | 9784698647    | 02-02-1999 | Individual    | 536LRDJE318970      | Foreclosure    | Foreclosure | PAYU            | Debit card     |

  Scenario Outline: To verify the payment failure reason on Payment Unsuccessful page after cancelling the payment from Payment Gateway for Net Banking (Foreclosure)
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"Not Available" Account No"P454FSC4430362"
    And Customer Click on "Make Payments" CTA in RHS
    And selects a Payment Option "<Payment Option>" from Popup
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    And Select reason
    And Click on Proceed to Pay CTA
    And  Selects a Payment Gateway"<Payment Gateway>"
    And Selects a Payment Method"<Payment method>"
    And Enter Bank of Baroda in Search bar
    And Select Bank of Baroda from the drop down
    And Clicks on Pay CTA
    And Clicks on Cancel CTA on Gateway page
    And Below reason "<Reason>" should be displayed for cancelling payment
  “Your transaction has failed due to authorization failure from the bank's end. Please try after some time or check with your bank.”.
    Examples:
      | Mobile Number | Date       | Customer Type | Loan Account Number | Payment Option | Tab         | Payment Gateway | Payment method |
      | 9784698647    | 02-02-1999 | Individual    | 536LRDJE318970      | Foreclosure    | Foreclosure | PAYU            | NetBanking     |


