Feature: LAFD Services

  @PTP
  Scenario Outline: To verify LAFD Services is not displayed for PTB/NTB customer
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    Then For NTB PTB customer My Relations should not be displayed
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 9000000000  | 05051976   | Individual |



  @Active
  Scenario Outline: LAFD Services - Active is available in Home page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    Then verify LAFD Services is displayed for ETB customer

    Examples:
      | Mobile Number | Date     | Customer Type |
    #  | 9307555158    | 05051976 | Individual    |  NW
      | 8800384932    | 02021976 | Individual    |
  @RegRunK
  Scenario Outline: LAFD Services - Active Redirection from Myrelations Page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And verify Redirection after Clicking on "<LOAN AGAINST FIXED DEPOSIT>" tile on Home Page My Relations
    Examples:
      | Mobile Number | Date     | Customer Type | LOAN AGAINST FIXED DEPOSIT |
      | 8800384932    | 02021976 | Individual    |  401LFDGS883637   |
  @Active
  Scenario Outline: LAFD Services - Relations clicks on View All Tab
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    Then verify the redirection to My Relations page when customer clicks on View All Tab
    Then verify Active Tile is displayed sucessfully using Account No "<Account No>"


    Examples:
      | Mobile Number | Date     | Customer Type | Account No     |
      | 8800384932    | 02021976 | Individual    | 401LFDGD210545 |


  Scenario Outline: LAFD Services - Active verify Loan Active Number
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle                   | Account No     |
     # | 9715115554    | 06081984 | Individual    | LOAN AGAINST FIXED DEPOSIT | 402LFDHI140541 | NW
      | 8800384932    | 02021976 | Individual    | LOAN AGAINST FIXED DEPOSIT | 401LFDGD210545 |


  Scenario Outline: LAFD Services - Active details displayed on LAFD services page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    Then verify details displayed on LAFD services page

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle                   | Account No     |
     # | 7373066020    | 02011975 | Individual     | LOAN AGAINST FIXED DEPOSIT | 402LFDHH841615 |
      | 8800384932    | 02021976 | Individual    | LOAN AGAINST FIXED DEPOSIT | 401LFDGD210545 |

  @IconNA
  Scenario Outline: LAFD Services - Active  LAFD Details page(Active)
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    Then verify customer is able to view given options and icon details on LAFD Details page(Active)

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle                   | Account No     |
      | 8800384932    | 02021976 | Individual    | LOAN AGAINST FIXED DEPOSIT | 401LFDGD210545 |

  @Icon
  Scenario Outline: LAFD Services - Active Relationship Details sections
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    Then verify that Relationship Details sections are visible to customer under LAFD details page(Active)

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle                   | Account No     |
      | 8800384932    | 02021976 | Individual    | LOAN AGAINST FIXED DEPOSIT | 401LFDGD210545 |

  Scenario Outline: LAFD Services - Active  Quick Actions
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
   # Then verify options visible to customer under THINGS YOU CAN DO with Active LAFD(Active)
    Then verify options visible to customer under Quick Actions with Active LAFD(Active)


    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle                   | Account No     |
    #  | 7373066020    | 02011975 | Individual     | LOAN AGAINST FIXED DEPOSIT | 402LFDHH841615 |
      | 8800384932    | 02021976 | Individual    | LOAN AGAINST FIXED DEPOSIT | 401LFDGD210545 |

  @PreK
  Scenario Outline: LAFD Services - Active Pre-Approved offer section
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    Then verify tiles visible to customer under Pre-Approved offer section

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle                   | Account No     |
      | 8108412990    | 15082000 | Individual    | LOAN AGAINST FIXED DEPOSIT | 402LFDGX688211 |

  Scenario Outline: LAFD Services - Active - Redirection View Statements
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    And Customer Click on "View Documents" CTA in RHS
    Then Then a Document drawer or pop-up should be displayed for "<Account No>"
    And click on "Find them here" hyperlink
    And User should be redirected to specific document page "<Account No>"
   # Then verify the redirection when customer clicks on Know your CIBIL(Active)
   # Then verify the redirection when customer clicks on FAQ(Active)
 #   Then verify customer is redirected to FAQ section Loan Detail section is highlighted when customer clicks on FAQ's(Active)

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle                   | Account No     |
      | 8800384932    | 02021976 | Individual    | LOAN AGAINST FIXED DEPOSIT | 401LFDGD210545 |
     #  | 7373066020    | 02011975 | Individual     | LOAN AGAINST FIXED DEPOSIT | 402LFDHH841615 |

  @ReRun
  Scenario Outline: LAFD Services - Active - Redirection Faq And CIBIL
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    Then verify the redirection when customer clicks on Know your CIBIL(Active)
    Then verify the redirection when customer clicks on FAQ(Active)


    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle                   | Account No     |
      | 8800384932    | 02021976 | Individual    | LOAN AGAINST FIXED DEPOSIT | 401LFDGD210545 |
     #  | 7373066020    | 02011975 | Individual     | LOAN AGAINST FIXED DEPOSIT | 402LFDHH841615 |



#    CLOSED

  Scenario Outline: LAFD Services - Closed My Relations Section
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle                   | Account No     |
      | 9000630541    | 15082000 | Individual    | LOAN AGAINST FIXED DEPOSIT | 402LFDHE862105 |

  Scenario Outline: LAFD Services - Closed view all option
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    Then My relations Page should be displayed

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle                   | Account No     |
      | 9000630541    | 15082000 | Individual    | LOAN AGAINST FIXED DEPOSIT | 402LFDHE862105 |


  Scenario Outline: LAFD Services - Closed Service Tile screen from My Relations
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
   # Then verify Active Tile is displayed sucessfully using Account No "<Account No>"
    Then verify Closed Tile is displayed sucessfully using Account No "<Account No>"
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle                   | Account No     |
      | 9000630541    | 15082000 | Individual    | LOAN AGAINST FIXED DEPOSIT | 400LFDGY019109 |

  Scenario Outline: LAFD Services - Closed details displayed on LAFD
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    Then verify details displayed on LAFD services page(Closed)

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle                   | Account No     |
      | 9000630541    | 15082000 | Individual    | LOAN AGAINST FIXED DEPOSIT | 400LFDGY019109 |

  @Icon
  Scenario Outline: LAFD Services - Closed view given options and icon details on LAFD Details
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    Then verify customer is able to view given options and icon details on LAFD Details page(Closed)

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle                   | Account No     |
      | 9000630541    | 15082000 | Individual    | LOAN AGAINST FIXED DEPOSIT | 400LFDGY019109 |

  @Icon
  Scenario Outline: LAFD Services - Closed Relationship Details sections
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    Then verify that Relationship Details sections are visible to customer under LAFD details page(Closed)

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle                   | Account No     |
      | 9000630541    | 15082000 | Individual    | LOAN AGAINST FIXED DEPOSIT | 400LFDGY019109 |

  @Active
  Scenario Outline: LAFD Services - Closed  Quick Actions
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
   # Then verify options visible to customer under THINGS YOU CAN DO with Closed LAFD(Closed)
    Then verify options visible to customer under Quick Actions with Active LAFD(Closed)

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle                   | Account No     |
      | 9000630541    | 15082000 | Individual    | LOAN AGAINST FIXED DEPOSIT | 400LFDGY019109 |

  @PreK
  Scenario Outline: LAFD Services - Closed Pre-Approved offer section
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    Then verify tiles visible to customer under Pre-Approved offer section

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle                   | Account No     |
      | 9000630541    | 15082000 | Individual    | LOAN AGAINST FIXED DEPOSIT | 400LFDGY019109 |


  Scenario Outline: LAFD Services - Closed - Redirection View Statements
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    And Customer Click on "View Documents" CTA in RHS
    Then Then a Document drawer or pop-up should be displayed for "<Account No>"
    And click on "Find them here" hyperlink
    And User should be redirected to specific document page "<Account No>"

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle                   | Account No     |
      | 9000630541    | 15082000 | Individual    | LOAN AGAINST FIXED DEPOSIT | 400LFDGY019109 |


  @ReRun
  Scenario Outline: LAFD Services - Closed - Redirection FAQ & CIBIL
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
   # And Customer Click on "View Statements" CTA in RHS
    Then verify the redirection when customer clicks on Know your CIBIL(Closed)
    Then verify the redirection when customer clicks on FAQ(Closed)
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle                   | Account No     |
      | 9000630541    | 15082000 | Individual    | LOAN AGAINST FIXED DEPOSIT | 400LFDGY019109 |



 #Then verify customer can view FAQ section
   # And verify customer can view cibil on click of know your cibil
   # Then verify the redirection when customer clicks on Know your CIBIL(Active)
   # Then verify the redirection when customer clicks on FAQ(Active)
  #    Then verify customer is redirected to FAQ section Loan Detail section is highlighted when customer clicks on FAQ's(Closed)
#    Then verify the redirection when customer clicks on Know your CIBIL(Closed)