@regression
Feature: Personal Loan
#@run
#  Scenario Outline: HM_PL To Login the Application
#  Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#  When User lands on Home Page
#  Examples:
#    | Mobile Number | Date     | Customer Type |
#    | 9890801661    | 26051982 | Individual    |

  @run
  Scenario Outline: HM_PL To verify PersonalLoan - About Personal Loan -Overview
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type     | level 2 Sub Type    | Expected Url                              |
      | Loans        | Personal Loan | Overview | https://uat-oneweb.bajajfinserv.in/personal-loan |
  @run
  Scenario Outline: HM_PL To verify PersonalLoan - Features and Benefits
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type     | level 2 Sub Type             | Expected Url                                             |
      | Loans        | Personal Loan | Features and Benefits | https://uat-oneweb.bajajfinserv.in/personal-loan-features |
  @run
  Scenario Outline: HM_PL To verify PersonalLoan - Eligibility
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type     | level 2 Sub Type                     | Expected Url                                                     |
      | Loans        | Personal Loan | Eligibility | https://uat-oneweb.bajajfinserv.in/personal-loan-eligibility-and-document |
  @run
  Scenario Outline: HM_PL To verify PersonalLoan - Calculator
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type     | level 2 Sub Type            | Expected Url                                                                 |
      | Loans        | Personal Loan | Calculator | https://uat-oneweb.bajajfinserv.in/personal-loan-emi-calculator |

  @run
  Scenario Outline: HM_PL To verify PersonalLoan - Fees and Charges
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type     | level 2 Sub Type    | Expected Url                            |
      | Loans        | Personal Loan | Fees and Charges | https://uat-oneweb.bajajfinserv.in/personal-loan-fees-and-charges |
  @run
  Scenario Outline: HM_PL To verify PersonalLoan - How to Apply
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type     | level 2 Sub Type               | Expected Url                                                       |
      | Loans        | Personal Loan | How to Apply |https://uat-oneweb.bajajfinserv.in/how-to-apply-for-personal-loan |
  @run
  Scenario Outline: HM_PL To verify PersonalLoan - FAQs
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type     | level 2 Sub Type      | Expected Url                                      |
      | Loans        | Personal Loan | FAQs | https://uat-oneweb.bajajfinserv.in/personal-loan-faq-questions |



  @SGN
  Scenario Outline: HM_PL To verify PersonalLoan - Manage your Loans
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type     | level 2 Sub Type       | Expected Url                                       |
      | Loans        | Personal Loan | Manage your Loans | https://uat-oneweb.bajajfinserv.in/service-guides/manage-your-loans-in-my-account |

  @SGN
  Scenario Outline: HM_PL To verify PersonalLoan - Manage your Flexi  Loans
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type     | level 2 Sub Type       | Expected Url                                       |
      | Loans        | Personal Loan | Manage your Flexi Loans | https://uat-oneweb.bajajfinserv.in/service-guides/manage-your-flexi-loans-in-my-account |



  @run
  Scenario Outline: HM_PL To verify PersonalLoan - Contact Us
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type     | level 2 Sub Type       | Expected Url                                       |
      | Loans        | Personal Loan | Contact Us | https://uat-oneweb.bajajfinserv.in/personal-loan-contact-details |
  @apply
  Scenario Outline: HM_CC To verify Personal Loan -  Apply Online
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>"& Apply Online "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      | Loans        | Personal Loan | Apply Online | https://uat-oneweb.bajajfinserv.in/personal-loan |

  Scenario Outline: HM_CC ToPersonal Loan d - All Loans
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over menu "<Loan type>"
    And clicks on single "<dropDownType>" and "<Loan type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | Expected Url                      |
      | Loans | All Loans | https://uat-oneweb.bajajfinserv.in/loans |

#  @run
#  Scenario Outline: HM_PL To verify PersonalLoan - FAQs
#    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
#    And clicks on "<Loan type>","<level 2 Sub Type>"
#    Then Customer should be Redirected to "<Expected Url>"
#    Examples:
#      | dropDownType | Loan type     | level 2 Sub Type | Expected Url                                            |
#      | Loans        | Personal Loan | FAQs             | https://www.bajajfinserv.in/personal-loan-faq-questions |
#  @run
#  Scenario Outline: HM_PL To verify PersonalLoan - Contact Us
#    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
#    And clicks on "<Loan type>","<level 2 Sub Type>"
#    Then Customer should be Redirected to "<Expected Url>"
#    Examples:
#      | dropDownType | Loan type     | level 2 Sub Type | Expected Url                                              |
#      | Loans        | Personal Loan | Contact Us       | https://www.bajajfinserv.in/personal-loan-contact-details |
#  @run
#  Scenario Outline: HM_PL To verify PersonalLoan - Wedding Loan
#    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
#    And clicks on "<Loan type>","<level 2 Sub Type>"
#    Then Customer should be Redirected to "<Expected Url>"
#    Examples:
#      | dropDownType | Loan type     | level 2 Sub Type | Expected Url                                          |
#      | Loans        | Personal Loan | Wedding Loan     | https://www.bajajfinserv.in/personal-loan-for-wedding |
#  @run
#  Scenario Outline: HM_PL To verify PersonalLoan - Travel Loan
#    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
#    And clicks on "<Loan type>","<level 2 Sub Type>"
#    Then Customer should be Redirected to "<Expected Url>"
#    Examples:
#      | dropDownType | Loan type     | level 2 Sub Type | Expected Url                                         |
#      | Loans        | Personal Loan | Travel Loan      | https://www.bajajfinserv.in/personal-loan-for-travel |
#  @run
#  Scenario Outline: HM_PL To verify PersonalLoan - Medical Loan
#    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
#    And clicks on "<Loan type>","<level 2 Sub Type>"
#    Then Customer should be Redirected to "<Expected Url>"
#    Examples:
#      | dropDownType | Loan type     | level 2 Sub Type | Expected Url                                                    |
#      | Loans        | Personal Loan | Medical Loan     | https://www.bajajfinserv.in/personal-loan-for-medical-emergency |
#  @run
#  Scenario Outline: HM_PL To verify PersonalLoan - Home Renovation Loan
#    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
#    And clicks on "<Loan type>","<level 2 Sub Type>"
#    Then Customer should be Redirected to "<Expected Url>"
#    Examples:
#      | dropDownType | Loan type     | level 2 Sub Type     | Expected Url                                                   |
#      | Loans        | Personal Loan | Home Renovation Loan | https://www.bajajfinserv.in/personal-loan-for-home-improvement |
#  @run
#  Scenario Outline: HM_PL To verify PersonalLoan - Debt Consolidation Loan
#    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
#    And clicks on "<Loan type>","<level 2 Sub Type>"
#    Then Customer should be Redirected to "<Expected Url>"
#    Examples:
#      | dropDownType | Loan type     | level 2 Sub Type        | Expected Url                                                     |
#      | Loans        | Personal Loan | Debt Consolidation Loan | https://www.bajajfinserv.in/personal-loan-for-debt-consolidation |
#  @run
#  Scenario Outline: HM_PL To verify PersonalLoan - Higher Education Loan
#    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
#    And clicks on "<Loan type>","<level 2 Sub Type>"
#    Then Customer should be Redirected to "<Expected Url>"
#    Examples:
#      | dropDownType | Loan type     | level 2 Sub Type      | Expected Url                                                   |
#      | Loans        | Personal Loan | Higher Education Loan | https://www.bajajfinserv.in/personal-loan-for-higher-education |
#
#  @run
#  Scenario Outline: HM_PL To verify PersonalLoan - Used Car Loan
#    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
#    And clicks on "<Loan type>","<level 2 Sub Type>"
#    Then Customer should be Redirected to "<Expected Url>"
#    Examples:
#      | dropDownType | Loan type     | level 2 Sub Type | Expected Url                                                      |
#      | Loans        | Personal Loan | Used Car Loan    | https://www.bajajfinserv.in/personal-loan-for-second-hand-vehicle |
#  @run
#  Scenario Outline: HM_PL To verify PersonalLoan - Small Personal Loan
#    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
#    And clicks on "<Loan type>","<level 2 Sub Type>"
#    Then Customer should be Redirected to "<Expected Url>"
#
#    Examples:
#      | dropDownType | Loan type     | level 2 Sub Type    | Expected Url                                                |
#      | Loans        | Personal Loan | Small Personal Loan | https://www.bajajfinserv.in/how-to-get-small-personal-loans |
##  @run
#  Scenario: HM_PL To Logout the Application
#    Given Logout the Application
#    Then close the Application