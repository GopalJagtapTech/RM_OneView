@regression
Feature:Investment Plans

#  @run
#  Scenario Outline: HM_INS1 To Login the Application
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User lands on Home Page
#    Examples:
#      | Mobile Number | Date     | Customer Type |
#      | 9890801661    | 26051982 | Individual    |

    #Motor INSURANCE

  Scenario Outline:  Investment Planss -Overview
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<Subheading>" and "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | Subheading | level 2 Sub Type |Expected Url|
      | Insurance | Investment Plans | Investment Plans | Overview | https://uat-oneweb.bajajfinserv.in/insurance/investment-plans |


  Scenario Outline:  Investment Plans-  HDFC Life Guranteed Savings Plan
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<Subheading>" and "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | Subheading | level 2 Sub Type |Expected Url|
      | Insurance | Investment Plans | Guaranteed Savings | HDFC Life Guranteed Savings Plan | https://uat-oneweb.bajajfinserv.in/insurance/hdfc-life-guaranteed-savings-plan |


  Scenario Outline: Investment Plans-  Bajaj Allianz Life POS Goal Suraksha Plan
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<Subheading>" and "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | Subheading | level 2 Sub Type |Expected Url|
      | Insurance | Investment Plans | Guaranteed Savings | Bajaj Allianz Life POS Goal Suraksha Plan | https://uat-oneweb.bajajfinserv.in/insurance/bajaj-allianz-pos-goal-suraksha-plan |

  Scenario Outline:  Investment Plans  Retirement Plans -Overview
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<Subheading>" and "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | Subheading | level 2 Sub Type |Expected Url|
      | Insurance | Investment Plans | Partners | HDFC Life | https://uat-oneweb.bajajfinserv.in/insurance/bajaj-allianz-life-insurance |

  Scenario Outline:  Investment Plans-  Retirement Plans -Overview
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<Subheading>" and "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | Subheading | level 2 Sub Type |Expected Url|
      | Insurance | Investment Plans | Partners | Bajaj Allianz Life Insurance | https://uat-oneweb.bajajfinserv.in/insurance/hdfc-insurance |










#  Scenario Outline:  Savings & Investment-  Retirement Plans -Apply Online
#    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
#    And clicks on "<Loan type>","<Subheading>" and "<level 2 Sub Type>"
#    Then Customer should be Redirected to "<Expected Url>"
#    Examples:
#      | dropDownType | Loan type | Subheading | level 2 Sub Type |Expected Url|
#      | Insurance | Savings & Investment | Retirement Plans | Apply Online | https://uat-oneweb.bajajfinserv.in/life-insurance-retirement-plan-application-form |
#
#
#
#
#  Scenario Outline:  Savings & Investment-  Child Plans -Overview
#    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
#    And clicks on "<Loan type>","<Subheading>" and "<level 2 Sub Type>"
#    Then Customer should be Redirected to "<Expected Url>"
#    Examples:
#      | dropDownType | Loan type | Subheading | level 2 Sub Type |Expected Url|
#      | Insurance | Savings & Investment | Child Plans | Overview | https://uat-oneweb.bajajfinserv.in/life-insurance-child-plans |
#
#  Scenario Outline:  Savings & Investment- Child Plans -Apply Online
#    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
#    And clicks on "<Loan type>","<Subheading>" and "<level 2 Sub Type>"
#    Then Customer should be Redirected to "<Expected Url>"
#    Examples:
#      | dropDownType | Loan type | Subheading | level 2 Sub Type |Expected Url|
#      | Insurance | Savings & Investment | Child Plans | Apply Online | https://uat-oneweb.bajajfinserv.in/life-insurance-child-plan-application-form |
#
#
#
#  Scenario Outline:  Savings & Investment-  Savings Plans -Overview
#    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
#    And clicks on "<Loan type>","<Subheading>" and "<level 2 Sub Type>"
#    Then Customer should be Redirected to "<Expected Url>"
#    Examples:
#      | dropDownType | Loan type | Subheading | level 2 Sub Type |Expected Url|
#      | Insurance | Savings & Investment | Savings Plans | Overview | https://uat-oneweb.bajajfinserv.in/life-insurance-savings-plans |
#
#  Scenario Outline:  Savings & Investment-  Savings Plans -Apply Online
#    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
#    And clicks on "<Loan type>","<Subheading>" and "<level 2 Sub Type>"
#    Then Customer should be Redirected to "<Expected Url>"
#    Examples:
#      | dropDownType | Loan type | Subheading | level 2 Sub Type |Expected Url|
#      | Insurance | Savings & Investment | Savings Plans | Apply Online | https://uat-oneweb.bajajfinserv.in/life-saving-plans-application-form |
#
#
#
#  Scenario Outline:  Savings & Investment-  Investment Plans -Overview
#    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
#    And clicks on "<Loan type>","<Subheading>" and "<level 2 Sub Type>"
#    Then Customer should be Redirected to "<Expected Url>"
#    Examples:
#      | dropDownType | Loan type | Subheading | level 2 Sub Type |Expected Url|
#      | Insurance | Savings & Investment | Investment Plans | Overview | https://uat-oneweb.bajajfinserv.in/life-insurance-investment-plans |
#
#  Scenario Outline:  Savings & Investment-  Investment Plans -Apply Online
#    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
#    And clicks on "<Loan type>","<Subheading>" and "<level 2 Sub Type>"
#    Then Customer should be Redirected to "<Expected Url>"
#    Examples:
#      | dropDownType | Loan type | Subheading | level 2 Sub Type |Expected Url|
#      | Insurance | Savings & Investment | Investment Plans | Apply Online | https://uat-oneweb.bajajfinserv.in/life-insurance-investment-plans-application-form |
#
