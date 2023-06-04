@regression
Feature: Appliances Extended Warranty

#  @run
#  Scenario Outline: HM_INS1 To Login the Application
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User lands on Home Page
#    Examples:
#      | Mobile Number | Date     | Customer Type |
#      | 9890801661    | 26051982 | Individual    |

  Scenario Outline:  ppliances Extended Warranty-Overview
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<Subheading>" and "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | Subheading | level 2 Sub Type |Expected Url|
      | Insurance | Appliances Extended Warranty | Appliances Extended Warranty | Overview | https://uat-oneweb.bajajfinserv.in/insurance/appliances-extended-warranty |


  Scenario Outline:  Appliances Extended Warranty-CPP
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<Subheading>" and "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | Subheading | level 2 Sub Type |Expected Url|
      | Insurance | Appliances Extended Warranty | Partners | CPP | https://uat-oneweb.bajajfinserv.in/insurance/cpp-india |


  Scenario Outline:  Appliances Extended Warranty-Asset Secure
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on subheading "<Loan type>" and "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type |Expected Url|
      | Insurance | Appliances Extended Warranty | Asset Secure | https://uat-oneweb.bajajfinserv.in/insurance/cpp-asset-secure |

  Scenario Outline:  Appliances Extended Warranty-Asset Secure Panel
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on subheading "<Loan type>" and "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | Subheading | level 2 Sub Type |Expected Url|
      | Insurance | Appliances Extended Warranty | Extended Warranty | Asset Secure Panel  | https://uat-oneweb.bajajfinserv.in/insurance/cpp-asset-secure-led-panel-only |

  Scenario Outline:  Appliances Extended Warranty-Asset Assure
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on subheading "<Loan type>" and "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | Subheading | level 2 Sub Type |Expected Url|
      | Insurance | Appliances Extended Warranty | Extended Warranty | Asset Assure | https://uat-oneweb.bajajfinserv.in/insurance/cpp-asset-assure |

