Feature: Grievence redressal

  Scenario Outline: To verify that customer is able to view Grievence redressal ”Click here” section
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When Customer is on Home Page
    And Clicks on hamburger
    And Click on <Submenu>
    And Click on view all CTA
    And Cilck on Filter
    And click on Closed filter
    And click on Close SR
    Then Grievence redressal ”Click here” section Customer should be visible
    Examples:
      | Mobile Number | Date       | Customer Type | Menu      | Submenu          | CTA      | filter
      | 7498278072    | 09/07/1988 | Individual    | Hamburger | Help and support | view all | close  |


  Scenario Outline: To verify that customer is able to land on Given URL page  when customer Click on Click here URL under the Grievence redressal section
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When Customer is on Home Page
    And Clicks on hamburger
    And Click on <Submenu>
    And Click on view all CTA
    And Cilck on Filter
    And click on Closed filter
    And click on Close SR
    And click on Click here URL
    Then Cusotmer should be land on Grievence redressal page
    Examples:
      | Mobile Number | Date       | Customer Type | Menu      | Submenu          | CTA      | filter | URL                                             |
      | 7498278072    | 09/07/1988 | Individual    | Hamburger | Help and support | view all | close  | https://www.bajajfinserv.in/grievance-redressal |




