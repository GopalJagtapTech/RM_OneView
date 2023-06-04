Feature: LAS Services

  @LAS
  Scenario Outline: Home My Relations - LAS Tile  - View Details
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Click on "<Account No>" - "<Subtitle>" "View Details" Button My Relations Tile in Home Page
    Then verify Customer is redirected to "<Account No>" Account <"Subtitle"> Service Page
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle            | Account No |
      | 9545219299    | 01011996 | Individual    | LOAN AGAINST SHARES | 104175     |

  @LAS
  Scenario Outline: My Relations is not displayed for NTB customers
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And verify "My_Relations_Section" is Not Displayed
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 8923564516    | 01011996 | Individual    |

  @LAS
  Scenario Outline: Active LAS - Redirection to LAS services Page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using FAS No"<Account No>"
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle            | Account No |
      | 9996645984    | 01011996 | Individual    | LOAN AGAINST SHARES | 111030     |

  @LAS @no
  Scenario Outline: Active LAS - Section in LAS Service Page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using FAS No"<Account No>"
    Then verify the "LAS Services" following components: Top Section, Relationship section, RHS section, "Loan Details" are Displayed in "Loan Service Page"
    And Verify "Pre-approved offers Banners section" is Displayed
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle            | Account No |
      | 9545219299    | 01011996 | Individual    | LOAN AGAINST SHARES | 104175     |

  @LAS @no
  Scenario Outline: Active LAS - Top Section in Loan services Page Without EMI Overdue
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using FAS No"<Account No>"
    Then verify Top Section Details for "Active LAS without EMI Overdue"
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle            | Account No |
      | 9996645984    | 01011996 | Individual    | LOAN AGAINST SHARES | 111030     |

  @LAS
  Scenario Outline: Active LAS - Relationship Section - Loan Details Sub Section
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using FAS No"<Account No>"
    Then verify following "Loan Details" in Relationship Section: "Loan Account Number, Loan Amount, Sanctioned Limit, Loan To Value, DP To Loan"
    And Verify "Show More Button in LAS Loan details Section" is Displayed
    And verify "Show Less Button in LAS Loan details Section" is Not Displayed
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle            | Account No |
      | 9545219299    | 01011996 | Individual    | LOAN AGAINST SHARES | 104175     |

  @LAS
  Scenario Outline: Active LAS - Relationship Section - Additional Loan Details should be displayed after clicking show more Button
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using FAS No"<Account No>"
    And Clicks on "Show More Button in LAS Loan details Section"
    Then verify following "Loan Details" in Relationship Section: "Loan Account Number, Loan Amount, Sanctioned Limit, Loan To Value, DP To Loan, Annualized Rate of Interest, Outstanding Interest Amount"
    And Clicks on "Show Less Button in LAS Loan details Section"
    And verify "Outstanding Interest Amount Label in Loan Details" is Not Displayed
    And verify "Annualized Rate of Interest Label in Loan Details" is Not Displayed
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle            | Account No |
      | 9545219299    | 01011996 | Individual    | LOAN AGAINST SHARES | 104175     |

  @LAS
  Scenario Outline: Active LAS - Relationship Section - Loan Details - verify Show more button and Show less button
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using FAS No"<Account No>"
    And Clicks on "Show More Button in LAS Loan details Section"
    And Verify "Show Less Button in LAS Loan details Section" is Displayed
    And verify "Show More Button in LAS Loan details Section" is Not Displayed
    And Clicks on "Show Less Button in LAS Loan details Section"
    And Verify "Show More Button in LAS Loan details Section" is Displayed
    And verify "Show Less Button in LAS Loan details Section" is Not Displayed
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle            | Account No |
      | 9545219299    | 01011996 | Individual    | LOAN AGAINST SHARES | 104175     |

  @LAS
  Scenario Outline: Active LAS - Verification & Redirection(FAQ)
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using FAS No"<Account No>"
    Then verify customer can view FAQ section
    And verify Customer is redirected to FAQ page on clicking FAQ section
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle            | Account No |
      | 9545219299    | 01011996 | Individual    | LOAN AGAINST SHARES | 104175     |


  @LAS
  Scenario Outline: Active LAS - Verification & Redirection(Cibil)
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using FAS No"<Account No>"
    And Clicks on "Check Now Button in CIBIL"
    Then verify Page Redirection to "https://www.bajajfinserv.in/check-free-cibil-score" Url with SSO
#    And Go Back to Previous Page
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle            | Account No |
      | 9545219299    | 01011996 | Individual    | LOAN AGAINST SHARES | 104175     |

  @LAS
  Scenario Outline: Active LAS - RHS Sections
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using FAS No"<Account No>"
    Then verify RHS "Things you can do:" following Options: "Drawdown, Make Payments, View Statement, Release Securities" are Displayed
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle            | Account No |
      | 9545219299    | 01011996 | Individual    | LOAN AGAINST SHARES | 104175     |

  @LAS
  Scenario Outline: Active LAS - RHS Sections - Drawdown
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using FAS No"<Account No>"
    And Customer Click on "Drawdown" CTA in RHS
    Then verify Page Redirection to "/MyAccountLoanServices/LAS/LasDisbursement?" Url with SSO
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle            | Account No |
      | 9545219299    | 01011996 | Individual    | LOAN AGAINST SHARES | 104175     |

  @LAS
  Scenario Outline: Active LAS - RHS Sections - Make Payments
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using FAS No"<Account No>"
    And Customer Click on "Make Payments" CTA in RHS
    Then verify Page Redirection to "MyAccountPayments/LoanPay/LASPartPayment" Url with SSO
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle            | Account No |
      | 9545219299    | 01011996 | Individual    | LOAN AGAINST SHARES | 104175     |

#  @LAS
#  Scenario Outline: Active LAS - RHS Sections - View Statements
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User is on Home Page
#    And Customer is able to view My Relations Section to ETB Customers
#    And Customer clicks on view all option
#    And My relations Page should be displayed
#    And click on "Loans" tab
#    And verify Customer is able to go to Service screen from My Relations using FAS No"<Account No>"
#    And Customer Click on "View Statement" CTA in RHS
#    Then User should be redirected to specific document page "V428LAS00004845"
#    And verify that customer is able view content on View Statements page
##    And verify Loan Services statement is downloaded  on click of download button for Account NO "<Account No>"
#    Examples:
#      | Mobile Number | Date     | Customer Type | Subtitle            | Account No |
#      | 9545219299    | 01011996 | Individual    | LOAN AGAINST SHARES | 104175     |

  @LAS
  Scenario Outline: Active LAS - RHS Sections - View Statements - SOA
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using FAS No"<Account No>"
    And Customer Click on "View Statement" CTA in RHS
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter/docCenter_LoanDetails" Url
#  Then User should be redirected to specific document page "V428LAS00004845"
#    And verify that customer is able view content on View Statements page
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle            | Account No |
      | 9545219299    | 01011996 | Individual    | LOAN AGAINST SHARES | 104175     |

    