Feature: Grievence redressal

  Scenario Outline: To verify that customer is able to view Grievence redressal ”Click here” section
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then Verify Customer Redirected to "MyAccountService/HelpAndSupport/Index" Url
    And Customer clicks on "View All" Button
    Then Verify Customer Redirected to "MyAccountService/HelpAndSupport/MyRequestDetails" Url
    And Cilcks on Filter in My Requests page
    And Selects "Closed" filter in My Requests page
    Then verify Closed Requests are displayed
    And click on Closed Request Card with SR No - "SR00608355"
    Then Response History for thar Card "SR00608355" is to be displayed
    And Grievence redressal "Click here" section Customer should be visible
    Examples:
      | Mobile Number | Date       | Customer Type | SubMenu          |
      | 8800384932    | 09/07/1988 | Individual    | Help and support |


  Scenario Outline: To verify that customer is able to land on Given URL page  when customer Click on Click here URL under the Grievence redressal section
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then Verify Customer Redirected to "MyAccountService/HelpAndSupport/Index" Url
    And Customer clicks on "View All" Button
    Then Verify Customer Redirected to "MyAccountService/HelpAndSupport/MyRequestDetails" Url
    And Cilcks on Filter in My Requests page
    And Selects "Closed" filter in My Requests page
    Then verify Closed Requests are displayed
    And click on Closed Request Card with SR No - "SR00608355"
    Then Response History for thar Card "SR00608355" is to be displayed
    And Grievence redressal "Click here" section Customer should be visible
    And click on "Click here" URL
    Then Cusotmer should be land on Grievence redressal page "https://www.bajajfinserv.in/grievance-redressal"

    Examples:
      | Mobile Number | Date       | Customer Type | SubMenu          |
      | 8800384932    | 09/07/1988 | Individual    | Help and support |




