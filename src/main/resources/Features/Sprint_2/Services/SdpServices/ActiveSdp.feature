@Run02022023
Feature: SDP Services
@Pass
  Scenario Outline: To verify SDP tile in My Relation page redirected to SDP page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "SYSTEMATIC DEPOSIT PLAN- MMS" Tile of Account number "<Acc Number>"
    Then verify Redirection using Account number "<Acc Number>"
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number |
      | 9689890586    | 19091970 | Individual    | 452875     |

  @Pass
  Scenario Outline: To verify SDP Page Sections
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "SYSTEMATIC DEPOSIT PLAN- MMS" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
    Then verify below components of "Systematic Deposit Plan- MMS" Page: "<Components>"
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number | Components                                                                                             |
      | 9689890586    | 19091970 | Individual    | 452875     | Systematic Deposit Plan- MMS, Relationship Details, Quick Actions, Frequently asked questions, Check your CIBIL Score |


  @Pass@DataChangeNeed@1912
  Scenario Outline: To verify Top section in SDP Page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "SYSTEMATIC DEPOSIT PLAN- MMS" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
    Then verify Logo of "SDP"
    And verify "<Number Text>" of Servies
    And verify SDP Amount format as <Rs. Digits with month>
    And verify Below labels of Top Section: "<Label Names>"
    And verify "Amount Invested Till Date" format as <Rs. Digits>
    And verify "Rate of Interest" format as <Digits%> with *
    And verify "Next Installment Date" format as "dd/MM/yyyy"
    And verify "Maturity Amount" format as <Rs. Digits> with *
    And verify "Maturity Date" format as "dd/MM/yyyy"
    And verify "*Indicative returns if RoI does not change. In practice, interest rate prevailing on the date of each deposit will be applicable to that particular deposit. Therefore, this amount might vary." "text" is Displayed
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number | Number Text  | Label Names                                      |
      | 9689890586    | 19091970 | Individual    | 452875     | SDP Number   | Amount Invested Till Date, Rate of Interest, Next Installment Date, Maturity Amount, Maturity Date |

  @Pass@DataChangeNeed@1912
  Scenario Outline: To verify Relationship Details Section - SDP Details
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "SYSTEMATIC DEPOSIT PLAN- MMS" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
    Then verify below Labels of "SDP Details" in "SYSTEMATIC DEPOSIT PLAN" Relationship Details: "<Label Names>"
    And verify "SDP Status" value should be "Active" ""
    And verify "Interest Start Date" format as "dd/MM/yyyy"
    And verify "Interest Payout Type" value should be "ON MATURITY (OR) MONTHLY (OR) YEARLY (OR) QUARTERLY" ""
    And verify "Number Of Deposits" format as <DD>
    And verify "Tenure Of Each Deposit" format as <MM Months>
    And verify "NACH Registration Date" format as "dd/MM/yyyy"
    And verify "Instalments Paid (Till Date)" format as <DD>
    And verify "Instalments Dishonoured" format as <DD>
    And verify "Instalments Remaining" format as <DD>
    And verify "TDS Waiver" value should be "Not Submitted" ""
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number | Label Names                                                                   |
      | 9689890586    | 19091970 | Individual    | 452875     | SDP Status, Scheme Type, Interest Start Date, Interest Payout Type, Number Of Deposits, Tenure Of Each Deposit, NACH Registration Date, Instalments Paid (Till Date), Instalments Dishonoured, Instalments Remaining, TDS Waiver |

  @DataIssue
  Scenario Outline: To verify Relationship Details Section - SDP Details with TDS Waiver Submitted
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "SYSTEMATIC DEPOSIT PLAN- MMS" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
    Then verify below Labels of "SDP Details" in "SYSTEMATIC DEPOSIT PLAN" Relationship Details: "<Label Names>"
    And verify "SDP Status" value should be "Active" ""
    And verify "Interest Start Date" format as "dd/MM/yyyy"
    And verify "Interest Payout Type" value should be "ON MATURITY (OR) MONTHLY (OR) YEARLY (OR) QUARTERLY" ""
    And verify "Number Of Deposits" format as <DD>
    And verify "Tenure Of Each Deposit" format as <MM Months>
    And verify "NACH Registration Date" format as "dd/MM/yyyy"
    And verify "Instalments Paid (Till Date)" format as <DD>
    And verify "Instalments Dishonoured" format as <DD>
    And verify "Instalments Remaining" format as <DD>
    And verify "TDS Waiver" value should be "Submitted" ""
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number | Label Names                                                                   |
      | 9356871941    | 19091970 | Individual    | 229405     | Interest Start Date, Interest Payout Type, Tenure, Renewal Status, TDS Waiver |
@Pass@1912
  Scenario Outline: SDP - To verify Relationship Details Section - Linked Bank Details
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "SYSTEMATIC DEPOSIT PLAN- MMS" Tile of Account number "<Acc Number>"
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
    And Verify "SDP Bank Account Change Button" is Displayed
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number | Label Names                                                      |
      | 9689890586    | 19091970 | Individual    | 452875     | Registered Bank Name, Registered Bank Account, IFSC, Branch Name |

  @Pass@1912
  Scenario Outline: SDP - To verify Relationship Details Section - Bank Details - Change Bank Details Button
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "SYSTEMATIC DEPOSIT PLAN- MMS" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
    And Clicks on "SDP Bank Account Change Button"
    Then Verify Customer Redirected to "<url>" Url
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number |url|
      | 9689890586    | 19091970 | Individual    | 452875     |MyAccountService/Emandate/index|

  @Pass@1912
  Scenario Outline: To verify ACTIVE SDP with Edit Nominee Details
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "SYSTEMATIC DEPOSIT PLAN- MMS" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
    Then verify below Labels of "Nominee Details" in "SYSTEMATIC DEPOSIT PLAN" Relationship Details: "<Label Names>"
    And verify "Name" Should Not be Masked Format
    And verify "Relation" Should Not be Masked Format
    And verify Last 4 Characters Should be "UnMasked" ("X") in "Date Of Birth"
    And verify Other than Last 4 Characters Should be "Masked" ("X") in "Date Of Birth"
#    And verify "Nominee Address" Masked And UnMasked Format in "Nominee Details"
    And verify "Edit Nominee" button is Displayed
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number | Label Names                                    |
      | 7709899876    | 19091970 | Individual    | 490364     | Name, Relation, Date Of Birth, Nominee Address |

  @DataIssue
  Scenario Outline: To verify ACTIVE FD with Add Nominee Details
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "SYSTEMATIC DEPOSIT PLAN- MMS" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
    Then verify below fields of "Nominee Details" in "Systematic Deposit Plan- MMS" Relationship Details for Add Nominee
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number |
      | 7709899876    | 19091970 | Individual    | 490364     |


  @run
  Scenario Outline: verify Guardian details in Relationship section
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "SYSTEMATIC DEPOSIT PLAN- MMS" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
    Then verify below Labels of Guardian Details in "Systematic Deposit Plan- MMS" Relationship Details: "<Label Names>"
    And verify "Name" Should Not be Masked Format
    And verify "Nominee Address" Masked And UnMasked Format in "Guardian Details"
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number | Label Names           |
      | 8087615787    | 19091970 | Individual    | 828384     | Name, Nominee Address |

  @run
  Scenario Outline: Active SDP - RHS Sections
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "SYSTEMATIC DEPOSIT PLAN- MMS" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
    Then verify RHS "Quick Actions" following Options: "View statements, Check TDS Certificate" are Displayed
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number |
      | 7709899876    | 19091970 | Individual    | 490364     |

  @Pass
  Scenario Outline: Active SDP - Has Pre-Approved Offers
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "SYSTEMATIC DEPOSIT PLAN- MMS" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
    Then Pre-Approved Offers Section is "Visible" to "Active SDP" Service Page
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number |
      | 8087615787    | 02061962 | Individual    | 625438     |

  @run
  Scenario Outline: Active SDP - Has NO Pre-Approved Offers
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "SYSTEMATIC DEPOSIT PLAN- MMS" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
    Then Pre-Approved Offers Section is "Not Visible" to "Active SDP" Service Page
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number |
      | 8588855329    | 19091970 | Individual    | 469236     |

  @Pass
  Scenario Outline: Active SDP - Verification & Redirection of FAQ
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "SYSTEMATIC DEPOSIT PLAN- MMS" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
    And Clicks on "SDP Frequently Asked Questions"
    Then verify Page Redirection to "<Expected Url>" Url with SSO
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number |Expected Url|
      | 7709899876    | 19091970 | Individual    | 490364     |https://uat-oneweb.bajajfinserv.in/MyAccountService/HelpAndSupport/RARFAQCategory|

  @Pass
  Scenario Outline: Active SDP - Verification & Redirection of Check Cibil
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "SYSTEMATIC DEPOSIT PLAN- MMS" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
    And Clicks on "Check Score Button in CIBIL"
    Then verify Page Redirection to "<Expected Url>" Url with SSO
    And Go Back to Previous Page
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number |Expected Url|
      | 7709899876    | 19091970 | Individual    | 490364     |https://www.bajajfinserv.in/check-free-cibil-score|