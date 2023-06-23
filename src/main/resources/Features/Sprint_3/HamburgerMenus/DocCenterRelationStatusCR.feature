@Doc
Feature: Document Centre -Relationship status Nudge

  Scenario Outline: To verify that customer is able to view Hamburger icon on Home page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    Then Customer should be able to View 3 Lined icon of Hamburger menu before Bajaj Finserv Logo
    And Clicks on Hamburger Menu
    And Customer Clicks on Cross icon of Hamburger
    Then Hamburger menu should be closed

    Examples:
      | Mobile Number | Date     | Customer Type |
      | 9545219299    | 13091990 | Individual    |

  Scenario Outline: To verify that Document Center submenu  displayed under Mandate and documents menu of Hamburger
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then verify the "<Options>" displayed for the Accordion icon

    Examples:
      | Mobile Number | Date       | Customer Type | SubMenu               | Options         |
      | 9545219299    | 13091990 | Individual    | Mandate and documents | Document Center |

  Scenario Outline: To verify that customer is redirecting to Document Center page when they clicks on document center sub menu
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter/index" Url

    Examples:
      | Mobile Number | Date       | Customer Type | SubMenu               | SubListMenu     |
      | 9545219299    | 13091990 | Individual    | Mandate and documents | Document Center |

  Scenario Outline: To verify that customer is redirecting to Document Center page when they clicks on document center  from RHS of My Relation
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And Customer Click on "Document Center" CTA in RHS
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter/index" Url
    Examples:
      | Mobile Number | Date       | Customer Type |
      | 9545219299    | 13091990 | Individual    |

  Scenario Outline: To verify that filter icon on loan tab is clickable and Active and close filter with apply and clear all CTA are visible on click of filter icon
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And Clicks on the Document Centre Page tab "Loans"
    And Clicks on Filter in Doc Centre Page
    Then verify Contents in Doc Page Filter Text Options: "Filters, Filter the documents using the below parameters, Relation Status" and Status options: "Active, Closed"

    Examples:
      | Mobile Number | Date       | Customer Type | SubMenu               | SubListMenu     |
      | 9545219299    | 13091990 | Individual    | Mandate and documents | Document Center |

  Scenario Outline: To verify Closed nudge is displayed on loan card for closed loan  clear all CTA are visible on click of filter icon
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And Clicks on the Document Centre Page tab "Loans"
    And Clicks on Filter in Doc Centre Page
    And Unselects a Relation Status in Filter in Doc Page-"Active"
#    And Selects a Relation Status in Filter in Doc Page-"Closed"
    And Clicks on Apply Button in Filter in Doc Page
    Then All closed "Loans" should be displayed with "Closed" nudge

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     |
      | 9650543332    | 13091990 | Corporate     | Mandate and documents | Document Center |

  Scenario Outline: To verify that filter icon on deposit tab is clickable and Active and close filter with apply and clear all CTA are visible on click of filter icon
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And Clicks on the Document Centre Page tab "Deposits"
    And Clicks on Filter in Doc Centre Page
    Then verify Contents in Doc Page Filter Text Options: "Filters, Filter the documents using the below parameters, Relation Status" and Status options: "Active, Closed"

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     |
      | 8800384932    | 13091990 | Individual    | Mandate and documents | Document Center |

  Scenario Outline: To verify Matured or Pre matured nudge is displayed on deposit card for closed deposit
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And Clicks on the Document Centre Page tab "Deposits"
    And Clicks on Filter in Doc Centre Page
    And Unselects a Relation Status in Filter in Doc Page-"Active"
#    And Selects a Relation Status in Filter in Doc Page-"Closed"
    And Clicks on Apply Button in Filter in Doc Page
    Then All pre matured "Deposits" should be displayed with "PRE-MATURED" nudge
#    Then All matured "Deposits" should be displayed with "Matured" nudge

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     |
      | 8800384932    | 13091990 | Individual    | Mandate and documents | Document Center |

  Scenario Outline: To verify that filter icon on insurance tab is clickable and Active, close, cancelled and surrendered filters with apply and clear all CTA are visible on click of filter icon
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And Clicks on the Document Centre Page tab "Insurance"
    And Clicks on Filter in Doc Centre Page
    Then verify Contents in Doc Page Filter Text Options: "Filters, Filter the documents using the below parameters, Relation Status" and Status options: "Active, Closed, Cancelled, Surrendered"

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     |
      | 8800384932    | 13091990 | Individual    | Mandate and documents | Document Center |

  Scenario Outline: To verify Matured nudge is displayed on insurance card for closed insurance
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And Clicks on the Document Centre Page tab "Insurance"
    And Clicks on Filter in Doc Centre Page
    And Unselects a Relation Status in Filter in Doc Page-"Active"
    And Unselects a Relation Status in Filter in Doc Page-"Surrendered"
    And Unselects a Relation Status in Filter in Doc Page-"Cancelled"
    And Clicks on Apply Button in Filter in Doc Page
    Then All closed "Insurance" should be displayed with "MATURED" nudge

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     |
      | 9717843356    | 13091990 | Individual    | Mandate and documents | Document Center |

  Scenario Outline: To verify Cancelled nudge is displayed on insurance card for cancelled insurance
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And Clicks on the Document Centre Page tab "Insurance"
    And Clicks on Filter in Doc Centre Page
    And Unselects a Relation Status in Filter in Doc Page-"Active"
    And Unselects a Relation Status in Filter in Doc Page-"Surrendered"
    And Unselects a Relation Status in Filter in Doc Page-"Closed"
#    And Selects a Relation Status in Filter in Doc Page-"Cancelled"
    And Clicks on Apply Button in Filter in Doc Page
    Then All Cancelled "Insurance" should be displayed with "CANCELLED" nudge
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     |
      | 8421822960    | 13091990 | Individual    | Mandate and documents | Document Center |

  Scenario Outline: TTo verify surrendered nudge is displayed on insurance card for surrendered insurance
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And Clicks on the Document Centre Page tab "Insurance"
    And Clicks on Filter in Doc Centre Page
    And Unselects a Relation Status in Filter in Doc Page-"Active"
    And Unselects a Relation Status in Filter in Doc Page-"Cancelled"
    And Unselects a Relation Status in Filter in Doc Page-"Closed"
#    And Selects a Relation Status in Filter in Doc Page-"Surrendered"
    And Clicks on Apply Button in Filter in Doc Page
    Then All surrendered "Insuracne" should be displayed with "SURRENDERED" nudge

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     |
      | 9552524190    | 13091990 | Individual    | Mandate and documents | Document Center |
