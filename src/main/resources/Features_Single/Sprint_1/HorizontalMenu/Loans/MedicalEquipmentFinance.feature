@regression

Feature: Medical Equipment Finance NTB

#  @run
#  Scenario Outline: HM_MEF To Login the Application
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User lands on Home Page
#    Examples:
#      | Mobile Number | Date     | Customer Type |
#      | 9890801661    | 26051982 | Individual    |
  @run
  Scenario Outline: HM_MEF To verify Medical Equipment Finance - Overview
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      | Loans        | Medical Equipment Finance | Overview | https://uat-oneweb.bajajfinserv.in/medical-equipment-finance |

  Scenario Outline: HM_MEF To verify Medical Equipment Finance - Features
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      | Loans        | Medical Equipment Finance| Features | https://uat-oneweb.bajajfinserv.in/medical-equipment-finance-features |


  Scenario Outline: HM_MEF To verify Medical Equipment Finance - Eligibility
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      | Loans        | Medical Equipment Finance| Eligibility | https://uat-oneweb.bajajfinserv.in/medical-equipment-finance-eligibility-and-documents |


  Scenario Outline: HM_MEF To verify Medical Equipment Finance - How to Apply
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      | Loans        | Medical Equipment Finance| How to Apply | https://uat-oneweb.bajajfinserv.in/how-to-apply-for-medical-equipment-finance |


  Scenario Outline: HM_MEF To verify Medical Equipment Finance - Fees & Charges
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      | Loans        | Medical Equipment Finance| Fees & Charges | https://uat-oneweb.bajajfinserv.in/medical-equipment-finance-fees-and-charges |



  Scenario Outline: verify Medical Equipment Finance -  Apply Online
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>"& Apply Online "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      | Loans        | Medical Equipment Finance | Apply Online | https://uat-oneweb.bajajfinserv.in/medical-equipment-online-apply-form |

#  @run
#  Scenario: HM_MEF To Logout the Application
#    Given Logout the Application
#    Then close the Application
