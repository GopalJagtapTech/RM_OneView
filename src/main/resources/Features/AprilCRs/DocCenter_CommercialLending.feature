Feature: Document Center - Commercial Lending

  @pass
  Scenario Outline: To verify that customer is able to view Hamburger icon on Home page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Customer Clicks on Cross icon of Hamburger
    Then Hamburger menu should be closed
    Examples:
      | Mobile Number | Date       | Customer Type |
      | 9860149678    | 13/09/1990 | Individual    |

  @pass
  Scenario Outline: To verify that Document Center submenu  displayed under Mandate and documents menu of Hamburger
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then verify the "<Option>" displayed for the Accordion icon
    Examples:
      | Mobile Number | Date       | Customer Type | SubMenu               | Option          |
      | 9860149678    | 13/09/1990 | Individual    | Mandate and documents | Document Center |

  @pass
  Scenario Outline: To verify that customer is redirecting to Document Center page when they clicks on document center sub menu
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter" Url
    Examples:
      | Mobile Number | Date       | Customer Type | SubMenu               | SubListMenu     |
      | 9860149678    | 13/09/1990 | Individual    | Mandate and documents | Document Center |

  @pass
  Scenario Outline: To verify that customer is redirecting to Document Center page when they clicks on document center  from RHS of My Relation
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And Customer Click on "<RHS Menu>" CTA in RHS
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter" Url
    Examples:
      | Mobile Number | Date       | Customer Type | RHS Menu        |
      | 9860149678    | 13/09/1990 | Individual    | Document Center |

  @pass
  Scenario Outline: To verify that NDC document is displayed for mentioned product ID "<prodId>"
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter" Url
    And Clicks on Filter in Doc Centre Page
    And Unselects a Relation Status in Filter in Doc Page-"Active"
#    And Selects a Relation Status in Filter in Doc Page-"Closed"
    And Clicks on Apply Button in Filter in Doc Page
    Then verify for Card-"Loans" and Status-"Closed", the Cards are Displayed-"Loan Account Number"
    And User clicks on a Card "<LAN>"
    And User should be redirected to specific document page "<LAN>"
    Then "No Due Certificate" document should not be displayed for mentioned product ID "<prodId>"
    Examples:
      | Mobile Number | Date       | Customer Type | SubMenu               | SubListMenu     | LAN            | prodId |
      | 9871160947    | 13/09/1990 | Corporate     | Mandate and documents | Document Center | 401VFS73787983 | APBD   |
      | 9850567561    | 13/09/1990 | Individual    | Mandate and documents | Document Center | 402CLF24316366 | CLF    |
      | 9830038796    | 13/09/1990 | Corporate     | Mandate and documents | Document Center | P410CFS1977117 | CFSTS  |
      | 9686667294    | 13/09/1990 | Corporate     | Mandate and documents | Document Center | P405FTL0119123 | FTL    |


#    @Loan Details page – View Statement
  @pass
  Scenario Outline: To verify that NDC document is displayed for mentioned product ID "<prodId>" from list on Click of View Statement
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    Then verify Customer clicks on "<LAN>"
    Then Verify Customer Redirected to "MyAccountLoanServices/Loans" Url
    And Customer Click on "View Documents" CTA in RHS
    And User should be redirected to specific document page "<LAN>"
    Then "No Due Certificate" document should not be displayed for mentioned product ID "<prodId>"
    Examples:
      | Mobile Number | Date       | Customer Type | LAN            | prodId |
      | 9871160947    | 13/09/1990 | Corporate     | 401VFS73787983 | APBD   |
      | 9850567561    | 13/09/1990 | Individual    | 402CLF24316366 | CLF    |
      | 9830038796    | 13/09/1990 | Corporate     | P410CFS1977117 | CFSTS  |
      | 9686667294    | 13/09/1990 | Corporate     | P405FTL0119123 | FTL    |


