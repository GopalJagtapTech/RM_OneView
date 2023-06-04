@AFLS@LSRUN@Run02022023@Run02022023_3
Feature: Active Flexi Loan Services
  @Pass
  Scenario Outline: Active Flexi Loan - Redirection to Loan services Page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle  | Account No     |
      | 8888890933    | 15071992 | Individual    | FLEXI TERM LOAN | 400FLFHE869061 |
#      | 8446409507    | 15071992 | Individual    | FLEXI TERM LOAN | 405SPF87590531 |


  @Pass
  Scenario Outline: Active Flexi Loan - Section in Loan Service Page
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
#      | 8446409507    | 15071992 | Individual    | FLEXI TERM LOAN | 405SPF87590531 |

  @Pass
  Scenario Outline: Active Flexi Loan - Top Section in Loan services Page Without EMI Overdue
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    Then verify Top Section Details for "Active Flexi Loan without EMI Overdue"
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle  | Account No     |
      | 8888890933    | 15071992 | Individual    | FLEXI TERM LOAN | 400FLFHE869061 |
#      | 8446409507    | 15071992 | Individual    | FLEXI TERM LOAN | 405SPF87590531 |

  @Pass
  Scenario Outline: Active Flexi Loan - Top Section in Loan services Page With EMI Overdue
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    Then verify Top Section Details for "Active Flexi Loan with EMI Overdue"
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle  | Account No     |
      | 9652374940    | 26011980 | Individual    | FLEXI TERM LOAN | 400TPFFZ865157 |

@Pass
  Scenario Outline: Active Flexi Loan - Top Section in Loan services Page With Last EMI Only
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    Then verify Top Section Details for "Active Flexi Loan with Last EMI"
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle  | Account No     |
      | 8105284375    | 13011992 | Individual    | FLEXI TERM LOAN | 401SPF59335163 |

  Scenario Outline: Active Flexi Loan - Top Section in Loan services Page With Last EMI and EMI Overdue
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    Then verify Top Section Details for "Active Flexi Loan with Last EMI and Overdue"
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle  | Account No     |
#      | 8796738158    | 13011992 | Individual    | FLEXI TERM LOAN | 402TPLGN546122 |


#  Scenario Outline: Active Flexi Loan - Relationship Section without Fees & Charges
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User is on Home Page
#    And Customer is able to view My Relations Section to ETB Customers
#    And Customer clicks on view all option
#    And My relations Page should be displayed
#    And click on "Loans" tab
#    And verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
#    Then verify Relationship Details following Sub Sections: "Loan Details, Insurance Details, Registered Repayment Bank Details" are Displayed "without Fees and Charges"
#    And verify Relationship Details following Sub Sections are Not Displayed: "Fees and Charges".
#    Examples:
#      | Mobile Number | Date     | Customer Type | Subtitle  | Account No     |
##      | 8796738158    | 13011992 | Individual    | FLEXI TERM LOAN | 402TPLGN546122 |

  @Pass
  Scenario Outline: Active Flexi Loan - Relationship Section without Insurance Details
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
      | 7416257695    | 01011990 | Individual    | FLEXI LOAN | P400SOF0124200 |

#  Scenario Outline: Active Flexi Loan - Relationship Section without Insurance Details, Fees& Charges
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User is on Home Page
#    And Customer is able to view My Relations Section to ETB Customers
#    And Customer clicks on view all option
#    And My relations Page should be displayed
#    And click on "Loans" tab
#    And verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
#    Then verify Relationship Details following Sub Sections: "Loan Details, Registered Repayment Bank Details" are Displayed "without Insurance Details, Fees and Charges"
#    And verify Relationship Details following Sub Sections are Not Displayed: "Insurance Details, Fees and Charges".
#    Examples:
#      | Mobile Number | Date     | Customer Type | Subtitle  | Account No     |
##      | 8796738158    | 13011992 | Individual    | TERM LOAN | 402TPLGN546122 |

  @Pass
  Scenario Outline: Active Flexi Loan - Relationship Section All 4 Fields
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
#      | 8446409507    | 15071992 | Individual    | FLEXI TERM LOAN | 405SPF87590531 |
  @Pass
  Scenario Outline: Active Flexi Loan - Relationship Section - Loan Details
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
      | 8888890933    | 15071992 | Individual    | FLEXI TERM LOAN | 400FLFHE869061 |
#      | 8446409507    | 15071992 | Individual    | FLEXI TERM LOAN | 405SPF87590531 |
  @Pass
  Scenario Outline: Active Flexi Loan - Relationship Section - Bank Details
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
      | 8888890933    | 15071992 | Individual    | FLEXI TERM LOAN | 400FLFHE869061 |
#      | 8446409507    | 15071992 | Individual    | FLEXI TERM LOAN | 405SPF87590531 |

  @Pass
  Scenario Outline: Active Flexi Loan - Relationship Section - Bank Details - Verify Change Bank Account Button
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
      | 8888890933    | 15071992 | Individual    | FLEXI TERM LOAN | 400FLFHE869061 |
#      | 8446409507    | 15071992 | Individual    | FLEXI TERM LOAN | 405SPF87590531 |


  @Pass
  Scenario Outline: Active Flexi Loan - Relationship Section - Bank Details - Bank Account Number - Masked format
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
#      | 8446409507    | 15071992 | Individual    | FLEXI TERM LOAN | 405SPF87590531 |
      | 8888890933    | 15071992 | Individual    | FLEXI TERM LOAN | 400FLFHE869061 |

  Scenario Outline: Active Flexi Loan - Relationship Section - Insurance Details - Single
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
#      | 8796738158    | 13011992 | Individual    | FLEXI TERM LOAN | 402TPLGN546122 |

  Scenario Outline: Active Flexi Loan - Relationship Section - Insurance Details - Multiple
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
#      | 8446409507    | 15071992 | Individual    | FLEXI TERM LOAN | 405SPF87590531 |

  Scenario Outline: Active Flexi Loan - Relationship Section - Multiple Insurance Policy Accordian Icon
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
#      | 8446409507    | 15071992 | Individual    | FLEXI TERM LOAN | 405SPF87590531 |

#  @Pass
#  Scenario Outline: Active Flexi Loan - Relationship Section - Fees & Charges Details
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User is on Home Page
#    And Customer is able to view My Relations Section to ETB Customers
#    And Customer clicks on view all option
#    And My relations Page should be displayed
#    And click on "Loans" tab
#    And verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
#    Then verify Fees and Charges Details in "Relationship Section"
#    Examples:
#      | Mobile Number | Date     | Customer Type | Subtitle  | Account No     |
#      | 7416257695    | 01011990 | Individual    | FLEXI LOAN | P400SOF0124200 |

  @Pass
  Scenario Outline: Active Flexi Loan - Relationship Section - Fees & Charges Details
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
      | 9443326705    | 01011990 | Individual    | BUSINESS FLEXI TERM LOAN | 412BLF34138336 |


  @Pass
Scenario Outline: Active Flexi Loan - RHS Sections
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    Then verify RHS "Quick Actions" following Options: "Withdraw, Make Payments, View Statements" are Displayed
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle  | Account No     |
      | 8888890933    | 15071992 | Individual    | FLEXI TERM LOAN | 400FLFHE869061 |
#      | 8446409507    | 15071992 | Individual    | FLEXI TERM LOAN | 405SPF87590531 |

  @Bug
  Scenario Outline: Active Flexi Loan - RHS Sections - Withdraw without EMI overdue
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    And Customer Click on "Withdraw" CTA in RHS
    Then verify Withdraw option in RHS Section
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle  | Account No     |
      | 8446409507    | 15071992 | Individual    | FLEXI TERM LOAN | 405SPF87590531 |

  @Pass
  Scenario Outline: Active Flexi Loan - RHS Sections - Withdraw with EMI overdue
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    And Customer Click on "Withdraw" CTA in RHS
    And verify Popup is showing and click on Clear Due Button
#    And verify Withdraw with EMI Overdue option in RHS Section
    Then verify Customer is redirected to the exact Payment Option "Overdue or missed EMIs"
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle  | Account No     |
      | 9652374940    | 26011980 | Individual    | FLEXI TERM LOAN | 400TPFFZ865157 |

  @Pass
  Scenario Outline: Active Flexi Loan - RHS Sections - Make Payments
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
#      | 8446409507    | 15071992 | Individual    | FLEXI TERM LOAN | 405SPF87590531 |
      | 8888890933    | 15071992 | Individual    | FLEXI TERM LOAN | 400FLFHE869061 |
  @Pass
  Scenario Outline: Active Flexi Loan - RHS Sections - View Statements
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
#      | 8446409507    | 15071992 | Individual    | FLEXI TERM LOAN | 405SPF87590531 |
      | 8888890933    | 15071992 | Individual    | FLEXI TERM LOAN | 400FLFHE869061 |
@Pass
  Scenario Outline: Active Flexi Loan - Has Pre-Approved Offers
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    Then Pre-Approved Offers Section is "Visible" to "Active Flexi Term Loan" Service Page
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle  | Account No     |
      | 9113074693    | 25021997 | Individual    | FLEXI TERM LOAN | P401PSP2909397 |
  @Pass
  Scenario Outline: Active Flexi Loan - Has NO Pre-Approved Offers
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    Then Pre-Approved Offers Section is "Not Visible" to "Active Flexi Term Loan" Service Page
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle  | Account No     |
      | 8888890933    | 15071992 | Individual    | FLEXI TERM LOAN | 400FLFHE869061 |
#      | 8446409507    | 15071992 | Individual    | FLEXI TERM LOAN | 405SPF87590531 |
  @Pass
  Scenario Outline: Active Flexi Loan - Verification & Redirection(FAQ)
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
      | 8888890933    | 15071992 | Individual    | FLEXI TERM LOAN | 400FLFHE869061 |
#      | 8446409507    | 15071992 | Individual    | FLEXI TERM LOAN | 405SPF87590531 |

  @Pass
  Scenario Outline: Active Flexi Loan - Verification & Redirection(Cibil)
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
#      | 8446409507    | 15071992 | Individual    | FLEXI TERM LOAN | 405SPF87590531 |
      | 8888890933    | 15071992 | Individual    | FLEXI TERM LOAN | 400FLFHE869061 |

@Pass
  Scenario Outline: Active Flexi Loan - Verify Tool Tip Icon
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    And Verify "Flexi Loan Top Section Tool Tip Icon" is Displayed
    And Clicks on "Flexi Loan Top Section Tool Tip Icon"
    And Verify "Flexi Loan Top Section Cross Icon" is Displayed
    And Clicks on "Flexi Loan Top Section Cross Icon"
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle          | Account No     |
#      | 8446409507    | 15071992 | Individual    | FLEXI TERM LOAN | 405SPF87590531 |
      | 8888890933    | 15071992 | Individual    | FLEXI TERM LOAN | 400FLFHE869061 |
