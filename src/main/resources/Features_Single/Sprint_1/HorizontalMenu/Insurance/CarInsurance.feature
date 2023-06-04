@regression
Feature: Car Insurance

#  @run
#  Scenario Outline: HM_INS1 To Login the Application
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User lands on Home Page
#    Examples:
#      | Mobile Number | Date     | Customer Type |
#      | 9890801661    | 26051982 | Individual    |

    #Motor INSURANCE

  Scenario Outline:  Car Insurance -  Car Insurance-Overview
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<Subheading>" and "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | Subheading | level 2 Sub Type |Expected Url|
      | Insurance | Car Insurance | Car Insurance | Overview | https://uat-oneweb.bajajfinserv.in/insurance/car-insurance |

  Scenario Outline:  Car Insurance -  Car Insurance-Get Quote
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<Subheading>" and "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | Subheading | level 2 Sub Type |Expected Url|
      | Insurance | Car Insurance | Car Insurance | Get Quote | https://uat-oneweb.bajajfinserv.in/marketplace/insurance/car-insurance/car-insurance-premium-calculator/vehicleRegistration |

  Scenario Outline:  Car Insurance -  Car Insurance-FAQs
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<Subheading>" and "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | Subheading | level 2 Sub Type |Expected Url|
      | Insurance | Car Insurance | Car Insurance | FAQs | https://uat-oneweb.bajajfinserv.in/insurance/car-insurance-faqs |

  Scenario Outline:  Car Insurance -  Car Insurance-Acko Bike Insurance
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<Subheading>" and "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | Subheading | level 2 Sub Type |Expected Url|
      | Insurance | Car Insurance | Comprehensive Car Insurance | Acko Car Insurance | https://uat-oneweb.bajajfinserv.in/insurance/acko-car-insurance |

  Scenario Outline:  Car Insurance -  Car Insurance-Bajaj Allianz Bike Insurance
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<Subheading>" and "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | Subheading | level 2 Sub Type |Expected Url|
      | Insurance | Car Insurance | Comprehensive Car Insurance | Bajaj Allianz Car Insurance | https://uat-oneweb.bajajfinserv.in/insurance/bajaj-allianz-car-insurance |

  Scenario Outline:  Car Insurance - ACKO General Insurance
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<Subheading>" and "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | Subheading | level 2 Sub Type |Expected Url|
      | Insurance | Car Insurance | Partners | ACKO General Insurance  | https://uat-oneweb.bajajfinserv.in/insurance/acko-insurance |

  Scenario Outline:  Motor Insurance - Two-Wheeler Insurance-Bajaj Allianz General Insurance
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<Subheading>" and "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | Subheading | level 2 Sub Type |Expected Url|
      | Insurance | Car Insurance | Partners | Bajaj Allianz General Insurance | https://uat-oneweb.bajajfinserv.in/insurance/bajaj-allianz-general-insurance |




#  Scenario Outline:  Motor Insurance -  Two-Wheeler Insurance-Add-on Cover
#    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
#    And clicks on "<Loan type>","<Subheading>" and "<level 2 Sub Type>"
#    Then Customer should be Redirected to "<Expected Url>"
#    Examples:
#      | dropDownType | Loan type | Subheading | level 2 Sub Type |Expected Url|
#      | Insurance | Motor Insurance | Two-Wheeler Insurance | Add-on Cover | https://uat-oneweb.bajajfinserv.in/two-wheeler-insurance-add-on-covers |
#
#  Scenario Outline:  Motor Insurance -  Two-Wheeler Insurance-Third Party Bike Insurance
#    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
#    And clicks on "<Loan type>","<Subheading>" and "<level 2 Sub Type>"
#    Then Customer should be Redirected to "<Expected Url>"
#    Examples:
#      | dropDownType | Loan type | Subheading | level 2 Sub Type |Expected Url|
#      | Insurance | Motor Insurance | Two-Wheeler Insurance | Third Party Bike Insurance | https://uat-oneweb.bajajfinserv.in/third-party-two-wheeler-insurance |
#
#  Scenario Outline:  Motor Insurance -  Two-Wheeler Insurance -FAQs
#    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
#    And clicks on "<Loan type>","<Subheading>" and "<level 2 Sub Type>"
#    Then Customer should be Redirected to "<Expected Url>"
#    Examples:
#      | dropDownType | Loan type | Subheading | level 2 Sub Type |Expected Url|
#      | Insurance | Motor Insurance | Two-Wheeler Insurance | FAQs | https://uat-oneweb.bajajfinserv.in/two-wheeler-insurance-frequently-asked-questions |
#
#
#  Scenario Outline: Health Insurances Overview
#    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
#    And clicks on "<Loan type>"& Apply Online "<level 2 Sub Type>"
#    Then Customer should be Redirected to "<Expected Url>"
#    Examples:
#      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
#      | Insurance | Motor Insurance | Overview | https://uat-oneweb.bajajfinserv.in/motor-insurance |