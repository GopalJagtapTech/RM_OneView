Feature: Active Two Wheeler Loan Services

  @run
  Scenario Outline: Active Two Wheeler Loan -  To verify Customer is redirected to Two Wheeler Loan services page when customer Click on View Details CTA in Home Page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Click on "<Account No>" - "<Subtitle>" "View Details" Button My Relations Tile in Home Page
    Then verify Customer is redirected to "<Account No>" Account <"Subtitle"> Service Page
    Examples:
     | Mobile Number | Date     | Customer Type | Subtitle  | Account No     |
      | 9579616252    | 01011996 | Individual    | TWO WHEELER FINANCE | 571UTWIT397619 |

  Scenario Outline: Active Two Wheeler Loan -  To verify Customer is redirected to Two Wheeler Loan services page when customer Click on View Details CTA in My Relations Page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle  | Account No     |
      | 9579616252    | 01011996 | Individual    | TWO WHEELER FINANCE | 571UTWIT397619 |

  @run
  Scenario Outline: Active Two Wheeler Loan -  To verify Components of Active Two Wheeler Loan Service page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    Then verify the "Two Wheeler Loan Services" following components: Top Section, Relationship section, RHS section, "Loan Details, Insurance Details, Registered Repayment Bank Details, Fees and Charges" are Displayed in "Two Wheeler Loan Service Page"
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle  | Account No     |
      | 9921844153    | 01011996 | Individual    | TERM LOAN | 402PLTHA584153 |

  @run
  Scenario Outline: Active Two Wheeler Loan - Top Section in Loan services Page Without EMI Overdue
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    Then verify TWL Top Section Details for "Active Two Wheeler Loan without EMI Overdue"
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle  | Account No     |
      | 9579616252    | 27121985 | Individual    | TWO WHEELER FINANCE | 571UTWIT397619 |

  @DataIssue
  Scenario Outline: Active Two Wheeler Loan - Top Section in Loan services Page With EMI Overdue
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    Then verify TWL Top Section Details for "Active Two Wheeler Loan with EMI Overdue"
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle  | Account No     |
      | 9370039389    | 27121985 | Individual    | TWO WHEELER FINANCE | 417UTWIJ644369 |

  @DataIssue
  Scenario Outline: Active Two Wheeler Loan - Top Section in Loan services Page With Last EMI Only
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    Then verify TWL Top Section Details for "Active Two Wheeler Loan with Last EMI"
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle  | Account No     |
#      | 8459005512    | 27121985 | Individual    | TWO WHEELER FINANCE | 81HRTWIR047320 |

  @DataIssue
  Scenario Outline: Active Two Wheeler Loan - Top Section in Loan services Page With Last EMI and EMI Overdue
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    Then verify TWL Top Section Details for "Active Two Wheeler Loan with Last EMI and Overdue"
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle  | Account No     |
#      | 8459005512    | 27121985 | Individual    | TWO WHEELER FINANCE | 81HRTWIR047320 |

  @run
  Scenario Outline: Active Two Wheeler Loan -  To verify there is no capsule nudge displayed for Active Two Wheller Loans
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    Then Verify Nudge is not showing in "Active Two Wheeler Loan"
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle  | Account No     |
      | 9579616252    | 01011996 | Individual    | TWO WHEELER FINANCE | 571UTWIT397619 |

@DataIssue
  #Need test Data with All Sub Fields in relationship Details
  Scenario Outline: Active Two Wheeler Loan -  To verify the details displayed under Component 2 - Relationship Details
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
  And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    Then verify Relationship Details following Sub Sections: "Loan Details, Vehicle Details, Co - Applicant, Insurance Details, Registered Repayment Bank Details, Fees and Charges" are Displayed ""
#  1.Loan details
#  2.Vehicle details
#  3.Co applicant details
#  4.Registered Repayment Bank details
#  5.Insurance details
#  6.Fees and charges
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle  | Account No     |
      | 7385707862    | 01011996 | Individual    | TWO WHEELER FINANCE | 453UTWIJ343419 |

  @run
  Scenario Outline: Active Two Wheeler Loan -  To verify details displayed under Loan Details Section
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    Then verify below Labels of "Loan Details" in Two Wheeler Loan Relationship Details: "Number of EMIs Paid, EMI Start Date, EMI End Date, Loan Amount Paid Till Date, Disbursement Date"
    And verify "EMI Start Date" format as "dd/MM/yyyy"
    And verify "EMI End Date" format as "dd/MM/yyyy"
    And verify "Loan Amount Paid Till Date" format as <Rs. Digits>
    And verify "Disbursement Date" format as "dd/MM/yyyy"
#  1.No. of EMIs Paid
#  2.EMI Start Date
#  3.EMI End Date
#  4.Loan Amount Paid till Date
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle  | Account No     |
      | 7385707862    | 01011996 | Individual    | TWO WHEELER FINANCE | 453UTWIJ343419 |



    #  RC No (is Not Available)
  @run
  Scenario Outline: Active Two Wheeler Loan -  To verify details displayed under Vehicle Details Section
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    Then verify below Labels of "Vehicle Details" in Two Wheeler Loan Relationship Details: "Manufacturer, Variant, Colour, Engine No, Vehicle Registration No., Chassis No, Dealer Name, Dealer Location, RC No"
#  1.Manufacture
#  2.Variant
#  3.Colour
#  4.Engine No
#  5.Vehicle Registration No
#  6.RC No
#  7.Chassis No
#  8.Dealer Name
#  9.Dealer Location
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle  | Account No     |
      | 7385707862    | 01011996 | Individual    | TWO WHEELER FINANCE | 453UTWIJ343419 |

  @run
  Scenario Outline: Active Two Wheeler Loan -  To verify details displayed under Co-Applicant Details Section
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    Then verify below Labels of "Co - Applicant" in Two Wheeler Loan Relationship Details: "Name, Date Of Birth, Mobile Number, Address"
    And verify "Name" Should Not be Masked Format
    And verify Last 4 Characters Should be "UnMasked" ("X") in "Date Of Birth"
    And verify Other than Last 4 Characters Should be "Masked" ("X") in "Date Of Birth"
    And verify Last 4 Characters Should be "UnMasked" ("X") in "Mobile Number"
    And verify Other than Last 4 Characters Should be "Masked" ("X") in "Mobile Number"
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle  | Account No     |
      | 7385707862    | 01011996 | Individual    | TWO WHEELER FINANCE | 453UTWIJ343419 |

  @run
  Scenario Outline: Active Two Wheeler Loan -  To verify details displayed under Registered Repayment Bank Details Section
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    Then verify below Labels of "Registered Repayment Bank Details" in Two Wheeler Loan Relationship Details: "Registered Bank Name, Registered Bank Account, IFSC, Branch Name"
    And verify "Registered Bank Name" Should Not be Masked Format
    And verify "IFSC" Should Not be Masked Format
    And verify "Branch Name" Should Not be Masked Format
    And verify Last 4 Characters Should be "UnMasked" ("*") in "Registered Bank Account"
    And verify Other than Last 4 Characters Should be "Masked" ("*") in "Registered Bank Account"
    And verify Relationship Details following Sub Sections are Not Displayed: "Co - Applicant".
    And Verify "Change Bank Account Button" is Displayed
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle  | Account No     |
      | 9579616252    | 01011996 | Individual    | TWO WHEELER FINANCE | 571UTWIT397619 |

#  @run
#  Scenario Outline: Active Two Wheeler Loan -  To verify details displayed under Registered Repayment Bank Details Section
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User is on Home Page
#    And Customer is able to view My Relations Section to ETB Customers
#    And Customer clicks on view all option
#    And My relations Page should be displayed
#    And click on "Loans" tab
#    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
#    Then verify below Labels of "Registered Repayment Bank Details" in Two Wheeler Loan Relationship Details: "Registered Bank Name, Registered Bank Account, IFSC, Branch Name"
#    And verify "Registered Bank Name" Should Not be Masked Format
#    And verify "IFSC" Should Not be Masked Format
#    And verify "Branch Name" Should Not be Masked Format
#    And verify Last 4 Characters Should be "UnMasked" ("*") in "Registered Bank Account"
#    And verify Other than Last 4 Characters Should be "Masked" ("*") in "Date Of Birth"
#    And verify Relationship Details following Sub Sections are Not Displayed: "Co - Applicant".
#    And Verify "Change Bank Account Button" is Displayed
#    Examples:
#      | Mobile Number | Date     | Customer Type | Subtitle  | Account No     |
#      | 7385707862    | 01011996 | Individual    | TWO WHEELER FINANCE | 453UTWIJ343419 |

  @run
  Scenario Outline: Active Two Wheeler Loan - To verify "Change Repayment Bank account" CTA is available for customer only if there is no Co-Applicant available for the loan
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    Then verify Relationship Details following Sub Sections: "Registered Repayment Bank Details" are Displayed ""
    And Clicks on "Change Bank Account Button"
    Then Verify Customer Redirected to "MyAccountService/Emandate/index" Url
    Examples:
      | Mobile Number | Date | Customer Type | Subtitle | Account No |
      | 9579616252    | 01011996 | Individual    | TWO WHEELER FINANCE | 571UTWIT397619 |

  @run
  Scenario Outline: Active Two Wheeler Loan - Relationship Section - Insurance Details - Single
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    Then verify TWL Relationship Details following Sub Sections: "Insurance Details" are Displayed ""
    Then verify following "Single" Insurance Details in Relationship Section: "Policy Name, Policy Number, Sum Assured, Premium Amount"
    And verify "Insurance Details Accordian Icon" is Not Displayed
    Examples:
      | Mobile Number | Date | Customer Type | Subtitle | Account No |
      | 9579616252    | 01011996 | Individual    | TWO WHEELER FINANCE | 571UTWIT397619 |

    @DataIssue
  Scenario Outline: Active Two Wheeler Loan - Relationship Section - Insurance Details - Multiple
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
      Then verify Relationship Details following Sub Sections: "Insurance Details" are Displayed ""
    Then verify following "Multiple" Insurance Details in Relationship Section: "Policy Name, Policy Number, Sum Assured, Premium Amount"
    Examples:
      | Mobile Number | Date | Customer Type | Subtitle | Account No |
#      | 7385707862    | 01011996 | Individual    | TWO WHEELER FINANCE | 453UTWIJ343419 |

@DataIssue
  Scenario Outline: Active Two Wheeler Loan - Relationship Section - Multiple Insurance Policy Accordian Icon
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
  Then verify Relationship Details following Sub Sections: "Insurance Details" are Displayed ""
    Then verify if there are multiple policies for Term Loan
    And verify customer view multiple policies using accordian icon
    Examples:
      | Mobile Number | Date | Customer Type | Subtitle | Account No |
#      | 7385707862    | 01011996 | Individual    | TWO WHEELER FINANCE | 453UTWIJ343419 |

  @run
  Scenario Outline: Active Two Wheeler Loan - Relationship Section without Insurance Details
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    Then verify Relationship Details following Sub Sections are Not Displayed: "Insurance Details".
    Examples:
      | Mobile Number | Date | Customer Type | Subtitle | Account No |
      | 7385707862    | 01011996 | Individual    | TWO WHEELER FINANCE | 453UTWIJ343419 |

    @DataIssue
  Scenario Outline: Active Two Wheeler Loan - Relationship Section - Fees & Charges Details with Show More Button
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    And verify Relationship Details following Sub Sections: "Fees and Charges" are Displayed ""
    And Verify "Show More Button" is Displayed
    And Clicks on "Show More Button"
    And verify "Show More Button" is Not Displayed
    And Verify "Show Less Button" is Displayed
    And Clicks on "Show Less Button"
    And verify "Show Less Button" is Not Displayed
    And Verify "Show More Button" is Displayed
    And Verify "More Than" 5 "Fees & Charges"
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle  | Account No     |
#      | 7385707862    | 01011996 | Individual    | TWO WHEELER FINANCE | 453UTWIJ343419 |
  @run
  Scenario Outline: Active Two Wheeler Loan - Relationship Section - Fees & Charges Details without Show More Button
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    Then verify TWL Relationship Details following Sub Sections: "Fees and Charges" are Displayed ""
    And verify "Show More Button" is Not Displayed
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle  | Account No     |
      | 7385707862    | 01011996 | Individual    | TWO WHEELER FINANCE | 453UTWIJ343419 |

  @run
  Scenario Outline: Active Two Wheeler Loan - RHS Sections
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    Then verify RHS "Quick Actions" following Options: "Make Payments, View Statements" are Displayed
    Then verify RHS "Quick Actions" following Options are Not Displayed: "Duplicate NOC, Track your NOC"
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle  | Account No     |
      | 7385707862    | 01011996 | Individual    | TWO WHEELER FINANCE | 453UTWIJ343419 |

  @run
  Scenario Outline: Active Two Wheeler Loan - RHS Sections - Make Payments
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    And Customer Click on "Make Payments" CTA in RHS
    And verify "Payment Options" "popup" is Displayed
    And Clicks on "RHS Make Payments Popup 1st Option"
    And click on "PROCEED" Button
    Then verify Page Redirection to "https://uat-oneweb.bajajfinserv.in/MyAccountPayments/LoanPay" Url with SSO
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle  | Account No     |
      | 7385707862    | 01011996 | Individual    | TWO WHEELER FINANCE | 453UTWIJ343419 |

  @run
  Scenario Outline: Active Two Wheeler Loan - RHS Sections - View Statements
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
      | 7385707862    | 01011996 | Individual    | TWO WHEELER FINANCE | 453UTWIJ343419 |

  @run
  Scenario Outline: Active Two Wheeler Loan - Has Pre-Approved Offers
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    Then Pre-Approved Offers Section is "Visible" to "Active Two Wheeler Loan" Service Page
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle  | Account No     |
      | 8421028050    | 01011996 | Individual    | TWO WHEELER FINANCE | 512RTWIM076662 |

  @run
  Scenario Outline: Active Two Wheeler Loan - Has NO Pre-Approved Offers
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    Then Pre-Approved Offers Section is "Not Visible" to "Active Two Wheeler Loan" Service Page
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle  | Account No     |
      | 7385707862    | 01011996 | Individual    | TWO WHEELER FINANCE | 453UTWIJ343419 |

  @run
  Scenario Outline: Active Two Wheeler Loan - Verification & Redirection for FAQ
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
      | 7385707862    | 01011996 | Individual    | TWO WHEELER FINANCE | 453UTWIJ343419 |

  @run
  Scenario Outline: Active Two Wheeler Loan - Verification & Redirection for CIBIL
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
      | 7385707862    | 01011996 | Individual    | TWO WHEELER FINANCE | 453UTWIJ343419 |
