@regression
Feature: Online Trading

#  @run
#  Scenario Outline: HM_OT To Login the Application
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User lands on Home Page
#    Examples:
#      | Mobile Number | Date     | Customer Type |
#      | 9890801661    | 26051982 | Individual    |

    #ONLINE TRADING


  Scenario Outline: Online Trading -Demat Account - Overview
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      | Online Trading | Demat Account | Overview | https://uat-oneweb.bajajfinserv.in/open-demat-trading-account-online |

  @run
  Scenario Outline: HM_OT To verify Online Trading - Eligibility and Documents
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<subMenu type>"
    And clicks on "<subMenu type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType   | subMenu type   | level 2 Sub Type                    | Expected Url                                  |
      | Online Trading | Demat Account | Eligibility and Documents | https://uat-oneweb.bajajfinserv.in/eligibility-and-documents-required-to-open-demat-and-trading-account |


  @run
  Scenario Outline: HM_OT To verify Online Trading - Fees and Charges
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<subMenu type>"
    And clicks on "<subMenu type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType   | subMenu type   | level 2 Sub Type          | Expected Url                                                                                     |
      | Online Trading | Demat Account | Fees and Charges | https://uat-oneweb.bajajfinserv.in/demat-trading-account-fees-and-charges |

  @run
  Scenario Outline: HM_OT To verify Online Trading -  How to open Demat Account
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<subMenu type>"
    And clicks on "<subMenu type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType   | subMenu type   | level 2 Sub Type          | Expected Url                                                   |
      | Online Trading | Demat Account | How to Open Demat Account | https://uat-oneweb.bajajfinserv.in/insights/how-to-open-demat-account |



  @run
  Scenario Outline: HM_OT To verify Online Trading - Apply for an IPO
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<subMenu type>"
    And clicks on "<subMenu type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType   | subMenu type   | level 2 Sub Type                        | Expected Url                                                        |
      | Online Trading | Demat Account | Apply for an IPO | https://uat-oneweb.bajajfinserv.in/upcoming-ipo |

  @run
  Scenario Outline: HM_OT To verify Online Trading -  Low Brokerage Demat Account
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<subMenu type>"
    And clicks on "<subMenu type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType   | subMenu type   | level 2 Sub Type | Expected Url                                  |
      | Online Trading | Demat Account | Low Brokerage Demat Account | https://uat-oneweb.bajajfinserv.in/low-brokerage-trading-and-demat-account |
#
#  @run
#  Scenario Outline: HM_OT To verify Online Trading -  IPO
#    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<subMenu type>"
#    And clicks on "<subMenu type>","<level 2 Sub Type>"
#    Then Customer should be Redirected to "<Expected Url>"
#    Examples:
#      | dropDownType   | subMenu type   | level 2 Sub Type | Expected Url                             |
#      | Online Trading | Online Trading | IPO              | https://www.bajajfinserv.in/upcoming-ipo |
#
#  @run
#  Scenario Outline: HM_OT To verify Online Trading - Intraday Trading
#    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<subMenu type>"
#    And clicks on "<subMenu type>","<level 2 Sub Type>"
#    Then Customer should be Redirected to "<Expected Url>"
#    Examples:
#      | dropDownType   | subMenu type   | level 2 Sub Type | Expected Url                                          |
#      | Online Trading | Online Trading | Intraday Trading | https://www.bajajfinserv.in/insights/intraday-trading |
#
#
#    #Insights
#  @run
#  Scenario Outline: HM_OT To verify Insights -  What is Demat Account
#    When Customer Clicks on "<dropDownType>" Drop-down & Hover over Same "<subMenu type>"
#    And clicks on "<subMenu type>","<level 2 Sub Type>"
#    Then Customer should be Redirected to "<Expected Url>"
#    Examples:
#      | dropDownType   | subMenu type | level 2 Sub Type      | Expected Url                                               |
#      | Online Trading | Insights     | What is Demat Account | https://www.bajajfinserv.in/insights/what-is-demat-account |
#
#  @run
#  Scenario Outline: HM_OT To verify Insights - Online Share Trading
#    When Customer Clicks on "<dropDownType>" Drop-down & Hover over Same "<subMenu type>"
#    And clicks on "<subMenu type>","<level 2 Sub Type>"
#    Then Customer should be Redirected to "<Expected Url>"
#    Examples:
#      | dropDownType   | subMenu type | level 2 Sub Type     | Expected Url                                       |
#      | Online Trading | Insights     | Online Share Trading | https://www.bajajfinserv.in/insights/share-trading |
#
#  @run
#  Scenario Outline: HM_OT To verify Insights -  How to Open Trading Account
#    When Customer Clicks on "<dropDownType>" Drop-down & Hover over Same "<subMenu type>"
#    And clicks on "<subMenu type>","<level 2 Sub Type>"
#    Then Customer should be Redirected to "<Expected Url>"
#    Examples:
#      | dropDownType   | subMenu type | level 2 Sub Type            | Expected Url                                                     |
#      | Online Trading | Insights     | How to Open Trading Account | https://www.bajajfinserv.in/insights/how-to-open-trading-account |
#
#  @run
#  Scenario Outline: HM_OT To verify Insights - Trading Account vs Demat Account
#    When Customer Clicks on "<dropDownType>" Drop-down & Hover over Same "<subMenu type>"
#    And clicks on "<subMenu type>","<level 2 Sub Type>"
#    Then Customer should be Redirected to "<Expected Url>"
#    Examples:
#      | dropDownType   | subMenu type | level 2 Sub Type                 | Expected Url                                                                              |
#      | Online Trading | Insights     | Trading Account vs Demat Account | https://www.bajajfinserv.in/insights/difference-between-demat-account-and-trading-account |
#
#  @run
#  Scenario Outline: HM_OT To verify Insights -  How to Start Online Trading
#    When Customer Clicks on "<dropDownType>" Drop-down & Hover over Same "<subMenu type>"
#    And clicks on "<subMenu type>","<level 2 Sub Type>"
#    Then Customer should be Redirected to "<Expected Url>"
#    Examples:
#      | dropDownType   | subMenu type | level 2 Sub Type            | Expected Url                                                     |
#      | Online Trading | Insights     | How to Start Online Trading | https://www.bajajfinserv.in/insights/how-to-start-online-trading |

#  @run
#  Scenario: HM_OT To Logout the Application
#    Given Logout the Application
#    Then close the Application

