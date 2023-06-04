@regression
Feature: SDP
#  @run
#  Scenario Outline: HM_SDP To Login the Application
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User lands on Home Page
#    Examples:
#      | Mobile Number | Date     | Customer Type |
#      | 9890801661    | 26051982 | Individual    |
  @run
  Scenario Outline: Investments - Systematic Deposit Plan Invest
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>"& Apply Online "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      | Investments | Systematic Deposit Plan | Invest Now | https://uat-oneweb.bajajfinserv.in/fixed-deposit-application-form?ProductName=SDP |

  @run
  Scenario Outline: HM_SDP To verify SDP - Overview
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType     | Loan type    | level 2 Sub Type          | Expected Url                                          |
      | Investments | Systematic Deposit Plan | Overview | https://uat-oneweb.bajajfinserv.in/investments/systematic-deposit-plan |

  Scenario Outline: HM_SDP To verify SDP - Features & benefits
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType     | Loan type    | level 2 Sub Type          | Expected Url                                          |
      | Investments | Systematic Deposit Plan | Features & Benefits | https://uat-oneweb.bajajfinserv.in/investments/systematic-deposit-plan-features-and-benefits |

  Scenario Outline: HM_SDP To verify SDP - SDP Interest Rates
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType     | Loan type    | level 2 Sub Type          | Expected Url                                          |
      | Investments | Systematic Deposit Plan | SDP Interest Rates | https://uat-oneweb.bajajfinserv.in/investments/systematic-deposit-plan-interest-rates |

  Scenario Outline: HM_SDP To verify SDP - SDP Calculators
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType     | Loan type    | level 2 Sub Type          | Expected Url                                          |
      | Investments | Systematic Deposit Plan | SDP Calculator | https://uat-oneweb.bajajfinserv.in/investments/systematic-deposit-calculator |

  Scenario Outline: HM_SDP To verify SDP - Eligibility and Documents
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType     | Loan type    | level 2 Sub Type          | Expected Url                                          |
      | Investments | Systematic Deposit Plan | Eligibility and Documents | https://uat-oneweb.bajajfinserv.in/investments/systematic-deposit-plan-eligibility-and-documents |

  Scenario Outline: HM_SDP To verify SDP - How to Invest
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType     | Loan type    | level 2 Sub Type          | Expected Url                                          |
      | Investments | Systematic Deposit Plan | How to Invest | https://uat-oneweb.bajajfinserv.in/investments/fixed-deposit-how-to-invest-in-sdp |

  Scenario Outline: HM_SDP To verify SDP - Faqs
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType     | Loan type    | level 2 Sub Type          | Expected Url                                          |
      | Investments | Systematic Deposit Plan | FAQs | https://uat-oneweb.bajajfinserv.in/investments/systematic-deposit-plan-frequently-asked-questions |

  @run
Scenario Outline: HM_SDP To verify SDP - Contact US
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType     | Loan type    | level 2 Sub Type          | Expected Url                                          |
      | Investments | Systematic Deposit Plan | Contact Us | https://uat-oneweb.bajajfinserv.in/reach-us |

#  @run
#  Scenario: HM_SDP To Logout the Application
#    Given Logout the Application
#    Then close the Application