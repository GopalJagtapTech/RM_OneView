@Doc
Feature: Document Centre -Foreclosure letter Feature File

#  Scenario Outline: To verify that customer is able to view Hamburger icon on Home page
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User is on Home Page
#    Then Customer should be able to View 3 Lined icon of Hamburger menu before Bajaj Finserv Logo
#    And Clicks on Hamburger Menu
#    And Customer Clicks on Cross icon of Hamburger
#    Then Hamburger menu should be closed
#
#    Examples:
#      | Mobile Number | Date     | Customer Type |
#      | 9839643146    | 11041983 | Individual    |
#      | 9751278199    | 25101990 | Individual    |
#      | 9953037058    | 02021999 | Individual    |

#  Scenario Outline: To verify that Document Center submenu displayed under Mandate and documents menu of Hamburger
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User is on Home Page
#    And Clicks on Hamburger Menu
#    And Selects an SubMenu from Hamburger "<SubMenu>"
#    Then verify the "<Options>" displayed for the Accordion icon
#    Examples:
#      | Mobile Number | Date     | Customer Type | SubMenu               | Options         |
#      | 9839643146    | 11041983 | Individual    | Mandate and documents | Document Center |
#      | 9751278199    | 25101990 | Individual    | Mandate and documents | Document Center |
#      | 9953037058    | 02021999 | Individual    | Mandate and documents | Document Center |

#  Scenario Outline: To verify that customer is redirecting to Document Center page when customer click on document center sub menu
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User is on Home Page
#    And Clicks on Hamburger Menu
#    And Selects an SubMenu from Hamburger "<SubMenu>"
#    And Clicks on SubListmenu "<SubListMenu>"
#    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter/index" Url
#
#    Examples:
#      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     |
#      | 9839643146    | 11041983 | Individual    | Mandate and documents | Document Center |
#      | 9751278199    | 25101990 | Individual    | Mandate and documents | Document Center |
#      | 9953037058    | 02021999 | Individual    | Mandate and documents | Document Center |


#  Scenario Outline: To verify that customer is redirecting to Document Center page when customer click on document center from RHS of My Relation
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User is on Home Page
#    And Customer is able to view My Relations Section to ETB Customers
#    And Customer clicks on view all option
#    And My relations Page should be displayed
#    And Customer Click on "Document Center" CTA in RHS
#    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter/index" Url
#
#    Examples:
#      | Mobile Number | Date     | Customer Type |
#      | 9839643146    | 11041983 | Individual    |
#      | 9751278199    | 25101990 | Individual    |
#      | 9953037058    | 02021999 | Individual    |

#  Scenario Outline: To verify that customer is redirecting to Document Center page when customer click on view statements  from RHS of Loan Services
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User is on Home Page
#    And Customer is able to view My Relations Section to ETB Customers
#    And Customer clicks on view all option
#    And My relations Page should be displayed
#    And verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
#    And Customer Click on "View Statements" CTA in RHS
#    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter/docCenter_LoanDetails" Url
#    And User should be redirected to specific document page "<Account No>"
#
#    Examples:
#      | Mobile Number | Date     | Customer Type | Subtitle                     | Account No     |
#      | 9839643146    | 11041983 | Individual    | VOLTAS - AIR CONDITIONER     | 30P0CDIJ271774 |
#      | 9751278199    | 25101990 | Individual    | PERSONAL LOAN TELE-BINDING   | 412PLTHV632146 |
#      | 9953037058    | 02021999 | Individual    | SALARIED PERSONAL FLEXI LOAN | 401SPFGM842918 |
#
#
#  Scenario Outline: To verify that filter icon on loan tab is clickable and Active and close filter with apply and clear all CTA are visible on click of filter icon
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User is on Home Page
#    And Clicks on Hamburger Menu
#    And Selects an SubMenu from Hamburger "<SubMenu>"
#    And Clicks on SubListmenu "<SubListMenu>"
#    And Clicks on the Document Centre Page tab "Loans"
#    And Clicks on Filter in Doc Centre Page
#    Then verify Contents in Doc Page Filter Text Options: "Filters, Filter the documents using the below parameters, Relation Status" and Status options: "Active, Closed"
#    Examples:
#      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     |
#      | 9839643146    | 11041983 | Individual    | Mandate and documents | Document Center |
#      | 9751278199    | 25101990 | Individual    | Mandate and documents | Document Center |
#      | 9953037058    | 02021999 | Individual    | Mandate and documents | Document Center |
#
#
#  Scenario Outline: To verify after clicking on LAN we are redirected to documents page
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User is on Home Page
#    And Clicks on Hamburger Menu
#    And Selects an SubMenu from Hamburger "<SubMenu>"
#    And Clicks on SubListmenu "<SubListMenu>"
#    And User clicks on a Card "<Card Number>"
#    And User should be redirected to specific document page "<Card Number>"
#    Examples:
#      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     | Card Number    |
#      | 9839643146    | 11041983 | Individual    | Mandate and documents | Document Center | 30P0CDIJ271774 |
#      | 9751278199    | 25101990 | Individual    | Mandate and documents | Document Center | 412PLTHV632146 |
#      | 9953037058    | 02021999 | Individual    | Mandate and documents | Document Center | 401SPFGM842918 |

@Reg
  Scenario Outline: To verify Foreclosure letter is displayed for Flexi,B2B and Personal loan
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And User clicks on a Card "<Card Number>"
    And User should be redirected to specific document page "<Card Number>"
    Then verify the following Documents are displayed in Doc page "<Docs>"

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     | Card Number    | Docs               |
      | 9839643146    | 11041983 | Individual    | Mandate and documents | Document Center | 30P0CDIJ271774 | Foreclosure Letter |
      | 9751278199    | 25101990 | Individual    | Mandate and documents | Document Center | 412PLTHV632146 | Foreclosure Letter |
      | 9953037058    | 02021999 | Individual    | Mandate and documents | Document Center | 401SPFGM842918 | Foreclosure Letter |

  @Reg
  Scenario Outline: Verify Foreclosure Letter document of flexi loan, personal loan and B2B loan is downloading in pdf format on click of document
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And User clicks on a Card "<Card Number>"
    And User should be redirected to specific document page "<Card Number>"
#    And Click on Foreclosure letter
    And verify User is able to Download the file and the file is in PDF Format FileName "<Document>" ,FileDownloadName "<DownloadName>"
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     | Card Number    | Document           | DownloadName           |
      | 9839643146    | 11041983 | Individual    | Mandate and documents | Document Center | 30P0CDIJ271774 | Foreclosure Letter | 30P0CDIJ271774_FCR.pdf |
      | 9751278199    | 25101990 | Individual    | Mandate and documents | Document Center | 412PLTHV632146 | Foreclosure Letter | 412PLTHV632146_FCR.pdf |
      | 9953037058    | 02021999 | Individual    | Mandate and documents | Document Center | 401SPFGM842918 | Foreclosure Letter | 401SPFGM842918_FCR.pdf |








