@regression

@SingleK
Feature: Raise a Request

  @runQWE
  Scenario Outline: HM_CC To verify Raise a Request  OverView Criteria
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      |Service Guides| Raise a Request | Overview | https://uat-oneweb.bajajfinserv.in/service-guides/raise-a-request-in-my-account |

  Scenario Outline: HM_CC To verify Raise a Request  Raise a Request
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      |Service Guides| Raise a Request | Raise a Request | https://uat-oneweb.bajajfinserv.in/service-guides/raise-your-queries-in-my-account |


  Scenario Outline: HM_CC To verify Raise a Request  Follow-up on an Open Request
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      |Service Guides| Raise a Request | Follow-up on an Open Request | https://uat-oneweb.bajajfinserv.in/service-guides/follow-up-on-an-open-request-in-my-account |


  Scenario Outline: HM_CC To verify Raise a Request  Reopen a Closed Request
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      |Service Guides| Raise a Request | Reopen a Closed Request | https://uat-oneweb.bajajfinserv.in/service-guides/reopen-your-closed-in-my-account |


  Scenario Outline: HM_CC To verify All Service Guides
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over menu "<Loan type>"
    And clicks on single "<dropDownType>" and "<Loan type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | Expected Url                      |
      | Service Guides | All Service Guides |  https://uat-oneweb.bajajfinserv.in/service-guides |

