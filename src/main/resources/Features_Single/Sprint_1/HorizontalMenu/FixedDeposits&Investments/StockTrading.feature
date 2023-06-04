
@regression
Feature: Fixed Deposit- Stock Trading

    @run
  Scenario Outline: Investments To verify Stock Trading - Start Trading
  When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
  And clicks on "<Loan type>"& Apply Online "<level 2 Sub Type>"
  Then Customer should be Redirected to "<Expected Url>"
  Examples:
  | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
  | Investments | Stock Trading | Start Trading | https://bfsltrade.bajajfinservsecurities.in/base/login |

  @run
  Scenario Outline: Investments To verify Stock Trading - Open Demat Acc
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>"& Apply Online "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      | Investments | Stock Trading | Open Demat Acc | https://ekyc2.bajajfinservsecurities.in/ekyc/ |

  @run
  Scenario Outline: Investments To verify Stock Trading - Overview
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>"& Apply Online "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      | Investments | Stock Trading | Overview | https://uat-oneweb.bajajfinserv.in/investments/stock-and-trading |

  @run
  Scenario Outline: Investments To verify Stock Trading - FAQs
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>"& Apply Online "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      | Investments | Stock Trading | FAQs | https://samadhan.bajajfinservsecurities.in/ |

  @run
  Scenario Outline: Investments To verify Stock Trading - Contact Us
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>"& Apply Online "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      | Investments | Stock Trading | Contact Us | https://www.bajajfinservsecurities.in/contact-us |
