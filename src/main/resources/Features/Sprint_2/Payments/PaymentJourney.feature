@journey
Feature: Payments Journey (Checkout)

  Scenario Outline: Payments Journey- Contents
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
    Then verify Payment Page is displayed with the contents

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option  | Tab             |
      | 9966508108    | 05081984 | Individual    | Loan payment | Other payments | P400PSA5757086      | Part-prepayment | Part-prepayment |

  Scenario Outline: Payments Journey- verify customer is redirected to Payment Cancelled page when click on cancel CTA on Payment checkout page
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
    Then Verify Customer Redirected to respective URL "<Url>"
    And Customer clicks on "Cancel" Button
    Then Verify Customer Redirected to respective URL "<Url1>"

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option  | Tab             | Url                                          | Url1                              |
      | 9966508108    | 05081984 | Individual    | Loan payment | Other payments | P400PSA5757086      | Part-prepayment | Part-prepayment | https://uatpayments.bajajfinserv.in/payments | MyAccountPayments/LoanPay/Receipt |
@check
  Scenario Outline: Payments Journey- verify Amount on PAY RS….is displayed same as mentioned in previous screen under amount payable and payment cancelled page on Payment checkout page
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
    Then Verify Customer Redirected to respective URL "<Url>"
    And verify Amount on PAY RS is displayed same as mentioned in previous screen under amount payable and payment cancelled page on Payment checkout page

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option  | Tab             | Url                                          | Url1                              |
      | 9966508108    | 05081984 | Individual    | Loan payment | Other payments | P400PSA5757086      | Part-prepayment | Part-prepayment | https://uatpayments.bajajfinserv.in/payments | MyAccountPayments/LoanPay/Receipt |

  Scenario Outline: Payments Journey- verify UPI -Payment method is disabled when total payable amount is >=1 lakh Rupees on payment checkout page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And verify Loan Payment page displayed
    And Customer Clicks on a Loan tile "<Loan Account Number>" and selects a Payment Option "<Payment Option>"
    And Clicks on "PROCEED" Button
    And verify Customer is redirected to the exact Payment Option "<Tab>"
    And Customer enters Part Payment Amount of more than one lakh "101000"
    And Customer clicks on "Proceed To Payment" Button
    # And Customer clicks on "Proceed to pay" Button
    Then Verify Customer Redirected to respective URL "<Url>"
    And verify "UPI" payment method is not displayed for amount >=1 lakh Rupees on payment checkout page

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option  | Tab             | Url                                          | Url1                              |
      | 9966508108    | 05081984 | Individual    | Loan payment | Other payments | P400PSA5757086      | Part-prepayment | Part-prepayment | https://uatpayments.bajajfinserv.in/payments | MyAccountPayments/LoanPay/Receipt |

  Scenario Outline: Payments Journey- verify customer is redirected to payment page when click on Retry Payment CTA on Payment cancelled page
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
    Then Verify Customer Redirected to respective URL "<Url>"
    And Customer clicks on "Cancel" Button
    Then Verify Customer Redirected to respective URL "<Url1>"
    And Customer clicks on "RETRY PAYMENT" Button
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/Part_Payment" Url
    And verify Customer is redirected to the exact Payment Option "<Tab>"


    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option  | Tab             | Url                                          | Url1                              |
      | 9966508108    | 05081984 | Individual    | Loan payment | Other payments | P400PSA5757086      | Part-prepayment | Part-prepayment | https://uatpayments.bajajfinserv.in/payments | MyAccountPayments/LoanPay/Receipt |

  Scenario Outline: Payments Journey- verify pop is displayed for part payment with proceed to pay and cancel CTA after click on Proceed to payment button
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
    Then verify popup is displayed for part payment paid during cut off period

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option  | Tab             |
      | 9966508108    | 05081984 | Individual    | Loan payment | Other payments | P400PSA5757086      | Part-prepayment | Part-prepayment |

  Scenario Outline: Payments Journey- verify redirection to payment checkout page on click of ‘Proceed to pay’ CTA on pop up of part-payment option
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
    Then Verify Customer Redirected to respective URL "<Url>"

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option  | Tab             | Url                                          |
      | 9966508108    | 05081984 | Individual    | Loan payment | Other payments | P400PSA5757086      | Part-prepayment | Part-prepayment | https://uatpayments.bajajfinserv.in/payments |

  Scenario Outline: Payments Journey- verify pop up has closed after click on Cancel CTA of part pay option
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
    And Customer clicks on "Cancel" Button
    Then verify pop up has closed after click on Cancel CTA of part pay option

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option  | Tab             | Url                                          |
      | 9966508108    | 05081984 | Individual    | Loan payment | Other payments | P400PSA5757086      | Part-prepayment | Part-prepayment | https://uatpayments.bajajfinserv.in/payments |


  Scenario Outline: Payments Journey- verify customer is redirected to home page after click on ‘Go to Home Page’ CTA on Payment cancelled page
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
    Then Verify Customer Redirected to respective URL "<Url>"
    And Customer clicks on "Cancel" Button
    Then Verify Customer Redirected to respective URL "<Url1>"
    And Customer clicks on "BACK TO HOMEPAGE" Button
    Then Verify Customer Redirected to "MyAccountCustomer/Home" Url


    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option  | Tab             | Url                                          | Url1                              |
      | 9966508108    | 05081984 | Individual    | Loan payment | Other payments | P400PSA5757086      | Part-prepayment | Part-prepayment | https://uatpayments.bajajfinserv.in/payments | MyAccountPayments/LoanPay/Receipt |

  Scenario Outline: Payments Journey- verify RAR and FAQ’s options are displayed under quick option of Payment cancelled page
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
    Then Verify Customer Redirected to respective URL "<Url>"
    And Customer clicks on "Cancel" Button
    Then Verify Customer Redirected to respective URL "<Url1>"
    And verify options"<Options>" available under "Quick Actions" on RHS


    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option  | Tab             | Url                                          | Url1                              | Options              |
      | 9966508108    | 05081984 | Individual    | Loan payment | Other payments | P400PSA5757086      | Part-prepayment | Part-prepayment | https://uatpayments.bajajfinserv.in/payments | MyAccountPayments/LoanPay/Receipt | FAQs#Raise a Request |

  Scenario Outline: Payments Journey- verify customer is redirected to FAQ page when click on FAQ’s option under quick action of payment cancelled page
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
    Then Verify Customer Redirected to respective URL "<Url>"
    And Customer clicks on "Cancel" Button
    Then Verify Customer Redirected to respective URL "<Url1>"
    And Customer clicks on "FAQs" option in RHS
    And Verify Customer Redirected to "MyAccountService/HelpAndSupport/RARFAQCategory" Url

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option  | Tab             | Url                                          | Url1                              |
      | 9966508108    | 05081984 | Individual    | Loan payment | Other payments | P400PSA5757086      | Part-prepayment | Part-prepayment | https://uatpayments.bajajfinserv.in/payments | MyAccountPayments/LoanPay/Receipt |

  Scenario Outline: Payments Journey- verify customer is redirected to RAR page when click on RAR option under quick action of payment cancelled page
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
    Then Verify Customer Redirected to respective URL "<Url>"
    And Customer clicks on "Cancel" Button
    Then Verify Customer Redirected to respective URL "<Url1>"
    And Customer clicks on "Raise a Request" option in RHS
    And Verify Customer Redirected to "MyAccountService/Helpandsupport/LogRequest" Url


    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option  | Tab             | Url                                          | Url1                              |
      | 9966508108    | 05081984 | Individual    | Loan payment | Other payments | P400PSA5757086      | Part-prepayment | Part-prepayment | https://uatpayments.bajajfinserv.in/payments | MyAccountPayments/LoanPay/Receipt |

  Scenario Outline: Payments Journey- verify customer is able to view Labels in Cancel Page
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
    Then Verify Customer Redirected to respective URL "<Url>"
    And Customer clicks on "Cancel" Button
    Then Verify Customer Redirected to respective URL "<Url1>"
    And verify customer is able to view Labels in Payment Cancellation Page

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | Loan Account Number | Payment Option  | Tab             | Url                                          | Url1                              |
      | 9966508108    | 05081984 | Individual    | Loan payment | Other payments | P400PSA5757086      | Part-prepayment | Part-prepayment | https://uatpayments.bajajfinserv.in/payments | MyAccountPayments/LoanPay/Receipt |


################NEW






