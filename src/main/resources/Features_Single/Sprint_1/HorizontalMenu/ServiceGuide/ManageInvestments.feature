Feature: Service Guide-Manage your Investments

  @runQWE
  Scenario Outline: HM_CC To verify Manage your Investments - Fixed Deposit
    When Customer Clicks on "<dropDownType>" Drop-down
    And Hover over "<Loan type>"
    And clicks on SubOptionType"<level 2 Sub Type>" under SubMenu"<Loan type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type               | level 2 Sub Type | Expected Url                                                                               |
      | Services     | Manage your Investments | Fixed Deposit    | https://uat-oneweb.bajajfinserv.in/service-guides/manage-your-fixed-deposits-in-my-account |

  Scenario Outline: HM_CC To verify Manage your Investments - Systematic Deposit Plan
    When Customer Clicks on "<dropDownType>" Drop-down
    And Hover over "<Loan type>"
    And clicks on SubOptionType"<level 2 Sub Type>" under SubMenu"<Loan type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type               | level 2 Sub Type        | Expected Url                                                                                        |
      | Services     | Manage your Investments | Systematic Deposit Plan | https://uat-oneweb.bajajfinserv.in/service-guides/manage-your-systematic-deposit-plan-in-my-account |

