@ATLS@LSRUN@Run02022023@Run02022023_3
Feature: Active Term Loan Services
  @Pass
  Scenario Outline: Active Term Loan - Redirection to Loan services Page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle  | Account No     |
#      | 9921844153    | 01011996 | Individual    | TERM LOAN | 402PLTHA584153 |
#      #      | 9860149678    | 01011996 | Individual    | TERM LOAN | 13BRPLEI043814 |
      | 8956071386    | 01011996 | Individual    | TERM LOAN | 4V0RPLGU937110 |
#      | 8956071386    | 01011996 | Individual    | TERM LOAN | 4V0RPLGU937110 |
  @Pass
  Scenario Outline: Active Term Loan - Section in Loan Service Page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    Then verify the "Loan Services" following components: Top Section, Relationship section, RHS section, "Loan Details, Insurance Details, Registered Repayment Bank Details, Fees and Charges" are Displayed in "Loan Service Page"
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle  | Account No     |
#      | 9921844153    | 01011996 | Individual    | TERM LOAN | 402PLTHA584153 |
      #      | 9860149678    | 01011996 | Individual    | TERM LOAN | 13BRPLEI043814 |
      | 8956071386    | 01011996 | Individual    | TERM LOAN | 4V0RPLGU937110 |

  @Pass
  Scenario Outline: Active Term Loan - Top Section in Loan services Page Without EMI Overdue
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    Then verify Top Section Details for "Active Term Loan without EMI Overdue"
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle  | Account No     |
#      | 9921844153    | 01011996 | Individual    | TERM LOAN | 402PLTHA584153 |
@Pass
  Scenario Outline: Active Term Loan - Top Section in Loan services Page With EMI Overdue
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    Then verify Top Section Details for "Active Term Loan with EMI Overdue"
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle  | Account No     |
#      | 9642078253    | 27121985 | Individual    | TERM LOAN | 400PMT99115708 |
      | 8956071386    | 27121985 | Individual    | TERM LOAN | 4V0RPLGU937110 |

  @DataIssueCommentedByManualTesters
  Scenario Outline: Active Term Loan - Top Section in Loan services Page With Last EMI Only
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    Then verify Top Section Details for "Active Term Loan with Last EMI"
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle  | Account No     |
      | 9711228389    | 13011992 | Individual    | TERM LOAN | 401PMT59440439 |
  @Pass
  Scenario Outline: Active Term Loan - Top Section in Loan services Page With Last EMI and EMI Overdue
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    Then verify Top Section Details for "Active Term Loan with Last EMI and Overdue"
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle  | Account No     |
      | 9860149678    | 13011992 | Individual    | TERM LOAN |  13BRPLEI043814 |


  Scenario Outline: Active Term Loan - Relationship Section without Fees & Charges
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    Then verify Relationship Details following Sub Sections: "Loan Details, Insurance Details, Registered Repayment Bank Details" are Displayed "without Fees and Charges"
    And verify Relationship Details following Sub Sections are Not Displayed: "Fees and Charges".

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle  | Account No     |
#      | 8796738158    | 13011992 | Individual    | TERM LOAN | 402TPLGN546122 |
@Pass
  Scenario Outline: Active Term Loan - Relationship Section without Insurance Details
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    Then verify Relationship Details following Sub Sections: "Loan Details, Registered Repayment Bank Details, Fees and Charges" are Displayed "without Insurance Details"
    And verify Relationship Details following Sub Sections are Not Displayed: "Insurance Details".
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle  | Account No     |
#      | 9987062860    | 02031960 | Individual    | TERM LOAN | 405PHT91293439 |
@Pass
  Scenario Outline: Active Term Loan - Relationship Section without Insurance Details, Fees& Charges
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    Then verify Relationship Details following Sub Sections: "Loan Details, Registered Repayment Bank Details" are Displayed "without Insurance Details, Fees and Charges"
    And verify Relationship Details following Sub Sections are Not Displayed: "Insurance Details, Fees and Charges".
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle  | Account No     |
#      | 9642078253    | 27121985 | Individual    | TERM LOAN | 400WLTFW298635 |

  @Pass
  Scenario Outline: Active Term Loan - Relationship Section All 4 Fields
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    Then verify Relationship Details following Sub Sections: "Loan Details, Registered Repayment Bank Details, Insurance Details, Fees and Charges" are Displayed " - All 4 Fields"
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle  | Account No     |
#      | 9921844153    | 01011996 | Individual    | TERM LOAN | 402PLTHA584153 |
  @Pass
  Scenario Outline: Active Term Loan - Relationship Section - Loan Details
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
#      | 9921844153    | 01011996 | Individual    | TERM LOAN | 402PLTHA584153 |
      #      | 9860149678    | 01011996 | Individual    | TERM LOAN | 13BRPLEI043814 |
      | 8956071386    | 01011996 | Individual    | TERM LOAN | 4V0RPLGU937110 |

  @Pass
  Scenario Outline: Active Term Loan - Relationship Section - Bank Details
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    Then verify following "Registered Repayment Bank Details" in Relationship Section: "Registered Bank Name, Registered Bank Account, IFSC, Branch Name"
    And Verify "Change Bank Account Button" is Displayed
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle  | Account No     |
#      | 9921844153    | 01011996 | Individual    | TERM LOAN | 402PLTHA584153 |
      #      | 9860149678    | 01011996 | Individual    | TERM LOAN | 13BRPLEI043814 |
      | 8956071386    | 01011996 | Individual    | TERM LOAN | 4V0RPLGU937110 |


  @Pass@New
  Scenario Outline: Active Term Loan - Relationship Section - Bank Details - Verify Change Bank Account Button
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    And Clicks on "Change Bank Account Button"
    Then Verify Customer Redirected to "MyAccountService/Emandate/index" Url
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle  | Account No     |
#      | 9921844153    | 01011996 | Individual    | TERM LOAN | 402PLTHA584153 |
      #      | 9860149678    | 01011996 | Individual    | TERM LOAN | 13BRPLEI043814 |
      | 8956071386    | 01011996 | Individual    | TERM LOAN | 4V0RPLGU937110 |


  @Pass
  Scenario Outline: Active Term Loan - Relationship Section - Bank Details - Bank Account Number - Masked format
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
      #      | 9860149678    | 01011996 | Individual    | TERM LOAN | 13BRPLEI043814 |
      | 8956071386    | 01011996 | Individual    | TERM LOAN | 4V0RPLGU937110 |

#      | 9921844153    | 01011996 | Individual    | TERM LOAN | 402PLTHA584153 |

  Scenario Outline: Active Term Loan - Relationship Section - Insurance Details - Single
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    Then verify following "Single" Insurance Details in Relationship Section: "Policy Name, Policy Number, Sum Assured, Premium Amount"
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle  | Account No     |
#      | 8796738158    | 13011992 | Individual    | TERM LOAN | 402TPLGN546122 |
  @Pass
  Scenario Outline: Active Term Loan - Relationship Section - Insurance Details - Multiple
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    Then verify following "Multiple" Insurance Details in Relationship Section: "Policy Name, Policy Number, Sum Assured, Premium Amount"
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle  | Account No     |
      #      | 9860149678    | 01011996 | Individual    | TERM LOAN | 13BRPLEI043814 |
      | 8956071386    | 01011996 | Individual    | TERM LOAN | 4V0RPLGU937110 |

#      | 9921844153    | 01011996 | Individual    | TERM LOAN | 402PLTHA584153 |
  @Pass
  Scenario Outline: Active Term Loan - Relationship Section - Multiple Insurance Policy Accordian Icon
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    Then verify if there are multiple policies for Term Loan
    And verify customer view multiple policies using accordian icon
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle  | Account No     |
      #      | 9860149678    | 01011996 | Individual    | TERM LOAN | 13BRPLEI043814 |
      | 8956071386    | 01011996 | Individual    | TERM LOAN | 4V0RPLGU937110 |

#      | 9921844153    | 01011996 | Individual    | TERM LOAN | 402PLTHA584153 |
  @Pass
  Scenario Outline: Active Term Loan - Relationship Section - Fees & Charges Details
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    Then verify Fees and Charges Details in "Relationship Section"
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle  | Account No     |
#      #      | 9860149678    | 01011996 | Individual    | TERM LOAN | 13BRPLEI043814 |
      | 8956071386    | 01011996 | Individual    | TERM LOAN | 4V0RPLGU937110 |

#      | 9921844153    | 01011996 | Individual    | TERM LOAN | 402PLTHA584153 |
  @Pass
Scenario Outline: Active Term Loan - RHS Sections
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    Then verify RHS "Quick Actions" following Options: "Make Payments, View Documents" are Displayed
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle  | Account No     |
      #      | 9860149678    | 01011996 | Individual    | TERM LOAN | 13BRPLEI043814 |
      | 8956071386    | 01011996 | Individual    | TERM LOAN | 4V0RPLGU937110 |

#      | 9921844153    | 01011996 | Individual    | TERM LOAN | 402PLTHA584153 |
  @Pass
  Scenario Outline: Active Term Loan - RHS Sections - Make Payments
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    And Customer Click on "Make Payments" CTA in RHS
    Then verify Payments popup is displayed
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle  | Account No     |
      #      | 9860149678    | 01011996 | Individual    | TERM LOAN | 13BRPLEI043814 |
      | 8956071386    | 01011996 | Individual    | TERM LOAN | 4V0RPLGU937110 |

#      | 9921844153    | 01011996 | Individual    | TERM LOAN | 402PLTHA584153 |
  @Pass
  Scenario Outline: Active Term Loan - RHS Sections - View Statements
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    And Customer Click on "View Documents" CTA in RHS
    Then Then a Document drawer or pop-up should be displayed for "<Account No>"
    And click on "Find them here" hyperlink
    Then User should be redirected to specific document page "<Account No>"
    And verify that customer is able view content on View Statements page
    And verify Loan Services statement is downloaded  on click of download button for Account NO "<Account No>"
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle  | Account No     |
      #      | 9860149678    | 01011996 | Individual    | TERM LOAN | 13BRPLEI043814 |
      | 8956071386    | 01011996 | Individual    | TERM LOAN | 4V0RPLGU937110 |

#      | 9921844153    | 01011996 | Individual    | TERM LOAN | 402PLTHA584153 |
@Pass
  Scenario Outline: Active Term Loan - Has Pre-Approved Offers
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    Then Pre-Approved Offers Section is "Visible" to "Active Term Loan" Service Page
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle  | Account No     |
      | 8956071386    | 08101991 | Individual    | TERM LOAN | 4V0RPLGU937110 |
  @Pass
  Scenario Outline: Active Term Loan - Has NO Pre-Approved Offers
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    Then Pre-Approved Offers Section is "Not Visible" to "Active Term Loan" Service Page
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle  | Account No     |
      #      | 9860149678    | 01011996 | Individual    | TERM LOAN | 13BRPLEI043814 |
      | 8956071386    | 01011996 | Individual    | TERM LOAN | 4V0RPLGU937110 |

#      | 9921844153    | 01011996 | Individual    | TERM LOAN | 402PLTHA584153 |
  @Pass
  Scenario Outline: Active Term Loan - Verification & Redirection(FAQ)
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
      #      | 9860149678    | 01011996 | Individual    | TERM LOAN | 13BRPLEI043814 |
      | 8956071386    | 01011996 | Individual    | TERM LOAN | 4V0RPLGU937110 |

#      | 9921844153    | 01011996 | Individual    | TERM LOAN | 402PLTHA584153 |

  @Pass
  Scenario Outline: Active Term Loan - Verification & Redirection(Cibil)
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
      #      | 9860149678    | 01011996 | Individual    | TERM LOAN | 13BRPLEI043814 |
      | 8956071386    | 01011996 | Individual    | TERM LOAN | 4V0RPLGU937110 |

#      | 9921844153    | 01011996 | Individual    | TERM LOAN | 402PLTHA584153 |
  @Pass
  Scenario Outline: Active Term Loan - Verify Tool Tip Icon is Not Displayed
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    And verify "Flexi Loan Top Section Tool Tip Icon" is Not Displayed
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle          | Account No     |
      #      | 9860149678    | 01011996 | Individual    | TERM LOAN | 13BRPLEI043814 |
      | 8956071386    | 01011996 | Individual    | TERM LOAN | 4V0RPLGU937110 |

#      | 9921844153    | 01011996 | Individual    | TERM LOAN | 402PLTHA584153 |

  @Pass
  Scenario Outline: Active Term Loan - Relationship Section - Fees & Charges Details
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    And Verify "Show More Button" is Displayed
    And Clicks on "Show More Button"
    And Verify "Show Less Button" is Displayed
    And Clicks on "Show Less Button"
    And Verify "Show More Button" is Displayed
    And Verify "More Than" 5 "Fees & Charges"
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle  | Account No     |
      #      | 9860149678    | 01011996 | Individual    | TERM LOAN | 13BRPLEI043814 |
      | 8956071386    | 01011996 | Individual    | TERM LOAN | 4V0RPLGU937110 |

