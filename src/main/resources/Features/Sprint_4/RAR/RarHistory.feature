Feature: RAR

  Scenario Outline: verify all the components displayed on Request History page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User lands on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then verify User is redirected to Request History Page
    And verify all the components displayed on Request History page

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu          |
      | 8800384932    | 02021976 | Individual    | Help and support |

  @rar
  Scenario Outline: verify that customer is able to view latest 2 request history under Request History section
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User lands on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then verify User is redirected to Request History Page
    And verify that customer is able to view latest 2 request history under Request History section

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu          |
      | 8800384932    | 02021976 | Individual    | Help and support |

  Scenario Outline: verify that customer is able to view request history when a customer has raised a request
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User lands on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then verify User is redirected to Request History Page
    And verify that customer is able to view request history when a customer has raised a request

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu          |
      | 8800384932    | 02021976 | Individual    | Help and support |

  Scenario Outline: verify that customer is able to redirect on Choose a category you need help page when customer click on view all CTA
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User lands on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then verify User is redirected to Request History Page
    And verify that customer is able to redirect on Choose a category you need help page when customer click on view all CTA

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu          |
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
      | Mobile Number | Date     | Customer Type | SubMenu          |
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
      | Mobile Number | Date     | Customer Type | SubMenu          |
      | 8800384932    | 02021976 | Individual    | Help and support |


  Scenario Outline: verify Given message is displayed when customer doesn’t have request history
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User lands on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then verify User is redirected to Request History Page
    And verify Given message is displayed when customer doesn’t have request history

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu          |
      | 9987160686    | 19091970 | Individual    | Help and support |


  And verify Open and closed filter is showing only for given payment method
  And verify filter is not displayed for Bill Payment method



  Scenario Outline: verify that customer is able to view given component and there subtext when customer click on General tab
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User lands on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then verify User is redirected to Request History Page
    And Clicks on "View All" in Request History Page
    And verify that customer is able to view given component and there subtext when customer click on General tab

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu          |
      | 8800384932    | 02021976 | Individual    | Help and support |

  Scenario Outline: verify that +NEW REQUEST CTA enable and clickable
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User lands on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then verify User is redirected to Request History Page
    And Clicks on "View All" in Request History Page
    And verify that +NEW REQUEST CTA enable and clickable

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu          |
      | 8800384932    | 02021976 | Individual    | Help and support |

  Scenario Outline: verify that customer is redirected on RAR page when customer click on Raise a Request CTA under Request History page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User lands on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then verify User is redirected to Request History Page
    And clicks on "Raise_a_Request"
    Then verify User is redirected to "Raise_a_Request_Page"

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu          |
      | 8800384932    | 02021976 | Individual    | Help and support |


#    No Request History

  Scenario Outline: verify that customer able to view given component when customer don’t have any request History
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User lands on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then verify User is redirected to Request History Page
    And Clicks on "View All" in Request History Page
    And verify that customer able to view given component when customer don’t have any request History

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu          |
      | 9987160686    | 19091970 | Individual    | Help and support |

  Scenario Outline: verify that By default given tab is displayed for open request
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User lands on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then verify User is redirected to Request History Page
    And Clicks on "View All" in Request History Page
    And verify that By default given tab is displayed for open request(No History)

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu          |
      | 9987160686    | 19091970 | Individual    | Help and support |

  Scenario Outline: verify that customer is able to view given option under the filter and Down Arrow in enabled condition
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User lands on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then verify User is redirected to Request History Page
    And Clicks on "View All" in Request History Page
    And verify that customer is able to view given option under the filter(No History)

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu          |
      | 9987160686    | 19091970 | Individual    | Help and support |

  Scenario Outline: verify that customer is able to view count of  No of Open request and no of closed request
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User lands on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then verify User is redirected to Request History Page
    And Clicks on "View All" in Request History Page
    And verify that customer is able to view count of No of Open request and no of closed request(No History)

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu          |
      | 9987160686    | 19091970 | Individual    | Help and support |



#  And verify filter drop-down arrow enable and clickable

  
  
  
  
