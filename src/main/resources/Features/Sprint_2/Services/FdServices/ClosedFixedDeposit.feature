@CFD@FD_02@FD_1805@FD_1
Feature: FD Services - Closed FD
  @Pass
  Scenario Outline: Closed FD - To verify tile in My Relation page redirected to FD page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    Then verify Redirection using Account number "<Acc Number>"
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number |
      | 9820333113    | 02061962 | Individual    | 233713     |

  @Pass
  Scenario Outline: Closed FD - To verify FD Page Sections
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
    Then verify below components of "Fixed Deposit" Page: "<Components>"
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number | Components                                                                                             |
      | 9820333113    | 02061962 | Individual    | 233713     | Fixed Deposit, Relationship Details, Quick Actions, Frequently Asked Questions, Check your CIBIL Score |

  @Pass
  Scenario Outline: Closed FD - To verify Top section in FD Page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
  Then verify Logo of "Fixed Deposit"
    And verify "<Number Text>" of Servies
    And verify "<Amount text>"
    And verify "MATURED" Nudge with "Blue" Color
    And verify Below labels of Top Section: "<Label Names>"
    And verify "Maturity Amount" format as <Rs. Digits>
    And verify "Rate of Interest" format as <Digits%>
    And verify "Matured On" format as "dd/MM/yyyy"
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number | Number Text | Amount text | Label Names                                      |
      | 9820333113    | 02061962 | Individual    | 233713     | FD Number   | FD Amount   | Maturity Amount, Rate of Interest, Matured On |

  @Pass
  Scenario Outline: Closed FD - To verify Relationship Details Section - FD Details
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
    Then verify below Labels of "FD Details" in "Fixed Deposit" Relationship Details: "<Label Names>"
    And verify below Labels of "FD Details" in "Fixed Deposit" Relationship Details is Not Displayed: "Renewal Status, TDS Waiver"
    And verify "Interest Start Date" format as "dd/MM/yyyy"
    And verify "Interest Payout Type" value should be "On Maturity (OR) MONTHLY (OR) YEARLY (OR) QUARTERLY" ""
    And verify "Tenor" format as <MM Months>
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number | Label Names                                                                   |
      | 9820333113    | 02061962 | Individual    | 233713     | Interest Start Date, Interest Payout Type, Tenor |


  @Pass
  Scenario Outline: Closed FD - To verify Relationship Details Section - Bank Details
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
    Then verify below Labels of "Bank Details" in "Fixed Deposit" Relationship Details: "<Label Names>"
    And verify "Registered Bank Name" Should Not be Masked Format
    And verify Last 4 Characters Should be "UnMasked" ("X") in "Registered Bank Account"
    And verify "IFSC" Should Not be Masked Format
    And verify "Branch Name" Should Not be Masked Format
    And verify Other than Last 4 Characters Should be "Masked" ("X") in "Registered Bank Account"
    And verify "Update Bank Details Button" is Not Displayed
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number | Label Names                                                      |
      | 9820333113    | 02061962 | Individual    | 233713     | Registered Bank Name, Registered Bank Account, IFSC, Branch Name |

  @Pass
  Scenario Outline: Closed FD - To verify  Nominee Details
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
    Then verify below Labels of "Nominee Details" in "Fixed Deposit" Relationship Details: "<Label Names>"
    And verify "Name" Should Not be Masked Format
    And verify "Relation" Should Not be Masked Format
    And verify "Date of Birth" Should Not be Masked Format
#    And verify "Nominee Address" Should Not be Masked Format
    And verify "Edit Nominee" button is Not Displayed
    And verify "Add Nominee" button is Not Displayed
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number | Label Names                                    |
      | 9820333113    | 02061962 | Individual    | 233713     | Name, Relation, Date of Birth|


  @Pass
  Scenario Outline: Closed FD - RHS Sections
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
    Then verify RHS "Quick Actions" following Options: "View Documents" are Displayed
    And verify RHS "Quick Actions" following Options are Not Displayed: "Renew your FD, Submit Form 15G/H, Premature Withdrawal, Get a loan against FD, Track FD Receipt, Submit FATCA Form"
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number |
      | 9820333113    | 02061962 | Individual    | 233713     |

  @Pass
  Scenario Outline: Closed FD - RHS Sections - View Statements
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
    And Click on "View Documents" Option Under "Quick Actions" Section
    And click on "Find them here" hyperlink
    Then Verify Redirected to View Documents of "Fixed Deposit Number :" "500953"
    And verify Documents Names in View Documents Page
    And verify Customer able to Download Documents
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number |
      | 9820333113    | 02061962 | Individual    | 233713     |

  @DataIssue
  Scenario Outline: Closed FD - Has Pre-Approved Offers
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
  Then Pre-Approved Offers Section is "Visible" to "Closed FD" Service Page
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number |
      | 9820333113    | 02061962 | Individual    | 233713     |

  @Pass
  Scenario Outline: Closed FD - Has NO Pre-Approved Offers
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
    Then Pre-Approved Offers Section is "Not Visible" to "Closed FD" Service Page
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number |
      | 9820333113    | 02061962 | Individual    | 233713     |

  @Pass
  Scenario Outline: Closed FD - Verification & Redirection of FAQ
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
    And Clicks on "Frequently Asked Questions"
    Then verify Page Redirection to "<Expected Url>" Url with SSO
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number |Expected Url|
      | 9820333113    | 02061962 | Individual    | 233713     |https://uat-oneweb.bajajfinserv.in/MyAccountService/HelpAndSupport/RARFAQCategory|

  @Pass
  Scenario Outline: Closed FD - Verification & Redirection of Check Cibil
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
    And Clicks on "Check Score Button in CIBIL"
    Then verify Page Redirection to "<Expected Url>" Url with SSO
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number |Expected Url|
      | 9820333113    | 02061962 | Individual    | 233713     |https://www.bajajfinserv.in/check-free-cibil-score|