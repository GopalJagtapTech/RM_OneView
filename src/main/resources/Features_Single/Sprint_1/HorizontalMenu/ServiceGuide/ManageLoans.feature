Feature: Service Guide-Manage your Loans

  @runQWE
  Scenario Outline: HM_CC To verify Manage your Loans Overview
    When Customer Clicks on "<dropDownType>" Drop-down
    And Hover over "<Loan type>"
    And clicks on SubOptionType"<level 2 Sub Type>" under SubMenu"<Loan type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type         | level 2 Sub Type | Expected Url                                                                      |
      | Services     | Manage your Loans | Overview         | https://uat-oneweb.bajajfinserv.in/service-guides/manage-your-loans-in-my-account |

  Scenario Outline: HM_CC To verify Manage your Loans Consumer Durable Loans
    When Customer Clicks on "<dropDownType>" Drop-down
    And Hover over "<Loan type>"
    And clicks on SubOptionType"<level 2 Sub Type>" under SubMenu"<Loan type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type         | level 2 Sub Type       | Expected Url                                                                                       |
      | Services     | Manage your Loans | Consumer Durable Loans | https://uat-oneweb.bajajfinserv.in/service-guides/manage-your-consumer-durable-loans-in-my-account |


  Scenario Outline: HM_CC To verify Manage your Loans Loan Flexi Loans
    When Customer Clicks on "<dropDownType>" Drop-down
    And Hover over "<Loan type>"
    And clicks on SubOptionType"<level 2 Sub Type>" under SubMenu"<Loan type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type         | level 2 Sub Type | Expected Url                                                                            |
      | Services     | Manage your Loans | Flexi Loans      | https://uat-oneweb.bajajfinserv.in/service-guides/manage-your-flexi-loans-in-my-account |


  Scenario Outline: HM_CC To verify Manage your Loans- Loan Against Fixed Deposit
    When Customer Clicks on "<dropDownType>" Drop-down
    And Hover over "<Loan type>"
    And clicks on SubOptionType"<level 2 Sub Type>" under SubMenu"<Loan type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type         | level 2 Sub Type           | Expected Url                                                                                           |
      | Services     | Manage your Loans | Loan Against Fixed Deposit | https://uat-oneweb.bajajfinserv.in/service-guides/manage-your-loan-against-fixed-deposit-in-my-account |

