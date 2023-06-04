@journey
Feature: Payment Checkout New CR

  @overdue
  Scenario Outline: Payments Journey- Verify customer is redirected to respective Payments gateway journey after clicking on Pay CTA ("<Payment Gateway>" - Net Banking)(Overdue)
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
    And  Selects a Payment Gateway"<Payment Gateway>"
    And Selects a Payment Method"<Payment method>"
    And Select "<Bank name>" from list
    And Click on PAY CTA in Payment Page
    Then Verify Customer Redirected to respective URL "<Payment Url>"

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option         | Tab                    | Url                                          | Payment Gateway | Payment method | Bank name                | Payment Url                                                |
      | 9015683146    | 05081984 | Individual    | Loan payment | Other payments | 4010CDEI501927         | Overdue or missed EMIs | Overdue or missed EMIs | https://uatpayments.bajajfinserv.in/payments | PayU            | NetBanking     | BANK OF BARODA           | https://feba.bobibanking.com/corp/AuthenticationController |
      | 9015683146    | 05081984 | Individual    | Loan payment | Other payments | 4010CDEI501927         | Overdue or missed EMIs | Overdue or missed EMIs | https://uatpayments.bajajfinserv.in/payments | CC Avenue       | NetBanking     | Bank of Baroda Corporate | https://feba.bobibanking.com/corp/AuthenticationController |
      | 9015683146    | 05081984 | Individual    | Loan payment | Other payments | 4010CDEI501927         | Overdue or missed EMIs | Overdue or missed EMIs | https://uatpayments.bajajfinserv.in/payments | Worldline       | NetBanking     | BANK OF BARODA           | https://feba.bobibanking.com/corp/AuthenticationController |

  @overdue
  Scenario Outline: Payments Journey- Verify customer is redirected to respective Payments gateway journey after clicking on Pay CTA ("<Payment Gateway>" - Debit Card)(Overdue)
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
    And  Selects a Payment Gateway"<Payment Gateway>"
    And Selects a Payment Method"<Payment method>"
    And Click on PAY CTA in Payment Page
    Then Verify Customer Redirected to respective URL "<Payment Url>"

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option         | Tab                    | Url                                          | Payment Gateway | Payment method | Payment Url                                        |
      | 9015683146    | 05081984 | Individual    | Loan payment | Other payments | 4010CDEI501927         | Overdue or missed EMIs | Overdue or missed EMIs | https://uatpayments.bajajfinserv.in/payments | PayU            | Debit Card     | https://api.payu.in/public                         |
      | 9015683146    | 05081984 | Individual    | Loan payment | Other payments | 4010CDEI501927         | Overdue or missed EMIs | Overdue or missed EMIs | https://uatpayments.bajajfinserv.in/payments | CC Avenue       | Debit Card     | https://secure.ccavenue.com/transaction.do         |
      | 9015683146    | 05081984 | Individual    | Loan payment | Other payments | 4010CDEI501927         | Overdue or missed EMIs | Overdue or missed EMIs | https://uatpayments.bajajfinserv.in/payments | Worldline       | Debit Card     | https://www.tpsl-india.in/PaymentGateway/txnreq.pg |

  @overdue
  Scenario Outline: Payments Journey- Verify customer is redirected to respective Payments gateway journey after clicking on Pay CTA ("<Payment Gateway>" - UPI)(Overdue)
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
    Then Verify Customer Redirected to Payment Page "<Url>" in same Tab
    And  Selects a Payment Gateway"<Payment Gateway>"
    And Selects a Payment Method"<Payment method>"
    And Click on PAY CTA in Payment Page
    Then Verify Customer Redirected to respective URL "<Payment Url>"

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option         | Tab                    | Url                                          | Payment Gateway | Payment method | Payment Url                                        |
      | 9015683146    | 05081984 | Individual    | Loan payment | Other payments | 4010CDEI501927         | Overdue or missed EMIs | Overdue or missed EMIs | https://uatpayments.bajajfinserv.in/payments | PayU            | UPI            | https://api.payu.in/public                         |
      | 9015683146    | 05081984 | Individual    | Loan payment | Other payments | 4010CDEI501927         | Overdue or missed EMIs | Overdue or missed EMIs | https://uatpayments.bajajfinserv.in/payments | Worldline       | UPI            | https://www.tpsl-india.in/PaymentGateway/txnreq.pg |
      | 9015683146    | 05081984 | Individual    | Loan payment | Other payments | 4010CDEI501927         | Overdue or missed EMIs | Overdue or missed EMIs | https://uatpayments.bajajfinserv.in/payments | CC Avenue       | UPI            | https://secure.ccavenue.com/transaction.do         |

  @overdue
  Scenario Outline: Payments Journey- Verify customer is redirected to Payment Unsuccessful Page ("<Payment Gateway>" - Debit Card)(Missed Overdue)
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
    And  Selects a Payment Gateway"<Payment Gateway>"
    And Selects a Payment Method"<Payment method>"
    And Click on PAY CTA in Payment Page
    Then Verify Customer Redirected to respective URL "<Payment Url>"
    And clicks on Back CTA in payu page
    And Click on "YES, CANCEL" Button in payu page
    Then Customer should be redirected to Payment Unsuccessful "<Payment Unsuccess>" Page
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option         | Tab                    | Url                                          | Payment Gateway | Payment method | Payment Url                | Payment Unsuccess                                                    |
      | 9015683146    | 05081984 | Individual    | Loan payment | Other payments | 4010CDEI501927         | Overdue or missed EMIs | Overdue or missed EMIs | https://uatpayments.bajajfinserv.in/payments | PayU            | Debit Card     | https://api.payu.in/public | https://uat-oneweb.bajajfinserv.in/MyAccountPayments/LoanPay/Receipt |

  @overdue
  Scenario Outline: Payments Journey- Verify customer is redirected to Payment Unsuccessful Page ("<Payment Gateway>" - Debit Card)(Missed Overdue)
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
    And  Selects a Payment Gateway"<Payment Gateway>"
    And Selects a Payment Method"<Payment method>"
    And Click on PAY CTA in Payment Page
    Then Verify Customer Redirected to respective URL "<Payment Url>"
    And Click on Cancel Button in ccavenue page
    And Clicks on Cancel Transaction Button
    Then Customer should be redirected to Payment Unsuccessful "<Payment Unsuccess>" Page
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option         | Tab                    | Url                                          | Payment Gateway | Payment method | Payment Url                                | Payment Unsuccess                                                    |
      | 9015683146    | 05081984 | Individual    | Loan payment | Other payments | 4010CDEI501927         | Overdue or missed EMIs | Overdue or missed EMIs | https://uatpayments.bajajfinserv.in/payments | CC Avenue       | Debit Card     | https://secure.ccavenue.com/transaction.do | https://uat-oneweb.bajajfinserv.in/MyAccountPayments/LoanPay/Receipt |


  @overdue
  Scenario Outline: Payments Journey- Verify customer is redirected to Payment Unsuccessful Page ("<Payment Gateway>" - Debit Card)(Missed Overdue)
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
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
    And  Selects a Payment Gateway"<Payment Gateway>"
    And Selects a Payment Method"<Payment method>"
    And Click on PAY CTA in Payment Page
    Then Verify Customer Redirected to respective URL "<Payment Url>"
    And Click on Cancel CTA in worldline page
    Then Customer should be redirected to Payment Unsuccessful "<Payment Unsuccess>" Page
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option         | Tab                    | Url                                          | Payment Gateway | Payment method | Payment Url                                        | Payment Unsuccess                                                    |
      | 9015683146    | 05081984 | Individual    | Loan payment | Other payments | 4010CDEI501927         | Overdue or missed EMIs | Overdue or missed EMIs | https://uatpayments.bajajfinserv.in/payments | Worldline       | Debit Card     | https://www.tpsl-india.in/PaymentGateway/txnreq.pg | https://uat-oneweb.bajajfinserv.in/MyAccountPayments/LoanPay/Receipt |

    ####PartPay
  @partpay
  Scenario Outline: Payments Journey- Verify the details displayed for Loan on Payment Checkout Page
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
    # And Customer clicks on "Proceed to pay" Button
    Then Verify Customer Redirected to Payment Page "<Url>" in same Tab
    Then Below details should be displayed to the customer 1.Customer name 2.Payment gateway options and payment method as below 3.Pay CTA with amount to be paid

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option  | Tab             | Url                                          |
      | 9966508108    | 05081984 | Individual    | Loan payment | Other payments | P400PSA5757086      | Part-prepayment | Part-prepayment | https://uatpayments.bajajfinserv.in/payments |


  @partpay
  Scenario Outline: Payments Journey- Verify under Payment Gateway Option Worldline is selected by default
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
    # And Customer clicks on "Proceed to pay" Button
    Then Verify Customer Redirected to Payment Page "<Url>" in same Tab
    And Worldline payment Gateway should be selected by default

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option  | Tab             | Url                                          |
      | 9966508108    | 05081984 | Individual    | Loan payment | Other payments | P400PSA5757086      | Part-prepayment | Part-prepayment | https://uatpayments.bajajfinserv.in/payments |

  @partpay
  Scenario Outline: Payments Journey- Verify search bar is displayed at top when customer selects Internet Banking- CC Avenue
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
    # And Customer clicks on "Proceed to pay" Button
    Then Verify Customer Redirected to Payment Page "<Url>" in same Tab
    And  Selects a Payment Gateway"<Payment Gateway>"
    And Selects a Payment Method"<Payment method>"
    Then Search Bar should be displayed for Net Banking
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option  | Tab             | Url                                          | Payment Gateway | Payment method |
      | 9966508108    | 05081984 | Individual    | Loan payment | Other payments | P400PSA5757086      | Part-prepayment | Part-prepayment | https://uatpayments.bajajfinserv.in/payments | CC Avenue       | NetBanking     |

  @partpay
  Scenario Outline: Payments Journey- Verify search bar is displayed at top when customer selects Internet Banking - PayU
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
    # And Customer clicks on "Proceed to pay" Button
    Then Verify Customer Redirected to Payment Page "<Url>" in same Tab
    And  Selects a Payment Gateway"<Payment Gateway>"
    And Selects a Payment Method"<Payment method>"
    Then Search Bar should be displayed for Net Banking
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option  | Tab             | Url                                          | Payment Gateway | Payment method |
      | 9966508108    | 05081984 | Individual    | Loan payment | Other payments | P400PSA5757086      | Part-prepayment | Part-prepayment | https://uatpayments.bajajfinserv.in/payments | PayU            | NetBanking     |

  @partpay
  Scenario Outline: Payments Journey- Verify Bank icon with green tick is displayed to the customer under Your selection after selecting bank from smart search - "<Payment Gateway>" : "<Payment method>"
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
    # And Customer clicks on "Proceed to pay" Button
    Then Verify Customer Redirected to Payment Page "<Url>" in same Tab
    And  Selects a Payment Gateway"<Payment Gateway>"
    And Selects a Payment Method"<Payment method>"
    And Select "<Bank name>" from list
    Then Bank icon with green tick should be displayed under Your selection
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option  | Tab             | Url                                          | Payment Gateway | Payment method | Bank name                |
      | 9966508108    | 05081984 | Individual    | Loan payment | Other payments | P400PSA5757086      | Part-prepayment | Part-prepayment | https://uatpayments.bajajfinserv.in/payments | CC Avenue       | NetBanking     | Bank of Baroda Corporate |
      | 9966508108    | 05081984 | Individual    | Loan payment | Other payments | P400PSA5757086      | Part-prepayment | Part-prepayment | https://uatpayments.bajajfinserv.in/payments | PayU            | NetBanking     | BANK OF BARODA           |
      | 9966508108    | 05081984 | Individual    | Loan payment | Other payments | P400PSA5757086      | Part-prepayment | Part-prepayment | https://uatpayments.bajajfinserv.in/payments | Worldline       | NetBanking     | BANK OF BARODA           |

  @partpay
  Scenario Outline: Payments Journey- Verify customer is redirected to respective Payments gateway journey after clicking on Pay CTA (CCAvenue- UPI)
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
    # And Customer clicks on "Proceed to pay" Button
    Then Verify Customer Redirected to Payment Page "<Url>" in same Tab
    And  Selects a Payment Gateway"<Payment Gateway>"
    And Selects a Payment Method"<Payment method>"
    And Click on PAY CTA in Payment Page
    Then Verify Customer Redirected to respective URL "<Payment Url>"

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option  | Tab             | Url                                          | Payment Gateway | Payment method | Payment Url                                |
      | 9966508108    | 05081984 | Individual    | Loan payment | Other payments | P400PSA5757086      | Part-prepayment | Part-prepayment | https://uatpayments.bajajfinserv.in/payments | CC Avenue       | UPI            | https://secure.ccavenue.com/transaction.do |

  @partpay
  Scenario Outline: Payments Journey- Verify customer is redirected to respective Payments gateway journey after clicking on Pay CTA (CC Avenue- Debit Card)
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
    # And Customer clicks on "Proceed to pay" Button
    Then Verify Customer Redirected to Payment Page "<Url>" in same Tab
    And  Selects a Payment Gateway"<Payment Gateway>"
    And Selects a Payment Method"<Payment method>"
    And Click on PAY CTA in Payment Page
    Then Verify Customer Redirected to respective URL "<Payment Url>"

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option  | Tab             | Url                                          | Payment Gateway | Payment method | Payment Url                                                            |
      | 9966508108    | 05081984 | Individual    | Loan payment | Other payments | P400PSA5757086      | Part-prepayment | Part-prepayment | https://uatpayments.bajajfinserv.in/payments | CC Avenue       | Debit Card     | https://secure.ccavenue.com/transaction.do?command=initiateTransaction |

  @partpay
  Scenario Outline: Payments Journey- Verify customer is redirected to respective Payments gateway journey after clicking on Pay CTA ("<Payment Gateway>" - Net Banking)(Part Prepayment)
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
    # And Customer clicks on "Proceed to pay" Button
    Then Verify Customer Redirected to Payment Page "<Url>" in same Tab
    And  Selects a Payment Gateway"<Payment Gateway>"
    And Selects a Payment Method"<Payment method>"
    And Select "<Bank name>" from list
    And Click on PAY CTA in Payment Page
    Then Verify Customer Redirected to respective URL "<Payment Url>"

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option  | Tab             | Url                                          | Payment Gateway | Payment method | Bank name                | Payment Url                                                |
      | 9966508108    | 05081984 | Individual    | Loan payment | Other payments | P400PSA5757086      | Part-prepayment | Part-prepayment | https://uatpayments.bajajfinserv.in/payments | Worldline       | NetBanking     | BANK OF BARODA           | https://feba.bobibanking.com/corp/AuthenticationController |
      | 9966508108    | 05081984 | Individual    | Loan payment | Other payments | P400PSA5757086      | Part-prepayment | Part-prepayment | https://uatpayments.bajajfinserv.in/payments | CC Avenue       | NetBanking     | Bank of Baroda Corporate | https://feba.bobibanking.com/corp/AuthenticationController |
      | 9966508108    | 05081984 | Individual    | Loan payment | Other payments | P400PSA5757086      | Part-prepayment | Part-prepayment | https://uatpayments.bajajfinserv.in/payments | PayU            | NetBanking     | BANK OF BARODA           | https://feba.bobibanking.com/corp/AuthenticationController |

  @partpay
  Scenario Outline: Payments Journey- Verify customer is redirected to respective Payments gateway journey after clicking on Pay CTA (Worldline- Debit Card)
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
    # And Customer clicks on "Proceed to pay" Button
    Then Verify Customer Redirected to Payment Page "<Url>" in same Tab
    And  Selects a Payment Gateway"<Payment Gateway>"
    And Selects a Payment Method"<Payment method>"
    And Click on PAY CTA in Payment Page
    Then Verify Customer Redirected to respective URL "<Payment Url>"

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option  | Tab             | Url                                          | Payment Gateway | Payment method | Payment Url                                        |
      | 9966508108    | 05081984 | Individual    | Loan payment | Other payments | P400PSA5757086      | Part-prepayment | Part-prepayment | https://uatpayments.bajajfinserv.in/payments | Worldline       | Debit Card     | https://www.tpsl-india.in/PaymentGateway/txnreq.pg |

  @partpay
  Scenario Outline: Payments Journey- Verify customer is redirected to respective Payments gateway journey after clicking on Pay CTA (Worldline- UPI)(Part Prepayment)
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
    # And Customer clicks on "Proceed to pay" Button
    Then Verify Customer Redirected to Payment Page "<Url>" in same Tab
    And  Selects a Payment Gateway"<Payment Gateway>"
    And Selects a Payment Method"<Payment method>"
    And Click on PAY CTA in Payment Page
    Then Verify Customer Redirected to respective URL "<Payment Url>"

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option  | Tab             | Url                                          | Payment Gateway | Payment method | Payment Url                                        |
      | 9966508108    | 05081984 | Individual    | Loan payment | Other payments | P400PSA5757086      | Part-prepayment | Part-prepayment | https://uatpayments.bajajfinserv.in/payments | Worldline       | UPI            | https://www.tpsl-india.in/PaymentGateway/txnreq.pg |


  @partpay
  Scenario Outline: Payments Journey- Verify customer is redirected to respective Payments gateway journey after clicking on Pay CTA (PayU- Debit Card)(Part Prepayment)
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
    # And Customer clicks on "Proceed to pay" Button
    Then Verify Customer Redirected to Payment Page "<Url>" in same Tab
    And  Selects a Payment Gateway"<Payment Gateway>"
    And Selects a Payment Method"<Payment method>"
    And Click on PAY CTA in Payment Page
    Then Verify Customer Redirected to respective URL "<Payment Url>"

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option  | Tab             | Url                                          | Payment Gateway | Payment method | Payment Url                |
      | 9966508108    | 05081984 | Individual    | Loan payment | Other payments | P400PSA5757086      | Part-prepayment | Part-prepayment | https://uatpayments.bajajfinserv.in/payments | PayU            | Debit Card     | https://api.payu.in/public |

  @partpay
  Scenario Outline: Payments Journey- Verify customer is redirected to respective Payments gateway journey after clicking on Pay CTA (PayU- UPI)(Part Prepayment)
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
    # And Customer clicks on "Proceed to pay" Button
    Then Verify Customer Redirected to Payment Page "<Url>" in same Tab
    And  Selects a Payment Gateway"<Payment Gateway>"
    And Selects a Payment Method"<Payment method>"
    And Click on PAY CTA in Payment Page
    Then Verify Customer Redirected to respective URL "<Payment Url>"
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option  | Tab             | Url                                          | Payment Gateway | Payment method | Payment Url                |
      | 9966508108    | 05081984 | Individual    | Loan payment | Other payments | P400PSA5757086      | Part-prepayment | Part-prepayment | https://uatpayments.bajajfinserv.in/payments | PayU            | UPI            | https://api.payu.in/public |

  @partpay
  Scenario Outline: Payments Journey- Verify customer is redirected to respective Payments gateway journey after clicking on Pay CTA
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
    # And Customer clicks on "Proceed to pay" Button
    Then Verify Customer Redirected to Payment Page "<Url>" in same Tab
    And  Selects a Payment Gateway"<Payment Gateway>"
    And Selects a Payment Method"<Payment method>"
    And Click on PAY CTA in Payment Page
    Then Verify Customer Redirected to respective URL "<Payment Url>"
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option  | Tab             | Url                                          | Payment Gateway | Payment method | Payment Url                |
      | 9966508108    | 05081984 | Individual    | Loan payment | Other payments | P400PSA5757086      | Part-prepayment | Part-prepayment | https://uatpayments.bajajfinserv.in/payments | PayU            | UPI            | https://api.payu.in/public |

  @partpay
  Scenario Outline: Payments Journey- Verify customer is redirected to Payment Unsuccessful Page ("<Payment Gateway>" - UPI)(Part Prepayment)
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
    # And Customer clicks on "Proceed to pay" Button
    Then Verify Customer Redirected to Payment Page "<Url>" in same Tab
    And  Selects a Payment Gateway"<Payment Gateway>"
    And Selects a Payment Method"<Payment method>"
    And Click on PAY CTA in Payment Page
    Then Verify Customer Redirected to respective URL "<Payment Url>"
    And clicks on Back CTA in payu page
    And Click on "YES, CANCEL" Button in payu page
    Then Customer should be redirected to Payment Unsuccessful "<Payment Unsuccess>" Page

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option  | Tab             | Url                                          | Payment Gateway | Payment method | Payment Url                | Payment Unsuccess                                                    |
      | 9966508108    | 05081984 | Individual    | Loan payment | Other payments | P400PSA5757086      | Part-prepayment | Part-prepayment | https://uatpayments.bajajfinserv.in/payments | PayU            | UPI            | https://api.payu.in/public | https://uat-oneweb.bajajfinserv.in/MyAccountPayments/LoanPay/Receipt |

  @partpay
  Scenario Outline: Payments Journey- Verify customer is redirected to Payment Unsuccessful Page ("<Payment Gateway>" - UPI)(Part Prepayment)
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
    # And Customer clicks on "Proceed to pay" Button
    Then Verify Customer Redirected to Payment Page "<Url>" in same Tab
    And  Selects a Payment Gateway"<Payment Gateway>"
    And Selects a Payment Method"<Payment method>"
    And Click on PAY CTA in Payment Page
    Then Verify Customer Redirected to respective URL "<Payment Url>"
    And Click on Cancel Button in ccavenue page
    And Clicks on Cancel Transaction Button
    Then Customer should be redirected to Payment Unsuccessful "<Payment Unsuccess>" Page

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option  | Tab             | Url                                          | Payment Gateway | Payment method | Payment Url                                | Payment Unsuccess                                                    |
      | 9966508108    | 05081984 | Individual    | Loan payment | Other payments | P400PSA5757086      | Part-prepayment | Part-prepayment | https://uatpayments.bajajfinserv.in/payments | CC Avenue       | UPI            | https://secure.ccavenue.com/transaction.do | https://uat-oneweb.bajajfinserv.in/MyAccountPayments/LoanPay/Receipt |

  @partpay
  Scenario Outline: Payments Journey- Verify customer is redirected to Payment Unsuccessful Page ("<Payment Gateway>" - UPI)(Part Prepayment)
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
    # And Customer clicks on "Proceed to pay" Button
    Then Verify Customer Redirected to Payment Page "<Url>" in same Tab
    And  Selects a Payment Gateway"<Payment Gateway>"
    And Selects a Payment Method"<Payment method>"
    And Click on PAY CTA in Payment Page
    Then Verify Customer Redirected to respective URL "<Payment Url>"
    And Click on Cancel CTA in worldline page
    Then Customer should be redirected to Payment Unsuccessful "<Payment Unsuccess>" Page

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option  | Tab             | Url                                          | Payment Gateway | Payment method | Payment Url                                        | Payment Unsuccess                                                    |
      | 9966508108    | 05081984 | Individual    | Loan payment | Other payments | P400PSA5757086      | Part-prepayment | Part-prepayment | https://uatpayments.bajajfinserv.in/payments | Worldline       | UPI            | https://www.tpsl-india.in/PaymentGateway/txnreq.pg | https://uat-oneweb.bajajfinserv.in/MyAccountPayments/LoanPay/Receipt |


#######Advance

  @advance
  Scenario Outline: Payments Journey- Verify customer is redirected to respective Payments gateway journey after clicking on Pay CTA ("<Payment Gateway>" - Debit Card)(Advance EMI)
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
    # And Customer clicks on "Proceed to pay" Button
    Then Verify Customer Redirected to respective URL "<Url>"
    And  Selects a Payment Gateway"<Payment Gateway>"
    And Selects a Payment Method"<Payment method>"
    And Click on PAY CTA in Payment Page
    Then Verify Customer Redirected to respective URL "<Payment Url>"
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option | Tab          | Url                                          | Payment Gateway | Payment method | Payment Url                                        |
      | 9109600780    | 05081984 | Individual    | Loan payment | Other payments | P454FSC4430362      | Advance EMIs   | Advance EMIs | https://uatpayments.bajajfinserv.in/payments | PayU            | Debit Card     | https://api.payu.in/public                         |
      | 9109600780    | 05081984 | Individual    | Loan payment | Other payments | P454FSC4430362      | Advance EMIs   | Advance EMIs | https://uatpayments.bajajfinserv.in/payments | CC Avenue       | Debit Card     | https://secure.ccavenue.com/transaction.do         |
      | 9109600780    | 05081984 | Individual    | Loan payment | Other payments | P454FSC4430362      | Advance EMIs   | Advance EMIs | https://uatpayments.bajajfinserv.in/payments | Worldline       | Debit Card     | https://www.tpsl-india.in/PaymentGateway/txnreq.pg |

  @advance
  Scenario Outline: Payments Journey- Verify customer is redirected to respective Payments gateway journey after clicking on Pay CTA ("<Payment Gateway>" - UPI)(Advance EMI)
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
    # And Customer clicks on "Proceed to pay" Button
    Then Verify Customer Redirected to respective URL "<Url>"
    And  Selects a Payment Gateway"<Payment Gateway>"
    And Selects a Payment Method"<Payment method>"
    And Click on PAY CTA in Payment Page
    Then Verify Customer Redirected to respective URL "<Payment Url>"
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option | Tab          | Url                                          | Payment Gateway | Payment method | Payment Url                                        |
      | 9109600780    | 05081984 | Individual    | Loan payment | Other payments | P454FSC4430362      | Advance EMIs   | Advance EMIs | https://uatpayments.bajajfinserv.in/payments | PayU            | UPI            | https://api.payu.in/public                         |
      | 9109600780    | 05081984 | Individual    | Loan payment | Other payments | P454FSC4430362      | Advance EMIs   | Advance EMIs | https://uatpayments.bajajfinserv.in/payments | CC Avenue       | UPI            | https://secure.ccavenue.com/transaction.do         |
      | 9109600780    | 05081984 | Individual    | Loan payment | Other payments | P454FSC4430362      | Advance EMIs   | Advance EMIs | https://uatpayments.bajajfinserv.in/payments | Worldline       | UPI            | https://www.tpsl-india.in/PaymentGateway/txnreq.pg |


  @advance
  Scenario Outline: Payments Journey- Verify customer is redirected to Payment Unsuccessful Page ("<Payment Gateway>" - NetBanking)(Advance EMI)
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
    # And Customer clicks on "Proceed to pay" Button
    Then Verify Customer Redirected to respective URL "<Url>"
    And  Selects a Payment Gateway"<Payment Gateway>"
    And Selects a Payment Method"<Payment method>"
    And Select "<Bank name>" from list
    And Click on PAY CTA in Payment Page
    Then Verify Customer Redirected to respective URL "<Payment Url>"
    And Click on Cancel CTA in NetBanking Page
    Then Customer should be redirected to Payment Unsuccessful "<Payment Unsuccess>" Page

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option | Tab          | Url                                          | Payment Gateway | Payment method | Bank name                | Payment Url                                                | Payment Unsuccess                                                    |
      | 9109600780    | 05081984 | Individual    | Loan payment | Other payments | P454FSC4430362      | Advance EMIs   | Advance EMIs | https://uatpayments.bajajfinserv.in/payments | PayU            | NetBanking     | BANK OF BARODA           | https://feba.bobibanking.com/corp/AuthenticationController | https://uat-oneweb.bajajfinserv.in/MyAccountPayments/LoanPay/Receipt |
      | 9109600780    | 05081984 | Individual    | Loan payment | Other payments | P454FSC4430362      | Advance EMIs   | Advance EMIs | https://uatpayments.bajajfinserv.in/payments | CC Avenue       | NetBanking     | Bank of Baroda Corporate | https://feba.bobibanking.com/corp/AuthenticationController | https://uat-oneweb.bajajfinserv.in/MyAccountPayments/LoanPay/Receipt |
      | 9109600780    | 05081984 | Individual    | Loan payment | Other payments | P454FSC4430362      | Advance EMIs   | Advance EMIs | https://uatpayments.bajajfinserv.in/payments | Worldline       | NetBanking     | BANK OF BARODA           | https://feba.bobibanking.com/corp/AuthenticationController | https://uat-oneweb.bajajfinserv.in/MyAccountPayments/LoanPay/Receipt |


####Foreclose

  @foreclose
  Scenario Outline: Payments Journey- Verify customer is redirected to respective Payments gateway journey after clicking on Pay CTA ("<Payment Gateway>" - Debit Card)(Foreclosure)
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
    Then Verify Customer Redirected to respective URL "<Url>"
    And  Selects a Payment Gateway"<Payment Gateway>"
    And Selects a Payment Method"<Payment method>"
    And Click on PAY CTA in Payment Page
    Then Verify Customer Redirected to respective URL "<Payment Url>"
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option | Tab         | Url                                          | Payment Gateway | Payment method | Payment Url                                        |
      | 9921844153    | 05081984 | Individual    | Loan payment | Other payments | 402PLTHA584153      | Foreclosure    | Foreclosure | https://uatpayments.bajajfinserv.in/payments | PayU            | Debit Card     | https://api.payu.in/public                         |
      | 9921844153    | 05081984 | Individual    | Loan payment | Other payments | 402PLTHA584153      | Foreclosure    | Foreclosure | https://uatpayments.bajajfinserv.in/payments | Worldline       | Debit Card     | https://www.tpsl-india.in/PaymentGateway/txnreq.pg |
      | 9921844153    | 05081984 | Individual    | Loan payment | Other payments | 402PLTHA584153      | Foreclosure    | Foreclosure | https://uatpayments.bajajfinserv.in/payments | CC Avenue       | Debit Card     | https://secure.ccavenue.com/transaction.do         |

  @foreclose
  Scenario Outline: Payments Journey- Verify customer is redirected to respective Payments gateway journey after clicking on Pay CTA ("<Payment Gateway>" - UPI)(Foreclosure)
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
    And Customer clicks on "Proceed to pay" Button in Foreclosure Popup
    Then Verify Customer Redirected to respective URL "<Url>"
    And  Selects a Payment Gateway"<Payment Gateway>"
    And Selects a Payment Method"<Payment method>"
    And Click on PAY CTA in Payment Page
    Then Verify Customer Redirected to respective URL "<Payment Url>"

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option | Tab         | Url                                          | Payment Gateway | Payment method | Payment Url                                        |
      | 9921844153    | 05081984 | Individual    | Loan payment | Other payments | 402PLTHA584153      | Foreclosure    | Foreclosure | https://uatpayments.bajajfinserv.in/payments | PayU            | UPI            | https://api.payu.in/public                         |
      | 9921844153    | 05081984 | Individual    | Loan payment | Other payments | 402PLTHA584153      | Foreclosure    | Foreclosure | https://uatpayments.bajajfinserv.in/payments | Worldline       | UPI            | https://www.tpsl-india.in/PaymentGateway/txnreq.pg |
      | 9921844153    | 05081984 | Individual    | Loan payment | Other payments | 402PLTHA584153      | Foreclosure    | Foreclosure | https://uatpayments.bajajfinserv.in/payments | CC Avenue       | UPI            | https://secure.ccavenue.com/transaction.do         |


##########UPI Restriction
  @lakh
  Scenario Outline: Payments Journey- verify UPI -Payment method is disabled when total payable amount is >=1 lakh Rupees on payment checkout page  (Overdue)
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    And Customer enters Overdue Amount of more than one lakh "101000"
    And Customer clicks on "Proceed To Payment" Button
    Then Verify Customer Redirected to Payment Page "<Url>" in same Tab
    And verify "UPI" payment method is not displayed for amount >=1 lakh Rupees on payment checkout page

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option         | Tab                    | Url                                          |
      | 9910955211    | 10111976 | Individual    | Loan payment | Other payments | 401BFR37198469      | Overdue or missed EMIs | Overdue or missed EMIs | https://uatpayments.bajajfinserv.in/payments |

  @foreclose
  Scenario Outline: Payments Journey- verify UPI -Payment method is disabled when total payable amount is >=1 lakh Rupees on payment checkout page  (Foreclosure)
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
    And Customer clicks on "Proceed to pay" Button in Foreclosure Popup
    Then Verify Customer Redirected to respective URL "<Url>"
    And verify "UPI" payment method is not displayed for amount >=1 lakh Rupees on payment checkout page

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option | Tab         | Url                                          |
      | 7799859597    | 01091979 | Individual    | Loan payment | Other payments | P400DHP0467783      | Foreclosure    | Foreclosure | https://uatpayments.bajajfinserv.in/payments |
#      | 9921844153    | 05081984 | Individual    | Loan payment | Other payments | 402PLTHA584153      | Foreclosure    | Foreclosure | https://uatpayments.bajajfinserv.in/payments |

  @lakh
  Scenario Outline: Payments Journey- verify UPI -Payment method is disabled when total payable amount is >=1 lakh Rupees on payment checkout page  (Advance EMI)
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
#    Then verify the Amount displayed for the number of months 1 selected
    And Customer clicks on "Proceed To Payment" Button
    And Customer clicks on "Proceed to pay" Button
    Then Verify Customer Redirected to respective URL "<Url>"
    And verify "UPI" payment method is not displayed for amount >=1 lakh Rupees on payment checkout page

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option | Tab         | Url                                          |
      | 9009475089    | 02021999 | Corporate    | Loan payment | Other payments | 425PEMHK011525      | Advance EMIs    | Advance EMIs | https://uatpayments.bajajfinserv.in/payments |



    ####Less than 1 lakh

  @lakh
  Scenario Outline: Payments Journey- verify UPI -Payment method is enabled when total payable amount is less than 1 lakh Rupees on payment checkout page  (Overdue)
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    And Customer enters Overdue Amount of more than one lakh "99999"
    And Customer clicks on "Proceed To Payment" Button
    Then Verify Customer Redirected to Payment Page "<Url>" in same Tab
    And verify "UPI" payment method is displayed & enabled for amount less than 1 lakh Rupees on payment checkout page

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option         | Tab                    | Url                                          |
      | 9910955211    | 10111976 | Individual    | Loan payment | Other payments | 401BFR37198469      | Overdue or missed EMIs | Overdue or missed EMIs | https://uatpayments.bajajfinserv.in/payments |

  @foreclose
  Scenario Outline: Payments Journey- verify UPI -Payment method is enabled when total payable amount is less than 1 lakh Rupees on payment checkout page  (Foreclosure)
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
    And Customer clicks on "Proceed to pay" Button in Foreclosure Popup
    Then Verify Customer Redirected to respective URL "<Url>"
    And verify "UPI" payment method is displayed & enabled for amount less than 1 lakh Rupees on payment checkout page

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option | Tab         | Url                                          |
      | 7799859597    | 01091979 | Individual    | Loan payment | Other payments | P400DHP0467783      | Foreclosure    | Foreclosure | https://uatpayments.bajajfinserv.in/payments |
#      | 9921844153    | 05081984 | Individual    | Loan payment | Other payments | 402PLTHA584153      | Foreclosure    | Foreclosure | https://uatpayments.bajajfinserv.in/payments |

  @lakh
  Scenario Outline: Payments Journey- verify UPI -Payment method is enabled when total payable amount is less than 1 lakh Rupees on payment checkout page  (Advance EMI)
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
    And Customer clicks on "Proceed to pay" Button
    Then Verify Customer Redirected to respective URL "<Url>"
    And verify "UPI" payment method is displayed & enabled for amount less than 1 lakh Rupees on payment checkout page

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option | Tab         | Url                                          |
      | 9109600780    | 05081984 | Individual    | Loan payment | Other payments | P454FSC4430362      | Advance EMIs   | Advance EMIs | https://uatpayments.bajajfinserv.in/payments |








