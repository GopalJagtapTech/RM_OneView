Feature: Welcome Letter

#  Scenario Outline: To verify that customer is able to view Hamburger icon on Home page
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User is on Home Page
#    Then Customer should be  able view hamburger icon
#    And Hamburger should be clickable
#    Examples:
#      | Mobile Number | Date | Customer Type  |
#      | 9860299865 | 13/09/1990 | Individual  |
#
#  Scenario Outline: To verify that Document Center submenu  displayed under Mandate and documents menu of Hamburger
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User is on Home Page
#    And Clicks on hamburger
#    And Clicks on <Menu>
#    Then Customer should be able to view <Submenu> under Mandate and documents
#    Examples:
#      | Mobile Number | Date | Customer Type  | SubMenu | SubListMenu |
#      | 9860299865 | 13/09/1990 | Individual  |  Mandate and documents |  Document Center |
#
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
      | 9860299865    | 13/09/1990 | Corporate     | Mandate and documents | Document Center |

  @pass
  Scenario Outline: To verify that customer is redirecting to Document Center page when they clicks on document center  from RHS of My Relation
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And Customer Click on "Document Center" CTA in RHS
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter" Url
    Examples:
      | Mobile Number | Date       | Customer Type |
      | 9860299865    | 13/09/1990 | Corporate     |

  @pass
  Scenario Outline: To verify that welcome letter is displayed to active loan
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And Clicks on the Document Centre Page tab "Loans"
    And User clicks on a Card "<LAN>"
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter/docCenter_LoanDetails" Url
    Then verify the following Documents are displayed in Doc page "Welcome Letter"
    Examples:
      | Mobile Number | Date       | Customer Type | SubMenu               | SubListMenu     | LAN            |
      | 9860299865    | 13/09/1990 | Corporate     | Mandate and documents | Document Center | P423PPS5720244 |

  @pass
  Scenario Outline: To verify that customer is redirecting to document POD page on click of Welcome letter
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And Clicks on the Document Centre Page tab "Loans"
    And User clicks on a Card "<LAN>"
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter/docCenter_LoanDetails" Url
    And Clicks on the document "Welcome Letter"
    Then Verify Customer Redirected to respective URL "https://emandate-staging.bajajfinserv.in/Welcome_Letter/DocPOD" in new Tab

    Examples:
      | Mobile Number | Date       | Customer Type | SubMenu               | SubListMenu     | LAN            |
      | 9860299865    | 13/09/1990 | Corporate     | Mandate and documents | Document Center | P423PPS5720244 |

  @closed @pass
  Scenario Outline: To verify that welcome letter is displayed to closed loan
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And Clicks on Filter in Doc Centre Page
    And Unselects a Relation Status in Filter in Doc Page-"Active"
    And Selects a Relation Status in Filter in Doc Page-"Closed"
    And Clicks on Apply Button in Filter in Doc Page
    And User clicks on a Card "<LAN>"
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter/docCenter_LoanDetails" Url
    Then "Welcome letter" should not be displayed to closed loan in document list page
    Examples:
      | Mobile Number | Date       | Customer Type | SubMenu               | SubListMenu     | LAN            |
      | 9830038796    | 13/09/1990 | Corporate     | Mandate and documents | Document Center | P410CFS1977117 |

  @datanotworking
  Scenario Outline: To verify that welcome letter is displayed to active deposit
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And Clicks on the Document Centre Page tab "Deposits"
    And User clicks on a Card "<Deposit ID>"
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter/docCenter_FDDetails" Url
    Then verify the following Documents are displayed in Doc page "Welcome Letter"

    Examples:
      | Mobile Number | Date       | Customer Type | SubMenu               | SubListMenu     | Deposit ID |
      | 9998135293    | 13/09/1990 | Individual    | Mandate and documents | Document Center | 613768     |

  @datanotworking
  Scenario Outline: To verify that customer is redirecting to document POD page on click of Welcome letter of Deposit
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And Clicks on the Document Centre Page tab "Deposits"
    And User clicks on a Card "<Deposit ID>"
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter/docCenter_FDDetails" Url
    And Clicks on the document "Welcome Letter"
    Then Verify Customer Redirected to respective URL "https://emandate-staging.bajajfinserv.in/Welcome_Letter/DocPOD" in new Tab
    Examples:
      | Mobile Number | Date       | Customer Type | SubMenu               | SubListMenu     | Deposit ID |
      | 9998135293    | 13/09/1990 | Individual    | Mandate and documents | Document Center | 613768     |

  @nodata
  Scenario Outline: To verify that welcome letter is displayed to matured Deposit
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And Clicks on the Document Centre Page tab "Deposits"
    And Click on Filter
    And Unselects a Relation Status in Filter in Doc Page-"Active"
    And Selects a Relation Status in Filter in Doc Page-"Closed"
    And Clicks on Apply Button in Filter in Doc Page
    And User clicks on a Card "<Deposit ID>"
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter/docCenter_FDDetails" Url
    Then Welcome letter should not be displayed to matured deposit in document list page
    Examples:
      | Mobile Number | Date       | Customer Type | SubMenu               | SubListMenu     | LAN |
      |               | 13/09/1990 | Individual    | Mandate and documents | Document Center |     |

  @datanotworking
  Scenario Outline: To verify that welcome letter is displayed to active insurance
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And Clicks on the Document Centre Page tab "Insurance"
    And User clicks on a Card "<Policy ID>"
    Then Welcome letter should be displayed to active insurance in document list page
    Examples:
      | Mobile Number | Date       | Customer Type | SubMenu               | SubListMenu     | Policy ID |
      | 9557657718    | 13/09/1990 | Individual    | Mandate and documents | Document Center | IAF758187 |

  @datanotworking
  Scenario Outline: To verify that customer is redirecting to document POD page on click of Welcome letter  of insurance
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And Clicks on the Document Centre Page tab "Insurance"
    And User clicks on a Card "<Policy ID>"
    And Click on welcome letter
    Then Customer should be redirected to Document POD
    Examples:
      | Mobile Number | Date       | Customer Type | SubMenu               | SubListMenu     | Policy ID |
      | 9557657718    | 13/09/1990 | Individual    | Mandate and documents | Document Center | IAF758187 |

  @datanotworking
  Scenario Outline: To verify that welcome letter is displayed to matured/cancelled/surrendered insurance
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And Clicks on the Document Centre Page tab "Insurance"
    And Click on Filter
    And Unselects a Relation Status in Filter in Doc Page-"Active"
    And Selects a Relation Status in Filter in Doc Page-"Cancelled"
    And Clicks on Apply Button in Filter in Doc Page
    And User clicks on a Card "<Policy ID>"
    Then Welcome letter should not be displayed to matured/cancelled/surrendered insurance in document list page
    Examples:
      | Mobile Number | Date       | Customer Type | SubMenu               | SubListMenu     | Policy ID |
      | 8421822960    | 13/09/1990 | Individual    | Mandate and documents | Document Center | IM7767707 |

