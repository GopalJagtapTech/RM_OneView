Feature: Service Guide-Manage your Cards

  @runQWE
  Scenario Outline: HM_CC To verify Manage your Cards Insta EMI card
    When Customer Clicks on "<dropDownType>" Drop-down
    And Hover over "<Loan type>"
    And clicks on SubOptionType"<level 2 Sub Type>" under SubMenu"<Loan type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      |Services| Manage your Cards | Insta EMI card | https://uat-oneweb.bajajfinserv.in/service-guides/manage-your-insta-emi-card-in-my-account |

  Scenario Outline: HM_CC To verify Manage your Cards Health EMI Network Card
    When Customer Clicks on "<dropDownType>" Drop-down
    And Hover over "<Loan type>"
    And clicks on SubOptionType"<level 2 Sub Type>" under SubMenu"<Loan type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      |Services| Manage your Cards | Health EMI Network Card | https://uat-oneweb.bajajfinserv.in/service-guides/manage-your-health-emi-network-card-in-my-account |


