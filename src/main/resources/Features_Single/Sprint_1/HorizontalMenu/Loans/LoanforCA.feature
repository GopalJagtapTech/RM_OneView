@regression
Feature: Loan For CA NTB

#  @run
#  Scenario Outline: HM_LCA To Login the Application
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User lands on Home Page
#    Examples:
#      | Mobile Number | Date     | Customer Type |
#      | 9890801661    | 26051982 | Individual    |
  @run
  Scenario Outline: HM_LCA To verify Loan for CA - Overview
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      | Loans        | Loans for CAs | Overview | https://uat-oneweb.bajajfinserv.in/chartered-accountant-loan |
  @run
  Scenario Outline: HM_LCA To verify Loan for CA - Eligibility Criteria
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      | Loans        | Loans for CAs | Eligibility Criteria | https://uat-oneweb.bajajfinserv.in/chartered-accountant-loan-eligibility-and-documents |
  @run
  Scenario Outline: HM_LCA To verify Loan for CA - Interest Rates, Fees and Charges
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      | Loans        | Loans for CAs | Interest Rates, Fees and Charges  | https://uat-oneweb.bajajfinserv.in/chartered-accountant-loan-fees-and-interest-rates |

  @run
  Scenario Outline: HM_LCA To verify Loan for CA - Flexi Loan
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      | Loans        | Loans for CAs | Flexi Loan | https://uat-oneweb.bajajfinserv.in/flexi-loan-overview |



  @SGN
  Scenario Outline: HM_LCA To verify Loan for CA - Manage your Loans
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      | Loans        | Loans for CAs | Manage your Loans | https://uat-oneweb.bajajfinserv.in/service-guides/manage-your-loans-in-my-account |

  @SGN
  Scenario Outline: HM_LCA To verify Loan for CA - Manage your Flexi Loans
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      | Loans        | Loans for CAs | Manage your Flexi Loans | https://uat-oneweb.bajajfinserv.in/service-guides/manage-your-flexi-loans-in-my-account |



  Scenario Outline: verify To verify Loan for CA -  Apply Online
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>"& Apply Online "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      | Loans        | Loans for CAs | Apply Online | https://uat-oneweb.bajajfinserv.in/chartered-accountant-loan-application-form |



#
#  @run
#  Scenario Outline: HM_LCA To verify Loan for CA - Business Loan For CA
#
#    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
#    And clicks on "<Loan type>","<level 2 Sub Type>"
#    Then Customer should be Redirected to "<Expected Url>"
#    Examples:
#      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
#      | Loans        | Loan for CA| Business Loan For CA  |  https://www.bajajfinserv.in/business-loan-for-chartered-accountants  |
#
#  @run
#  Scenario Outline: HM_LCA To verify Loan for CA - LAP For CA
#
#    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
#    And clicks on "<Loan type>","<level 2 Sub Type>"
#    Then Customer should be Redirected to "<Expected Url>"
#    Examples:
#      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
#      | Loans        | Loan for CA| LAP For CA  | https://www.bajajfinserv.in/loan-against-property-chartered-accountants |

#  @run
#  Scenario: HM_LCA To Logout the Application
#    Given Logout the Application
#    Then close the Application
