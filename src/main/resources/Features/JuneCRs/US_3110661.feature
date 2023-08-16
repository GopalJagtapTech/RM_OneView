Feature: US_3110661 - LAS Services


  Scenario Outline: Home My Relation- LAS tile
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    Then Verify customer is able to view LAN Number on LAS tile "<LAN>"

    Examples:
      | Mobile Number | Date     | Customer Type | LAN    |
      | 9545219299    | 01011996 | Individual    | 104175 |

  Scenario Outline: Verify Loan Deatis under Relationship Details sectionWhen Customer Minimized the view
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Click on "View Details" CTA for "<LAN>" tile "LAS"
    Then Verify Customer Redirected to "MyAccountLoanServices/LAS/LASDetails" Url
    Then verify following "Loan Details" in Relationship Section: "Loan Account Number, Loan Amount, Sanctioned Limit, DP To Loan, Annualized Rate of Interest"
    And Verify "Show More Button in LAS Loan details Section" is Displayed
    Examples:
      | Mobile Number | Date     | Customer Type | LAN    |
      | 9545219299    | 01011996 | Individual    | 104175 |

  Scenario Outline: Verify Additional Security Pledge option is included in Things you can do section
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Click on "View Details" CTA for "<LAN>" tile "LAS"
    Then Verify Customer Redirected to "MyAccountLoanServices/LAS/LASDetails" Url
    Then verify RHS "Things you can do:" following Options: "Additional Securities Pledge" are Displayed
    And Customer Click on "Additional Securities Pledge" CTA in RHS
    Then Customer should be redirected to "<URL>"
    Examples:
      | Mobile Number | Date     | Customer Type | LAN    | URL                                             |
      | 9545219299    | 01011996 | Individual    | 104175 | https://www.bajajfinserv.in/loan-against-shares |

  Scenario Outline: Verify Loan Against Shares text on View Statement pop-up
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Click on "View Details" CTA for "<LAN>" tile "LAS"
    Then Verify Customer Redirected to "MyAccountLoanServices/LAS/LASDetails" Url
    And Customer Click on "View Statement" CTA in RHS
    Then Then a drawer or pop-up should be displayed with below details for "<Acc Number>"
    Examples:
      | Mobile Number | Date     | Customer Type | LAN    | Acc Number      |
      | 9545219299    | 01011996 | Individual    | 104175 | V428LAS00004845 |

  Scenario Outline: Verify Account Type is removed from Bank Details section
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Click on "View Details" CTA for "<LAN>" tile "LAS"
    Then Verify Customer Redirected to "MyAccountLoanServices/LAS/LASDetails" Url
    And Customer Click on "Drawdown" CTA in RHS
    Then Verify Customer Redirected to "MyAccountLoanServices/LAS/LasDisbursement" Url
    And Fields "<Labels>" should be displayed for bank details
    Examples:
      | Mobile Number | Date     | Customer Type | LAN    | Labels                                                                 |
      | 9545219299    | 01011996 | Individual    | 104175 | Account Holder Name, Account Number, Bank Name, Branch Name, IFSC Code |

  Scenario Outline: Verify CTA where "Submit" text is replaced with "Proceed" text
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Click on "View Details" CTA for "<LAN>" tile "LAS"
    Then Verify Customer Redirected to "MyAccountLoanServices/LAS/LASDetails" Url
    And Customer Click on "Drawdown" CTA in RHS
    Then Verify Customer Redirected to "MyAccountLoanServices/LAS/LasDisbursement" Url
    And verify the following button "Proceed" is disabled in the page
    Examples:
      | Mobile Number | Date     | Customer Type | LAN    |
      | 9545219299    | 01011996 | Individual    | 104175 |

  Scenario Outline: Verify Last 4 digit to be Unmasked only
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Click on "View Details" CTA for "<LAN>" tile "LAS"
    Then Verify Customer Redirected to "MyAccountLoanServices/LAS/LASDetails" Url
    And Customer Click on "Drawdown" CTA in RHS
    Then Verify Customer Redirected to "MyAccountLoanServices/LAS/LasDisbursement" Url
    Then Verify the Account Number Last 4 digit are Unmasked under Bank Details section
    Examples:
      | Mobile Number | Date     | Customer Type | LAN    |
      | 9545219299    | 01011996 | Individual    | 104175 |

  Scenario Outline: Verify CTA where "Submit" text is replaced with "Proceed" text
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Click on "View Details" CTA for "<LAN>" tile "LAS"
    Then Verify Customer Redirected to "MyAccountLoanServices/LAS/LASDetails" Url
    And Customer Click on "Release Securities" CTA in RHS
    Then Verify Customer Redirected to "MyAccountLoanServices/LAS/ShareRelease" Url
    And verify the following button "Proceed" is disabled in the page
    Examples:
      | Mobile Number | Date     | Customer Type | LAN    |
      | 9545219299    | 01011996 | Individual    | 104175 |

  Scenario Outline: Verify text under "Choose from the given securities below section
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Click on "View Details" CTA for "<LAN>" tile "LAS"
    Then Verify Customer Redirected to "MyAccountLoanServices/LAS/LASDetails" Url
    And Customer Click on "Release Securities" CTA in RHS
    Then Verify Customer Redirected to "MyAccountLoanServices/LAS/ShareRelease" Url
    Then Verify Quantity Pledged text is replaced with Securities Pledged text under Choose from the given securities below section section
    Then Verify Quantity Pledged text is replaced with Quantity to Unpledged text under Choose from the given securities below section section
    Examples:
      | Mobile Number | Date     | Customer Type |LAN    |
      | 9545219299    | 01011996 | Individual    |104175 |

  Scenario Outline: Verify text displayed under Amount field
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Click on "View Details" CTA for "<LAN>" tile "LAS"
    Then Verify Customer Redirected to "MyAccountLoanServices/LAS/LASDetails" Url
    And Customer Click on "Release Securities" CTA in RHS
    Then Verify Customer Redirected to "MyAccountLoanServices/LAS/ShareRelease" Url
    Then "Your securities release request shall be processed within 1 business day post successful verification." information text to be added below amount field
    Examples:
      | Mobile Number | Date     | Customer Type |LAN    |
      | 9545219299    | 01011996 | Individual    |104175 |

  Scenario Outline: Verify text displayed on Make Payment page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Click on "View Details" CTA for "<LAN>" tile "LAS"
    Then Verify Customer Redirected to "MyAccountLoanServices/LAS/LASDetails" Url
    And Customer Click on "Make Payments" CTA in RHS
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/LASPartPayment" Url
    Then "It take 1 Business day for payment to reflect in your loan account" information text to be added below amount field
    Examples:
      | Mobile Number | Date     | Customer Type |LAN    |
      | 9545219299    | 01011996 | Individual    |104175 |
  
  
  
  
  
  
  