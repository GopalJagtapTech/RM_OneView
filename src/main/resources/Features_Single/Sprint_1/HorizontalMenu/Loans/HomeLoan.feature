@regression
Feature: Home Loan
#  @run
#  Scenario Outline: HM_GL To Login the Application
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User lands on Home Page
#    Examples:
#      | Mobile Number | Date     | Customer Type |
#      | 9890801661    | 26051982 | Individual    |
  @run
  Scenario Outline: HM_GL To verify Home Loan - Overview
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      | Loans        | Home Loan | Overview | https://uat-oneweb.bajajfinserv.in/home-loan |

  Scenario Outline: HM_GL To verify Home Loan - Eligibility Criteria
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      | Loans        | Home Loan | Eligibility Criteria | https://uat-oneweb.bajajfinserv.in/home-loan-eligibility-and-documents |

  Scenario Outline: HM_GL To verify Home Loan - Interest Rates, Fees and Charges
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      | Loans        | Home Loan | Interest Rates, Fees and Charges | https://uat-oneweb.bajajfinserv.in/home-loan-interest-rates |

  Scenario Outline: HM_GL To verify Home Loan - Balance Transfer
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      | Loans        | Home Loan | Balance Transfer | https://uat-oneweb.bajajfinserv.in/home-loan-balance-transfer |

  Scenario Outline: HM_GL To verify Home Loan - Top Up Loan
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      | Loans        | Home Loan | Top Up Loan | https://uat-oneweb.bajajfinserv.in/top-up-loan |

  Scenario Outline: HM_GL To verify Home Loan - Pradhan Mantri Awas Yojana
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      | Loans        | Home Loan | Pradhan Mantri Awas Yojana | https://uat-oneweb.bajajfinserv.in/home-loan-pradhan-mantri-awas-yojana |

  Scenario Outline: HM_GL To verify Home Loan - EMI Calculator
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      | Loans        | Home Loan | EMI Calculator | https://uat-oneweb.bajajfinserv.in/home-loan-emi-calculator |

  Scenario Outline: HM_GL To verify Home Loan -Eligibility Calculator
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      | Loans        | Home Loan | Eligibility Calculator | https://uat-oneweb.bajajfinserv.in/home-loan-eligibility-calculator |

  Scenario Outline: HM_GL To verify Home Loan - FAQs
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      | Loans        | Home Loan | FAQs | https://uat-oneweb.bajajfinserv.in/home-loan-faq-questions |

  Scenario Outline: HM_GL To verify Home Loan - Contact Us
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      | Loans        | Home Loan | Contact Us | https://uat-oneweb.bajajfinserv.in/home-loan-contact-details |

  Scenario Outline: HM_GL To verify Home Loan - Insights
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      | Loans        | Home Loan | Insights | https://uat-oneweb.bajajfinserv.in/insights/home-loan |

  Scenario Outline: HM_GL To verify Home Loan - Pay Home Loan EMIs
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      | Loans        | Home Loan | Pay Home Loan EMIs | https://uat-oneweb.bajajfinserv.in/home-loan-emi-payment |

  Scenario Outline: HM_GL To verify Home Loan - Home Buying Guide
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      | Loans        | Home Loan | Home Buying Guide | https://www.bajajhousingfinance.in/home-loan-balance-transfer |


  Scenario Outline: HM_CC To verify Home Loan -  Apply Online
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>"& Apply Online "<level 2 Sub Type>"
    Then Customer should be Redirected to new tab "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      | Loans        | Home Loan | Apply Online | https://uat-oneweb.bajajfinserv.in/home-loan-form |
