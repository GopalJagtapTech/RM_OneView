@regression

@SingleK
Feature: Credit Card
  Scenario Outline: HM_CC To verify Credit Card - About Credit Card
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over menu "<Loan type>"
    And clicks on single "<dropDownType>" and "<Loan type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | Expected Url                      |
      | Cards | All Cards | https://uat-oneweb.bajajfinserv.in/cards |

  @apply
  Scenario Outline: HM_CC To verify Credit Card - Bajaj Finserv RBL Bank SuperCard Apply Online
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>"& Apply Online "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      | Cards        | Bajaj Finserv RBL Bank SuperCard | Apply Online | https://uat-oneweb.bajajfinserv.in/apply-for-credit-card-online |


  @run
  Scenario Outline: HM_CC To verify Credit Card - Bajaj Finserv RBL Bank SuperCard OverView Criteria
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      | Cards        | Bajaj Finserv RBL Bank SuperCard | Overview | https://uat-oneweb.bajajfinserv.in/credit-card |

  @run
  Scenario Outline: HM_CC To verify Credit Card - Bajaj Finserv RBL Bank SuperCard Eligibility Criteria
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      | Cards        | Bajaj Finserv RBL Bank SuperCard | Eligibility Criteria | https://uat-oneweb.bajajfinserv.in/credit-card-eligibility-and-documents |


  @apply
  Scenario Outline: HM_CC To verify Credit Card - Bajaj Finserv DBS Bank credit card
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>"& Apply Online "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      | Cards        | Bajaj Finserv DBS Bank credit card | Apply Online | https://uat-oneweb.bajajfinserv.in/apply-for-dbs-credit-card-online |


  @run
  Scenario Outline: HM_CC To verify Credit Card - Bajaj Finserv DBS Bank credit card OverView
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      | Cards        | Bajaj Finserv DBS Bank credit card | Overview | https://uat-oneweb.bajajfinserv.in/dbs-bank-credit-card |

  @run
  Scenario Outline: HM_CC To verify Credit Card - Bajaj Finserv DBS Bank credit card Eligibility Criteria
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      | Cards        | Bajaj Finserv DBS Bank credit card | Eligibility Criteria | https://uat-oneweb.bajajfinserv.in/dbs-bank-credit-card-eligibility-and-documents |




  @apply
  Scenario Outline: HM_CC To verify Credit Card -  credit cards
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>"& Apply Online "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      | Cards        | Credit Cards | Apply Online | https://uat-oneweb.bajajfinserv.in/apply-for-credit-card-online |



  @run
  Scenario Outline: HM_CC To verify Credit Card - Credit Card OverView Criteria
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      | Cards        | Credit Cards | Overview | https://uat-oneweb.bajajfinserv.in/credit-card |

  @run
  Scenario Outline: HM_CC To verify Credit Card - Credit Card Eligibility Criteria
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      | Cards        | Credit Cards | Eligibility Criteria | https://uat-oneweb.bajajfinserv.in/credit-card-eligibility-and-documents |
  @run

  Scenario Outline: HM_CC To verify Credit Card - Track Credit Card Application Status
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      | Cards        | Credit Cards | Track Application Status | https://uat-oneweb.bajajfinserv.in/credit-card-application-tracking |
  @run

  Scenario Outline: HM_CC To verify Credit Card - View Credit Card Statement
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      | Cards        | Credit Cards | View Statement | https://uat-oneweb.bajajfinserv.in/credit-card-statement |
  @run

  Scenario Outline: HM_CC To verify Credit Card - Pay Bill
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      | Cards        | Credit Cards | Pay Bill | https://uat-oneweb.bajajfinserv.in/credit-card-bill-payment |
  @run

  Scenario Outline: HM_CC To verify Credit Card - Credit Card Contact Us
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      | Cards        | Credit Cards | Contact Us | https://uat-oneweb.bajajfinserv.in/rbl-credit-card-contact-details |


  ## Not Available
#  @run
#
#  Scenario Outline: HM_CC To verify Credit Card - Offers
#    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
#    And clicks on "<Loan type>","<level 2 Sub Type>"
#    Then Customer should be Redirected to "<Expected Url>"
#    Examples:
#      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
#      | Cards        | Credit Cards | Offers |  https://www.bajajfinserv.in/rbl-credit-card |
#  @run
#
#  Scenario Outline: HM_CC To verify Credit Card - Platinum Choice SuperCard
#    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
#    And clicks on "<Loan type>","<level 2 Sub Type>"
#    Then Customer should be Redirected to "<Expected Url>"
#    Examples:
#      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
#      | Cards        | Credit Cards | Contact Us | https://www.bajajfinserv.in/rbl-bank-platinum-choice-supercard |
#
#
#  Scenario Outline: HM_CC To verify Credit Card - Platinum Choice First-Year-Free SuperCard
#
#    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
#    And clicks on "<Loan type>","<level 2 Sub Type>"
#    Then Customer should be Redirected to "<Expected Url>"
#    Examples:
#      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
#      | Cards        | Credit Card| Platinum Choice First-Year-Free SuperCard|  https://www.bajajfinserv.in/rbl-bank-platinum-plus-supercard |
#  @run
#
#  Scenario Outline: HM_CC To verify Credit Card - Platinum Plus SuperCard
#    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
#    And clicks on "<Loan type>","<level 2 Sub Type>"
#    Then Customer should be Redirected to "<Expected Url>"
#    Examples:
#      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
#      | Cards        | Credit Card| Platinum Plus SuperCard|  https://www.bajajfinserv.in/rbl-bank-platinum-plus-fyf-supercard |
#  @run
#
#  Scenario Outline: HM_CC To verify Credit Card - Platinum ShopDaily SuperCard
#    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
#    And clicks on "<Loan type>","<level 2 Sub Type>"
#    Then Customer should be Redirected to "<Expected Url>"
#    Examples:
#      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
#      | Cards        | Credit Card| Platinum ShopDaily SuperCard| https://www.bajajfinserv.in/rbl-bank-platinum-shopdaily-supercard |
#  @run
#
#  Scenario Outline: HM_CC To verify Credit Card - Platinum Edge SuperCard
#    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
#    And clicks on "<Loan type>","<level 2 Sub Type>"
#    Then Customer should be Redirected to "<Expected Url>"
#    Examples:
#      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
#      | Cards        | Credit Card| Platinum Edge SuperCard|  https://www.bajajfinserv.in/rbl-bank-platinum-edge-supercard  |
#  @run
#
#  Scenario Outline: HM_CC To verify Credit Card - Freedom SuperCard
#    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
#    And clicks on "<Loan type>","<level 2 Sub Type>"
#    Then Customer should be Redirected to "<Expected Url>"
#    Examples:
#      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
#      | Cards        | Credit Card| Freedom SuperCard|  https://www.bajajfinserv.in/rbl-bank-freedom-supercard |
#  @run
#
#  Scenario Outline: HM_CC To verify Credit Card - World Prime SuperCard
#    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
#    And clicks on "<Loan type>","<level 2 Sub Type>"
#    Then Customer should be Redirected to "<Expected Url>"
#    Examples:
#      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
#      | Cards        | Credit Card| World Prime SuperCard |  https://www.bajajfinserv.in/rbl-world-prime-supercard |
#  @run
#
#  Scenario Outline: HM_CC To verify Credit Card - World Plus SuperCard
#    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
#    And clicks on "<Loan type>","<level 2 Sub Type>"
#    Then Customer should be Redirected to "<Expected Url>"
#    Examples:
#      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
#      | Cards        | Credit Card|World Plus SuperCard|  https://www.bajajfinserv.in/rbl-bank-world-plus-supercard |
#  @run
#
#  Scenario Outline: HM_CC To verify Credit Card - Doctor’s SuperCard
#    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
#    And clicks on "<Loan type>","<level 2 Sub Type>"
#    Then Customer should be Redirected to "<Expected Url>"
#    Examples:
#      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
#      | Cards        | Credit Card|Doctor’s SuperCard| https://www.bajajfinserv.in/rbl-bank-doctor-supercard |
#  @run
#
#  Scenario Outline: HM_CC To verify Credit Card - Value Plus SuperCard
#    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
#    And clicks on "<Loan type>","<level 2 Sub Type>"
#    Then Customer should be Redirected to "<Expected Url>"
#    Examples:
#      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
#      | Cards        | Credit Card|Value Plus SuperCard| https://www.bajajfinserv.in/rbl-bank-value-plus-supercard |
#  @run
#
#  Scenario Outline: HM_CC To verify Credit Card - Shop Smart SuperCard
#    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
#    And clicks on "<Loan type>","<level 2 Sub Type>"
#    Then Customer should be Redirected to "<Expected Url>"
#    Examples:
#      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
#      | Cards        | Credit Card|Shop Smart SuperCard|  https://www.bajajfinserv.in/rbl-bank-shop-smart-supercard |
#  @run
#
#  Scenario Outline: HM_CC To verify Credit Card - Travel Easy SuperCard
#    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
#    And clicks on "<Loan type>","<level 2 Sub Type>"
#    Then Customer should be Redirected to "<Expected Url>"
#    Examples:
#      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
#      | Cards        | Credit Card|Travel Easy SuperCard| https://www.bajajfinserv.in/rbl-bank-travel-easy-supercard |
#  @run
#
#  Scenario Outline: HM_CC To verify Credit Card - CA SuperCard
#    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
#    And clicks on "<Loan type>","<level 2 Sub Type>"
#    Then Customer should be Redirected to "<Expected Url>"
#    Examples:
#      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
#      | Cards        | Credit Card|CA SuperCard| https://www.bajajfinserv.in/rbl-bank-ca-supercard |
#  @run
#
#  Scenario Outline: HM_CC To verify Credit Card - Platinum LifeEasy SuperCard
#    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
#    And clicks on "<Loan type>","<level 2 Sub Type>"
#    Then Customer should be Redirected to "<Expected Url>"
#    Examples:
#      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
#      | Cards        | Credit Card|Platinum LifeEasy SuperCard|  https://www.bajajfinserv.in/rbl-bank-platinum-life-easy-supercard|
#  @run
#
#  Scenario Outline: HM_CC To verify Credit Card - Platinum ShopGain SuperCard
#    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
#    And clicks on "<Loan type>","<level 2 Sub Type>"
#    Then Customer should be Redirected to "<Expected Url>"
#    Examples:
#      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
#      | Cards        | Credit Card|Platinum ShopGain SuperCard|  https://www.bajajfinserv.in/rbl-bank-platinum-shopgain-supercard|
#  @run
#
#  Scenario Outline: HM_CC To verify Credit Card - Platinum Advantage SuperCard
#    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
#    And clicks on "<Loan type>","<level 2 Sub Type>"
#    Then Customer should be Redirected to "<Expected Url>"
#    Examples:
#      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
#      | Cards        | Credit Card|Platinum Advantage SuperCard|https://www.bajajfinserv.in/rbl-bank-platinum-advantage-supercard|
