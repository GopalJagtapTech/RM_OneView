Feature: Service Guide-Manage your Mandate Overview

  @runQWE
  Scenario Outline: HM_CC To verify Manage your Mandate Overview
    Given User is on Login Page
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      |Service Guides| Manage your Mandate | Overview | https://uat-oneweb.bajajfinserv.in/service-guides/manage-your-mandate-in-my-account |

  Scenario Outline: HM_CC To verify Manage your Mandate Register Mandate
    Given User is on Login Page
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      |Service Guides| Manage your Mandate | Register Mandate | https://uat-oneweb.bajajfinserv.in/service-guides/register-your-mandate-in-my-account |

  Scenario Outline: HM_CC To verify Manage your Mandate Change Mandate
    Given User is on Login Page
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      |Service Guides| Manage your Mandate | Change Mandate | https://uat-oneweb.bajajfinserv.in/service-guides/change-your-mandate-in-my-account |
