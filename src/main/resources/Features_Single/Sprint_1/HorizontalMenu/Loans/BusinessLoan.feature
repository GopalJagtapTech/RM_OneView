@regression
Feature: Business Loan NTB
#  @run
#  Scenario Outline: HM_BL To Login the Application
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User lands on Home Page
#    Examples:
#      | Mobile Number | Date     | Customer Type |
#      | 9890801661    | 26051982 | Individual    |

  Scenario Outline: Loans  & Business Loan  Unsecured  - Overview
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<Subheading>" and "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | Subheading | level 2 Sub Type |Expected Url|
      | Loans | Business Loan | Unsecured | Overview | https://uat-oneweb.bajajfinserv.in/business-loan |

  Scenario Outline: Loans  & Business Loan  Unsecured  - Eligibility Criteria
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<Subheading>" and "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | Subheading | level 2 Sub Type |Expected Url|
      | Loans | Business Loan | Unsecured | Eligibility Criteria | https://uat-oneweb.bajajfinserv.in/business-loan-eligibility-and-documents |


  Scenario Outline: Loans  & Business Loan  Unsecured  - Interest Rates, Fees and Charges
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<Subheading>" and "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | Subheading | level 2 Sub Type |Expected Url|
      | Loans | Business Loan | Unsecured | Interest Rates, Fees and Charges | https://uat-oneweb.bajajfinserv.in/business-loan-fees-and-interest-rates |


  Scenario Outline: Loans  & Business Loan  Unsecured  - EMI Calculator
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<Subheading>" and "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | Subheading | level 2 Sub Type |Expected Url|
      | Loans | Business Loan | Unsecured | EMI Calculator | https://uat-oneweb.bajajfinserv.in/business-loan-emi-calculator |


  Scenario Outline: Loans  & Business Loan  Unsecured  - GST Calculator
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<Subheading>" and "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | Subheading | level 2 Sub Type |Expected Url|
      | Loans | Business Loan | Unsecured | GST Calculator | https://uat-oneweb.bajajfinserv.in/gst-calculator |


  Scenario Outline: Loans  & Business Loan  Unsecured  - FAQs
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<Subheading>" and "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | Subheading | level 2 Sub Type |Expected Url|
      | Loans | Business Loan | Unsecured | FAQs | https://uat-oneweb.bajajfinserv.in/business-loan-faq-questions |


  Scenario Outline: Loans  & Business Loan  Unsecured  - Flexi Loan
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<Subheading>" and "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | Subheading | level 2 Sub Type |Expected Url|
      | Loans | Business Loan | Unsecured | Flexi Loan | https://uat-oneweb.bajajfinserv.in/flexi-loan-overview |



@SGN
  Scenario Outline: Loans  & Business Loan  Unsecured  - Manage your Loans
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<Subheading>" and "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | Subheading | level 2 Sub Type |Expected Url|
      | Loans | Business Loan | Unsecured | Manage your Loans | https://uat-oneweb.bajajfinserv.in/service-guides/manage-your-loans-in-my-account |

@SGN
  Scenario Outline: Loans  & Business Loan  Unsecured  - Manage your Flexi Loans
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<Subheading>" and "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | Subheading | level 2 Sub Type |Expected Url|
      | Loans | Business Loan | Unsecured | Manage your Flexi Loans | https://uat-oneweb.bajajfinserv.in/service-guides/manage-your-flexi-loans-in-my-account |



  Scenario Outline: Loans  & Business Loan  Secured  - Overview
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<Subheading>" and "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | Subheading | level 2 Sub Type |Expected Url|
      | Loans | Business Loan | Secured | Overview | https://uat-oneweb.bajajfinserv.in/secured-business-loan |

  Scenario Outline: Loans  & Business Loan  Secured  - Eligibility Criteria
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<Subheading>" and "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | Subheading | level 2 Sub Type |Expected Url|
      | Loans | Business Loan | Secured | Eligibility Criteria | https://uat-oneweb.bajajfinserv.in/secured-business-loan-eligibility-and-documents |

  Scenario Outline: Loans  & Business Loan  Secured  - Interest Rates, Fees and Charges
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<Subheading>" and "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | Subheading | level 2 Sub Type |Expected Url|
      | Loans | Business Loan | Secured | Interest Rates, Fees and Charges | https://uat-oneweb.bajajfinserv.in/secured-business-loan-fees-and-interest-rates |


  Scenario Outline: Loans  & Business Loan  Secured  - Apply Online
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<Subheading>" and "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | Subheading | level 2 Sub Type |Expected Url|
      | Loans | Business Loan | Secured | Apply Online | https://uat-oneweb.bajajfinserv.in/business-loan-secured-form |

  Scenario Outline: Loans  & Business Loan  Secured  - Flexi Loan
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<Subheading>" and "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | Subheading | level 2 Sub Type |Expected Url|
      | Loans | Business Loan | Secured | Flexi Loan | https://uat-oneweb.bajajfinserv.in/flexi-loan-overview |

@SGN
  Scenario Outline: Loans  & Business Loan  Secured  - Manage your Term loan
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<Subheading>" and "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | Subheading | level 2 Sub Type |Expected Url|
      | Loans | Business Loan | Secured | Manage your Term loan | https://uat-oneweb.bajajfinserv.in/service-guides/manage-your-loans-in-my-account |
@SGN
  Scenario Outline: Loans  & Business Loan  Secured  -Manage your Flexi Loan
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<Subheading>" and "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | Subheading | level 2 Sub Type |Expected Url|
      | Loans | Business Loan | Secured | Manage your Flexi Loan | https://uat-oneweb.bajajfinserv.in/service-guides/manage-your-flexi-loans-in-my-account |


  Scenario Outline: HM_CC To verify Business Loan -  Apply Online
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>"& Apply Online "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      | Loans        | Business Loan | Apply Online | https://uat-oneweb.bajajfinserv.in/business-loan-form |


#  @run
#  Scenario: HM_BL To Logout the Application
#    Given Logout the Application
#    Then close the Application
