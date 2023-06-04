@regression
Feature: Health Insurance

#  @run
#  Scenario Outline: HM_INS1 To Login the Application
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User lands on Home Page
#    Examples:
#      | Mobile Number | Date     | Customer Type |
#      | 9890801661    | 26051982 | Individual    |

    #HEALTH INSURANCE


  Scenario Outline: HM To verify Insurance - Insurance Mall
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over menu "<Loan type>"
    And clicks on single "<dropDownType>" and "<Loan type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | Expected Url                      |
      | Insurance | Insurance Mall |  https://uat-oneweb.bajajfinserv.in/insurance |


  Scenario Outline: Insurance & Health Insurance  - Overview
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<Subheading>" and "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | Subheading | level 2 Sub Type |Expected Url|
      | Insurance | Health Insurance | Health Insurance | Overview | https://uat-oneweb.bajajfinserv.in/insurance/health-insurance |


  Scenario Outline: Insurance & Health Insurance  -  - Get Quote
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<Subheading>" and "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | Subheading | level 2 Sub Type |Expected Url|
      | Insurance | Health Insurance | Health Insurance | Get Quote | https://uat-oneweb.bajajfinserv.in/marketplace/insurance/health-insurance/health-insurance-premium-calculator/getGoingNow |



  Scenario Outline:  Insurance & Health Insurance  - FAQs
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<Subheading>" and "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | Subheading | level 2 Sub Type |Expected Url|
      | Insurance | Health Insurance | Health Insurance | FAQs | https://uat-oneweb.bajajfinserv.in/insurance/health-insurance-faqs |


  Scenario Outline: Insurance & Health Insurance   - Group Activ Health Super Top-Up
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<Subheading>" and "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | Subheading | level 2 Sub Type |Expected Url|
      | Insurance | Health Insurance | Top-up Health Insurance | Group Activ Health Super Top-Up | https://uat-oneweb.bajajfinserv.in/insurance/aditya-birla-super-top-up-health-plan |

  Scenario Outline: Insurance & Health Insurance   - Bajaj Allianz Extra care plus plan
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<Subheading>" and "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | Subheading | level 2 Sub Type |Expected Url|
      | Insurance | Health Insurance | Top-up Health Insurance | Bajaj Allianz Extra care plus plan | https://uat-oneweb.bajajfinserv.in/insurance/bajaj-allianz-extra-care-plus-plan |


  Scenario Outline: Insurance & Health Insurance   - ManipalCinga Super Top up Retail
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<Subheading>" and "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | Subheading | level 2 Sub Type |Expected Url|
      | Insurance | Health Insurance | Top-up Health Insurance | ManipalCinga Super Top up Retail | https://uat-oneweb.bajajfinserv.in/insurance/manipal-cigna-super-top-up-retail-insurance-plan |



  Scenario Outline: Insurance & Health Insurance   - Aditya Birla Group Activ Health Plan (ABCD)
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<Subheading>" and "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | Subheading | level 2 Sub Type |Expected Url|
      | Insurance | Health Insurance | Family Health Insurnace | Aditya Birla Group Activ Health Plan (ABCD) | https://uat-oneweb.bajajfinserv.in/insurance/aditya-birla-group-activ-health-plan |

  Scenario Outline: Insurance & Health Insurance   - Bajaj Allianz Health Guard Insurance Plan
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<Subheading>" and "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | Subheading | level 2 Sub Type |Expected Url|
      | Insurance | Health Insurance | Family Health Insurnace | Bajaj Allianz Health Guard Insurance Plan | https://uat-oneweb.bajajfinserv.in/insurance/bajaj-allianz-health-guard-insurance-plan |

  Scenario Outline: Insurance & Health Insurance   - ManipalCinga Pro-Health Group
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<Subheading>" and "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | Subheading | level 2 Sub Type |Expected Url|
      | Insurance | Health Insurance | Family Health Insurnace | ManipalCinga Pro-Health Group | https://uat-oneweb.bajajfinserv.in/insurance/manipal-cigna-pro-health-group-insurance |

  Scenario Outline: Insurance & Health Insurance   - Niva Bupa Health Plus Plan
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<Subheading>" and "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | Subheading | level 2 Sub Type |Expected Url|
      | Insurance | Health Insurance | Family Health Insurnace | Niva Bupa Health Plus Plan | https://uat-oneweb.bajajfinserv.in/insurance/niva-bupa-health-plus-plan |


  Scenario Outline: Insurance & Health Insurance   - Aditya Birla Active Assure Dimond
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<Subheading>" and "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | Subheading | level 2 Sub Type |Expected Url|
      | Insurance | Health Insurance | Family Health Insurnace | Aditya Birla Active Assure Dimond | https://uat-oneweb.bajajfinserv.in/insurance/aditya-birla-activ-assure-diamond-health-plan |



  Scenario Outline: Insurance & Health Insurance   - Aditya Birla Health Insurance
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<Subheading>" and "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | Subheading | level 2 Sub Type |Expected Url|
      | Insurance | Health Insurance | Partners | Aditya Birla Health Insurance | https://uat-oneweb.bajajfinserv.in/insurance/aditya-birla-health-insurance |


  Scenario Outline: Insurance & Health Insurance   - Bajaj Allianz General Insurance
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<Subheading>" and "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | Subheading | level 2 Sub Type |Expected Url|
      | Insurance | Health Insurance | Partners | Bajaj Allianz General Insurance | https://uat-oneweb.bajajfinserv.in/insurance/bajaj-allianz-general-insurance |


  Scenario Outline: Insurance & Health Insurance   - Niva Bupa Health Insurance
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<Subheading>" and "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | Subheading | level 2 Sub Type |Expected Url|
      | Insurance | Health Insurance | Partners | Niva Bupa Health Insurance | https://uat-oneweb.bajajfinserv.in/insurance/niva-bupa-health-insurance |


  Scenario Outline: Insurance & Health Insurance   - Bajaj Finserv Health
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<Subheading>" and "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | Subheading | level 2 Sub Type |Expected Url|
      | Insurance | Health Insurance | Partners | Bajaj Finserv Health | https://uat-oneweb.bajajfinserv.in/insurance/bajaj-finserv-health |


  Scenario Outline: Insurance & Health Insurance   - ManipalCigna Health Insurance
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<Subheading>" and "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | Subheading | level 2 Sub Type |Expected Url|
      | Insurance | Health Insurance | Partners | ManipalCigna Health Insurance | https://uat-oneweb.bajajfinserv.in/insurance/manipal-cigna-health-insurance |

  Scenario Outline: Health Insurances Overview
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>"& Apply Online "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      | Insurance | Health Insurance | Explore Plans | https://uat-oneweb.bajajfinserv.in/insurance/health-insurance-all-products |



#  Scenario Outline: Insurance -  Health Insurance-Apply Online
#    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
#    And clicks on "<Loan type>","<Subheading>" and "<level 2 Sub Type>"
#    Then Customer should be Redirected to "<Expected Url>"
#    Examples:
#      | dropDownType | Loan type | Subheading | level 2 Sub Type |Expected Url|
#      | Insurance | Health Insurance | Health Insurance | Apply Online | https://uat-oneweb.bajajfinserv.in/marketplace/insurance/health-insurance/health-insurance-premium-calculator/getGoingNow |
#
#  Scenario Outline: Insurance -  Health Insurance--FAQs
#    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
#    And clicks on "<Loan type>","<Subheading>" and "<level 2 Sub Type>"
#    Then Customer should be Redirected to "<Expected Url>"
#    Examples:
#      | dropDownType | Loan type | Subheading | level 2 Sub Type |Expected Url|
#      | Insurance | Health Insurance | Health Insurance | FAQs | https://uat-oneweb.bajajfinserv.in/health-insurances-faq-questions |
#
#  Scenario Outline: Insurance -  Health Insurance--Partners --Aditya Birla Health Insurance
#    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
#    And clicks on "<Loan type>","<Subheading>" and "<level 2 Sub Type>"
#    Then Customer should be Redirected to "<Expected Url>"
#    Examples:
#      | dropDownType | Loan type | Subheading | level 2 Sub Type |Expected Url|
#      | Insurance | Health Insurance | Partners | Aditya Birla Health Insurance | https://uat-oneweb.bajajfinserv.in/aditya-birla-health-insurance |
#
#  Scenario Outline: Insurance -  Health Insurance--Partners --Bajaj Allianz General Insurance
#    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
#    And clicks on "<Loan type>","<Subheading>" and "<level 2 Sub Type>"
#    Then Customer should be Redirected to "<Expected Url>"
#    Examples:
#      | dropDownType | Loan type | Subheading | level 2 Sub Type |Expected Url|
#      | Insurance | Health Insurance | Partners | Bajaj Allianz General Insurance | https://uat-oneweb.bajajfinserv.in/bajaj-allianz-general-insurance |
#
#
#  Scenario Outline: Insurance -  Health Insurance--Partners --Bajaj Finserv Health Limited
#    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
#    And clicks on "<Loan type>","<Subheading>" and "<level 2 Sub Type>"
#    Then Customer should be Redirected to "<Expected Url>"
#    Examples:
#      | dropDownType | Loan type | Subheading | level 2 Sub Type |Expected Url|
#      | Insurance | Health Insurance | Partners | Bajaj Finserv Health Limited | https://uat-oneweb.bajajfinserv.in/ebh-health-insurance |
#
#
#  Scenario Outline: Insurance -  Health Insurance--Partners --Niva Bupa Health Insurance
#    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
#    And clicks on "<Loan type>","<Subheading>" and "<level 2 Sub Type>"
#    Then Customer should be Redirected to "<Expected Url>"
#    Examples:
#      | dropDownType | Loan type | Subheading | level 2 Sub Type |Expected Url|
#      | Insurance | Health Insurance | Partners | Niva Bupa Health Insurance | https://uat-oneweb.bajajfinserv.in/niva-bupa-health-insurance |
#
#
#  Scenario Outline: Insurance -  Health Insurance--Partners --ManipalCigna Health Insurance
#    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
#    And clicks on "<Loan type>","<Subheading>" and "<level 2 Sub Type>"
#    Then Customer should be Redirected to "<Expected Url>"
#    Examples:
#      | dropDownType | Loan type | Subheading | level 2 Sub Type |Expected Url|
#      | Insurance | Health Insurance | Partners | ManipalCigna Health Insurance | https://uat-oneweb.bajajfinserv.in/manipal-cigna-health-insurance |
#
#  @apply

#  @run
#  Scenario Outline: HM_INS1 To verify Health Insurance -  FAQs
#    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<subMenu type>"
#    And clicks on "<subMenu type>","<level 2 Sub Type>"
#    Then Customer should be Redirected to "<Expected Url>"
#    Examples:
#      | dropDownType | subMenu type     | level 2 Sub Type | Expected Url                                                |
#      | Insurance    | Health Insurance | FAQs             | https://www.bajajfinserv.in/health-insurances-faq-questions |
#  @run
#  Scenario Outline: HM_INS1 To verify Health Insurance - Product Information
#    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<subMenu type>"
#    And clicks on "<subMenu type>","<level 2 Sub Type>"
#    Then Customer should be Redirected to "<Expected Url>"
#    Examples:
#      | dropDownType | subMenu type     | level 2 Sub Type    | Expected Url                                 |
#      | Insurance    | Health Insurance | Product Information | https://www.bajajfinserv.in/health-insurance |
#
##CAR INSURANCE
#  @run
#  Scenario Outline: HM_INS1 To verify Car Insurance -  Third Party car Insurance
#    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<subMenu type>"
#    And clicks on "<subMenu type>","<level 2 Sub Type>"
#    Then Customer should be Redirected to "<Expected Url>"
#    Examples:
#      | dropDownType | subMenu type  | level 2 Sub Type          | Expected Url                                          |
#      | Insurance    | Car Insurance | Third Party car Insurance | https://www.bajajfinserv.in/third-party-car-insurance |
#  @run
#  Scenario Outline: HM_INS1 To verify Car Insurance - FAQs
#    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<subMenu type>"
#    And clicks on "<subMenu type>","<level 2 Sub Type>"
#    Then Customer should be Redirected to "<Expected Url>"
#    Examples:
#      | dropDownType | subMenu type  | level 2 Sub Type | Expected Url                                                         |
#      | Insurance    | Car Insurance | FAQs             | https://www.bajajfinserv.in/car-insurance-frequently-asked-questions |
#  @run
#  Scenario Outline: HM_INS1 To verify Car Insurance - Product Information
#    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<subMenu type>"
#    And clicks on "<subMenu type>","<level 2 Sub Type>"
#    Then Customer should be Redirected to "<Expected Url>"
#    Examples:
#      | dropDownType | subMenu type  | level 2 Sub Type    | Expected Url                              |
#      | Insurance    | Car Insurance | Product Information | https://www.bajajfinserv.in/car-insurance |
#
#    #Home Insurance
#  @run
#  Scenario Outline: HM_INS1 To verify Home Insurance - Product Information
#    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<subMenu type>"
#    And clicks on "<subMenu type>","<level 2 Sub Type>"
#    Then Customer should be Redirected to "<Expected Url>"
#    Examples:
#      | dropDownType | subMenu type   | level 2 Sub Type    | Expected Url                               |
#      | Insurance    | Home Insurance | Product Information | https://www.bajajfinserv.in/home-insurance |
#  @run
#  Scenario Outline: HM_INS1 To verify Home Insurance - FAQs
#    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<subMenu type>"
#    And clicks on "<subMenu type>","<level 2 Sub Type>"
#    Then Customer should be Redirected to "<Expected Url>"
#    Examples:
#      | dropDownType | subMenu type   | level 2 Sub Type | Expected Url                                              |
#      | Insurance    | Home Insurance | FAQs             | https://www.bajajfinserv.in/home-insurances-faq-questions |
#
##Child Plan
#  @run
#  Scenario Outline: HM_INS1 To verify Child Plan - Product Information
#    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<subMenu type>"
#    And clicks on "<subMenu type>","<level 2 Sub Type>"
#    Then Customer should be Redirected to "<Expected Url>"
#    Examples:
#      | dropDownType | subMenu type | level 2 Sub Type    | Expected Url                                           |
#      | Insurance    | Child Plan   | Product Information | https://www.bajajfinserv.in/life-insurance-child-plans |
#
#  #Savings Plan
#  @run
#  Scenario Outline: HM_INS1 To verify Savings Plan - Product Information
#    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<subMenu type>"
#    And clicks on "<subMenu type>","<level 2 Sub Type>"
#    Then Customer should be Redirected to "<Expected Url>"
#    Examples:
#      | dropDownType | subMenu type | level 2 Sub Type    | Expected Url                                             |
#      | Insurance    | Savings Plan | Product Information | https://www.bajajfinserv.in/life-insurance-savings-plans |
#
##Life Insurance
#  @run
#  Scenario Outline: HM_INS1 To verify Life Insurance - Product Information
#    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<subMenu type>"
#    And clicks on "<subMenu type>","<level 2 Sub Type>"
#    Then Customer should be Redirected to "<Expected Url>"
#    Examples:
#      | dropDownType | subMenu type   | level 2 Sub Type    | Expected Url                               |
#      | Insurance    | Life Insurance | Product Information | https://www.bajajfinserv.in/life-insurance |
#  @run
#  Scenario Outline: HM_INS1 To verify Life Insurance - FAQs
#    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<subMenu type>"
#    And clicks on "<subMenu type>","<level 2 Sub Type>"
#    Then Customer should be Redirected to "<Expected Url>"
#    Examples:
#      | dropDownType | subMenu type   | level 2 Sub Type | Expected Url                                    |
#      | Insurance    | Life Insurance | FAQs             | https://www.bajajfinserv.in/life-insurance-faqs |

#  @run
#  Scenario: HM_INS1 To Logout the Application
#    Given Logout the Application
#    Then close the Application