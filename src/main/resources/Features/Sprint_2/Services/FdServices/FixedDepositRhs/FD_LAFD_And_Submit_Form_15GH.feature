@FD2804@FD2
Feature: FD Services - RHS - LAFD & TDS Waiver


  @LAFD @one
    @Pass
  Scenario Outline: FD- RHS- Loan Against Fixed Deposit- Page Contents
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    Then My relations Page should be displayed
    And click on "Deposits" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    And Customer Click on "Get a loan against FD" CTA in RHS
    Then User should be redirected to specific LAFD page "<Account No>"
    And verify given details are shown to Customer when clicks on Get A Loan Against FD
    Then verify RHS "Need assistance?" following Options: "Help and Support, Document Center" are Displayed
    And verify the buttons displayed in the Page-"<Buttons>"

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle      | Account No |Buttons|
      | 9820372335    | 05011978 | Individual    | FIXED DEPOSIT | 963589     |CANCEL,GENERATE OTP   |

  @LAFD @one
  @Pass
  Scenario Outline: FD- RHS- Loan Against Fixed Deposit- Min and Max amount to be shown
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    Then My relations Page should be displayed
    And click on "Deposits" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    And Customer Click on "Get a loan against FD" CTA in RHS
    Then User should be redirected to specific LAFD page "<Account No>"
    And verify Min and Max amount to be shown as per eligibility Under FD eligibility Amount

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle      | Account No |
      | 9820372335    | 05011978 | Individual    | FIXED DEPOSIT | 963589     |

  @LAFD @one
  @Pass
  Scenario Outline: FD- RHS- Loan Against Fixed Deposit- verify tool tip to be shown on RHS amount text box
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    Then My relations Page should be displayed
    And click on "Deposits" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    And Customer Click on "Get a loan against FD" CTA in RHS
    Then User should be redirected to specific LAFD page "<Account No>"
    And verify tool tip to be shown on RHS amount text box

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle      | Account No |
      | 9820372335    | 05011978 | Individual    | FIXED DEPOSIT | 963589     |

  @LAFD @one
  @Pass
  Scenario Outline: FD- RHS- Loan Against Fixed Deposit- Validation message for invalid inputs in Loan against FD field
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    Then My relations Page should be displayed
    And click on "Deposits" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    And Customer Click on "Get a loan against FD" CTA in RHS
    Then User should be redirected to specific LAFD page "<Account No>"
    And verify Validation message is displayed when customer enters invalid inputs in Loan against FD field

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle      | Account No |
      | 9820372335    | 05011978 | Individual    | FIXED DEPOSIT | 963589     |

  @LAFD @one
  @Pass
  Scenario Outline: FD- RHS- Loan Against Fixed Deposit- verify Customer is able view given bank details on RHS
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    Then My relations Page should be displayed
    And click on "Deposits" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    And Customer Click on "Get a loan against FD" CTA in RHS
    Then User should be redirected to specific LAFD page "<Account No>"
    And verify Customer is able view given bank details on RHS

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle      | Account No |
      | 9820372335    | 05011978 | Individual    | FIXED DEPOSIT | 963589     |

  @LAFD @two
  @Pass
  Scenario Outline: FD- RHS- Loan Against Fixed Deposit- verify Customer will be able to view only last 4 digit ,rest will be masked
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    Then My relations Page should be displayed
    And click on "Deposits" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    And Customer Click on "Get a loan against FD" CTA in RHS
    Then User should be redirected to specific LAFD page "<Account No>"
    And verify Customer will  be able to view only last 4 digit ,rest will be masked

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle      | Account No |
      | 9820372335    | 05011978 | Individual    | FIXED DEPOSIT | 963589     |
  @LAFD @two
  @Pass
  Scenario Outline: FD- RHS- Loan Against Fixed Deposit- verify Customer is able to view Terms and Conditions
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    Then My relations Page should be displayed
    And click on "Deposits" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    And Customer Click on "Get a loan against FD" CTA in RHS
    Then User should be redirected to specific LAFD page "<Account No>"
    And Customer clicks on "Terms and Conditions" Button in Get a loan against FD
    Then Terms and Conditions Popup is displayed for Customer

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle      | Account No |
      | 9820372335    | 05011978 | Individual    | FIXED DEPOSIT | 963589     |

#  @LAFD @two
#  @Pass
#  Scenario Outline: FD- RHS- Loan Against Fixed Deposit- verify when Customer enters valid amount then, Generate OTP CTA is highlighted
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User is on Home Page
#    And Customer is able to view My Relations Section to ETB Customers
#    And Customer clicks on view all option
#    Then My relations Page should be displayed
#    And click on "Deposits" tab
#    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
#    And Customer Click on "Get a loan against FD" CTA in RHS
#    Then User should be redirected to specific LAFD page "<Account No>"
##    And "Generate OTP" Button is Disabled
#    And verify when Customer enters valid amount
#    Then "GENERATE OTP" Button is Enabled
#
#    Examples:
#      | Mobile Number | Date     | Customer Type | Subtitle      | Account No |
#      | 9820372335    | 05011978 | Individual    | FIXED DEPOSIT | 963589     |


  @LAFD @three
  @Pass
  Scenario Outline: FD- RHS- Loan Against Fixed Deposit- verify congratulation screen to be shown
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    Then My relations Page should be displayed
    And click on "Deposits" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    And Customer Click on "Get a loan against FD" CTA in RHS
    Then User should be redirected to specific LAFD page "<Account No>"
    And verify when Customer enters valid amount then, Generate OTP CTA is highlighted
    And click on "GENERATE OTP" Button
    And Enter "1" in "OTP Screen Text box 1"
    And Enter "2" in "OTP Screen Text box 2"
    And Enter "3" in "OTP Screen Text box 3"
    And Enter "4" in "OTP Screen Text box 4"
    And Enter "5" in "OTP Screen Text box 5"
    And Enter "6" in "OTP Screen Text box 6"
    And "Submit Button in LAFD OTP Screen" is Enabled
    And Clicks on "Submit Button in LAFD OTP Screen"
    Then verify congratulation screen to be shown
    And verify given details to be shown under Congratulation screen
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle      | Account No |
      | 9820372335    | 05011978 | Individual    | FIXED DEPOSIT | 963589     |
#      | 9987062860    | 02031960 | Individual    | FIXED DEPOSIT | 433782     |

  @LAFD @3
  @Pass
  Scenario Outline: FD- RHS- Loan Against Fixed Deposit- verify Error message when LAFD is not applicable for Joint Holders
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    Then My relations Page should be displayed
    And click on "Deposits" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    And Customer Click on "Get a loan against FD" CTA in RHS
    Then verify Error message when LAFD is not applicable for Joint Holders

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle      | Account No |
      | 9987062860    | 02031960 | Individual    | FIXED DEPOSIT | 433782     |

  @LAFD @3
  @Pass
  Scenario Outline: FD- RHS- Loan Against Fixed Deposit- verify Error message when Primary account holder is a Minor
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    Then My relations Page should be displayed
    And click on "Deposits" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    And Customer Click on "Get a loan against FD" CTA in RHS
    Then verify Error message when Primary account holder is a Minor

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle      | Account No |
      | 9823055795    | 25072016 | Individual    | FIXED DEPOSIT | 1005014    |

  @LAFD @3
  @Pass
  Scenario Outline: FD- RHS- Loan Against Fixed Deposit- verify Error message when FD Is maturing in less than 1 month
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    Then My relations Page should be displayed
    And click on "Deposits" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    And Customer Click on "Get a loan against FD" CTA in RHS
    Then verify Error message when FD Is maturing in less than 1 month

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle      | Account No |
      | 9819498845    | 30071979 | Individual    | FIXED DEPOSIT | 377954     |

  @LAFD @3
  @Pass
  Scenario Outline: FD- RHS- Loan Against Fixed Deposit- verify LAFD will not be allowed to joint account holders
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    Then My relations Page should be displayed
    And click on "Deposits" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    And Customer Click on "Get a loan against FD" CTA in RHS
    Then verify LAFD will not be allowed to joint account holders "<MSG>"

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle      | Account No | MSG                                                                                                          |
      | 9867024806    | 02061962 | Individual    | FIXED DEPOSIT | 544165     | Your request cannot be processed online as there is a co-applicant involved. Please visit our nearest branch |

    #######LAFD OTP Verification

  @LAFD @otp
  @Pass
  Scenario Outline: FD- RHS- Loan Against Fixed Deposit- verify OTP popup
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    Then My relations Page should be displayed
    And click on "Deposits" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    And Customer Click on "Get a loan against FD" CTA in RHS
    Then User should be redirected to specific LAFD page "<Account No>"
    And verify when Customer enters valid amount then, Generate OTP CTA is highlighted
    And click on "GENERATE OTP" Button
    And OTP Verification title Displayed
    Then verify Resend OTP button and Timing in Reverse Order
    And Wait 60 seconds for "Enable Resend OTP Button"
    And Verify "Enable Resend OTP Button" is Displayed
    And Clicks on "Enable Resend OTP Button"
    And verify Resend OTP button and Timing in Reverse Order

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle      | Account No |
      | 9532657683    | 05011978 | Individual    | FIXED DEPOSIT | 421065     |

  @LAFD @otp
  @Pass
  Scenario Outline: FD- RHS- Loan Against Fixed Deposit- verify OTP popup 2
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    Then My relations Page should be displayed
    And click on "Deposits" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    And Customer Click on "Get a loan against FD" CTA in RHS
    Then User should be redirected to specific LAFD page "<Account No>"
    And verify when Customer enters valid amount then, Generate OTP CTA is highlighted
    And click on "GENERATE OTP" Button
    And OTP Verification title Displayed
    Then Enter "0" in "OTP Screen Text box 1"
    And "OTP Screen Text box 1" Bottom Line Color Changed into "Green" After Enter "Valid" Value
    And "Submit Button in LAFD OTP Screen" is Disabled
    And Enter "2" in "OTP Screen Text box 2"
    And "OTP Screen Text box 2" Bottom Line Color Changed into "Green" After Enter "Valid" Value
    And "Submit Button in LAFD OTP Screen" is Disabled
    And Enter "3" in "OTP Screen Text box 3"
    And "OTP Screen Text box 3" Bottom Line Color Changed into "Green" After Enter "Valid" Value
    And "Submit Button in LAFD OTP Screen" is Disabled
    And Enter "4" in "OTP Screen Text box 4"
    And "OTP Screen Text box 4" Bottom Line Color Changed into "Green" After Enter "Valid" Value
    And "Submit Button in LAFD OTP Screen" is Disabled
    And Enter "5" in "OTP Screen Text box 5"
    And "OTP Screen Text box 5" Bottom Line Color Changed into "Green" After Enter "Valid" Value
    And "Submit Button in LAFD OTP Screen" is Disabled
    And Enter "6" in "OTP Screen Text box 6"
    And "OTP Screen Text box 6" Bottom Line Color Changed into "Green" After Enter "Valid" Value
    And "Submit Button in LAFD OTP Screen" is Enabled
    And Clicks on "Submit Button in LAFD OTP Screen"
    And Verify "Invalid OTP Error Message" is Displayed
    And "Submit Button in LAFD OTP Screen" is Disabled
    And verify "OTP Screen Text box 1" is Not Accepted for following values: "a, A, !, @, $, %, ^, &, *, (, ., ),  "
    And verify "OTP Screen Text box 2" is Not Accepted for following values: "a, A, !, @, $, %, ^, &, *, (, ., ),  "
    And verify "OTP Screen Text box 3" is Not Accepted for following values: "a, A, !, @, $, %, ^, &, *, (, ., ),  "
    And verify "OTP Screen Text box 4" is Not Accepted for following values: "a, A, !, @, $, %, ^, &, *, (, ., ),  "
    And verify "OTP Screen Text box 5" is Not Accepted for following values: "a, A, !, @, $, %, ^, &, *, (, ., ),  "
    And verify "OTP Screen Text box 6" is Not Accepted for following values: "a, A, !, @, $, %, ^, &, *, (, ., ),  "
    And Wait 60 seconds
    And Enter "1" in "OTP Screen Text box 1"
    And Enter "2" in "OTP Screen Text box 2"
    And Enter "3" in "OTP Screen Text box 3"
    And Enter "4" in "OTP Screen Text box 4"
    And Enter "5" in "OTP Screen Text box 5"
    And Enter "6" in "OTP Screen Text box 6"
    And "Submit Button in LAFD OTP Screen" is Enabled
    And Clicks on "Submit Button in LAFD OTP Screen"
    And Verify "OTP Expired Error Message" is Displayed

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle      | Account No |
      | 9820372335    | 05011978 | Individual    | FIXED DEPOSIT | 963589     |



#   #######SUBMIT TDS WAIvER
  @STW @4
  @Pass
  Scenario Outline: FD- RHS- Submit TDS- verify customer is redirected to “TDS Waiver Page” after selecting “Submit TDS Waiver” under Things you can do on Fixed Deposit Page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    Then My relations Page should be displayed
    And click on "Deposits" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    And Customer Click on "Submit Form 15G/H" CTA in RHS
    Then verify customer is redirected to TDS Waiver Page with "<Header>"

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle      | Account No | Header     |
      | 9867024806    | 02061962 | Individual    | FIXED DEPOSIT | 544165     | TDS Waiver |

  @STW @4
  @Pass
  Scenario Outline: FD- RHS- Submit TDS- verify Form 15 G to be displayed when age is less than 60
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    Then My relations Page should be displayed
    And click on "Deposits" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    And Customer Click on "Submit Form 15G/H" CTA in RHS
    Then verify customer is redirected to TDS Waiver Page with "<Header>"
    And verify Form 15 G to be displayed when age is less than 60 "<Form Text>"

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle      | Account No | Header     | Form Text              |
      | 9820372335    | 05011978 | Individual    | FIXED DEPOSIT | 963589     | TDS Waiver | Fill up your Form 15 G |

  @STW @4
  @Pass
  Scenario Outline: FD- RHS- Submit TDS- verify Form 15 H to be displayed when age is more than or equals to 60
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    Then My relations Page should be displayed
    And click on "Deposits" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    And Customer Click on "Submit Form 15G/H" CTA in RHS
    Then verify customer is redirected to TDS Waiver Page with "<Header>"
    And erify Form 15 H to be displayed when age is more than or equals to 60 "<Form Text>"

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle      | Account No | Header     | Form Text              |
      | 9532657683    | 12071958 | Individual    | FIXED DEPOSIT | 421062     | TDS Waiver | Fill up your Form 15 H |

  @STW @4
  @Pass
  Scenario Outline: FD- RHS- Submit TDS- verify customer is able to view details when clicks on Submit TDS waiver
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    Then My relations Page should be displayed
    And click on "Deposits" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    And Customer Click on "Submit Form 15G/H" CTA in RHS
    Then verify customer is redirected to TDS Waiver Page with "<Header>"
    And verify RHS "Need help?" following Options: "Help and Support, Document Center" are Displayed
    And verify customer is able to view details when clicks on Submit TDS waiver

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle      | Account No | Header     |
      | 9532657683    | 12071958 | Individual    | FIXED DEPOSIT | 421062     | TDS Waiver |

  @STW
  @Pass
  Scenario Outline: FD- RHS- Submit TDS- verify customer is able to view Part 2 details when clicks on Submit TDS waiver
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    Then My relations Page should be displayed
    And click on "Deposits" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    And Customer Click on "Submit Form 15G/H" CTA in RHS
    Then verify customer is redirected to TDS Waiver Page with "<Header>"
    And verify customer is able to view Part 2 details when clicks on Submit TDS waiver

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle      | Account No | Header     |
      | 9532657683    | 12071958 | Individual    | FIXED DEPOSIT | 421062     | TDS Waiver |



  @STW @4
  @Pass
  Scenario Outline: FD- RHS- Submit TDS- verify customer is able to view and download the file from Download the form CTA
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    Then My relations Page should be displayed
    And click on "Deposits" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    And Customer Click on "Submit Form 15G/H" CTA in RHS
    Then verify customer is redirected to TDS Waiver Page with "<Header>"
    And verify customer is able to view and download the file from "<Button>" CTA - "<File Name>"
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle      | Account No | Header     | Button            | File Name  |
      | 9532657683    | 12071958 | Individual    | FIXED DEPOSIT | 421062     | TDS Waiver | Download the form | Form15.pdf |

  @STW @4
  @Pass
  Scenario Outline: FD- RHS- Submit TDS- verify page to be displayed in which customer will have to enter his Income details under Additional information required
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    Then My relations Page should be displayed
    And click on "Deposits" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    And Customer Click on "Submit Form 15G/H" CTA in RHS
    Then verify customer is redirected to TDS Waiver Page with "<Header>"
    And Customer clicks on "PROCEED" Button in TDS Waiver Page
    Then verify Customer redirected to "<Header2>" page
    Then verify page to be displayed under Additional information required

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle      | Account No | Header     | Header2                         |
      | 9532657683    | 12071958 | Individual    | FIXED DEPOSIT | 421062     | TDS Waiver | Additional information required |

  @STW @4 @exec
  @Pass
  Scenario Outline: FD- RHS- Submit TDS- verify Customer redirected to Service screen when clicks on Cancel Button in Additional information page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    Then My relations Page should be displayed
    And click on "Deposits" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    And Customer Click on "Submit Form 15G/H" CTA in RHS
    Then verify customer is redirected to TDS Waiver Page with "<Header>"
    And Customer clicks on "PROCEED" Button in TDS Waiver Page
    Then verify Customer redirected to "<Header2>" page
    And clicks on "Cancel" button in Submit TDS flow
    And verify customer is redirected to Services screen with subtitle"<Subtitle>" Account No"<Account No>"

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle      | Account No | Header     | Header2                         |
      | 9532657683    | 12071958 | Individual    | FIXED DEPOSIT | 421062     | TDS Waiver | Additional information required |

  @STW @4
  @Pass
  Scenario Outline: FD- RHS- Submit TDS-verify customer will have to enter other fixed deposit income, & verify other Input Boxes
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    Then My relations Page should be displayed
    And click on "Deposits" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    And Customer Click on "Submit Form 15G/H" CTA in RHS
    Then verify customer is redirected to TDS Waiver Page with "<Header>"
    And Customer clicks on "PROCEED" Button in TDS Waiver Page
    Then verify Customer redirected to "<Header2>" page
    Then verify customer will have to enter other fixed deposit income
    And verify customer not able to modify Total amount for which you have filed Form 15 G
    And verify Total number of fixed deposits Text Box is editable

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle      | Account No | Header     | Header2                         |
      | 9532657683    | 12071958 | Individual    | FIXED DEPOSIT | 421062     | TDS Waiver | Additional information required |

  @STW @4
  @Pass
  Scenario Outline: FD- RHS- Submit TDS- verify when customer selects Tax assessment Toggle
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    Then My relations Page should be displayed
    And click on "Deposits" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    And Customer Click on "Submit Form 15G/H" CTA in RHS
    Then verify customer is redirected to TDS Waiver Page with "<Header>"
    And Customer clicks on "PROCEED" Button in TDS Waiver Page
    Then verify Customer redirected to "<Header2>" page
    And verify when customer selects Tax assessment Toggle

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle      | Account No | Header     | Header2                         |
      | 9532657683    | 12071958 | Individual    | FIXED DEPOSIT | 421062     | TDS Waiver | Additional information required |

  @STW @4
  @Pass
  Scenario Outline: FD- RHS- Submit TDS- verify Details in Part 2 section should be pre populated
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    Then My relations Page should be displayed
    And click on "Deposits" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    And Customer Click on "Submit Form 15G/H" CTA in RHS
    Then verify customer is redirected to TDS Waiver Page with "<Header>"
    And Customer clicks on "PROCEED" Button in TDS Waiver Page
    Then verify Customer redirected to "<Header2>" page
    And Customer enters "0" for Income from other FDs
    And Customer enters "1" for Total number of FDs
    And Clicks on "PROCEED" Button
    Then verify Customer redirected to check & submit Page - "<Header3>"
    And verify the buttons displayed in the check & submit Page-"<Buttons>"
    And verify Customer Details are displayed in submit Page
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle      | Account No | Header     | Header2                         | Header3                             | Buttons                                  |
      | 9532657683    | 12071958 | Individual    | FIXED DEPOSIT | 421062     | TDS Waiver | Additional information required | Please check the details and submit | Cancel,Generate OTP,Terms and Conditions |

  @STW
  @Pass
  Scenario Outline: FD- RHS- Submit TDS- verify Terms and Conditions in Check and Submit page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    Then My relations Page should be displayed
    And click on "Deposits" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    And Customer Click on "Submit Form 15G/H" CTA in RHS
    Then verify customer is redirected to TDS Waiver Page with "<Header>"
    And Customer clicks on "PROCEED" Button in TDS Waiver Page
    Then verify Customer redirected to "<Header2>" page
    And Customer enters "0" for Income from other FDs
    And Customer enters "1" for Total number of FDs
    And Clicks on "PROCEED" Button
    Then verify Customer redirected to check & submit Page - "<Header3>"
    And Customer clicks on "Terms and Conditions" Button
    And verify Terms and Conditions popup is displayed

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle      | Account No | Header     | Header2                         | Header3                             |
      | 9532657683    | 12071958 | Individual    | FIXED DEPOSIT | 421062     | TDS Waiver | Additional information required | Please check the details and submit |

  @STW
  @Pass
  Scenario Outline: FD- RHS- Submit TDS- verify Generate OTP in Check and Submit page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    Then My relations Page should be displayed
    And click on "Deposits" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    And Customer Click on "Submit Form 15G/H" CTA in RHS
    Then verify customer is redirected to TDS Waiver Page with "<Header>"
    And Customer clicks on "PROCEED" Button in TDS Waiver Page
    Then verify Customer redirected to "<Header2>" page
    And Customer enters "0" for Income from other FDs
    And Customer enters "1" for Total number of FDs
    And Clicks on "PROCEED" Button
    Then verify Customer redirected to check & submit Page - "<Header3>"
    And Customer clicks on "Generate OTP" Button
    And OTP Verification title Displayed

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle      | Account No | Header     | Header2                         | Header3                             |
      | 9532657683    | 12071958 | Individual    | FIXED DEPOSIT | 421062     | TDS Waiver | Additional information required | Please check the details and submit |


  @STW @failed
  @Pass
  Scenario Outline: FD- RHS- Submit TDS- verify when customer enters an amount more than 3 Lac under the field ”Total amount for which Form 15H ﬁled”
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    Then My relations Page should be displayed
    And click on "Deposits" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    And Customer Click on "Submit Form 15G/H" CTA in RHS
    Then verify customer is redirected to TDS Waiver Page with "<Header>"
    And Customer clicks on "PROCEED" Button in TDS Waiver Page
    Then verify Customer redirected to "<Header2>" page
    And Customer enters "350000" for Income from other FDs
    And Customer enters "1" for Total number of FDs
    And Clicks on "PROCEED" Button
    Then verify popup is displayed for amount more than 300000 for 15H
    And verify customer is redirected to Services screen with subtitle"<Subtitle>" Account No"<Account No>"

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle      | Account No | Header     | Header2                         |
      | 9871504643    | 01051962 | Individual    | FIXED DEPOSIT | 1015057    | TDS Waiver | Additional information required |

  @STW @failed
  @Pass
  Scenario Outline: FD- RHS- Submit TDS- verify when customer enters an amount more than 2.5 Lac under the field”Total amount for which Form 15G ﬁled”
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    Then My relations Page should be displayed
    And click on "Deposits" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    And Customer Click on "Submit Form 15G/H" CTA in RHS
    Then verify customer is redirected to TDS Waiver Page with "<Header>"
    And Customer clicks on "PROCEED" Button in TDS Waiver Page
    Then verify Customer redirected to "<Header2>" page
    And Customer enters "300000" for Income from other FDs
    And Customer enters "1" for Total number of FDs
    And Clicks on "PROCEED" Button
    Then verify popup is displayed for amount more than 250000 for 15G
    And verify customer is redirected to Services screen with subtitle"<Subtitle>" Account No"<Account No>"
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle      | Account No | Header     | Header2                         |
      | 9820372335    | 05011978 | Individual    | FIXED DEPOSIT | 963589     | TDS Waiver | Additional information required |

  @STW
  @Pass
  Scenario Outline: FD- RHS- Submit TDS- verify option should not be shown to the customer TDS Waiver is "Already Submitted"
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    Then My relations Page should be displayed
    And click on "Deposits" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    And verify option should not be shown to the customer TDS Waiver is Already Submitted
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle      | Account No |
      | 8105697269    | 12021999 | Individual    | FIXED DEPOSIT | 1065986    |

  @STW
  @Pass
  Scenario Outline: FD- RHS- Submit TDS- verify Total No. Other income + Total amount logic of 15G filled will be auto calculated
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    Then My relations Page should be displayed
    And click on "Deposits" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    And Customer Click on "Submit Form 15G/H" CTA in RHS
    Then verify customer is redirected to TDS Waiver Page with "<Header>"
    And Customer clicks on "PROCEED" Button in TDS Waiver Page
    Then verify Customer redirected to "<Header2>" page
    And verify Total No. Other income + Total amount logic of 15G filled will be auto calculated

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle      | Account No | Header     | Header2                         |
      | 9820372335    | 05011978 | Individual    | FIXED DEPOSIT | 963589     | TDS Waiver | Additional information required |


  @STW
  @Pass
  Scenario Outline: FD- RHS- Submit TDS- verify Popup on completing the OTP screen
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    Then My relations Page should be displayed
    And click on "Deposits" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    And Customer Click on "Submit Form 15G/H" CTA in RHS
    Then verify customer is redirected to TDS Waiver Page with "<Header>"
    And Customer clicks on "PROCEED" Button in TDS Waiver Page
    Then verify Customer redirected to "<Header2>" page
    And Customer enters "0" for Income from other FDs
    And Customer enters "1" for Total number of FDs
    And Clicks on "PROCEED" Button
    Then verify Customer redirected to check & submit Page - "<Header3>"
    And Customer clicks on "Generate OTP" Button
    And OTP Verification title Displayed
    And Enter "1" in "OTP Screen Text box 1"
    And Enter "2" in "OTP Screen Text box 2"
    And Enter "3" in "OTP Screen Text box 3"
    And Enter "4" in "OTP Screen Text box 4"
    And Enter "5" in "OTP Screen Text box 5"
    And Enter "6" in "OTP Screen Text box 6"
    And "Submit Button in LAFD OTP Screen" is Enabled
    And Clicks on "Submit Button in LAFD OTP Screen"
    Then verify below Popup "<Popup>" is displayed
    And On click of "<Button>"
    And verify customer is redirected to Services screen with subtitle"<Subtitle>" Account No"<Account No>"

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle      | Account No | Header     | Header2                         | Header3                             | Popup                                                                      | Button |
      | 9871504643    | 01051962 | Individual    | FIXED DEPOSIT | 1015057    | TDS Waiver | Additional information required | Please check the details and submit | Record is already Added & Verified.Please View for Re-Generation of Report | Got It |



