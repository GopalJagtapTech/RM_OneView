Feature: Login- Horizontal Menu

  @run
  Scenario Outline: HM_CC Insurance   - Manage your Insurance
    Given User is on Login Page
    And Closes the SignIn Popup
    When Customer Clicks on "<dropDownType>" Drop-down
    And clicks on single "<dropDownType>" and "<Loan type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type             | Expected Url                                                                                 |
      | Insurance    | Manage your Insurance | https://uat-oneweb.bajajfinserv.in/service-guides/manage-your-insurance-policy-in-my-account |

  Scenario Outline: HM_CC Investments  - Systematic Deposit Plan - Manage your Systematic Deposit Plan
    Given User is on Login Page
    And Closes the SignIn Popup
    When Customer Clicks on "<dropDownType>" Drop-down
    And Hover over "<Loan type>"
    And clicks on SubOptionType"<level 2 Sub Type>" under SubMenu"<Loan type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type               | level 2 Sub Type                    | Expected Url                                                                                        |
      | Investments  | Systematic Deposit Plan | Manage your Systematic Deposit Plan | https://uat-oneweb.bajajfinserv.in/service-guides/manage-your-systematic-deposit-plan-in-my-account |

  Scenario Outline: HM_CC Cards - Manage your Health EMI Network Card
    Given User is on Login Page
    And Closes the SignIn Popup
    When Customer Clicks on "<dropDownType>" Drop-down
    And Hover over "<Loan type>"
    And clicks on SubOptionType"<level 2 Sub Type>" under SubMenu"<Loan type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type               | level 2 Sub Type                    | Expected Url                                                                                        |
      | Cards        | Health EMI Network Card | Manage your Health EMI Network Card | https://uat-oneweb.bajajfinserv.in/service-guides/manage-your-health-emi-network-card-in-my-account |

