@regression
Feature: Loan Against Securities
#  @run
#  Scenario Outline: HM_LAS To Login the Application
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User lands on Home Page
#    Examples:
#      | Mobile Number | Date     | Customer Type |
#      | 9890801661    | 26051982 | Individual    |

  Scenario Outline: HM_CC To verify Loan Against Securities -  Overview
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>"& Apply Online "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      | Loans        | Loan Against Securities | Overview | https://uat-oneweb.bajajfinserv.in/loan-against-shares |


  Scenario Outline: HM_CC To Loan Against Securities -  FAQs
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>"& Apply Online "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      | Loans        | Loan Against Securities | FAQs | https://uat-oneweb.bajajfinserv.in/loan-against-shares-faq-questions |


  Scenario Outline: HM_CC To verify Loan Against Securities  -  Apply Online
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>"& Apply Online "<level 2 Sub Type>"
    Then Customer should be Redirected to new tab "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      | Loans        | Loan Against Securities | Apply Online | https://uat-oneweb.bajajfinserv.in/loan-against-securities-application-form |


#  @run
#  Scenario: HM_LAS To Logout the Application
#    Given Logout the Application
#    Then close the Application