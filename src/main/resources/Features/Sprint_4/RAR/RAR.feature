Feature: RAR

  Scenario Outline: verify all the components displayed on Request History page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User lands on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then verify User is redirected to Request History Page
    And verify all the components displayed on Request History page

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu         |
      | 8800384932    | 02021976 | Individual    | Help and support |


  Scenario Outline: verify that customer is able to view latest 2 request history under Request History section
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User lands on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then verify User is redirected to Request History Page
    And verify that customer is able to view latest 2 request history under Request History section

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu         |
      | 8800384932    | 02021976 | Individual    | Help and support |

  Scenario Outline: verify that customer is able to view request history when a customer has raised a request
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User lands on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then verify User is redirected to Request History Page
    And verify that customer is able to view request history when a customer has raised a request

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu         |
      | 8800384932    | 02021976 | Individual    | Help and support |

  Scenario Outline: verify that customer is able to redirect on Choose a category you need help page when customer click on view all CTA
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User lands on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then verify User is redirected to Request History Page
    And verify that customer is able to redirect on Choose a category you need help page when customer click on view all CTA

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu         |
      | 8800384932    | 02021976 | Individual    | Help and support |

  Scenario Outline: verify that all open request are displayed for Given Tabs by default
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User lands on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then verify User is redirected to Request History Page
    And Clicks on "View All" in Request History Page
    And verify that all open request are displayed for Given Tabs by default
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu         |
      | 8800384932    | 02021976 | Individual    | Help and support |

  Scenario Outline: verify that customer is able to view closed and open request count under Filter & Down Arrow is enabled
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User lands on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then verify User is redirected to Request History Page
    And Clicks on "View All" in Request History Page
    And verify that customer is able to view closed and open request count under Filter
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu         |
      | 8800384932    | 02021976 | Individual    | Help and support |

################################### NEW REQUEST ###########################################################

  Scenario Outline:
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User lands on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And verify User is redirected to Request History Page
    And clicks on "Raise_a_Request"
    Then verify User is redirected to "Raise_a_Request_Page"
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu         |
      | 8800384932    | 02021976 | Individual    | Help and support |

  Scenario Outline:
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User lands on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And verify User is redirected to Request History Page
    And clicks on "Raise_a_Request"
    And verify User is redirected to "Raise_a_Request_Page"
    Then Customer should be able to view below options with Horizantal Scroll: "<Options>"
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu          | Options                                                                                                                                                |
      | 8800384932    | 02021976 | Individual    | Help and support | Loans, Deposits, Insurance, Cards, Profile Details, Product Offers, Promotional Calls, Wallet, Others, APP Related, Utility and Bill Payments, Rewards |

  Scenario Outline: Verify customer able to view steps for RAR
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User lands on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And verify User is redirected to Request History Page
    And clicks on "Raise_a_Request"
    And verify User is redirected to "Raise_a_Request_Page"
    Then Customer is able to view "Steps_to_RAR" in RHS
    |Select relevant product|
    |Select query and sub query type|
    |Read relevent FAQs/Submit your request|
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu         |
      | 8800384932    | 02021976 | Individual    | Help and support |

  Scenario Outline:
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User lands on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And verify User is redirected to Request History Page
    And clicks on "Raise_a_Request"
    And verify User is redirected to "Raise_a_Request_Page"
    Then "Loan_Relation_in_RAR" is By Default Selected
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu         |
      | 8800384932    | 02021976 | Individual    | Help and support |

@steps
  Scenario Outline: verify any one of the Relation Should be selectable and highlighted
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User lands on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And verify User is redirected to Request History Page
    And clicks on "Raise_a_Request"
    And verify User is redirected to "Raise_a_Request_Page"
    Then Verify any one of the relation selectable and Relation highlighted
  |Loans|
  |Deposits|
  |Insurance|
  |Cards|
  |Profile Details|
  |Product Offers|
  |Promotional Calls|
  |Wallet           |
  |Others           |
  |APP Related      |
  |Utility and Bill Payments|
  |Rewards                  |
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu         |
      | 8800384932    | 02021976 | Individual    | Help and support |

  Scenario Outline:
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User lands on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And verify User is redirected to Request History Page
    And clicks on "Raise_a_Request"
    And verify User is redirected to "Raise_a_Request_Page"
    And Select "Loans" Relation Tab in RAR Page
    And Select "" Option in "RAR_Query_Type_Dropdown"
    And Select "" Option in "RAR_Sub_Query_Type_Dropdown"
    And clicks on "RAR_OK_Button_in_PopUp"
    Then verify User is redirected to ""
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu         |
      | 8800384932    | 02021976 | Individual    | Help and support |

@test
  Scenario Outline: My Account
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User lands on Home Page
    And clicks on "my_Account1"
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And verify User is redirected to Request History Page
    And clicks on "Raise_a_Request"
    And verify User is redirected to "Raise_a_Request_Page"
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu         |
      | 8800384932    | 02021976 | Individual    | Help and support |
      | 7721001199    | 05081984 | Individual    | Help and support |


  @file
  Scenario Outline: RAR File Creation
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then verify User is redirected to Request History Page
    And clicks on "Raise_a_Request"
    And verify User is redirected to "Raise_a_Request_Page"
    And create RAR File
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu         |
      | 8076212434    | 12101985 | Individual    | Help and support |
#      | 9821466790    | 21101966 | Individual    | Help and support |
#      | 7721001199    | 05081984 | Individual    | Help and support |
#      | 9974247570    | 13051975 | Individual    | Help and support |
#      | 8237823021    | 30081995 | Individual    | Help and support |
#      | 8087239978    | 23011990 | Individual    | Help and support |
#      | 9920553437    | 01011990 | Individual    | Help and support |
#      | 8800384932    | 02021976 | Individual    | Help and support |
#      | 8796738158    | 13011992 | Individual    | Help and support |

  @CAG
  Scenario Outline: RAR Choose A Category File Creation
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then verify User is redirected to Request History Page
    And Create Choose Category File
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu         |
#      | 8076212434    | 12101985 | Individual    | Help and support |
      | 9821466790    | 21101966 | Individual    | Help and support |
#      | 7721001199    | 05081984 | Individual    | Help and support |
#      | 9974247570    | 13051975 | Individual    | Help and support |
#      | 8237823021    | 30081995 | Individual    | Help and support |
#      | 8087239978    | 23011990 | Individual    | Help and support |
#      | 9920553437    | 01011990 | Individual    | Help and support |
#      | 8800384932    | 02021976 | Individual    | Help and support |
#      | 8796738158    | 13011992 | Individual    | Help and support |
