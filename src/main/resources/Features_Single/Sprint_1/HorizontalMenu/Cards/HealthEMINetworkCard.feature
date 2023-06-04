@regression

Feature: Health EMI Network Card NTB

  @run
  Scenario Outline: HM_HENC To verify Health EMI Network Card - Overview
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      | Cards        | Health EMI Network Card | Overview | https://uat-oneweb.bajajfinserv.in/health-emi-network-card |
  @run
  Scenario Outline: HM_HENC To verify Health EMI Network Card - Health EMI Network Card - Features and Benefits
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      | Cards        | Health EMI Network Card | Features and Benefits | https://uat-oneweb.bajajfinserv.in/health-emi-network-card-features |
  @run
  Scenario Outline: HM_HENC To verify Health EMI Network Card - Health EMI Card - Eligibility and Documents
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      | Cards        | Health EMI Network Card | Eligibility | https://uat-oneweb.bajajfinserv.in/health-emi-network-card-eligibility-and-documents |
  @run
  Scenario Outline: HM_HENC To verify Health EMI Network Card - Health EMI Network Card - Fees and Charges
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      | Cards        | Health EMI Network Card | Fees and Charges | https://uat-oneweb.bajajfinserv.in/health-emi-network-card-fees-and-charges |
  @run
  Scenario Outline: HM_HENC To verify Health EMI Network Card - Health EMI Network Card - How to Apply
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      | Cards        | Health EMI Network Card | How to Apply | https://uat-oneweb.bajajfinserv.in/how-to-apply-for-health-emi-network-card |

  @run
  Scenario Outline: HM_HENC To verify Health EMI Network Card - Health EMI Network Card - Contact Us
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      | Cards        | Health EMI Network Card | Contact Us | https://uat-oneweb.bajajfinserv.in/reach-us |



#  @run
#
#
#  Scenario: HM_HENC To Logout the Application
#    Given Logout the Application
#    Then close the Application