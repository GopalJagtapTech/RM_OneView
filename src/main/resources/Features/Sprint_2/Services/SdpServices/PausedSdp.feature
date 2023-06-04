@Run02022023
Feature: Paused SDP Services
  @Pass
  Scenario Outline: Paused SDP - To verify SDP tile in My Relation page redirected to Paused SDP page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "SYSTEMATIC DEPOSIT PLAN-" Tile of Account number "<Acc Number>"
    Then verify Redirection using Account number "<Acc Number>"
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number |
      | 8754803035    | 19091970 | Individual    | 964844     |

  @Pass
  Scenario Outline: Paused SDP - To verify Paused SDP Page Sections
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "SYSTEMATIC DEPOSIT PLAN-" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
    Then verify below components of "Systematic Deposit Plan-" Page: "<Components>"
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number | Components                                                                                             |
      | 8754803035    | 19091970 | Individual    | 964844     | Systematic Deposit Plan- SMS, Relationship Details, Need help?, Frequently asked questions, Check your CIBIL Score |

  @Pass
  Scenario Outline: Paused SDP - To verify Top section in SDP Page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "SYSTEMATIC DEPOSIT PLAN-" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
    Then verify Logo of "SDP"
    And verify "STOPPED" Nudge with "Blue" Color
    And verify "<Number Text>" of Servies
    And verify SDP Amount format as <Rs. Digits with month>
    And verify Below labels of Top Section: "<Label Names>"
    And verify "Maturity Amount" format as <Rs. Digits>
    And verify "Maturity Date" format as "dd/MM/yyyy"
    And verify "Rate of Interest" format as <Digits%>
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number | Number Text  | Label Names                                      |
      | 8754803035    | 19091970 | Individual    | 964844     | SDP Number   | Maturity Amount, Maturity Date, Rate of Interest |

  @Pass
  Scenario Outline: Paused SDP - To verify Relationship Details Section - SDP Details
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "SYSTEMATIC DEPOSIT PLAN-" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
    Then verify below Labels of "SDP Details" in "SYSTEMATIC DEPOSIT PLAN" Relationship Details: "<Label Names>"
    And verify below Labels of "SDP Details" in "SYSTEMATIC DEPOSIT PLAN" Relationship Details is Not Displayed: "Instalments Paid (Till Date), TDS Waiver, Instalments Remaining, Instalments Dishonoured"
    And verify "SDP Status" value should be "STOPPED" ""
    And verify "Interest Start Date" format as "dd/MM/yyyy"
    And verify "Interest Payout Type" value should be "ON MATURITY (OR) MONTHLY (OR) YEARLY (OR) QUARTERLY" ""
    And verify "Number Of Deposits" format as <DD>
    And verify "Tenure Of Each Deposit" format as <MM Months>
    And verify "NACH Registration Date" format as "dd/MM/yyyy"
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number | Label Names                                                                   |
      | 8754803035    | 19091970 | Individual    | 964844     | SDP Status, Scheme Type, Interest Start Date, Interest Payout Type, Number Of Deposits, Tenure Of Each Deposit, NACH Registration Date|


  @Pass
  Scenario Outline: Paused SDP - To verify Relationship Details Section - Linked Bank Details
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "SYSTEMATIC DEPOSIT PLAN-" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
    Then verify below Labels of "Linked Maturity Bank Account" in "Bank Details" Relationship Details: "<Label Names>"
    And verify "Registered Bank Name" Should Not be Masked Format
    And verify Last 4 Characters Should be "UnMasked" ("X") in "Registered Bank Account"
    And verify Other than Last 4 Characters Should be "Masked" ("X") in "Registered Bank Account"
    And verify "IFSC" Should Not be Masked Format
    And verify "Branch Name" Should Not be Masked Format
    Then verify below Labels of "Linked Mandate Bank Account" in "Bank Details" Relationship Details: "<Label Names>"
    And verify "Registered Bank Name" Should Not be Masked Format
    And verify Last 4 Characters Should be "UnMasked" ("X") in "Registered Bank Account"
    And verify Other than Last 4 Characters Should be "Masked" ("X") in "Registered Bank Account"
    And verify "IFSC" Should Not be Masked Format
    And verify "Branch Name" Should Not be Masked Format
    And verify "SDP Bank Account Change Button" is Not Displayed
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number | Label Names                                                      |
      | 8754803035    | 19091970 | Individual    | 964844     | Registered Bank Name, Registered Bank Account, IFSC, Branch Name |


  @Pass
  Scenario Outline: Paused SDP - To verify PAUSED SDP with Edit Nominee Details - Edit Nominee or Add Nominee Button is Not Displayed
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "SYSTEMATIC DEPOSIT PLAN-" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
    Then verify below Labels of "Nominee Details" in "SYSTEMATIC DEPOSIT PLAN" Relationship Details: "<Label Names>"
    And verify "Name" Should Not be Masked Format
    And verify "Relation" Should Not be Masked Format
    And verify Last 4 Characters Should be "UnMasked" ("X") in "Date Of Birth"
    And verify Other than Last 4 Characters Should be "Masked" ("X") in "Date Of Birth"
    And verify "Edit Nominee" button is Not Displayed
    And verify "Add Nominee" button is Not Displayed
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number | Label Names                                    |
      | 8754803035    | 19091970 | Individual    | 964844     | Name, Relation, Date Of Birth, Nominee Address |


  @Pass
  Scenario Outline: Paused SDP - RHS Sections
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "SYSTEMATIC DEPOSIT PLAN-" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
    Then verify RHS "Need help?" following Options: "Help and Support, Document Center" are Displayed
    And verify RHS "Need help?" following Options are Not Displayed: "View statements, Check TDS Certificate"
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number |
      | 8754803035    | 19091970 | Individual    | 964844     |

  @DataIssue
  Scenario Outline: Paused SDP - Has Pre-Approved Offers
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "SYSTEMATIC DEPOSIT PLAN-" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
    Then Pre-Approved Offers Section is "Visible" to "Paused SDP" Service Page
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number |
      | 8754803035    | 19091970 | Individual    | 964844     |

  @Pass
  Scenario Outline: Paused SDP - Has NO Pre-Approved Offers
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "SYSTEMATIC DEPOSIT PLAN-" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
    Then Pre-Approved Offers Section is "Not Visible" to "Paused SDP" Service Page
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number |
      | 8754803035    | 19091970 | Individual    | 964844     |

  @Pass
  Scenario Outline: Paused SDP - Verification & Redirection of FAQ
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "SYSTEMATIC DEPOSIT PLAN-" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
    And Clicks on "SDP Frequently Asked Questions"
    Then verify Page Redirection to "<Expected Url>" Url with SSO
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number |Expected Url|
      | 8754803035    | 19091970 | Individual    | 964844     |https://uat-oneweb.bajajfinserv.in/MyAccountService/HelpAndSupport/RARFAQCategory|

  @Pass
  Scenario Outline: Paused SDP - Verification & Redirection of Check Cibil
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "SYSTEMATIC DEPOSIT PLAN-" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
    And Clicks on "Check Score Button in CIBIL"
    Then verify Page Redirection to "<Expected Url>" Url with SSO
    And Go Back to Previous Page
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number |Expected Url|
      | 8754803035    | 19091970 | Individual    | 964844     |https://www.bajajfinserv.in/check-free-cibil-score|