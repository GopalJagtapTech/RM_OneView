@regression
Feature: Loan for Cars  & Loan Against Car & Car Loan Balance Transfer and Top-up
#  @run
#  Scenario Outline: HM_LAS To Login the Application
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User lands on Home Page
#    Examples:
#      | Mobile Number | Date     | Customer Type |
#      | 9890801661    | 26051982 | Individual    |

  Scenario Outline:  To verify Used Car Loan -  Overview
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>"& Apply Online "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      | Loans        | Used Car Loan | Overview | https://uat-oneweb.bajajfinserv.in/used-car-finance |


  Scenario Outline: To  Verify Used Car Loan -  FAQs
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>"& Apply Online "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      | Loans        | Used Car Loan | FAQs | https://uat-oneweb.bajajfinserv.in/used-car-finance-faqs |


  Scenario Outline: HM_CC To verify Used Car Loan  -  Apply Online
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>"& Apply Online "<level 2 Sub Type>"
    Then Customer should be Redirected to new tab "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      | Loans        | Used Car Loan | Apply Online | https://uat-oneweb.bajajfinserv.in/used-car-finance-application-form |


#Loan Against Car
  Scenario Outline:  To verify Loan Against Car -  Overview
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>"& Apply Online "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      | Loans        | Loan Against Car | Overview |https://uat-oneweb.bajajfinserv.in/loan-against-car |


  Scenario Outline: To  Verify Used Car Loan -  FAQs
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>"& Apply Online "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      | Loans        | Loan Against Car | FAQs | https://uat-oneweb.bajajfinserv.in/loan-against-car-faqs |




  Scenario Outline:  To verify Car Loan Balance Transfer and Top-up -  Overview
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>"& Apply Online "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      | Loans        | Car Loan Balance Transfer and Top-up | Overview | https://uat-oneweb.bajajfinserv.in/car-loan-balance-transfer-and-top-up |


  Scenario Outline: To  Verify Car Loan Balance Transfer and Top-up -  FAQs
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>"& Apply Online "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      | Loans        | Car Loan Balance Transfer and Top-up | FAQs | https://uat-oneweb.bajajfinserv.in/car-loan-balance-transfer-and-top-up-faqs |


  Scenario Outline: HM_CC To verify Loan Against car  -  Apply Online
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>"& Apply Online "<level 2 Sub Type>"
    Then Customer should be Redirected to new tab "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      | Loans        | Loan Against Car | Apply Online | https://uat-oneweb.bajajfinserv.in/loan-against-car-application-form |




#  @run
#  Scenario: HM_LAS To Logout the Application
#    Given Logout the Application
#    Then close the Application