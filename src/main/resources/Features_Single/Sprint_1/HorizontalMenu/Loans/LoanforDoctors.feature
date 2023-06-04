@regression
Feature: Loan for Doctors ETB/NTB/PTB
#  @run
#  Scenario Outline: HM_LD To Login the Application
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User lands on Home Page
#    Examples:
#      | Mobile Number | Date     | Customer Type |
#      | 9890801661    | 26051982 | Individual    |
  @run
  Scenario Outline: HM_LD To verify Loan for Doctors -  Overview
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<subMenu type>"
    And clicks on "<subMenu type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | subMenu type     | level 2 Sub Type        | Expected Url                            |
      | Loans        | Loans for Doctors | Overview | https://uat-oneweb.bajajfinserv.in/doctor-loan |
  @run
  Scenario Outline: HM_LD To verify Loan for Doctors - Eligibility Criteria
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<subMenu type>"
    And clicks on "<subMenu type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | subMenu type     | level 2 Sub Type        | Expected Url                                                      |
      | Loans        | Loans for Doctors | Eligibility Criteria | https://uat-oneweb.bajajfinserv.in/doctor-loan-eligibility-and-documents |
  @run
  Scenario Outline: HM_LD To verify Loan for Doctors -  Interest Rates, Fees and Charges
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<subMenu type>"
    And clicks on "<subMenu type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | subMenu type     | level 2 Sub Type          | Expected Url                                                    |
      | Loans        | Loans for Doctors | Interest Rates, Fees and Charges | https://uat-oneweb.bajajfinserv.in/doctor-loan-fees-and-interest-rates |
  @run
  Scenario Outline: HM_LD To verify Loan for Doctors - Flexi Loan
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<subMenu type>"
    And clicks on "<subMenu type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | subMenu type     | level 2 Sub Type       | Expected Url                                           |
      | Loans        | Loans for Doctors | Flexi Loan | https://uat-oneweb.bajajfinserv.in/flexi-loan-overview |
  @run
  Scenario Outline: HM_LD To verify Loan for Doctors -  EMI Calculator
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<subMenu type>"
    And clicks on "<subMenu type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | subMenu type     | level 2 Sub Type          | Expected Url                                          |
      | Loans        | Loans for Doctors | EMI Calculator | https://uat-oneweb.bajajfinserv.in/doctor-loan-emi-calculator |


  @SGN
  Scenario Outline: HM_LD To verify Loan for Doctors -  Manage your Loans
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<subMenu type>"
    And clicks on "<subMenu type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | subMenu type     | level 2 Sub Type          | Expected Url                                          |
      | Loans        | Loans for Doctors | Manage your Loans | https://uat-oneweb.bajajfinserv.in/service-guides/manage-your-loans-in-my-account |


  @SGN
  Scenario Outline: HM_LD To verify Loan for Doctors -  Manage your Flexi Loans
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<subMenu type>"
    And clicks on "<subMenu type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | subMenu type     | level 2 Sub Type          | Expected Url                                          |
      | Loans        | Loans for Doctors | Manage your Flexi Loans | https://uat-oneweb.bajajfinserv.in/service-guides/manage-your-flexi-loans-in-my-account |


  Scenario Outline: HM_CC To Loan for Doctors -  Apply Online
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>"& Apply Online "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      | Loans        | Loans for Doctors | Apply Online | https://uat-oneweb.bajajfinserv.in/apply-for-doctor-loan |


#  #@failed
#  @run
#  Scenario Outline: HM_LD To verify Loan for Doctors - Business Loan for Doctors
#    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<subMenu type>"
#    And clicks on "<subMenu type>","<level 2 Sub Type>"
#    Then Customer should be Redirected to "<Expected Url>"
#    Examples:
#      | dropDownType | subMenu type     | level 2 Sub Type          | Expected Url                                          |
#      | Loans        | Loan for Doctors | Business Loan for Doctors | https://www.bajajfinserv.in/business-loan-for-doctors |
#
#  @run
#  Scenario Outline: HM_LD To verify Loan for Doctors - Loan Against Property For Doctors
#    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<subMenu type>"
#    And clicks on "<subMenu type>","<level 2 Sub Type>"
#    Then Customer should be Redirected to "<Expected Url>"
#    Examples:
#      | dropDownType | subMenu type     | level 2 Sub Type                  | Expected Url                                                  |
#      | Loans        | Loan for Doctors | Loan Against Property For Doctors | https://www.bajajfinserv.in/loan-against-property-for-doctors |
#  @run
#  Scenario Outline: HM_LD To verify Loan for Doctors - Medical Practice Loan
#    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<subMenu type>"
#    And clicks on "<subMenu type>","<level 2 Sub Type>"
#    Then Customer should be Redirected to "<Expected Url>"
#    Examples:
#      | dropDownType | subMenu type     | level 2 Sub Type      | Expected Url                                       |
#      | Loans        | Loan for Doctors | Medical Practice Loan | https://www.bajajfinserv.in/medical-practice-loans |
#  @run
#  Scenario Outline: HM_LD To verify Loan for Doctors - Indemnity Insurance
#    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<subMenu type>"
#    And clicks on "<subMenu type>","<level 2 Sub Type>"
#    Then Customer should be Redirected to "<Expected Url>"
#    Examples:
#      | dropDownType | subMenu type     | level 2 Sub Type    | Expected Url                                                                    |
#      | Loans        | Loan for Doctors | Indemnity Insurance | https://www.bajajfinserv.in/professional-indemnity-insurance-policy-for-doctors |
#  @run
#  Scenario: HM_LD To Logout the Application
#    Given Logout the Application
#    Then close the Application
