@mult
Feature: Insurance Services- Surrender Funded
##########Services
  @Serv
  Scenario Outline: To verify Insurance Page Sections - Surrender Funded
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    Then My relations Page should be displayed
    And click on "Insurance/Value-added Services" tab
    And click on "<Subtitle>" Tile of Account number "<Account No>"
    Then verify Redirection using Account number "<Account No>"
    Then verify below components of Insurance "Insurance Services" Page: "<Components>"
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle             | Account No     | Components                                                                                       |
      | 9618302412    | 27111995 | Individual    | HDFC - LIFE INSURANCE | PP000208_0GP9B    | Policy , Relationship Details, Quick Actions, Frequently asked questions, Check your CIBIL Score |

  @Serv
  Scenario Outline: To verify Top section in Insurance Page - Surrender Funded
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    Then My relations Page should be displayed
    And click on "Insurance/Value-added Services" tab
    And click on "<Subtitle>" Tile of Account number "<Account No>"
    Then verify Redirection using Account number "<Account No>"
    Then verify Logo of "Insurance Services"
    Then verify "<Number Text>" of Servies
    Then verify "<Amount text>"
    Then verify Below labels of Top Section: "<Label Names>"
#    Then verify "PREMIUM AMOUNT" format as <Rs. Digits>
    Then verify "Policy Start Date" format as "dd/MM/yyyy"
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle             | Account No     | Number Text | Amount text    | Label Names                        |
      | 9618302412    | 27111995 | Individual    | HDFC - LIFE INSURANCE | PP000208_0GP9B    | Policy No : | PREMIUM AMOUNT | Policy Start Date |

  @Serv
  Scenario Outline: To verify Relationship Details Section - Linked Loan Details - Surrender Funded
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    Then My relations Page should be displayed
    And click on "Insurance/Value-added Services" tab
    And click on "<Subtitle>" Tile of Account number "<Account No>"
    Then verify Redirection using Account number "<Account No>"
    Then verify below Labels of "Linked Loan Details" in "Insurance Services" Relationship Details: "<Label Names>"
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle             | Account No     | Label Names                                                    |
      | 9618302412    | 27111995 | Individual    | HDFC - LIFE INSURANCE | PP000208_0GP9B    | Loan Account Number, EMI Amount, Next EMI Due Date, Loan Tenor |

  @Serv
  Scenario Outline: To verify Relationship Details Section - Nominee Details - Surrender Funded
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    Then My relations Page should be displayed
    And click on "Insurance/Value-added Services" tab
    And click on "<Subtitle>" Tile of Account number "<Account No>"
    Then verify Redirection using Account number "<Account No>"
    Then verify below Labels of "Nominee Details" in "Insurance Services" Relationship Details: "<Label Names>"
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle             | Account No     | Label Names                    |
      | 9618302412    | 27111995 | Individual    | HDFC - LIFE INSURANCE | PP000208_0GP9B    | Nominee Name, Nominee Relation |

  @Serv
  Scenario Outline: verify Customer is redirected to FAQ Page when click on FAQ - Surrender Funded
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Insurance/Value-added Services" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
        Then verify customer can view FAQ section in Insurance page
    And Customer clicks on FAQ section in Insurance page
    And Verify Customer Redirected to "MyAccountService/HelpAndSupport/RARFAQCategory" Url

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle             | Account No     |
      | 9618302412    | 27111995 | Individual    | HDFC - LIFE INSURANCE | PP000208_0GP9B    |

  @Serv @rerun
  Scenario Outline: verify Customer is redirected to CIBIL Page when Customer click on know your Cibil - Surrender Funded
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Insurance/Value-added Services" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    And verify customer can view cibil on click of know your cibil

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle             | Account No     |
      | 9618302412    | 27111995 | Individual    | HDFC - LIFE INSURANCE | PP000208_0GP9B    |



  @Serv
  Scenario Outline: verify Given buttons are displayed under 'Quick Actions' at RHS Section - Surrender Funded
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Insurance/Value-added Services" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    And verify options"<Options>" available under "Quick Actions" on RHS

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle             | Account No     | Options                                                                           |
      | 9618302412    | 27111995 | Individual    | HDFC - LIFE INSURANCE | PP000208_0GP9B    | View Documents |

  @Serv1
  Scenario Outline: verify Surrendered nudge in Surrendered Insurance - Surrender Funded
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Insurance/Value-added Services" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    Then verify Nudge for "SURRENDERED" Insurance

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle             | Account No     |
      | 9618302412    | 27111995 | Individual    | HDFC - LIFE INSURANCE | PP000208_0GP9B    |

  Scenario Outline: Insurance Services- View Documents - Surrender Funded
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Insurance/Value-added Services" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    And Customer Click on "View Documents" CTA in RHS
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter/docCenter_Insurance" Url

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle                 | Account No               | Msg                                                               |
      | 9618302412    | 27111995 | Individual    | HDFC - LIFE INSURANCE | PP000208_0GP9B  | For your policy documents, please connect with Insurance Partner. |
