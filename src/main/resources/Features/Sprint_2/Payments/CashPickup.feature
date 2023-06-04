@Regression
Feature: Cash Pickup - Overdue Loan


  Scenario Outline: Overdue- Missed EMI- Verify Payment Method Section for Overdue Loan
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/ActiveLoanOverduePay" Url
    And verify Payment Method Section is displayed in Overdue Payment Page
    And verify the "<Payment Options>" under Payment Method
    And verify subtext "UPI, Net Banking, Debit card." for Online Payment modes

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu | Payment Options                   |
      | 9015683146    | 20081992 | Individual    | Loan payment | Overdue     | Online Payment Modes, Pay By Cash |

  Scenario Outline: Overdue- Missed EMI- Verify Customer is redirected to Payment Checkout on selecting Online Payment Mode
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/ActiveLoanOverduePay" Url
    And selects the Loan Number 1 from Overdue Loans Page
    And verify the RadioButton "Online Payments Mode" is by Default Selected
    And Customer clicks on "Proceed To Pay" Button
Then Verify Customer Redirected to respective URL "<Url>"

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu | Url                                          |
      | 9015683146    | 20081992 | Individual    | Loan payment | Overdue     | https://uatpayments.bajajfinserv.in/payments |

  Scenario Outline: Overdue- Missed EMI- Verify Only One Payment Option is selectable at a time
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/ActiveLoanOverduePay" Url
    And selects the Loan Number 1 from Overdue Loans Page
    And verify the RadioButton "Online Payments Mode" is by Default Selected
    And clicks on Payment Option "Pay By Cash" from the Payment Method
    Then verify the Radio Button "Online Payments Mode" is Unselected
    And verify the Radio Button "Pay By Cash" is Selected
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu |
      | 9015683146    | 20081992 | Individual    | Loan payment | Overdue     |

  Scenario Outline: Overdue- Missed EMI-Customer able to Pay by Cash for One Loan and Customer redirecting to Cash Pickup Page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/ActiveLoanOverduePay" Url
    And selects the Loan Number 1 from Overdue Loans Page
    And clicks on Payment Option "Pay By Cash" from the Payment Method
    And Customer clicks on "Proceed To Pay" Button
    Then Verify Customer Redirected to "MyAccountPayments/CollectionPay/CashPickup" Url

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu |
      | 9015683146    | 20081992 | Individual    | Loan payment | Overdue     |

  Scenario Outline: Overdue- Missed EMI-Customer able to Pay by Cash for multiple Loan and Customer redirecting to Cash Pickup Page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/ActiveLoanOverduePay" Url
    And selects the Loan Number 1 from Overdue Loans Page
    And selects the Loan Number 2 from Overdue Loans Page
    And clicks on Payment Option "Pay By Cash" from the Payment Method
    And Customer clicks on "Proceed To Pay" Button
    Then Verify Customer Redirected to "MyAccountPayments/CollectionPay/CashPickup" Url

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu |
      | 9015683146    | 20081992 | Individual    | Loan payment | Overdue     |

  Scenario Outline: Overdue- Missed EMI- verify Pay by Cash- Address Page Contents
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/ActiveLoanOverduePay" Url
    And selects the Loan Number 1 from Overdue Loans Page
    And clicks on Payment Option "Pay By Cash" from the Payment Method
    And Customer clicks on "Proceed To Pay" Button
    Then Verify Customer Redirected to "MyAccountPayments/CollectionPay/CashPickup" Url
    And verify the contents in Address page for Cash Payment
    And verify options"<Options>" available under "Quick Actions" on RHS
    And verify the following button "Schedule" is enabled in the page
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu | Options                                    |
      | 9015683146    | 20081992 | Individual    | Loan payment | Overdue     | FAQs#Raise a Request |

  Scenario Outline: Overdue- Missed EMI- Pay By Cash Address Page- FAQ Redirection
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/ActiveLoanOverduePay" Url
    And selects the Loan Number 1 from Overdue Loans Page
    And clicks on Payment Option "Pay By Cash" from the Payment Method
    And Customer clicks on "Proceed To Pay" Button
    Then Verify Customer Redirected to "MyAccountPayments/CollectionPay/CashPickup" Url
    And Customer clicks on "FAQs" in RHS Section
    Then Verify Customer Redirected to "MyAccountService/HelpAndSupport/RARFAQCategory" Url

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu |
      | 9015683146    | 20081992 | Individual    | Loan payment | Overdue     |

  Scenario Outline: Overdue- Missed EMI- Pay by Cash Address Page-RAR Redirection
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/ActiveLoanOverduePay" Url
    And selects the Loan Number 1 from Overdue Loans Page
    And clicks on Payment Option "Pay By Cash" from the Payment Method
    And Customer clicks on "Proceed To Pay" Button
    Then Verify Customer Redirected to "MyAccountPayments/CollectionPay/CashPickup" Url
    And Customer clicks on "Raise a Request" in RHS Section
    Then Verify Customer Redirected to "MyAccountService/Helpandsupport/LogRequest" Url

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu |
      | 9015683146    | 20081992 | Individual    | Loan payment | Overdue     |

  Scenario Outline: Overdue- Missed EMI- Pay By Cash- Address Page Labels are prefilled
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/ActiveLoanOverduePay" Url
    And selects the Loan Number 1 from Overdue Loans Page
    And clicks on Payment Option "Pay By Cash" from the Payment Method
    And Customer clicks on "Proceed To Pay" Button
    Then Verify Customer Redirected to "MyAccountPayments/CollectionPay/CashPickup" Url
    And verify the following Labels "<Labels>" are displayed in Address Page
    And verify the following Labels "<Labels>" are displayed with Prefilled Values in Address Page

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu | Labels                                         |
      | 9015683146    | 20081992 | Individual    | Loan payment | Overdue     | Address Line 1, Address Line 2, Pin Code, City |

  Scenario Outline: Overdue- Missed EMI- Pay By Cash- Address Page- Error Msg for empty Inputs
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/ActiveLoanOverduePay" Url
    And selects the Loan Number 1 from Overdue Loans Page
    And clicks on Payment Option "Pay By Cash" from the Payment Method
    And Customer clicks on "Proceed To Pay" Button
    Then Verify Customer Redirected to "MyAccountPayments/CollectionPay/CashPickup" Url
    And Clear the Input for Labels "<Labels>"
    And Customer clicks on "Schedule" Button
    Then verify error messages are displayed

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu | Labels                                         |
      | 9015683146    | 20081992 | Individual    | Loan payment | Overdue     | Address Line 1, Address Line 2, Pin Code, City |

  Scenario Outline: Overdue- Missed EMI- Pay By Cash- Verify Label Inputs with Negative values- Address Line 1 & Address Line 2
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/ActiveLoanOverduePay" Url
    And selects the Loan Number 1 from Overdue Loans Page
    And clicks on Payment Option "Pay By Cash" from the Payment Method
    And Customer clicks on "Proceed To Pay" Button
    Then Verify Customer Redirected to "MyAccountPayments/CollectionPay/CashPickup" Url
#    And Clear the Input for Labels "<Labels>"
    And verify Negative values for the Input "Address Line 1"
    And verify Negative values for the Input "Address Line 2"

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu |
      | 9015683146    | 20081992 | Individual    | Loan payment | Overdue     |

  Scenario Outline: Overdue- Missed EMI- Pay By Cash- Verify Label Inputs with Negative values- PinCode
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/ActiveLoanOverduePay" Url
    And selects the Loan Number 1 from Overdue Loans Page
    And clicks on Payment Option "Pay By Cash" from the Payment Method
    And Customer clicks on "Proceed To Pay" Button
    Then Verify Customer Redirected to "MyAccountPayments/CollectionPay/CashPickup" Url
    And verify Negative values for the Field "Pin Code"

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu |
      | 9015683146    | 20081992 | Individual    | Loan payment | Overdue     |


  Scenario Outline: Overdue- Missed EMI- Pay By Cash- Verify Label Inputs with Negative values- City
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/ActiveLoanOverduePay" Url
    And selects the Loan Number 1 from Overdue Loans Page
    And clicks on Payment Option "Pay By Cash" from the Payment Method
    And Customer clicks on "Proceed To Pay" Button
    Then Verify Customer Redirected to "MyAccountPayments/CollectionPay/CashPickup" Url
    And verify Negative values for the Field "City"

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu |
      | 9015683146    | 20081992 | Individual    | Loan payment | Overdue     |

  Scenario Outline: Overdue- Missed EMI- Pay By Cash- Verify Label Inputs with Positive values- Address Line 1 & Address Line 2
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/ActiveLoanOverduePay" Url
    And selects the Loan Number 1 from Overdue Loans Page
    And clicks on Payment Option "Pay By Cash" from the Payment Method
    And Customer clicks on "Proceed To Pay" Button
    Then Verify Customer Redirected to "MyAccountPayments/CollectionPay/CashPickup" Url
    And verify Accepted values for the Input "Address Line 1"
    And verify Accepted values for the Input "Address Line 2"

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu |
      | 9015683146    | 20081992 | Individual    | Loan payment | Overdue     |

#  Scenario Outline: Overdue- Missed EMI- Pay By Cash- Verify On entering Valid Pincode City is Autopopulated
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User is on Home Page
#    And Clicks on Hamburger Menu
#    And Selects an SubMenu from Hamburger "<SubMenu>"
#    And Clicks on SubListmenu "<SubListMenu>"
#    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/ActiveLoanOverduePay" Url
#    And selects the Loan Number 1 from Overdue Loans Page
#    And clicks on Payment Option "Pay By Cash" from the Payment Method
#    And Customer clicks on "Proceed To Pay" Button
#    Then Verify Customer Redirected to "MyAccountPayments/CollectionPay/CashPickup" Url
#    And verify "City" is Autopopulated on entry of "Pin Code" in Address Page
#
#    Examples:
#      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu |
#      | 9015683146    | 20081992 | Individual    | Loan payment | Overdue     |

  Scenario Outline: Overdue- Missed EMI- Pay By Cash- Customer redirection to Scheduled Page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/ActiveLoanOverduePay" Url
    And selects the Loan Number 1 from Overdue Loans Page
    And clicks on Payment Option "Pay By Cash" from the Payment Method
    And Customer clicks on "Proceed To Pay" Button
    Then Verify Customer Redirected to "MyAccountPayments/CollectionPay/CashPickup" Url
    And Customer clicks on "Schedule" Button
    Then Verify Customer Redirected to "MyAccountPayments/CollectionPay/CashPickupReceipt" Url

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu |
      | 9015683146    | 20081992 | Individual    | Loan payment | Overdue     |

  Scenario Outline: Overdue- Missed EMI- Contents on the Scheduled page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/ActiveLoanOverduePay" Url
    And selects the Loan Number 1 from Overdue Loans Page
    And clicks on Payment Option "Pay By Cash" from the Payment Method
    And Customer clicks on "Proceed To Pay" Button
    Then Verify Customer Redirected to "MyAccountPayments/CollectionPay/CashPickup" Url
    And Customer clicks on "Schedule" Button
    Then Verify Customer Redirected to "MyAccountPayments/CollectionPay/CashPickupReceipt" Url
    And verify the contents on Scheduled page
    And verify options"<Options>" available under "Quick Actions" on RHS
    And verify the button "done" is displayed in the page

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu | Options                                    |
      | 9015683146    | 20081992 | Individual    | Loan payment | Overdue     | FAQs#Raise a Request |

  Scenario Outline: Overdue- Missed EMI- Scheduled page -To verify Home page is displayed when customer clicks on DONE CTA
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/ActiveLoanOverduePay" Url
    And selects the Loan Number 1 from Overdue Loans Page
    And clicks on Payment Option "Pay By Cash" from the Payment Method
    And Customer clicks on "Proceed To Pay" Button
    Then Verify Customer Redirected to "MyAccountPayments/CollectionPay/CashPickup" Url
    And Customer clicks on "Schedule" Button
    Then Verify Customer Redirected to "MyAccountPayments/CollectionPay/CashPickupReceipt" Url
    And Customer clicks on "done" Button
    Then Verify Customer Redirected to "MyAccountCustomer/Home/Index" Url


    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu |
      | 9015683146    | 20081992 | Individual    | Loan payment | Overdue     |

  Scenario Outline: Overdue- Missed EMI- Scheduled page -To verify customer is redirected to FAQ's page after Click on FAQ's option from need assistance section (Successful Screen)
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/ActiveLoanOverduePay" Url
    And selects the Loan Number 1 from Overdue Loans Page
    And clicks on Payment Option "Pay By Cash" from the Payment Method
    And Customer clicks on "Proceed To Pay" Button
    Then Verify Customer Redirected to "MyAccountPayments/CollectionPay/CashPickup" Url
    And Customer clicks on "Schedule" Button
    Then Verify Customer Redirected to "MyAccountPayments/CollectionPay/CashPickupReceipt" Url
    And Customer clicks on "FAQs" in RHS Section
    Then Verify Customer Redirected to "MyAccountService/HelpAndSupport/RARFAQCategory" Url

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu |
      | 9015683146    | 20081992 | Individual    | Loan payment | Overdue     |

  Scenario Outline: Overdue- Missed EMI- Scheduled page -To verify customer is redirected to Raise a request page after Click on Raise a request option from need assistance section (Successful Screen)
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/ActiveLoanOverduePay" Url
    And selects the Loan Number 1 from Overdue Loans Page
    And clicks on Payment Option "Pay By Cash" from the Payment Method
    And Customer clicks on "Proceed To Pay" Button
    Then Verify Customer Redirected to "MyAccountPayments/CollectionPay/CashPickup" Url
    And Customer clicks on "Schedule" Button
    Then Verify Customer Redirected to "MyAccountPayments/CollectionPay/CashPickupReceipt" Url
    And Customer clicks on "Raise a Request" in RHS Section
    Then Verify Customer Redirected to "MyAccountService/Helpandsupport/LogRequest" Url

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu |
      | 9015683146    | 20081992 | Individual    | Loan payment | Overdue     |



#    And Customer enters a value "517001" for the Label "Pin Code"














