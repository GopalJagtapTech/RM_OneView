Feature: Service Guide-Manage your profile

  @runQWE
  Scenario Outline: HM_CC To verify Manage your Mandate Overview
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      |Service Guides| Manage your Mandate | Overview | https://uat-oneweb.bajajfinserv.in/service-guides/manage-your-my-account-profile |

  Scenario Outline: HM_CC To verify Manage your Mandate Register Mandate
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      |Service Guides| Manage your Mandate | Register Mandate | https://uat-oneweb.bajajfinserv.in/service-guides/manage-your-my-account-profile |

  Scenario Outline: HM_CC To verify Manage your Mandate Overview
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      |Service Guides| Manage your Mandate | Change Mandate | https://uat-oneweb.bajajfinserv.in/service-guides/manage-your-my-account-profile |
