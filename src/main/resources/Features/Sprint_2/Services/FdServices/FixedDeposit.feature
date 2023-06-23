@FD@FD_2604@FD_1805@FD_1

Feature: FD Services

  @Pass
  Scenario Outline: To verify FD tile in My Relation page redirected to FD page
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
      | 9987160686    | 19091970 | Individual    | 149382     |

  @Pass
  Scenario Outline: To verify FD Page Sections
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
      | 9987160686    | 19091970 | Individual    | 149382     | Fixed Deposit, Relationship Details, Quick Actions, Frequently Asked Questions, Check your CIBIL Score |

  @Pass
  Scenario Outline: To verify Top section in FD Page
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
    And verify Below labels of Top Section: "<Label Names>"
    And verify "Maturity Amount" format as <Rs. Digits>
    And verify "Rate of Interest" format as <Digits%>
    And verify "Maturity Date" format as "dd/MM/yyyy"
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number | Number Text | Amount text | Label Names                                      |
      | 9987160686    | 19091970 | Individual    | 149382     | FD Number   | FD Amount   | Maturity Amount, Rate of Interest, Maturity Date |

  @Pass
  Scenario Outline: To verify Relationship Details Section - FD Details
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
    Then verify below Labels of "FD Details" in "Fixed Deposit" Relationship Details: "<Label Names>"
    And verify "Interest Start Date" format as "dd/MM/yyyy"
    And verify "Interest Payout Type" value should be "On Maturity" ""
    And verify "Tenure" format as <MM Months>
    And verify "Renewal Status" value should be "Not Renewed" ""
    And verify "TDS Waiver" value should be "Not Submitted" ""
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number | Label Names                                                                   |
      | 9987160686    | 19091970 | Individual    | 149382     | Interest Start Date, Interest Payout Type, Tenure, Renewal Status, TDS Waiver |

  @Pass
  Scenario Outline: To verify Relationship Details Section - FD Details with Renewed
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
    Then verify below Labels of "FD Details" in "Fixed Deposit" Relationship Details: "<Label Names>"
    And verify "Interest Start Date" format as "dd/MM/yyyy"
    And verify "Interest Payout Type" value should be "QUARTERLY" ""
    And verify "Tenure" format as <MM Months>
    And verify "Renewal Status" value should be "Renewed" ""
    And verify "TDS Waiver" value should be "Not Submitted" ""
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number | Label Names                                                                   |
      | 9356871941    | 19091970 | Individual    | 229405     | Interest Start Date, Interest Payout Type, Tenure, Renewal Status, TDS Waiver |


  @Pass
  Scenario Outline: To verify Relationship Details Section - FD Details with TDS Waiver Submitted
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
    Then verify below Labels of "FD Details" in "Fixed Deposit" Relationship Details: "<Label Names>"
    And verify "Interest Start Date" format as "dd/MM/yyyy"
    And verify "Interest Payout Type" value should be "MONTHLY" ""
    And verify "Tenure" format as <MM Months>
    And verify "Renewal Status" value should be "Not Renewed" ""
    And verify "TDS Waiver" value should be "Submitted" ""
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number | Label Names                                                                   |
      | 8105697269    | 19091970 | Individual    | 1065986     | Interest Start Date, Interest Payout Type, Tenure, Renewal Status, TDS Waiver |


  @Pass
  Scenario Outline: To verify Relationship Details Section - Bank Details
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
    And Verify "Update Bank Details Button" is Displayed
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number | Label Names                                                      |
      | 9987160686    | 19091970 | Individual    | 149382     | Registered Bank Name, Registered Bank Account, IFSC, Branch Name |

  @Pass
  Scenario Outline: To verify Relationship Details Section - Bank Details - Update Bank Details Button
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
    And Clicks on "Update Bank Details Button"
    Then Verify Customer Redirected to "<url>" Url
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number |url|
      | 9987160686    | 19091970 | Individual    | 149382     |MyAccountService/HelpAndSupport/LogRequest|


  @Pass
  Scenario Outline: To verify Relationship Details Section - Single Joint Details
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
    Then verify below Labels of "First Joint Account Holder" in "Joint Account Holder Details" Relationship Details: "<Label Names>"
    And verify Last 4 Characters Should be "UnMasked" ("X") in "Mobile Number"
    And verify Other than Last 4 Characters Should be "Masked" ("X") in "Mobile Number"
    And verify Last 4 Characters Should be "UnMasked" ("X") in "Date of Birth"
    And verify Other than Last 4 Characters Should be "Masked" ("X") in "Date of Birth"
    And verify First 2 and Last 5 Characters Should be "Masked" ("X") And Others Should be "UnMasked" in "PAN Card"
    And verify Accordian Icon should not be displayed
    Examples:
      | Mobile Number | Date | Customer Type | Acc Number | Label Names |
      | 9820983030    | 02071962 | Individual    | 575283     | Name, Mobile Number, PAN Card, Date of Birth |

  @Pass
  Scenario Outline: To verify Relationship Details Section - Two Joint Account Details
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
    Then verify below Labels of "First Joint Account Holder" in "Joint Account Holder Details" Relationship Details: "<Label Names>"
    And verify "Name" Should Not be Masked Format
    And verify Last 4 Characters Should be "UnMasked" ("X") in "Mobile Number"
    And verify Other than Last 4 Characters Should be "Masked" ("X") in "Mobile Number"
    And verify Last 4 Characters Should be "UnMasked" ("X") in "Date of Birth"
    And verify Other than Last 4 Characters Should be "Masked" ("X") in "Date of Birth"
    And verify First 2 and Last 5 Characters Should be "Masked" ("X") And Others Should be "UnMasked" in "PAN Card"
    And Click on Accordian Icon 2 in "Joint Account Holder Details"
    And verify below Labels of "Second Joint Account Holder" in "Joint Account Holder Details" Relationship Details: "<Label Names>"
    And verify "Name" Should Not be Masked Format
    And verify Last 4 Characters Should be "UnMasked" ("X") in "Mobile Number"
    And verify Other than Last 4 Characters Should be "Masked" ("X") in "Mobile Number"
    And verify Last 4 Characters Should be "UnMasked" ("X") in "Date of Birth"
    And verify Other than Last 4 Characters Should be "Masked" ("X") in "Date of Birth"
    And verify First 2 and Last 5 Characters Should be "Masked" ("X") And Others Should be "UnMasked" in "PAN Card"
    And verify Accordian Icon Operations in Joint Account Holder Details
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number | Label Names                                  |
      | 9867024806    | 02061962 | Individual    | 544165     | Name, Mobile Number, PAN Card, Date of Birth |

  @Pass
  Scenario Outline: To verify ACTIVE FD with Edit Nominee Details
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
#    And verify Last 4 Characters Should be "UnMasked" ("X") in "Date of Birth"
#    And verify Other than Last 4 Characters Should be "Masked" ("X") in "Date of Birth"
#    And verify "Nominee Address" Masked And UnMasked Format in "Nominee Details"
    And verify "Edit Nominee" button is Displayed
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number | Label Names                                    |
      | 9867024806    | 02061962 | Individual    | 544165     | Name, Relation, Date of Birth|

  @Pass
  Scenario Outline: To verify ACTIVE FD with Add Nominee Details
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
    Then verify below fields of "Nominee Details" in "Fixed Deposit" Relationship Details for Add Nominee
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number |
      | 9820333113    | 18061976 | Individual    | 546410     |


  @Pass
  Scenario Outline: verify Guardian details in Relationship section
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
    Then verify below Labels of Guardian Details in "Fixed Deposit" Relationship Details: "<Label Names>"
    And verify "Name" Should Not be Masked Format
    And verify "Nominee Address" Masked And UnMasked Format in "Guardian Details"
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number | Label Names           |
      | 9820041515    | 19051999 | Individual    | 43709     | Name, Nominee Address |

  @Pass
  Scenario Outline: Active FD - RHS Sections
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
    Then verify RHS "Quick Actions" following Options: "Renew your FD, View Statements, Submit Form 15G/H, Premature Withdrawal, Get a loan against FD, Track FD Receipt, Submit FATCA Form" are Displayed
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number |
      | 9987160686    | 19091970 | Individual    | 149382     |


  @Pass
  Scenario Outline: Active FD - Has Pre-Approved Offers
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
    Then Pre-Approved Offers Section is "Visible" to "Active FD" Service Page
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number |
      | 9689371397    | 02061962 | Individual    | 1056676     |

  @Pass
  Scenario Outline: Active FD - Has NO Pre-Approved Offers
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
    Then Pre-Approved Offers Section is "Not Visible" to "Active FD" Service Page
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number |
      | 9987160686    | 19091970 | Individual    | 149382     |

  @Pass
  Scenario Outline: Active FD - Verification & Redirection of FAQ
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
      | 9987160686    | 19091970 | Individual    | 149382     |https://uat-oneweb.bajajfinserv.in/MyAccountService/HelpAndSupport/RARFAQCategory|

  @Pass
  Scenario Outline: Active FD - Verification & Redirection of Check Cibil
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
      | 9987160686    | 19091970 | Individual    | 149382     |https://www.bajajfinserv.in/check-free-cibil-score|