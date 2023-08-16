Feature: US_3172285 Welcome Letter

#  Scenario Outline: To verify that customer is able to view Hamburger icon on Home page
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User is on Home Page
#    Then Customer should be  able view hamburger icon
#    And Hamburger should be clickable
#    Examples:
#      | Mobile Number | Date       | Customer Type |
#      | 9860299865    | 13/09/1990 | Individual    |
#
#  Scenario Outline: To verify that Document Center submenu  displayed under Mandate and documents menu of Hamburger
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User is on Home Page
#    And Clicks on Hamburger Menu
#    And Clicks on <Menu>
#    Then Customer should be able to view <Submenu> under Mandate and documents
#    Examples:
#      | Mobile Number | Date       | Customer Type | SubMenu               | SubListMenu     |
#      | 9860299865    | 13/09/1990 | Individual    | Mandate and documents | Document Center |


  Scenario Outline: To verify that customer is redirecting to Document Center page when they click on document center sub menu
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter" Url
    Examples:
      | Mobile Number | Date       | Customer Type | SubMenu               | SubListMenu     |
      | 9869036431    | 13/09/1990 | Individual    | Mandate and documents | Document Center |

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
      | 9869036431    | 13/09/1990 | Individual    |

  Scenario Outline: To verify that welcome letter is displayed to for mentioned active loan - "<Prod ID>"
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
      | Mobile Number | Date       | Customer Type | SubMenu               | SubListMenu     | LAN            | Prod ID |
      | 9869036431    | 13/09/1990 | Individual    | Mandate and documents | Document Center | 405PSB20690086 | PSBL    |
      | 9571318370    | 13/09/1990 | Individual    | Mandate and documents | Document Center | 562DPFHH829227 | DPF     |
      | 9100674570    | 13/09/1990 | Individual    | Mandate and documents | Document Center | 400REMHF964982 | DPF     |

  Scenario Outline: To verify that customer is redirecting to document POD page on click of Welcome letter - "<Prod ID>"
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
      | Mobile Number | Date       | Customer Type | SubMenu               | SubListMenu     | LAN            | Prod ID |
      | 9869036431    | 13/09/1990 | Individual    | Mandate and documents | Document Center | 405PSB20690086 | PSBL    |
      | 9571318370    | 13/09/1990 | Individual    | Mandate and documents | Document Center | 562DPFHH829227 | DPF     |
      | 9100674570    | 13/09/1990 | Individual    | Mandate and documents | Document Center | 400REMHF964982 | DPF     |

  Scenario Outline: To verify that welcome letter is displayed to active loan for other than mention product ID - "<Prod ID>"
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
#    And Clicks on the Document Centre Page tab "Loans"
    And User clicks on a Card "<LAN>"
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter/docCenter_LoanDetails" Url
    Then verify the following Documents are displayed in Doc page "Welcome Letter"
    Examples:
      | Mobile Number | Date       | Customer Type | SubMenu               | SubListMenu     | LAN            | Prod ID |
      | 9860299865    | 13/09/1990 | Corporate     | Mandate and documents | Document Center | P423PPS5720244 | PPSBL   |
      | 9910955211    | 13/09/1990 | Individual    | Mandate and documents | Document Center | 401BFR37198469 | PDBFR   |

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

  Scenario Outline: To verify that welcome letter is displayed to active and matured deposit - "<Relation>"
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And Clicks on the Document Centre Page tab "Deposits"
    And User clicks on a Card "<Deposit ID>"
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter/docCenter_FDDetails" Url
    Then "Welcome letter" should not be displayed in document list page
    Examples:
      | Mobile Number | Date       | Customer Type | SubMenu               | SubListMenu     | Deposit ID | Relation |
      | 8800384932    | 13/09/1990 | Individual    | Mandate and documents | Document Center | 474525     | Active   |
      | 8800384932    | 13/09/1990 | Individual    | Mandate and documents | Document Center | 514729     | matured  |


  Scenario Outline: To verify that welcome letter is displayed to  insurance - "<Relation>"
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And Clicks on the Document Centre Page tab "Insurance"
    And User clicks on a Card "<Policy ID>"
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter/docCenter_Insurance" Url
    Then "Welcome letter" should not be displayed in document list page
    Examples:
      | Mobile Number | Date       | Customer Type | SubMenu               | SubListMenu     | Policy ID       | Relation |
      | 9028972707    | 13/09/1990 | Individual    | Mandate and documents | Document Center | PP00020803JY300 | Active   |



