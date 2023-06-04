Feature: Closed Two Wheeler Loan Services

  @run
  Scenario Outline: Closed Two Wheeler Loan -  To verify Customer is redirected to Two Wheeler Loan services page when customer Click on View Details CTA in My Relations Page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle  | Account No     |
      | 8308662573    | 01011996 | Individual    | TWO WHEELER FINANCE | 5K5RTWIO680837 |

  @run
  Scenario Outline: Closed Two Wheeler Loan -  To verify Components of Closed Two Wheeler Loan Service page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    Then verify the "Two Wheeler Loan Services" following components: Top Section, Relationship section, RHS section, "Loan Details, Vehicle Details, Registered Repayment Bank Details" are Displayed in "Two Wheeler Loan Service Page"
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle  | Account No     |
      | 8308662573    | 01011996 | Individual    | TWO WHEELER FINANCE | 5K5RTWIO680837 |


  Scenario Outline: Closed Two Wheeler Loan - Top Section in TW Loan services Page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    Then verify Top Section Details for "Closed Two Wheeler Loan"
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle  | Account No     |
      | 8308662573    | 01011996 | Individual    | TWO WHEELER FINANCE | 5K5RTWIO680837 |


@DataIssue
  #Need test Data with All Sub Fields in relationship Details
  Scenario Outline: Closed Two Wheeler Loan -  To verify the details displayed under Component 2 - Relationship Details
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
#      | 8308662573    | 01011996 | Individual    | TWO WHEELER FINANCE | 5K5RTWIO680837 |

  @run
  Scenario Outline: Closed Two Wheeler Loan -  To verify details displayed under Loan Details Section
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
      | 8308662573    | 01011996 | Individual    | TWO WHEELER FINANCE | 5K5RTWIO680837 |



    #  RC No (is Not Available)
  @run
  Scenario Outline: Closed Two Wheeler Loan -  To verify details displayed under Vehicle Details Section
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
      | 8308662573    | 01011996 | Individual    | TWO WHEELER FINANCE | 5K5RTWIO680837 |

  @DataIssue
  Scenario Outline: Closed Two Wheeler Loan -  To verify details displayed under Co-Applicant Details Section
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    Then verify TWL Relationship Details following Sub Sections: "Co - Applicant" are Displayed ""
    Then verify below Labels of "Co - Applicant" in Two Wheeler Loan Relationship Details: "Name, Date Of Birth, Mobile Number, Address"
    And verify "Name" Should Not be Masked Format
    And verify Last 4 Characters Should be "UnMasked" ("X") in "Date Of Birth"
    And verify Other than Last 4 Characters Should be "Masked" ("X") in "Date Of Birth"
    And verify Last 4 Characters Should be "UnMasked" ("X") in "Mobile Number"
    And verify Other than Last 4 Characters Should be "Masked" ("X") in "Mobile Number"
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle  | Account No     |
#      | 8308662573    | 01011996 | Individual    | TWO WHEELER FINANCE | 5K5RTWIO680837 |

  @run
  Scenario Outline: Closed Two Wheeler Loan -  To verify details displayed under Registered Repayment Bank Details Section
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    Then verify TWL Relationship Details following Sub Sections: "Registered Repayment Bank Details" are Displayed ""
    Then verify below Labels of "Registered Repayment Bank Details" in Two Wheeler Loan Relationship Details: "Registered Bank Name, Registered Bank Account, IFSC, Branch Name"
    And verify "Registered Bank Name" Should Not be Masked Format
    And verify "IFSC" Should Not be Masked Format
    And verify "Branch Name" Should Not be Masked Format
    And verify Last 4 Characters Should be "UnMasked" ("*") in "Registered Bank Account"
    And verify Other than Last 4 Characters Should be "Masked" ("*") in "Registered Bank Account"
    And verify "Change Bank Account Button" is Not Displayed
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle  | Account No     |
      | 8308662573    | 01011996 | Individual    | TWO WHEELER FINANCE | 5K5RTWIO680837 |


  @run
  Scenario Outline: Closed Two Wheeler Loan - Relationship Section - Insurance Details - Single
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
      | 8308662573    | 01011996 | Individual    | TWO WHEELER FINANCE | 5K5RTWIO680837 |

    @DataIssue
  Scenario Outline: Closed Two Wheeler Loan - Relationship Section - Insurance Details - Multiple
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
      Then verify TWL Relationship Details following Sub Sections: "Insurance Details" are Displayed ""
    Then verify following "Multiple" Insurance Details in Relationship Section: "Policy Name, Policy Number, Sum Assured, Premium Amount"
    Examples:
      | Mobile Number | Date | Customer Type | Subtitle | Account No |
#      | 8308662573    | 01011996 | Individual    | TWO WHEELER FINANCE | 5K5RTWIO680837 |

@DataIssue
  Scenario Outline: Closed Two Wheeler Loan - Relationship Section - Multiple Insurance Policy Accordian Icon
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
  Then verify TWL Relationship Details following Sub Sections: "Insurance Details" are Displayed ""
    Then verify if there are multiple policies for Term Loan
    And verify customer view multiple policies using accordian icon
    Examples:
      | Mobile Number | Date | Customer Type | Subtitle | Account No |
#      | 8308662573    | 01011996 | Individual    | TWO WHEELER FINANCE | 5K5RTWIO680837 |

  @run
  Scenario Outline: Closed Two Wheeler Loan - Relationship Section without Insurance Details
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
      | 9359933198    | 01011996 | Individual    | TWO WHEELER FINANCE | 573RTWIN190602 |

    @DataIssue
  Scenario Outline: Closed Two Wheeler Loan - Relationship Section - Fees & Charges Details with Show More Button
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
      Then verify TWL Relationship Details following Sub Sections: "Fees and Charges" are Displayed ""
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
  Scenario Outline: Closed Two Wheeler Loan - Relationship Section - Fees & Charges Details without Show More Button
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
      | 8308662573    | 01011996 | Individual    | TWO WHEELER FINANCE | 5K5RTWIO680837 |

  @run
  Scenario Outline: Closed Two Wheeler Loan - RHS Sections
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    Then verify RHS "Quick Actions" following Options: "Duplicate NOC, Track your NOC, View Statements" are Displayed
    Then verify RHS "Quick Actions" following Options are Not Displayed: "Make Payments"
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle  | Account No     |
      | 8308662573    | 01011996 | Individual    | TWO WHEELER FINANCE | 5K5RTWIO680837 |

@run
  Scenario Outline: Closed Two Wheeler Loan - RHS Sections - Verify Duplicate NOC Popup Components & Close Icon
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    And Customer Click on "Duplicate NOC" CTA in RHS
    And verify "Kindly confirm your delivery address" "popup" is Displayed
    And verify "NOC Delivery Address" "Radio Btn" is Displayed
    And verify "Update your New Delivery Address" "Radio Btn" is Displayed
    And verify "We are redirecting you to the profile section to update the address." "text" is Displayed
    And "RHS Duplicate NOC Popup Proceed Button" is Disabled
    And Verify "RHS Duplicate NOC Popup Close Icon" is Displayed
    And Clicks on "RHS Duplicate NOC Popup Close Icon"
    And verify "RHS Duplicate NOC Popup Close Icon" is Not Displayed
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle  | Account No     |
      | 8308662573    | 01011996 | Individual    | TWO WHEELER FINANCE | 5K5RTWIO680837 |

  @run
  Scenario Outline: Closed Two Wheeler Loan - RHS Sections - Verify Duplicate NOC - Update your New Delivery Address
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    And Customer Click on "Duplicate NOC" CTA in RHS
    And verify "Kindly confirm your delivery address" "popup" is Displayed
    And Click on "Update your New Delivery Address" Radio Button
    And "RHS Duplicate NOC Popup Proceed Button" is Enabled
    And Clicks on "RHS Duplicate NOC Popup Proceed Button"
    Then verify Page Redirection to "MyAccountService/UpdateDetails/UserProfileDetails" Url with SSO
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle  | Account No     |
      | 8308662573    | 01011996 | Individual    | TWO WHEELER FINANCE | 5K5RTWIO680837 |

    @DataIssue
  Scenario Outline: Closed Two Wheeler Loan - RHS Sections - Verify Duplicate NOC - NOC Delivery Address
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    And Customer Click on "Duplicate NOC" CTA in RHS
    And verify "Kindly confirm your delivery address" "popup" is Displayed
    And Click on "NOC Delivery Address" Radio Button
    And "RHS Duplicate NOC Popup Proceed Button" is Enabled
    And Clicks on "RHS Duplicate NOC Popup Proceed Button"
    And Wait 5 seconds
    And verify "Request Raised" "Success text" is Displayed
    And Verify "TWL NOC Thank You Msg With SR Number" is Displayed
    And verify "DONE" "Button" is Displayed
    And verify "Track your request" "Button" is Displayed
    And click on "DONE" Button
    And verify "TWL NOC Thank You Msg With SR Number" is Not Displayed
    And Verify "Disabled Duplicate NOC in TWL RHS" is Displayed
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle  | Account No     |
#      | 7385707862    | 01011996 | Individual    | TWO WHEELER FINANCE | 453UTWIJ343419 |

  @run
  Scenario Outline: Closed Two Wheeler Loan - RHS Sections - View Statements
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
      | 8308662573    | 01011996 | Individual    | TWO WHEELER FINANCE | 5K5RTWIO680837 |

  @run
  Scenario Outline: Closed Two Wheeler Loan - Has Pre-Approved Offers
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    Then Pre-Approved Offers Section is "Visible" to "Closed Two Wheeler Loan" Service Page
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle  | Account No     |
      | 8308662573    | 01011996 | Individual    | TWO WHEELER FINANCE | 5K5RTWIO680837 |

  @run
  Scenario Outline: Closed Two Wheeler Loan - Has NO Pre-Approved Offers
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    Then Pre-Approved Offers Section is "Not Visible" to "Closed Two Wheeler Loan" Service Page
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle  | Account No     |
      | 9359933198    | 01011996 | Individual    | TWO WHEELER FINANCE | 573RTWIN190602 |

  @run
  Scenario Outline: Closed Two Wheeler Loan - Verification & Redirection for FAQ
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
      | 8308662573    | 01011996 | Individual    | TWO WHEELER FINANCE | 5K5RTWIO680837 |

  @run
  Scenario Outline: Closed Two Wheeler Loan - Verification & Redirection for CIBIL
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
      | 8308662573    | 01011996 | Individual    | TWO WHEELER FINANCE | 5K5RTWIO680837 |
