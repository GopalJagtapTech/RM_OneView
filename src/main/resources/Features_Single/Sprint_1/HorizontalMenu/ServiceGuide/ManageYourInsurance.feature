Feature: Service Guide-Manage your Insurance

  @runQWE
  Scenario Outline: HM_CC To verify Manage your Insurance-Overview
    When Customer Clicks on "<dropDownType>" Drop-down
    And Hover over "<Loan type>"
    And clicks on SubOptionType"<level 2 Sub Type>" under SubMenu"<Loan type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      | Services| Manage your Insurance | Overview | https://uat-oneweb.bajajfinserv.in/service-guides/manage-your-insurance-policy-in-my-account|


  @runQWE
  Scenario Outline: HM_CC To verify Manage your Insurance-Policy Details
    When Customer Clicks on "<dropDownType>" Drop-down
    And Hover over "<Loan type>"
    And clicks on SubOptionType"<level 2 Sub Type>" under SubMenu"<Loan type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      | Services| Manage your Insurance | Policy Details | https://uat-oneweb.bajajfinserv.in/service-guides/manage-your-insurance-policy-details-in-my-account|

  @runQWE
  Scenario Outline: HM_CC To verify Manage your Insurance-Renew your Policy
    When Customer Clicks on "<dropDownType>" Drop-down
    And Hover over "<Loan type>"
    And clicks on SubOptionType"<level 2 Sub Type>" under SubMenu"<Loan type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      | Services| Manage your Insurance | Renew your Policy | https://uat-oneweb.bajajfinserv.in/service-guides/renew-your-insurance-policy-in-my-account|

  @runQWE
  Scenario Outline: HM_CC To verify Manage your Insurance-Claim your Policy
    When Customer Clicks on "<dropDownType>" Drop-down
    And Hover over "<Loan type>"
    And clicks on SubOptionType"<level 2 Sub Type>" under SubMenu"<Loan type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      | Services| Manage your Insurance | Claim your Policy | https://uat-oneweb.bajajfinserv.in/service-guides/claim-your-insurance-in-my-account|

  @runQWE
  Scenario Outline: HM_CC To verify Manage your Insurance-Cancel your Policy
    When Customer Clicks on "<dropDownType>" Drop-down
    And Hover over "<Loan type>"
    And clicks on SubOptionType"<level 2 Sub Type>" under SubMenu"<Loan type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      | Services| Manage your Insurance | Cancel your Policy | https://uat-oneweb.bajajfinserv.in/service-guides/cancel-your-insurance-policy-in-my-account|

  @runQWE
  Scenario Outline: HM_CC To verify Manage your Insurance-Surrender your Policy
    When Customer Clicks on "<dropDownType>" Drop-down
    And Hover over "<Loan type>"
    And clicks on SubOptionType"<level 2 Sub Type>" under SubMenu"<Loan type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      | Services| Manage your Insurance | Surrender your Policy | https://uat-oneweb.bajajfinserv.in/service-guides/surrender-your-insurance-policy-in-my-account|

