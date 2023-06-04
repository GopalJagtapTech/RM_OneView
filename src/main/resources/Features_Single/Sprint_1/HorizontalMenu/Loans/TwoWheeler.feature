@regression
Feature: Loan Against Securities
#  @run
#  Scenario Outline: HM_LAS To Login the Application
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User lands on Home Page
#    Examples:
#      | Mobile Number | Date     | Customer Type |
#      | 9890801661    | 26051982 | Individual    |

  Scenario Outline: HM_CC To verify Two-wheeler Loan -  Overview
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>"& Apply Online "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      | Loans        | Two-wheeler Loan | Overview | https://uat-oneweb.bajajfinserv.in/two-wheeler-loan |


  Scenario Outline: HM_CC To verify Two-wheeler Loan -  Eligibility
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>"& Apply Online "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      | Loans        | Two-wheeler Loan | Eligibility | https://uat-oneweb.bajajfinserv.in/two-wheeler-loan-eligibility-and-documents |


  Scenario Outline: HM_CC To verify Two-wheeler Loan -  Features
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>"& Apply Online "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      | Loans        | Two-wheeler Loan | Features | https://uat-oneweb.bajajfinserv.in/two-wheeler-loan-features |


  Scenario Outline: HM_CC To verify Two-wheeler Loan -  Interest Rates
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>"& Apply Online "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      | Loans        | Two-wheeler Loan | Interest Rates | https://uat-oneweb.bajajfinserv.in/two-wheeler-loan-interest-rates |


  Scenario Outline: HM_CC To verify Two-wheeler Loan -  How to Apply
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>"& Apply Online "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      | Loans        | Two-wheeler Loan | How to Apply | https://uat-oneweb.bajajfinserv.in/how-to-apply-for-two-wheeler-loan |


  Scenario Outline: HM_CC To verify Two-wheeler Loan -  FAQs
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>"& Apply Online "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      | Loans        | Two-wheeler Loan | FAQs | https://uat-oneweb.bajajfinserv.in/two-wheeler-loan-faqs |


  Scenario Outline: HM_CC To verify Two-wheeler Loan  -  Apply Online
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>"& Apply Online "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      | Loans        | Two-wheeler Loan | Apply Online | https://uat-oneweb.bajajfinserv.in/two-wheeler-loan/application-form |


#  @run
#  Scenario: HM_LAS To Logout the Application
#    Given Logout the Application
#    Then close the Application