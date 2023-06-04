
Feature: New Home Page - Others
  Scenario Outline: Home page - <Product Name>
    And verify "<Product Name>" Title is Displayed in Home Page
    And verify "<Product Name>" Sub Title is Displayed in Home Page
    And verify "<Product Name>" Logo is Displayed in Home Page
    And Click on "<Product Name>" Option in Home Page
    Then verify Page Redirection to "https://www.bajajfinserv.in/branch-locator" Url with SSO
    And Go Back to Previous Page
    Examples:
      | Product Name |
      | Locate us|

Scenario Outline: Home page - <Product Name>
    And verify "<Product Name>" Title is Displayed in Home Page
    And verify "<Product Name>" Sub Title is Displayed in Home Page
    And verify "<Product Name>" Logo is Displayed in Home Page
    And Click on "<Product Name>" Option in Home Page
    Then verify Page Redirection to "https://www.bajajfinserv.in/payment-fraud-awareness" Url with SSO
    And Go Back to Previous Page
    Examples:
      | Product Name |
      | Savdhaan Rahein. Safe Rahein|
