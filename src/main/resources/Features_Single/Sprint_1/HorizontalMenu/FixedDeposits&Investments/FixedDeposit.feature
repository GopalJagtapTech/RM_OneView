@regression
Feature: Fixed Deposit


  @apply
  Scenario Outline: HM_FD To verify Fixed Deposit - Invest Online
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>"& Apply Online "<level 2 Sub Type>"
    Then Customer should be Redirected to new tab "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      | Investments | Fixed Deposit | Open FD | https://www.bajajfinserv.in/fixed-deposit-application-form?ProductName=FD |

  @run
  Scenario Outline: HM_FD To verify Fixed Deposit - Invest Online
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType     | Loan type    | level 2 Sub Type          | Expected Url                                          |
      | Investments | Fixed Deposit | Overview | https://uat-oneweb.bajajfinserv.in/fixed-deposit |
  @run
Scenario Outline: HM_FD To verify Fixed Deposit - Features and Benefits
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType     | Loan type    | level 2 Sub Type          | Expected Url                                          |
      | Investments | Fixed Deposit | Features & benefits | https://uat-oneweb.bajajfinserv.in/investments/fixed-deposit-features-and-benefits |
  @run
Scenario Outline: HM_FD To verify Fixed Deposit - Fixed Deposit Calculator
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType     | Loan type    | level 2 Sub Type          | Expected Url                                          |
      | Investments | Fixed Deposit | FD Calculator | https://uat-oneweb.bajajfinserv.in/fixed-deposit-calculators |
  @run
Scenario Outline: HM_FD To verify Fixed Deposit - FD Interest Rates
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType     | Loan type    | level 2 Sub Type          | Expected Url                                          |
      | Investments | Fixed Deposit | FD Interest Rates | https://uat-oneweb.bajajfinserv.in/fixed-deposit-fees-and-interest-rates |
  @run @404
Scenario Outline: HM_FD To verify Fixed Deposit - Senior Citizen FD
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType     | Loan type    | level 2 Sub Type          | Expected Url                                          |
      | Investments | Fixed Deposit | Eligibility and Documents | https://uat-oneweb.bajajfinserv.in/investments/fixed-deposit-eligibility-and-documents |
  @run
Scenario Outline: HM_FD To verify Fixed Deposit - FD Eligibility and Required Documents
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType     | Loan type    | level 2 Sub Type          | Expected Url                                          |
      | Investments | Fixed Deposit | How to Invest | https://uat-oneweb.bajajfinserv.in/how-to-apply-for-fixed-deposit |
  @run
Scenario Outline: HM_FD To verify Fixed Deposit - FAQs
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType     | Loan type    | level 2 Sub Type          | Expected Url                                          |
      | Investments | Fixed Deposit | FAQs | https://uat-oneweb.bajajfinserv.in/investments/fixed-deposit-frequently-asked-questions |
  @run
Scenario Outline: HM_FD To verify Fixed Deposit - FD Partner Portal
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType     | Loan type    | level 2 Sub Type          | Expected Url                                          |
      | Investments | Fixed Deposit | How to Invest | https://uat-oneweb.bajajfinserv.in/how-to-apply-for-fixed-deposit |
@SGN
  Scenario Outline: HM_FD To verify Fixed Deposit - Manage your FD
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType     | Loan type    | level 2 Sub Type          | Expected Url                                          |
      | Investments | Fixed Deposit | Manage your FD | https://uat-oneweb.bajajfinserv.in/service-guides/manage-your-fixed-deposits-in-my-account |

  @run
Scenario Outline: HM_FD To verify Fixed Deposit - Become our Fixed Deposit Partner
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType     | Loan type    | level 2 Sub Type          | Expected Url                                          |
      | Investments | Fixed Deposit | Contact Us | https://uat-oneweb.bajajfinserv.in/reach-us |

  Scenario Outline: HM To verify All Investments
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over menu "<Loan type>"
    And clicks on single "<dropDownType>" and "<Loan type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | Expected Url                      |
      | Investments | All Investments |  https://uat-oneweb.bajajfinserv.in/investments |


#  @run
#  Scenario: HM_FD To Logout the Application
#    Given Logout the Application
#    Then close the Application