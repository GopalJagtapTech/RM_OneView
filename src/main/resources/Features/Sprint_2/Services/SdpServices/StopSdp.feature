@StopSDP
Feature: SDP RHS - Stop SDP


  Scenario Outline: Stop SDP - To verify customer able to view STOP SDP Option in Active SDP
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "SYSTEMATIC DEPOSIT PLAN- SMS" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
    Then verify RHS "Quick Actions" following Options: "Stop SDP" are Displayed
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number |
      | 9944979910    | 19091970 | Individual    | 1161158     |

  Scenario Outline: Stop SDP - To verify customer not able to view STOP SDP Option in Non Active SDP
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "SYSTEMATIC DEPOSIT PLAN- SMS" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
    And verify RHS "Quick Actions" following Options are Not Displayed: "Stop SDP"
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number |
#      | 9944979910    | 19091970 | Individual    | 1161158     |
      | 9689890586    | 19091970 | Individual    | 452875     |

  Scenario Outline: Stop SDP - verify the NO button in Popup
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "SYSTEMATIC DEPOSIT PLAN- SMS" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
    And Customer Click on "Stop SDP" CTA in RHS
    And verify "STOP SDP" "text" is Displayed
    And click on "NO" Button
    Then verify "STOP SDP" "Popup text" is Not Displayed
    And Verify Customer Redirected to "MyAccountFixedDeposit/SDPDetails/SDPDetails?" Url
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number |
      | 9944979910    | 19091970 | Individual    | 1161158     |

  Scenario Outline: Stop SDP - verify the Pop-up screen Components
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "SYSTEMATIC DEPOSIT PLAN- SMS" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
    And Customer Click on "Stop SDP" CTA in RHS
    Then verify "STOP SDP" "text" is Displayed
    And verify Stop SDP Popup Text Based on Date Range
#    Then verify "All your future SDP payments will be stopped. Do you still want to proceed?" "text" is Displayed
    Then verify "NO" "Button" is Displayed
    Then verify "YES" "Button" is Displayed
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number |
      | 9944979910    | 19091970 | Individual    | 1161158     |


  Scenario Outline: Stop SDP - verify the OTP Pop-up screen Components when customer click on YES button in popup
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "SYSTEMATIC DEPOSIT PLAN- SMS" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
    And Customer Click on "Stop SDP" CTA in RHS
    And verify "STOP SDP" "text" is Displayed
    And click on "YES" Button
    And verify OTP Attempts are There or Not
    And verify "OTP Verification" "popup title text" is Displayed
    And verify "Primary Account Holder OTP" "text" is Displayed
    And Verify OTP has been sent Message is Displayed
    And verify "Enter One Time Password" "text" is Displayed
    And Verify "Resend OTP Button" is Displayed
    And Verify "OTP Screen Text box 1" is Displayed
    And Verify "OTP Screen Text box 2" is Displayed
    And Verify "OTP Screen Text box 3" is Displayed
    And Verify "OTP Screen Text box 4" is Displayed
    And Verify "OTP Screen Text box 5" is Displayed
    And Verify "OTP Screen Text box 6" is Displayed
    And Verify "Submit Button in STOP SDP OTP Screen" is Displayed
    And "Submit Button in STOP SDP OTP Screen" is Disabled
    And Click the "OTP Screen Close Button"
    And Verify Customer Redirected to "MyAccountFixedDeposit/SDPDetails/SDPDetails?" Url
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number |
      | 9944979910    | 19091970 | Individual    | 1161158     |

  Scenario Outline: Stop SDP - verify the Successful Message and Note after entered correct OTP
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "SYSTEMATIC DEPOSIT PLAN- SMS" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
    And Customer Click on "Stop SDP" CTA in RHS
    And verify "STOP SDP" "text" is Displayed
    And click on "YES" Button
    And verify OTP Attempts are There or Not
    And Enter "1" in "OTP Screen Text box 1"
    And Enter "2" in "OTP Screen Text box 2"
    And Enter "3" in "OTP Screen Text box 3"
    And Enter "4" in "OTP Screen Text box 4"
    And Enter "5" in "OTP Screen Text box 5"
    And Enter "6" in "OTP Screen Text box 6"
    And Clicks on "Submit Button in STOP SDP OTP Screen"
    And Wait 5 seconds
    And verify "Successful!" "text" is Displayed
    And verify "your request shall be processed in 2 business days " "text" is Displayed
    And click on "DONE" Button
    And Wait 5 seconds
    And verify "Note: :" "text" is Displayed
    And verify "We have received your request to stop your forthcoming debits under this Systematic Deposit Plan. Since we send debit request 15 days in advance to your bank, your upcoming deposit may be deducted based on the debit date. However, forthcoming deposits will not be debited." "text" is Displayed
    And Refresh the Page
    And verify "Note: :" "text" is Not Displayed
    And Verify Customer Redirected to "MyAccountFixedDeposit/SDPDetails/SDPDetails?" Url
#    And Verify "Disabled STOP SDP in RHS" is Displayed//bug
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number |
      | 9944979910    | 19091970 | Individual    | 1161158     |



  Scenario Outline: Stop SDP - verify the Invalid Message OTP Attempts
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "SYSTEMATIC DEPOSIT PLAN- SMS" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
    And Customer Click on "Stop SDP" CTA in RHS
    And verify "STOP SDP" "text" is Displayed
    And click on "YES" Button
    And verify OTP Attempts are There or Not
    And verify "OTP Verification" "popup title text" is Displayed
    And Enter "1" in "OTP Screen Text box 1"
    And Enter "2" in "OTP Screen Text box 2"
    And Enter "3" in "OTP Screen Text box 3"
    And Enter "4" in "OTP Screen Text box 4"
    And Enter "5" in "OTP Screen Text box 5"
    And Enter "5" in "OTP Screen Text box 6"
    And Clicks on "Submit Button in STOP SDP OTP Screen"
    And verify "You have entered wrong OTP.2 attempts left." "Error text" is Displayed
    And Enter "1" in "OTP Screen Text box 1"
    And Enter "2" in "OTP Screen Text box 2"
    And Enter "3" in "OTP Screen Text box 3"
    And Enter "4" in "OTP Screen Text box 4"
    And Enter "5" in "OTP Screen Text box 5"
    And Enter "5" in "OTP Screen Text box 6"
    And Clicks on "Submit Button in STOP SDP OTP Screen"
    And verify "You have entered wrong OTP.1 attempt left." "Error text" is Displayed
    And Enter "1" in "OTP Screen Text box 1"
    And Enter "2" in "OTP Screen Text box 2"
    And Enter "3" in "OTP Screen Text box 3"
    And Enter "4" in "OTP Screen Text box 4"
    And Enter "5" in "OTP Screen Text box 5"
    And Enter "5" in "OTP Screen Text box 6"
    And Clicks on "Submit Button in STOP SDP OTP Screen"
    And verify "You have entered wrong OTP multiple times. Please try again after sometime." "Error text" is Displayed
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number |
      | 9944979910    | 19091970 | Individual    | 1161158     |

  Scenario Outline: Stop SDP - verify the OTP Expired Message
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "SYSTEMATIC DEPOSIT PLAN- SMS" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
    And Customer Click on "Stop SDP" CTA in RHS
    And verify "STOP SDP" "text" is Displayed
    And click on "YES" Button
    And verify OTP Attempts are There or Not
    And verify "OTP Verification" "popup title text" is Displayed
    And Wait 80 seconds
    And Enter "1" in "OTP Screen Text box 1"
    And Enter "2" in "OTP Screen Text box 2"
    And Enter "3" in "OTP Screen Text box 3"
    And Enter "4" in "OTP Screen Text box 4"
    And Enter "5" in "OTP Screen Text box 5"
    And Enter "6" in "OTP Screen Text box 6"
    And Clicks on "Submit Button in STOP SDP OTP Screen"
    And verify "OTP Expired" "Error text" is Displayed
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number |
      | 9944979910    | 19091970 | Individual    | 1161158     |

  Scenario Outline: Stop SDP - verify Resend OTP button in OTP Popup
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "SYSTEMATIC DEPOSIT PLAN- SMS" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
    And Customer Click on "Stop SDP" CTA in RHS
    And verify "STOP SDP" "text" is Displayed
    And click on "YES" Button
    And verify OTP Attempts are There or Not
    And Verify "Disable Resend OTP Button" is Displayed
    And Wait 60 seconds
    And Clicks on "Enable Resend OTP Button"
    And Wait 5 seconds
    And Verify "Disable Resend OTP Button" is Displayed
    And Clicks on "Submit Button in STOP SDP OTP Screen"
    And verify "OTP Expired" "Error text" is Displayed
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number |
      | 9944979910    | 19091970 | Individual    | 1161158     |


  Scenario Outline: Stop SDP - verify the Successful Message and Note after entered correct OTP with Secondary Account Holder
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "SYSTEMATIC DEPOSIT PLAN- SMS" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
    And Customer Click on "Stop SDP" CTA in RHS
    And verify "STOP SDP" "text" is Displayed
    And click on "YES" Button
    And Enter "1" in "OTP Screen Text box 1"
    And Enter "2" in "OTP Screen Text box 2"
    And Enter "3" in "OTP Screen Text box 3"
    And Enter "4" in "OTP Screen Text box 4"
    And Enter "5" in "OTP Screen Text box 5"
    And Enter "6" in "OTP Screen Text box 6"
    And Clicks on "Submit Button in STOP SDP OTP Screen"
    And Wait 5 seconds
    And Enter "1" in "OTP Screen Text box 1"
    And Enter "2" in "OTP Screen Text box 2"
    And Enter "3" in "OTP Screen Text box 3"
    And Enter "4" in "OTP Screen Text box 4"
    And Enter "5" in "OTP Screen Text box 5"
    And Enter "6" in "OTP Screen Text box 6"
    And Clicks on "Submit Button in STOP SDP OTP Screen"
    And Wait 5 seconds
    And verify "Successful!" "text" is Displayed
    And verify "your request shall be processed in 2 business days " "text" is Displayed
    And click on "DONE" Button
    And Wait 5 seconds
    And verify "Note: :" "text" is Displayed
    And verify "We have received your request to stop your forthcoming debits under this Systematic Deposit Plan. Since we send debit request 15 days in advance to your bank, your upcoming deposit may be deducted based on the debit date. However, forthcoming deposits will not be debited." "text" is Displayed
    And Refresh the Page
    And verify "Note: :" "text" is Not Displayed
    And Verify Customer Redirected to "MyAccountFixedDeposit/SDPDetails/SDPDetails?" Url
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number |
      | 9944979910    | 19091970 | Individual    | 1161158     |
