Feature: Service Guide-Manage your Mandate

  @runQWE
  Scenario Outline: HM_CC To verify Manage your Mandate Overview
    When Customer Clicks on "<dropDownType>" Drop-down
    And Hover over "<Loan type>"
    And clicks on SubOptionType"<level 2 Sub Type>" under SubMenu"<Loan type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      |Services| Manage your Mandate | Overview | https://uat-oneweb.bajajfinserv.in/service-guides/manage-your-mandate-in-my-account |

  Scenario Outline: HM_CC To verify Manage your Mandate Register Mandate
    When Customer Clicks on "<dropDownType>" Drop-down
    And Hover over "<Loan type>"
    And clicks on SubOptionType"<level 2 Sub Type>" under SubMenu"<Loan type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      |Services| Manage your Mandate | Register Mandate | https://uat-oneweb.bajajfinserv.in/service-guides/register-your-mandate-in-my-account |

  Scenario Outline: HM_CC To verify Manage your Mandate Change Mandate
    When Customer Clicks on "<dropDownType>" Drop-down
    And Hover over "<Loan type>"
    And clicks on SubOptionType"<level 2 Sub Type>" under SubMenu"<Loan type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      |Services| Manage your Mandate | Change Mandate | https://uat-oneweb.bajajfinserv.in/service-guides/change-your-mandate-in-my-account |
