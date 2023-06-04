Feature: Service Guide-Repay Your Loans

  @runQWE
  Scenario Outline: HM_CC To verify repay Your loans  Overview
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      |Service Guides| Repay your Loans | Overview | https://uat-oneweb.bajajfinserv.in/service-guides/repay-your-loan-emis-in-my-account |

  @runQWE
  Scenario Outline: HM_CC To verify repay Your loans  Clear Overdue EMIs
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      |Service Guides| Repay your Loans | Clear Overdue EMIs | https://uat-oneweb.bajajfinserv.in/service-guides/clear-your-overdue-emis-in-my-account |


  @runQWE
  Scenario Outline: HM_CC To verify repay Your loans  Pay Advance EMIs
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      |Service Guides| Repay your Loans | Pay Advance EMIs | https://uat-oneweb.bajajfinserv.in/service-guides/pay-advance-emi-in-my-account |


  @runQWE
  Scenario Outline: HM_CC To verify repay Your loans  Part-prepay your Loan
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      |Service Guides| Repay your Loans | Part-prepay your Loan | https://uat-oneweb.bajajfinserv.in/service-guides/part-prepay-your-loan-in-my-account |


  @runQWE
  Scenario Outline: HM_CC To verify repay Your loans  Foreclose your Loan
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      |Service Guides| Repay your Loans | Foreclose your Loan | https://uat-oneweb.bajajfinserv.in/service-guides/foreclose-your-loan-in-my-account |