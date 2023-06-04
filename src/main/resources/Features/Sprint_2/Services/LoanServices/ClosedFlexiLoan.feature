@CFLS@Run02022023@Run02022023_3
Feature: Closed Flexi Loan Services
@Pass
  Scenario Outline: Closed Flexi Loan - Redirection to Loan services Page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle  | Account No     |
      | 9902133996    | 01011990 | Individual    | FLEXI TERM LOAN | 404SOF42758479 |
  @Pass
  Scenario Outline: Closed Flexi Loan - Section in Loan Service Page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    Then verify the "Loan Services" following components: Top Section, Relationship section, RHS section, "Loan Details, Registered Repayment Bank Details" are Displayed in "Loan Service Page"
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle  | Account No     |
      | 9902133996    | 01011990 | Individual    | FLEXI TERM LOAN | 404SOF42758479 |
  @Pass
  Scenario Outline: Closed Flexi Loan - Top Section in Loan services Page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    Then verify Top Section Details for "Closed Flexi Loan"
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle  | Account No     |
      | 9902133996    | 01011990 | Individual    | FLEXI TERM LOAN | 404SOF42758479 |
  @Pass
  Scenario Outline: Closed Flexi Loan - Relationship Section - Loan Details
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    Then verify following "Loan Details" in Relationship Section: "Number of EMIs Paid, EMI Start Date, EMI End Date, Loan Amount Paid Till Date, Disbursement Date"
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle  | Account No     |
      | 9902133996    | 01011990 | Individual    | FLEXI TERM LOAN | 404SOF42758479 |
  @Pass
  Scenario Outline: Closed Flexi Loan - Relationship Section - Bank Details
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    Then verify following "Registered Repayment Bank Details" in Relationship Section: "Registered Bank Name, Registered Bank Account, IFSC, Branch Name"
    And verify "Change Bank Account Button" is Not Displayed
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle  | Account No     |
      | 9902133996    | 01011990 | Individual    | FLEXI TERM LOAN | 404SOF42758479 |
  @Pass
  Scenario Outline: Closed Flexi Loan - Relationship Section - Bank Details - Bank Account Number - Masked format
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed

    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    Then verify except last 4 characters of Bank account number remaining characters are masked
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle  | Account No     |
      | 9902133996    | 01011990 | Individual    | FLEXI TERM LOAN | 404SOF42758479 |

  @Pass
Scenario Outline: Closed Flexi Loan - RHS Sections
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    Then verify RHS "Quick Actions" following Options: "View Statements" are Displayed
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle  | Account No     |
      | 9902133996    | 01011990 | Individual    | FLEXI TERM LOAN | 404SOF42758479 |

  @Pass
  Scenario Outline: Closed Flexi Loan - RHS Sections - View Statements
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    And Customer Click on "View Statements" CTA in RHS
    Then User should be redirected to specific document page "<Account No>"
    And verify that customer is able view content on View Statements page
    And verify Loan Services statement is downloaded  on click of download button for Account NO "<Account No>"
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle  | Account No     |
      | 9902133996    | 01011990 | Individual    | FLEXI TERM LOAN | 404SOF42758479 |

  Scenario Outline: Closed Flexi Loan - Has Pre-Approved Offers
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    Then Pre-Approved Offers Section is "Visible" to "Closed Flexi Loan" Service Page
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle  | Account No     |
#      | 8796738158    | 13011992 | Individual    | TERM LOAN | 402TPLGN546122 |
  @Pass
  Scenario Outline: Closed Flexi Loan - Has NO Pre-Approved Offers
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    Then Pre-Approved Offers Section is "Not Visible" to "Closed Flexi Loan" Service Page
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle  | Account No     |
      | 9902133996    | 01011990 | Individual    | FLEXI TERM LOAN | 404SOF42758479 |
  @Pass
  Scenario Outline: Closed Flexi Loan - Verification & Redirection(FAQ)
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    Then verify customer can view FAQ section
    And verify Customer is redirected to FAQ page on clicking FAQ section
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle          | Account No     |
      | 9902133996    | 01011990 | Individual    | FLEXI TERM LOAN | 404SOF42758479 |

  @Pass
  Scenario Outline: Closed Flexi Loan - Verification & Redirection(Cibil)
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    And Clicks on "Check Score Button in CIBIL"
    Then verify Page Redirection to "https://www.bajajfinserv.in/check-free-cibil-score" Url with SSO
    And Go Back to Previous Page
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle          | Account No     |
      | 9902133996    | 01011990 | Individual    | FLEXI TERM LOAN | 404SOF42758479 |
