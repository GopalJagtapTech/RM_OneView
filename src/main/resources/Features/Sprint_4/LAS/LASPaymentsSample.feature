#@LAS
Feature: LAS Payments


#Unsuccessful
#  Scenario Outline: Verify after Cancelling the transaction from Payment Gateway page user is redirected to Payment Unsuccessful Page
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User is on Home Page
#    And Clicks on Hamburger Menu
#    And Selects an SubMenu from Hamburger "<SubMenu>"
#    And Clicks on SubListmenu "<SubListMenu>"
#    And Clicks on "<LAS>" tile
#    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/LASPartPayment" Url
#    And Enter valid amount
#    And click on Online Payment CTA
#    And User is redirected to Payment Checkout Page
#    And User selects <Payment Method>
#    And Clicks on PAY CTA
#    And Cancels the transaction
#    Then User should be redirected to Payment Unsuccessful Page
#    Examples:
#      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | LAS             | Payment method |
#      | 9545219299    | 02021999 | Individual    | Loan payment | Other payments | V428LAS00004845 | UPI            |
#      | 9545219299    | 02021999 | Individual    | Loan payment | Other payments | V428LAS00004845 | Debit card     |
#      | 9545219299    | 02021999 | Individual    | Loan payment | Other payments | V428LAS00004845 | Net Banking    |
#
#
#  Scenario Outline: Verify after clicking on RAR on Payment Unsuccessful Page we are redirected to RAR details page
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User is on Home Page
#    And Clicks on Hamburger Menu
#    And Selects an SubMenu from Hamburger "<SubMenu>"
#    And Clicks on SubListmenu "<SubListMenu>"
#    And Clicks on "<LAS>" tile
#    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/LASPartPayment" Url
#    And Enter valid amount
#    And click on Online Payment CTA
#    And User is redirected to Payment Checkout Page
#    And User selects <Payment Method>
#    And Clicks on PAY CTA
#    And Cancels the transaction
#    And User is redirected to Payment Unsuccessful Page
#    And Clicks on RAR
#    Then User should be redirected to RAR details page
#    Examples:
#      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | LAS             | Payment method |
#      | 9545219299    | 02021999 | Individual    | Loan payment | Other payments | V428LAS00004845 | UPI            |
#      | 9545219299    | 02021999 | Individual    | Loan payment | Other payments | V428LAS00004845 | Debit card     |
#      | 9545219299    | 02021999 | Individual    | Loan payment | Other payments | V428LAS00004845 | Net Banking    |
#
#  Scenario Outline: Verify after clicking on FAQ under Quick Actions on Payment Unsuccessful Page we are redirected to FAQ details page
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User is on Home Page
#    And Clicks on Hamburger Menu
#    And Selects an SubMenu from Hamburger "<SubMenu>"
#    And Clicks on SubListmenu "<SubListMenu>"
#    And Clicks on "<LAS>" tile
#    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/LASPartPayment" Url
#    And Enter valid amount
#    And click on Online Payment CTA
#    And User is redirected to Payment Checkout Page
#    And User selects <Payment Method>
#    And Clicks on PAY CTA
#    And Cancels the transaction
#    And User is redirected to Payment Unsuccessful Page
#    And Clicks on FAQ
#    Then User should be redirected to FAQ details page
#    Examples:
#      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | LAS             | Payment method |
#      | 9545219299    | 02021999 | Individual    | Loan payment | Other payments | V428LAS00004845 | UPI            |
#      | 9545219299    | 02021999 | Individual    | Loan payment | Other payments | V428LAS00004845 | Debit card     |
#      | 9545219299    | 02021999 | Individual    | Loan payment | Other payments | V428LAS00004845 | Net Banking    |
#
#
#  Scenario Outline: Verify after clicking on Help CTA on Payment Unsuccessful Page pop up with content is displayed
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User is on Home Page
#    And Clicks on Hamburger Menu
#    And Selects an SubMenu from Hamburger "<SubMenu>"
#    And Clicks on SubListmenu "<SubListMenu>"
#    And Clicks on "<LAS>" tile
#    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/LASPartPayment" Url
#    And Enter valid amount
#    And click on Online Payment CTA
#    And User is redirected to Payment Checkout Page
#    And User selects <Payment Method>
#    And Clicks on PAY CTA
#    And Cancels the transaction
#    And User is redirected to Payment Unsuccessful Page
#    And Clicks on Help CTA
#    Then Pop up with below content should be displayed
##  "In case of any queries, please reach out to us at Las.support@bajajfinserv.in" with Got IT CTA
#
#    Examples:
#      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | LAS             | Payment method |
#      | 9545219299    | 02021999 | Individual    | Loan payment | Other payments | V428LAS00004845 | UPI            |
#      | 9545219299    | 02021999 | Individual    | Loan payment | Other payments | V428LAS00004845 | Debit card     |
#      | 9545219299    | 02021999 | Individual    | Loan payment | Other payments | V428LAS00004845 | Net Banking    |
#
#  Scenario Outline: Verify after clicking on Done CTA on Payment Unsuccessful Page we are redirected to LAS landing page
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User is on Home Page
#    And Clicks on Hamburger Menu
#    And Selects an SubMenu from Hamburger "<SubMenu>"
#    And Clicks on SubListmenu "<SubListMenu>"
#    And Clicks on "<LAS>" tile
#    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/LASPartPayment" Url
#    And Enter valid amount
#    And click on Online Payment CTA
#    And User is redirected to Payment Checkout Page
#    And User selects <Payment Method>
#    And Clicks on PAY CTA
#    And Cancels the transaction
#    And User is redirected to Payment Unsuccessful Page
#    And Clicks on Done CTA
#    Then User should be redirected to LAS landing details page
#    Examples:
#      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | LAS             | Payment method |
#      | 9545219299    | 02021999 | Individual    | Loan payment | Other payments | V428LAS00004845 | UPI            |
#      | 9545219299    | 02021999 | Individual    | Loan payment | Other payments | V428LAS00004845 | Debit card     |
#      | 9545219299    | 02021999 | Individual    | Loan payment | Other payments | V428LAS00004845 | Net Banking    |


  Scenario Outline: Verify preapproved Offers section on Payment Unsuccessful page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And Clicks on "<LAS>" tile
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/LASPartPayment" Url
    And Enter valid amount
    And click on Online Payment CTA
    And User is redirected to Payment Checkout Page
    And User selects <Payment method>
    And User clicks on Pay CTA
    And User cancels transaction
    And User is redirected to Payment Unsuccessful Page
    Then Pre-approved Offers section should be displayed same as the Pre-approved Offers section displayed on Home Page
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | LAS             | Payment method |
      | 9545219299    | 02021999 | Individual    | Loan payment | Other payments | V428LAS00004845 | UPI            |
      | 9545219299    | 02021999 | Individual    | Loan payment | Other payments | V428LAS00004845 | Debit card     |
      | 9545219299    | 02021999 | Individual    | Loan payment | Other payments | V428LAS00004845 | Net Banking    |



#My Relations-Make Payment Flow

  Scenario Outline: Verify after clicking on Make Payment we are redirected to Part Prepayment details page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on View Details CTA on LAS tile
    And User is redirected to Loan details page
    And Clicks on Make Payment
    Then User should be redirected to Part Prepayment Details page
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 9545219299    | 02021999 | Individual    |

  Scenario Outline: Verify minimum amount is prepopulated in input field for part prepayment
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on View Details CTA on LAS tile
    And User is redirected to Loan details page
    And Clicks on Make Payment
    And User is redirected to Part Prepayment Details page
    Then Minimum amount should be prepopulated in Input field
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 9545219299    | 02021999 | Individual    |


  Scenario Outline: Verify Inline message is displayed when customer enters amount outside the range(less than minimum amount)
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on View Details CTA on LAS tile
    And User is redirected to Loan details page
    And Clicks on Make Payment
    And User is redirected to Part Prepayment Details page
    And Enter <Amount> less than the Minimum amount given
    Then Inline message should be displayed as "Enter amount between {min} & {Max}"
    Examples:
      | Mobile Number | Date     | Customer Type | Amount |
      | 9545219299    | 02021999 | Individual    |        |

  Scenario Outline: Verify Inline message is displayed when customer enters amount outside the range(more than the maximum amount)
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on View Details CTA on LAS tile
    And User is redirected to Loan details page
    And Clicks on Make Payment
    And User is redirected to Part Prepayment Details page
    And Enter <Amount> more than the Maximum amount given
    Then Inline message should be displayed as "Enter amount between {min} & {Max}"
    Examples:
      | Mobile Number | Date     | Customer Type | Amount |
      | 9545219299    | 02021999 | Individual    |        |


  Scenario Outline: verify Online Payment CTA is disabled when customer enters amount outside the range (less than the minimum amount)
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on View Details CTA on LAS tile
    And User is redirected to Loan details page
    And Clicks on Make Payment
    And User is redirected to Part Prepayment Details page
    And Enter <Amount> less than the Minimum amount given
    Then Online Payment CTA should be disabled
    Examples:
      | Mobile Number | Date     | Customer Type | Amount |
      | 9545219299    | 02021999 | Individual    |        |

  Scenario Outline: verify Online Payment CTA is disabled when customer enters amount outside the range (more than the maximum amount)
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on View Details CTA on LAS tile
    And User is redirected to Loan details page
    And Clicks on Make Payment
    And User is redirected to Part Prepayment Details page
    And Enter <Amount> more than the Maximum range given
    Then Online Payment CTA should be disabled
    Examples:
      | Mobile Number | Date     | Customer Type | Amount |
      | 9545219299    | 02021999 | Individual    |        |

  Scenario Outline: Verify Invalid input is accepted in the input field
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on View Details CTA on LAS tile
    And User is redirected to Loan details page
    And Clicks on Make Payment
    And User is redirected to Part Prepayment Details page
    And Enter <Invalid input>
    Then User should not be allowed to enter Invalid input
    Examples:
      | Mobile Number | Date     | Customer Type | Invalid input |
      | 9545219299    | 02021999 | Individual    | []\,./*&#@$!  |
      | 9545219299    | 02021999 | Individual    |               |
      | 9545219299    | 02021999 | Individual    | ABCXYZ        |
      | 9545219299    | 02021999 | Individual    | 101.          |


  Scenario Outline: Verify after clicking on tooltip Part Prepayment Details are displayed
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on View Details CTA on LAS tile
    And User is redirected to Loan details page
    And Clicks on Make Payment
    And User is redirected to Part Prepayment Details page
    And Click on Tooltip of Part prepayment Details
    Then Below details should be displayed
#  New Loan details
#  i)Current Principal Outstanding
#  ii)New Principal Outstanding
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 9545219299    | 02021999 | Individual    |

  Scenario Outline: Verify after clicking on GOT IT CTA the tool tip is closed
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on View Details CTA on LAS tile
    And User is redirected to Loan details page
    And Clicks on Make Payment
    And User is redirected to Part Prepayment Details page
    And Click on Tooltip of Part prepayment Details
    And Click on Got it CTA
    Then Tool tip should be closed
    Examples:
      | Mobile Number | Date     | Customer Type | Amount |
      | 9545219299    | 02021999 | Individual    |        |

  Scenario Outline: Verify content displayed on  Offline Payment CTA
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on View Details CTA on LAS tile
    And User is redirected to Loan details page
    And Clicks on Make Payment
    And User is redirected to Part Prepayment Details page
    And Enter valid amount
    And click on Offline Payment CTA
    And Offline Method Pop up is displayed
    Then Below Content should be displayed,
#  If you wish to make a payment via Cheque/DD, you can do so in our below bank account & share the receipt on Las.crm@bajajfinserv.in
#  Bank HDFC Bank
#  Account No 00070350007680
#  IFSC Code HDFC0000007
#  Account Name BAJAJ FINANCE LIMITED
#  Branch BHANDARKAR ROAD, PUNE
#  Please Note: The payment needs to be made from the bank account registered with Bajaj Finance Limited. Repayments made are accounted on a real time basis, subject to clearance by the bank.
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 9545219299    | 02021999 | I             |

  Scenario Outline: Verify registered email id and mobile number are in masked format under Payment confirmation to be sent on this
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on View Details CTA on LAS tile
    And User is redirected to Loan details page
    And Clicks on Make Payment
    And User is redirected to Part Prepayment Details page
    Then Customer should able to view first TWO & last TWO letters of Email
    And Customer should able to view last FOUR digits of Mobile number.
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | LAS | Amount          |
      | 9545219299    | 02021999 | Individual    | Loan payment | Other payments |     | V428LAS00004845 |

  Scenario Outline: Verify after clicking on RAR CTA user is redirected to RAR details page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on View Details CTA on LAS tile
    And User is redirected to Loan details page
    And Clicks on Make Payment
    And User is redirected to Part Prepayment Details page
    And Click on RAR CTA
    Then User should be redirected to RAR details Page
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 9545219299    | 02021999 | Individual    |

  Scenario Outline: Verify after clicking on FAQ CTA user is redirected to FAQ details page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on View Details CTA on LAS tile
    And User is redirected to Loan details page
    And Clicks on Make Payment
    And User is redirected to Part Prepayment Details page
    And Click on FAQ CTA
    Then User should be redirected to FAQ details Page
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 9545219299    | 02021999 | Individual    |


#  Payment Unsuccessful and Cancelled – Make Payment flow

#Payment Cancelled

#  Scenario Outline: Verify after Cancelling the transaction from Payment Checkout page user is redirected to Payment Cancelled Page
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User is on Home Page
#    And Clicks on View Details CTA on LAS tile
#    And User is redirected to Loan details page
#    And Clicks on Make Payment
#    And User is redirected to Part Prepayment Details page
#    And Enter valid amount
#    And click on Online Payment CTA
#    And User is redirected to Payment Checkout Page
#    And User clicks on Cancel CTA
#    Then User should be redirected to Payment Cancelled Page
#    Examples:
#      | Mobile Number | Date     | Customer Type |
#      | 9545219299    | 02021999 | Individual    |
#
#
#  Scenario Outline: Verify after clicking on RAR under Quick Actions on Payment Cancelled Page we are redirected to RAR details page
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User is on Home Page
#    And Clicks on View Details CTA on LAS tile
#    And User is redirected to Loan details page
#    And Clicks on Make Payment
#    And User is redirected to Part Prepayment Details page
#    And Enter valid amount
#    And click on Online Payment CTA
#    And User is redirected to Payment Checkout Page
#    And User clicks on Cancel CTA
#    And User is redirected to Payment Cancelled Page
#    And User clicks on RAR
#    Then User should be redirected to RAR details page
#    Examples:
#      | Mobile Number | Date     | Customer Type |
#      | 9545219299    | 02021999 | Individual    |
#
#
#  Scenario Outline: Verify after clicking on FAQ under Quick Actions on Payment Cancelled Page we are redirected to FAQ details page
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User is on Home Page
#    And Clicks on View Details CTA on LAS tile
#    And User is redirected to Loan details page
#    And Clicks on Make Payment
#    And User is redirected to Part Prepayment Details page
#    And Enter valid amount
#    And click on Online Payment CTA
#    And User is redirected to Payment Checkout Page
#    And User clicks on Cancel CTA
#    And User is redirected to Payment Cancelled Page
#    And User clicks on FAQ
#    Then User should be redirected to FAQ details page
#    Examples:
#      | Mobile Number | Date     | Customer Type |
#      | 9545219299    | 02021999 | Individual    |
#
#
#  Scenario Outline: Verify preapproved offers section on Payment Cancelled page
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User is on Home Page
#    And Clicks on View Details CTA on LAS tile
#    And User is redirected to Loan details page
#    And Clicks on Make Payment
#    And User is redirected to Part Prepayment Details page
#    And Clicks on Missed Interest details page
#    And User is redirected to Missed Interest Details page
#    And Enter valid amount
#    And click on Online Payment CTA
#    And User is redirected to Payment Checkout Page
#    And User clicks on Cancel CTA
#    And User is redirected to Payment Cancelled Page
#    Then Pre-approved Offers section should be displayed same as the Pre-approved Offers section displayed on Home Page
#    Examples:
#      | Mobile Number | Date     | Customer Type |
#      | 9545219299    | 02021999 | Individual    |
#
#
#  Scenario Outline: Verify after clicking on Retry CTA under on Payment Cancelled Page we are redirected to Part Prepayment details page
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User is on Home Page
#    And Clicks on View Details CTA on LAS tile
#    And User is redirected to Loan details page
#    And Clicks on Make Payment
#    And User is redirected to Part Prepayment Details page
#    And Enter valid amount
#    And click on Online Payment CTA
#    And User is redirected to Payment Checkout Page
#    And User clicks on Cancel CTA
#    And User is redirected to Payment Cancelled Page
#    And User clicks on Retry CTA
#    Then User should be redirected to Part prepayment details page
#    Examples:
#      | Mobile Number | Date     | Customer Type |
#      | 9545219299    | 02021999 | Individual    |
#
#
#  Scenario Outline: Verify after clicking on Back To Homepage CTA on Payment Cancelled Page we are redirected to Home page
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User is on Home Page
#    And Clicks on View Details CTA on LAS tile
#    And User is redirected to Loan details page
#    And Clicks on Make Payment
#    And User is redirected to Part Prepayment Details page
#    And Enter valid amount
#    And click on Online Payment CTA
#    And User is redirected to Payment Checkout Page
#    And User clicks on Cancel CTA
#    And User is redirected to Payment Cancelled Page
#    And User clicks on Back to Homepage CTA
#    Then User should be redirected to Home page
#    Examples:
#      | Mobile Number | Date     | Customer Type |
#      | 9545219299    | 02021999 | Individual    |
#
#
#
#
##Payment Unsuccessful
#
#  Scenario Outline: Verify after Cancelling the transaction from Payment Gateway page user is redirected to Payment Unsuccessful Page
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User is on Home Page
#    And Clicks on View Details CTA on LAS tile
#    And User is redirected to Loan details page
#    And Clicks on Make Payment
#    And User is redirected to Part Prepayment Details page
#    And Enter valid amount
#    And click on Online Payment CTA
#    And User is redirected to Payment Checkout Page
#    And User selects <Payment Method>
#    And Clicks on PAY CTA
#    And Cancels the transaction
#    Then User should be redirected to Payment Unsuccessful Page
#    Examples:
#      | Mobile Number | Date     | Customer Type | Payment Method |
#      | 9545219299    | 02021999 | Individual    | UPI            |
#      | 9545219299    | 02021999 | Individual    | Net Banking    |
#      | 9545219299    | 02021999 | Individual    | Debit Card     |
#
#
#  Scenario Outline: Verify after clicking on RAR on Payment Unsuccessful Page we are redirected to RAR details page
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User is on Home Page
#    And Clicks on View Details CTA on LAS tile
#    And User is redirected to Loan details page
#    And Clicks on Make Payment
#    And User is redirected to Part Prepayment Details page
#    And Enter valid amount
#    And click on Online Payment CTA
#    And User is redirected to Payment Checkout Page
#    And User selects <Payment Method>
#    And Clicks on PAY CTA
#    And Cancels the transaction
#    And User is redirected to Payment Unsuccessful Page
#    And Clicks on RAR
#    Then User should be redirected to RAR details page
#    Examples:
#      | Mobile Number | Date     | Customer Type | Payment Method |
#      | 9545219299    | 02021999 | Individual    | UPI            |
#      | 9545219299    | 02021999 | Individual    | Net Banking    |
#      | 9545219299    | 02021999 | Individual    | Debit Card     |
#
#  Scenario Outline: Verify after clicking on FAQ under Quick Actions on Payment Unsuccessful Page we are redirected to FAQ details page
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User is on Home Page
#    And Clicks on View Details CTA on LAS tile
#    And User is redirected to Loan details page
#    And Clicks on Make Payment
#    And User is redirected to Part Prepayment Details page
#    And Enter valid amount
#    And click on Online Payment CTA
#    And User is redirected to Payment Checkout Page
#    And User selects <Payment Method>
#    And Clicks on PAY CTA
#    And Cancels the transaction
#    And User is redirected to Payment Unsuccessful Page
#    And Clicks on FAQ
#    Then User should be redirected to FAQ details page
#    Examples:
#      | Mobile Number | Date     | Customer Type | Payment Method |
#      | 9545219299    | 02021999 | Individual    | UPI            |
#      | 9545219299    | 02021999 | Individual    | Net Banking    |
#      | 9545219299    | 02021999 | Individual    | Debit Card     |
#
#
#  Scenario Outline: Verify after clicking on Help CTA on Payment Unsuccessful Page pop up with content is displayed
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User is on Home Page
#    And Clicks on View Details CTA on LAS tile
#    And User is redirected to Loan details page
#    And Clicks on Make Payment
#    And User is redirected to Part Prepayment Details page
#    And Enter valid amount
#    And click on Online Payment CTA
#    And User is redirected to Payment Checkout Page
#    And User selects <Payment Method>
#    And Clicks on PAY CTA
#    And Cancels the transaction
#    And User is redirected to Payment Unsuccessful Page
#    And Clicks on Help CTA
#    Then Pop up with below content should be displayed
##  "In case of any queries, please reach out to us at Las.support@bajajfinserv.in" with Got IT CTA
#
#    Examples:
#      | Mobile Number | Date     | Customer Type | Payment Method |
#      | 9545219299    | 02021999 | Individual    | UPI            |
#      | 9545219299    | 02021999 | Individual    | Net Banking    |
#      | 9545219299    | 02021999 | Individual    | Debit Card     |
#
#  Scenario Outline: Verify after clicking on Done CTA on Payment Unsuccessful Page we are redirected to LAS landing page
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User is on Home Page
#    And Clicks on View Details CTA on LAS tile
#    And User is redirected to Loan details page
#    And Clicks on Make Payment
#    And User is redirected to Part Prepayment Details page
#    And Enter valid amount
#    And click on Online Payment CTA
#    And User is redirected to Payment Checkout Page
#    And User selects <Payment Method>
#    And Clicks on PAY CTA
#    And Cancels the transaction
#    And User is redirected to Payment Unsuccessful Page
#    And Clicks on Done CTA
#    Then User should be redirected to LAS landing details page
#    Examples:
#      | Mobile Number | Date     | Customer Type | Payment Method |
#      | 9545219299    | 02021999 | Individual    | UPI            |
#      | 9545219299    | 02021999 | Individual    | Net Banking    |
#      | 9545219299    | 02021999 | Individual    | Debit Card     |
#
#
#  Scenario Outline: Verify preapproved Offers section on Payment Unsuccessful page
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User is on Home Page
#    And Clicks on View Details CTA on LAS tile
#    And User is redirected to Loan details page
#    And Clicks on Make Payment
#    And User is redirected to Part Prepayment Details page
#    And Enter valid amount
#    And click on Online Payment CTA
#    And User is redirected to Payment Checkout Page
#    And User selects <Payment Method>
#    And Clicks on PAY CTA
#    And Cancels the transaction
#    And User is redirected to Payment Unsuccessful Page
#    Then Pre-approved Offers section should be displayed same as the Pre-approved Offers section displayed on Home Page
#    Examples:
#      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | LAS             | Payment method |
#      | 9545219299    | 02021999 | Individual    | Loan payment | Other payments | V428LAS00004845 | UPI            |
#      | 9545219299    | 02021999 | Individual    | Loan payment | Other payments | V428LAS00004845 | Debit card     |
#      | 9545219299    | 02021999 | Individual    | Loan payment | Other payments | V428LAS00004845 | Net Banking    |
#






#  Payment Unsuccessful and Cancelled – Hamburger flow

  Scenario Outline: Verify after Cancelling the transaction from Payment Checkout page user is redirected to Payment Cancelled Page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And Clicks on "<LAS>" tile
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/LASPartPayment" Url
    And Click on Missed Interest
    And User is redirected to Missed Interest Details page
    And Enter valid amount
    And click on Online Payment CTA
    And User is redirected to Payment Checkout Page
    And User clicks on Cancel CTA
    Then User should be redirected to Payment Cancelled Page
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | LAS             |
      | 9545219299    | 02021999 | Individual    | Loan payment | Other payments | V428LAS00004845 |

#  Scenario Outline: Verify after clicking on RAR under Quick Actions on Payment Cancelled Page we are redirected to RAR details page
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User is on Home Page
#    And Clicks on Hamburger Menu
#    And Selects an SubMenu from Hamburger "<SubMenu>"
#    And Clicks on SubListmenu "<SubListMenu>"
#    And Clicks on "<LAS>" tile
#    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/LASPartPayment" Url
#    And Click on Missed Interest
#    And User is redirected to Missed Interest Details page
#    And Enter valid amount
#    And click on Online Payment CTA
#    And User is redirected to Payment Checkout Page
#    And User clicks on Cancel CTA
#    And User is redirected to Payment Cancelled Page
#    And User clicks on RAR
#    Then User should be redirected to RAR details page
#    Examples:
#      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | LAS             |
#      | 9545219299    | 02021999 | Individual    | Loan payment | Other payments | V428LAS00004845 |
#
#  Scenario Outline: Verify after clicking on FAQ under Quick Actions on Payment Cancelled Page we are redirected to FAQ details page
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User is on Home Page
#    And Clicks on Hamburger Menu
#    And Selects an SubMenu from Hamburger "<SubMenu>"
#    And Clicks on SubListmenu "<SubListMenu>"
#    And Clicks on "<LAS>" tile
#    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/LASPartPayment" Url
#    And Click on Missed Interest
#    And User is redirected to Missed Interest Details page
#    And Enter valid amount
#    And click on Online Payment CTA
#    And User is redirected to Payment Checkout Page
#    And User clicks on Cancel CTA
#    And User is redirected to Payment Cancelled Page
#    And User clicks on FAQ
#    Then User should be redirected to FAQ details page
#    Examples:
#      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | LAS             |
#      | 9545219299    | 02021999 | Individual    | Loan payment | Other payments | V428LAS00004845 |


  Scenario Outline: Verify after clicking on Back To Homepage CTA on Payment Cancelled Page we are redirected to Home page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And Clicks on "<LAS>" tile
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/LASPartPayment" Url
    And Click on Missed Interest
    And User is redirected to Missed Interest Details page
    And Enter valid amount
    And click on Online Payment CTA
    And User is redirected to Payment Checkout Page
    And User clicks on Cancel CTA
    And User is redirected to Payment Cancelled Page
    And User clicks on Back to Homepage CTA
    Then User should be redirected to Home page
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | LAS             |
      | 9545219299    | 02021999 | Individual    | Loan payment | Other payments | V428LAS00004845 |

  Scenario Outline: Verify preapproved offers section on Payment Cancelled page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And Clicks on "<LAS>" tile
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/LASPartPayment" Url
    And Click on Missed Interest
    And User is redirected to Missed Interest Details page
    And Enter valid amount
    And click on Online Payment CTA
    And User is redirected to Payment Checkout Page
    And User clicks on Cancel CTA
    And User is redirected to Payment Cancelled Page
    Then Pre-approved Offers section should be displayed same as the Pre-approved Offers section displayed on Home Page
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | LAS             |
      | 9545219299    | 02021999 | Individual    | Loan payment | Other payments | V428LAS00004845 |


#Unsuccessful

  Scenario Outline: Verify after Cancelling the transaction from Payment Gateway page user is redirected to Payment Unsuccessful Page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And Clicks on "<LAS>" tile
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/LASPartPayment" Url
    And Click on Missed Interest
    And User is redirected to Missed Interest Details page
    And Enter valid amount
    And click on Online Payment CTA
    And User is redirected to Payment Checkout Page
    And User selects <Payment Method>
    And Clicks on PAY CTA
    And Cancels the transaction
    Then User should be redirected to Payment Unsuccessful Page
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | LAS             | Payment method |
      | 9545219299    | 02021999 | Individual    | Loan payment | Other payments | V428LAS00004845 | UPI            |
      | 9545219299    | 02021999 | Individual    | Loan payment | Other payments | V428LAS00004845 | Debit card     |
      | 9545219299    | 02021999 | Individual    | Loan payment | Other payments | V428LAS00004845 | Net Banking    |


  Scenario Outline: Verify after clicking on RAR on Payment Unsuccessful Page we are redirected to RAR details page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And Clicks on "<LAS>" tile
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/LASPartPayment" Url
    And Click on Missed Interest
    And User is redirected to Missed Interest Details page
    And Enter valid amount
    And click on Online Payment CTA
    And User is redirected to Payment Checkout Page
    And User selects <Payment Method>
    And Clicks on PAY CTA
    And Cancels the transaction
    And User is redirected to Payment Unsuccessful Page
    And Clicks on RAR
    Then User should be redirected to RAR details page
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | LAS             | Payment method |
      | 9545219299    | 02021999 | Individual    | Loan payment | Other payments | V428LAS00004845 | UPI            |
      | 9545219299    | 02021999 | Individual    | Loan payment | Other payments | V428LAS00004845 | Debit card     |
      | 9545219299    | 02021999 | Individual    | Loan payment | Other payments | V428LAS00004845 | Net Banking    |

  Scenario Outline: Verify after clicking on FAQ under Quick Actions on Payment Unsuccessful Page we are redirected to FAQ details page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And Clicks on "<LAS>" tile
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/LASPartPayment" Url
    And Click on Missed Interest
    And User is redirected to Missed Interest Details page
    And Enter valid amount
    And click on Online Payment CTA
    And User is redirected to Payment Checkout Page
    And User selects <Payment Method>
    And Clicks on PAY CTA
    And Cancels the transaction
    And User is redirected to Payment Unsuccessful Page
    And Clicks on FAQ
    Then User should be redirected to FAQ details page
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | LAS             | Payment method |
      | 9545219299    | 02021999 | Individual    | Loan payment | Other payments | V428LAS00004845 | UPI            |
      | 9545219299    | 02021999 | Individual    | Loan payment | Other payments | V428LAS00004845 | Debit card     |
      | 9545219299    | 02021999 | Individual    | Loan payment | Other payments | V428LAS00004845 | Net Banking    |


  Scenario Outline: Verify after clicking on Help CTA on Payment Unsuccessful Page pop up with content is displayed
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And Clicks on "<LAS>" tile
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/LASPartPayment" Url
    And Click on Missed Interest
    And User is redirected to Missed Interest Details page
    And Enter valid amount
    And click on Online Payment CTA
    And User is redirected to Payment Checkout Page
    And User selects <Payment Method>
    And Clicks on PAY CTA
    And Cancels the transaction
    And User is redirected to Payment Unsuccessful Page
    And Clicks on Help CTA
    Then Pop up with below content should be displayed
#  "In case of any queries, please reach out to us at Las.support@bajajfinserv.in" with Got IT CTA

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | LAS             | Payment method |
      | 9545219299    | 02021999 | Individual    | Loan payment | Other payments | V428LAS00004845 | UPI            |
      | 9545219299    | 02021999 | Individual    | Loan payment | Other payments | V428LAS00004845 | Debit card     |
      | 9545219299    | 02021999 | Individual    | Loan payment | Other payments | V428LAS00004845 | Net Banking    |

  Scenario Outline: Verify after clicking on Done CTA on Payment Unsuccessful Page we are redirected to LAS landing page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And Clicks on "<LAS>" tile
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/LASPartPayment" Url
    And Click on Missed Interest
    And User is redirected to Missed Interest Details page
    And Enter valid amount
    And click on Online Payment CTA
    And User is redirected to Payment Checkout Page
    And User selects <Payment Method>
    And Clicks on PAY CTA
    And Cancels the transaction
    And User is redirected to Payment Unsuccessful Page
    And Clicks on Done CTA
    Then User should be redirected to LAS landing details page
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | LAS             | Payment method |
      | 9545219299    | 02021999 | Individual    | Loan payment | Other payments | V428LAS00004845 | UPI            |
      | 9545219299    | 02021999 | Individual    | Loan payment | Other payments | V428LAS00004845 | Debit card     |
      | 9545219299    | 02021999 | Individual    | Loan payment | Other payments | V428LAS00004845 | Net Banking    |


  Scenario Outline: Verify preapproved offers section page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And Clicks on "<LAS>" tile
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/LASPartPayment" Url
    And Click on Missed Interest
    And User is redirected to Missed Interest Details page
    And Enter valid amount
    And click on Online Payment CTA
    And User is redirected to Payment Checkout Page
    And User selects <Payment Method>
    And Clicks on PAY CTA
    And Cancels the transaction
    And User is redirected to Payment Unsuccessful Page
    Then Pre-approved Offers section should be displayed same as the Pre-approved Offers section displayed on Home Page
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu    | LAS             | Payment method |
      | 9545219299    | 02021999 | Individual    | Loan payment | Other payments | V428LAS00004845 | UPI            |
      | 9545219299    | 02021999 | Individual    | Loan payment | Other payments | V428LAS00004845 | Debit card     |
      | 9545219299    | 02021999 | Individual    | Loan payment | Other payments | V428LAS00004845 | Net Banking    |




#MyRelations : Make Payment flow

  Scenario Outline: Verify after clicking on Missed Interests from Cockpit menu we are redirected to Missed Interest details page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on View Details CTA on LAS tile
    And User is redirected to Loan details page
    And Clicks on Make Payment
    And  User is redirected to Part Prepayment Details page
    And Click on Missed Interest
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/LASInterestPayment" Url

    Examples:
      | Mobile Number | Date     | Customer Type |
      | 9545219299    | 02021999 | Individual    |


  Scenario Outline: Verify minimum amount is prepopulated in input field for part prepayment
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on View Details CTA on LAS tile
    And User is redirected to Loan details page
    And Clicks on Make Payment
    And User is redirected to Part Prepayment Details page
    And Click on Missed Interest
    And User is redirected to Missed Interest Details page
    Then Minimum amount should be prepopulated in Input field
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 9545219299    | 02021999 | Individual    |


  Scenario Outline: Verify Inline message is displayed when customer enters amount outside the range(less than minimum amount)
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on View Details CTA on LAS tile
    And User is redirected to Loan details page
    And Clicks on Make Payment
    And User is redirected to Part Prepayment Details page
    And Click on Missed Interest
    And User is redirected to Missed Interest Details page
    And Enter <Amount> less than the Minimum amount given
    Then Inline message should be displayed as "Enter amount between {min} & {Max}"
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 9545219299    | 02021999 | Individual    |

  Scenario Outline: Verify Inline message is displayed when customer enters amount outside the range(more than the maximum amount)
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on View Details CTA on LAS tile
    And User is redirected to Loan details page
    And Clicks on Make Payment
    And User is redirected to Part Prepayment Details page
    And Click on Missed Interest
    And User is redirected to Missed Interest Details page
    And Enter <Amount> more than the Maximum amount given
    Then Inline message should be displayed as "Enter amount between {min} & {Max}"
    Examples:
      | Mobile Number | Date     | Customer Type | Amount |
      | 9545219299    | 02021999 | Individual    |        |


  Scenario Outline: verify Online Payment CTA is disabled when customer enters amount outside the range (less than the minimum amount)
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on View Details CTA on LAS tile
    And User is redirected to Loan details page
    And Clicks on Make Payment
    And User is redirected to Part Prepayment Details page
    And Click on Missed Interest
    And User is redirected to Missed Interest Details page
    And Enter <Amount> less than the Minimum amount given
    Then Online Payment CTA should be disabled
    Examples:
      | Mobile Number | Date     | Customer Type | Amount |
      | 9545219299    | 02021999 | Individual    |        |

  Scenario Outline: verify Online Payment CTA is disabled when customer enters amount outside the range (more than the maximum amount)
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on View Details CTA on LAS tile
    And User is redirected to Loan details page
    And Clicks on Make Payment
    And User is redirected to Part Prepayment Details page
    And Click on Missed Interest
    And User is redirected to Missed Interest Details page
    And Enter <Amount> more than the Maximum range given
    Then Online Payment CTA should be disabled
    Examples:
      | Mobile Number | Date     | Customer Type | Amount |
      | 9545219299    | 02021999 | Individual    |        |

  Scenario Outline: Verify Invalid input is accepted in the input field
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on View Details CTA on LAS tile
    And User is redirected to Loan details page
    And Clicks on Make Payment
    And User is redirected to Part Prepayment Details page
    And Click on Missed Interest
    And User is redirected to Missed Interest Details page
    And Enter <Invalid input>
    Then User should not be allowed to enter Invalid input
    Examples:
      | Mobile Number | Date     | Customer Type | Invalid input |
      | 9545219299    | 02021999 | Individual    | []\,./*&#@$!  |
      | 9545219299    | 02021999 | Individual    |               |
      | 9545219299    | 02021999 | Individual    | ABCXYZ        |
      | 9545219299    | 02021999 | Individual    | 101.          |


  Scenario Outline: Verify after clicking on Online Payment CTA user is redirected to Payment Checkout Page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on View Details CTA on LAS tile
    And User is redirected to Loan details page
    And Clicks on Make Payment
    And User is redirected to Part Prepayment Details page
    And Click on Missed Interest
    And User is redirected to Missed Interest Details page
    And Enter valid amount
    And click on Online Payment CTA
    Then User should be redirected to Payment Checkout Page
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 9545219299    | 02021999 | individual    |

  Scenario Outline: Verify content displayed on  Offline Payment CTA
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on View Details CTA on LAS tile
    And User is redirected to Loan details page
    And Clicks on Make Payment
    And User is redirected to Part Prepayment Details page
    And Click on Missed Interest
    And User is redirected to Missed Interest Details page
    And Enter valid amount
    And click on Offline Payment CTA
    And Offline Method Pop up is displayed
    Then Below Content should be displayed,
#  If you wish to make a payment via Cheque/DD, you can do so in our below bank account & share the receipt on Las.crm@bajajfinserv.in
#  Bank HDFC Bank
#  Account No 00070350007680
#  IFSC Code HDFC0000007
#  Account Name BAJAJ FINANCE LIMITED
#  Branch BHANDARKAR ROAD, PUNE
#  Please Note: The payment needs to be made from the bank account registered with Bajaj Finance Limited. Repayments made are accounted on a real time basis, subject to clearance by the bank.
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 9545219299    | 02021999 | Individual    |

  Scenario Outline: Verify registered email id and mobile number are in masked format under Payment confirmation to be sent on this
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on View Details CTA on LAS tile
    And User is redirected to Loan details page
    And Clicks on Make Payment
    And User is redirected to Part Prepayment Details page
    And Click on Missed Interest
    And User is redirected to Missed Interest Details page
    Then Customer should able to view first TWO & last TWO letters of Email
    And Customer should able to view last FOUR digits of Mobile number.
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 9545219299    | 02021999 | Individual    |

  Scenario Outline: Verify after clicking on RAR CTA user is redirected to RAR details page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on View Details CTA on LAS tile
    And User is redirected to Loan details page
    And Clicks on Make Payment
    And User is redirected to Part Prepayment Details page
    And Click on Missed Interest
    And User is redirected to Missed Interest Details page
    And Click on RAR CTA
    Then User should be redirected to RAR details Page
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 9545219299    | 02021999 | Individual    |

  Scenario Outline: Verify after clicking on FAQ CTA user is redirected to FAQ details page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on View Details CTA on LAS tile
    And User is redirected to Loan details page
    And Clicks on Make Payment
    And User is redirected to Part Prepayment Details page
    And Click on Missed Interest
    And User is redirected to Missed Interest Details page
    And Click on FAQ CTA
    Then User should be redirected to FAQ details Page
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 9545219299    | 02021999 | Individual    |

#  Payment Unsuccessful and Cancelled – Make Payment Flow

#Payment Cancelled

  Scenario Outline: Verify after Cancelling the transaction from Payment Checkout page user is redirected to Payment Cancelled Page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on View Details CTA on LAS tile
    And User is redirected to Loan details page
    And Clicks on Make Payment
    And User is redirected to Part Prepayment Details page
    And Click on Missed Interest
    And User is redirected to Missed Interest Details page
    And Enter valid amount
    And click on Online Payment CTA
    And User is redirected to Payment Checkout Page
    And User clicks on Cancel CTA
    Then User should be redirected to Payment Cancelled Page
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 9545219299    | 02021999 | Individual    |

  Scenario Outline: Verify preapproved offers section
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on View Details CTA on LAS tile
    And User is redirected to Loan details page
    And Clicks on Make Payment
    And User is redirected to Part Prepayment Details page
    And Click on Missed Interest
    And User is redirected to Missed Interest Details page
    And Enter valid amount
    And click on Online Payment CTA
    And User is redirected to Payment Checkout Page
    And User clicks on Cancel CTA
    And User is redirected to Payment Cancelled Page
    Then Pre-approved Offers section should be displayed same as the Pre-approved Offers section displayed on Home Page
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 9545219299    | 02021999 | Individual    |


  Scenario Outline: Verify after clicking on RAR under Quick Actions on Payment Cancelled Page we are redirected to RAR details page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on View Details CTA on LAS tile
    And User is redirected to Loan details page
    And Clicks on Make Payment
    And User is redirected to Part Prepayment Details page
    And Click on Missed Interest
    And User is redirected to Missed Interest Details page
    And Enter valid amount
    And click on Online Payment CTA
    And User is redirected to Payment Checkout Page
    And User clicks on Cancel CTA
    And User is redirected to Payment Cancelled Page
    And User clicks on RAR
    Then User should be redirected to RAR details page
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 9545219299    | 02021999 | Individual    |

  Scenario Outline: Verify after clicking on FAQ under Quick Actions on Payment Cancelled Page we are redirected to FAQ details page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on View Details CTA on LAS tile
    And User is redirected to Loan details page
    And Clicks on Make Payment
    And User is redirected to Part Prepayment Details page
    And Click on Missed Interest
    And User is redirected to Missed Interest Details page
    And Enter valid amount
    And click on Online Payment CTA
    And User is redirected to Payment Checkout Page
    And User clicks on Cancel CTA
    And User is redirected to Payment Cancelled Page
    And User clicks on FAQ
    Then User should be redirected to FAQ details page
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 9545219299    | 02021999 | Individual    |

  Scenario Outline: Verify after clicking on Retry CTA under on Payment Cancelled Page we are redirected to Missed Interest details page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on View Details CTA on LAS tile
    And User is redirected to Loan details page
    And Clicks on Make Payment
    And User is redirected to Part Prepayment Details page
    And Click on Missed Interest
    And User is redirected to Missed Interest Details page
    And Enter valid amount
    And click on Online Payment CTA
    And User is redirected to Payment Checkout Page
    And User clicks on Cancel CTA
    And User is redirected to Payment Cancelled Page
    And User clicks on Retry CTA
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/LASInterestPayment" Url
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 9545219299    | 02021999 | Individual    |

  Scenario Outline: Verify after clicking on Back To Homepage CTA on Payment Cancelled Page we are redirected to Home page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on View Details CTA on LAS tile
    And User is redirected to Loan details page
    And Clicks on Make Payment
    And User is redirected to Part Prepayment Details page
    And Click on Missed Interest
    And User is redirected to Missed Interest Details page
    And Enter valid amount
    And click on Online Payment CTA
    And User is redirected to Payment Checkout Page
    And User clicks on Cancel CTA
    And User is redirected to Payment Cancelled Page
    And User clicks on Back to Homepage CTA
    Then User should be redirected to Home page
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 9545219299    | 02021999 | Individual    |

#Payment Unsuccessful

  Scenario Outline: Verify after Cancelling the transaction from Payment Gateway page user is redirected to Payment Unsuccessful Page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on View Details CTA on LAS tile
    And User is redirected to Loan details page
    And Clicks on Make Payment
    And User is redirected to Part Prepayment Details page
    And Click on Missed Interest
    And User is redirected to Missed Interest Details page
    And Enter valid amount
    And click on Online Payment CTA
    And User is redirected to Payment Checkout Page
    And User selects <Payment Method>
    And Clicks on PAY CTA
    And Cancels the transaction
    Then User should be redirected to Payment Unsuccessful Page
    Examples:
      | Mobile Number | Date     | Customer Type | Payment Method |
      | 9545219299    | 02021999 | Individual    | UPI            |
      | 9545219299    | 02021999 | Individual    | Net Banking    |
      | 9545219299    | 02021999 | Individual    | Debit Card     |


  Scenario Outline: Verify after clicking on RAR on Payment Unsuccessful Page we are redirected to RAR details page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on View Details CTA on LAS tile
    And User is redirected to Loan details page
    And Clicks on Make Payment
    And User is redirected to Part Prepayment Details page
    And Click on Missed Interest
    And User is redirected to Missed Interest Details page
    And Enter valid amount
    And click on Online Payment CTA
    And User is redirected to Payment Checkout Page
    And User selects <Payment Method>
    And Clicks on PAY CTA
    And Cancels the transaction
    And User is redirected to Payment Unsuccessful Page
    And Clicks on RAR
    Then User should be redirected to RAR details page
    Examples:
      | Mobile Number | Date     | Customer Type | Payment Method |
      | 9545219299    | 02021999 | Individual    | UPI            |
      | 9545219299    | 02021999 | Individual    | Net Banking    |
      | 9545219299    | 02021999 | Individual    | Debit Card     |

  Scenario Outline: Verify after clicking on FAQ under Quick Actions on Payment Unsuccessful Page we are redirected to FAQ details page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on View Details CTA on LAS tile
    And User is redirected to Loan details page
    And Clicks on Make Payment
    And User is redirected to Part Prepayment Details page
    And Click on Missed Interest
    And User is redirected to Missed Interest Details page
    And Enter valid amount
    And click on Online Payment CTA
    And User is redirected to Payment Checkout Page
    And User selects <Payment Method>
    And Clicks on PAY CTA
    And Cancels the transaction
    And User is redirected to Payment Unsuccessful Page
    And Clicks on FAQ
    Then User should be redirected to FAQ details page
    Examples:
      | Mobile Number | Date     | Customer Type | Payment Method |
      | 9545219299    | 02021999 | Individual    | UPI            |
      | 9545219299    | 02021999 | Individual    | Net Banking    |
      | 9545219299    | 02021999 | Individual    | Debit Card     |


  Scenario Outline: Verify after clicking on Help CTA on Payment Unsuccessful Page pop up with content is displayed
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on View Details CTA on LAS tile
    And User is redirected to Loan details page
    And Clicks on Make Payment
    And User is redirected to Part Prepayment Details page
    And Click on Missed Interest
    And User is redirected to Missed Interest Details page
    And Enter valid amount
    And click on Online Payment CTA
    And User is redirected to Payment Checkout Page
    And User selects <Payment Method>
    And Clicks on PAY CTA
    And Cancels the transaction
    And User is redirected to Payment Unsuccessful Page
    And Clicks on Help CTA
    Then Pop up with below content should be displayed
#  "In case of any queries, please reach out to us at Las.support@bajajfinserv.in" with Got IT CTA

    Examples:
      | Mobile Number | Date     | Customer Type | Payment Method |
      | 9545219299    | 02021999 | Individual    | UPI            |
      | 9545219299    | 02021999 | Individual    | Net Banking    |
      | 9545219299    | 02021999 | Individual    | Debit Card     |

  Scenario Outline: Verify after clicking on Done CTA on Payment Unsuccessful Page we are redirected to LAS landing page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on View Details CTA on LAS tile
    And User is redirected to Loan details page
    And Clicks on Make Payment
    And User is redirected to Part Prepayment Details page
    And Click on Missed Interest
    And User is redirected to Missed Interest Details page
    And Enter valid amount
    And click on Online Payment CTA
    And User is redirected to Payment Checkout Page
    And User selects <Payment Method>
    And Clicks on PAY CTA
    And Cancels the transaction
    And User is redirected to Payment Unsuccessful Page
    And Clicks on Done CTA
    Then User should be redirected to LAS landing details page
    Examples:
      | Mobile Number | Date     | Customer Type | Payment Method |
      | 9545219299    | 02021999 | Individual    | UPI            |
      | 9545219299    | 02021999 | Individual    | Net Banking    |
      | 9545219299    | 02021999 | Individual    | Debit Card     |

  Scenario Outline: Verify preapproved offers section on Payment Unsuccessful page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on View Details CTA on LAS tile
    And User is redirected to Loan details page
    And Clicks on Make Payment
    And User is redirected to Part Prepayment Details page
    And Click on Missed Interest
    And User is redirected to Missed Interest Details page
    And Enter valid amount
    And click on Online Payment CTA
    And User is redirected to Payment Checkout Page
    And User selects <Payment Method>
    And Clicks on PAY CTA
    And Cancels the transaction
    And User is redirected to Payment Unsuccessful Page
    Then Pre-approved Offers section should be displayed same as the Pre-approved Offers section displayed on Home Page
    Examples:
      | Mobile Number | Date     | Customer Type | Payment Method |
      | 9545219299    | 02021999 | Individual    | UPI            |
      | 9545219299    | 02021999 | Individual    | Net Banking    |
      | 9545219299    | 02021999 | Individual    | Debit Card     |


