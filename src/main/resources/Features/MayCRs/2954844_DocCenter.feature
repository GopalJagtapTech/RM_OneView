Feature: Active & Closed relation visibility on Document center page - My Account

  @pass
  Scenario Outline: To verify that customer is redirecting to Document Center page when they clicks on document center sub menu
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter" Url
    And verify that following Tabs "Loans,Insurance,Deposits" are Displayed in Document Centre Page
    And verify that Loan product tab by default is selected on Document center page
    Examples:
      | Mobile Number | Date       | Customer Type | SubMenu               | SubListMenu     |
      | 9830038796    | 13/09/1990 | Corporate     | Mandate and documents | Document Center |

  @check
  Scenario Outline: To verify that by default, customer is able to view all active LAN and closed LAN with in a year
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter" Url
    Then Customer should be able to view all "Active,Closed" Cards for "Loans"
    Examples:
      | Mobile Number | Date       | Customer Type | SubMenu               | SubListMenu     |
      | 9830038796    | 13/09/1990 | Corporate     | Mandate and documents | Document Center |
  @pass
  Scenario Outline: To verify that active and closed filters are selected by default
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter" Url
    And Clicks on Filter in Doc Centre Page
    Then "Active,Closed" filter should be selected by default in Document Center page for "Loans"
    Examples:
      | Mobile Number | Date       | Customer Type | SubMenu               | SubListMenu     |
      | 9830038796    | 13/09/1990 | Corporate     | Mandate and documents | Document Center |
#  @check
  Scenario Outline: To verify that active loans displayed before closed loans
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter" Url
    Then Active loans should be displayed before closed loans for "Loans"
    Examples:
      | Mobile Number | Date       | Customer Type | SubMenu               | SubListMenu     |
      | 9830038796    | 13/09/1990 | Corporate     | Mandate and documents | Document Center |

#  To verify that active loans displayed before closed loans - 9830038796(Contains Only Closed Cards)
  @pass
  Scenario Outline: To verify that closed nudge is displayed for closed loan
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter" Url
    And Clicks on Filter in Doc Centre Page
    And Unselects a Relation Status in Filter in Doc Page-"Active"
    And Clicks on Apply Button in Filter in Doc Page
    Then All closed "Loans" should be displayed with "Closed" nudge
    Examples:
      | Mobile Number | Date       | Customer Type | SubMenu               | SubListMenu     |
      | 9830038796    | 13/09/1990 | Corporate     | Mandate and documents | Document Center |
@pass
  Scenario Outline: To verify that by default, customer is able to view all active and matured/pre-matured FD/SDP with in a year
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter" Url
    And Clicks on the Document Centre Page tab "Deposits"
    Then Customer should be able to view all "OPEN,PRE-MATURED" Cards for "Deposits"
    Examples:
      | Mobile Number | Date       | Customer Type | SubMenu               | SubListMenu     |
      | 8800384932    | 13/09/1990 | Individual    | Mandate and documents | Document Center |

  Scenario Outline: To verify that active and closed filters are selected by default
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter" Url
    And Clicks on the Document Centre Page tab "Deposits"
    And Clicks on Filter in Doc Centre Page
    Then "Active,Closed" filter should be selected by default in Document Center page for "Deposits"
    Examples:
      | Mobile Number | Date       | Customer Type | SubMenu               | SubListMenu     |
      | 8800384932    | 13/09/1990 | Individual    | Mandate and documents | Document Center |
@pass
  Scenario Outline: To verify that active FD/SDP displayed before matured/Pre-matured FD/SDP
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter" Url
    And Clicks on the Document Centre Page tab "Deposits"
    Then Active Cards should be displayed first and then the Matured Cards for "Deposits"
    Examples:
      | Mobile Number | Date       | Customer Type | SubMenu               | SubListMenu     |
      | 8800384932    | 13/09/1990 | Individual    | Mandate and documents | Document Center |

  @pass
  Scenario Outline: To verify that matured/Pre-matured nudge is displayed for closed FD/SDP
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter" Url
    And Clicks on the Document Centre Page tab "Deposits"
    And Clicks on Filter in Doc Centre Page
    And Unselects a Relation Status in Filter in Doc Page-"Active"
    And Clicks on Apply Button in Filter in Doc Page
    Then All pre matured "Deposits" should be displayed with "PRE-MATURED" nudge
    Examples:
      | Mobile Number | Date       | Customer Type | SubMenu               | SubListMenu     |
      | 8800384932    | 13/09/1990 | Individual    | Mandate and documents | Document Center |
@pass
  Scenario Outline: To verify that by default, customer is able to view all active, cancelled,surrendered  and matured insurance  with in a year
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter" Url
    And Clicks on the Document Centre Page tab "Insurance"
  Then Customer should be able to view all "ACTIVE,matured,cancelled,surrender" Cards for "Insurance"
    Examples:
      | Mobile Number | Date       | Customer Type | SubMenu               | SubListMenu     |
      | 8095480845    | 13/09/1990 | Individual    | Mandate and documents | Document Center |
  @pass
  Scenario Outline: To verify that active, cancelled, surrendered and closed filters are selected by default
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter" Url
    And Clicks on the Document Centre Page tab "Insurance"
    And Clicks on Filter in Doc Centre Page
    Then "Active,Closed,Cancelled,Surrendered" filter should be selected by default in Document Center page for "Insurance"
    Examples:
      | Mobile Number | Date       | Customer Type | SubMenu               | SubListMenu     |
      | 9717843356    | 13/09/1990 | Individual    | Mandate and documents | Document Center |

  @pass
  Scenario Outline: To verify that active insurances displayed before cancelled, surrendered and matured insurances
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter" Url
    And Clicks on the Document Centre Page tab "Insurance"
    Then Active insurance should be displayed before cancelled, surrendered and closed insurance
    Examples:
      | Mobile Number | Date       | Customer Type | SubMenu               | SubListMenu     |
      | 8095480845     | 13/09/1990 | Individual    | Mandate and documents | Document Center |
  @rerun
  Scenario Outline: To verify that cancelled, surrendered and matured nudge is displayed for cancelled, surrendered and matured insurances
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter" Url
    And Clicks on the Document Centre Page tab "Insurance"
    And Clicks on Filter in Doc Centre Page
    And Unselects a Relation Status in Filter in Doc Page-"Active"
    And Unselects a Relation Status in Filter in Doc Page-"Surrendered"
    And Unselects a Relation Status in Filter in Doc Page-"Cancelled"
    And Clicks on Apply Button in Filter in Doc Page
    Then All closed "Insurance" should be displayed with "MATURED" nudge
    And Clicks on Filter in Doc Centre Page
    And Unselects a Relation Status in Filter in Doc Page-"Closed"
    And Selects a Relation Status in Filter in Doc Page-"Cancelled"
    And Clicks on Apply Button in Filter in Doc Page
    Then All Cancelled "Insurance" should be displayed with "CANCELLED" nudge
    And Clicks on Filter in Doc Centre Page
    And Unselects a Relation Status in Filter in Doc Page-"Cancelled"
    And Selects a Relation Status in Filter in Doc Page-"Surrendered"
    And Clicks on Apply Button in Filter in Doc Page
    Then All surrendered "Insuracne" should be displayed with "SURRENDERED" nudge

    Examples:
      | Mobile Number | Date       | Customer Type | SubMenu               | SubListMenu     |
      | 8095480845    | 13/09/1990 | Individual    | Mandate and documents | Document Center |
