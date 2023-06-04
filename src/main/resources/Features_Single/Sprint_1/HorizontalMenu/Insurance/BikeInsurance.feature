@@regression
Feature: Bike  Insurance

#  @run
#  Scenario Outline: HM_INS1 To Login the Application
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User lands on Home Page
#    Examples:
#      | Mobile Number | Date     | Customer Type |
#      | 9890801661    | 26051982 | Individual    |

  Scenario Outline:  Bike Insurance-  -Overview
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<Subheading>" and "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | Subheading | level 2 Sub Type |Expected Url|
      | Insurance | Bike Insurance | Bike Insurance | Overview | https://uat-oneweb.bajajfinserv.in/insurance/two-wheeler-insurance |

  Scenario Outline:  Bike Insurance -Get Quote
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<Subheading>" and "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | Subheading | level 2 Sub Type |Expected Url|
      | Insurance | Bike Insurance | Bike Insurance | Get Quote | https://uat-oneweb.bajajfinserv.in/marketplace/insurance/two-wheeler-insurance/bike-insurance-premium-calculator/vehicleRegistration |

  Scenario Outline:  Bike Insurance -FAQs
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<Subheading>" and "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | Subheading | level 2 Sub Type |Expected Url|
      | Insurance | Bike Insurance | Bike Insurance | FAQs | https://uat-oneweb.bajajfinserv.in/insurance/two-wheeler-insurance-faqs |

  Scenario Outline:  Bike Insurance -  -Acko Bike Insurance
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on subheading "<Loan type>" and "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | Subheading | level 2 Sub Type |Expected Url|
      | Insurance | Bike Insurance | Comprehensive bike Insurance | Acko Bike Insurance | https://uat-oneweb.bajajfinserv.in/insurance/acko-bike-insurance |

  Scenario Outline:  Bike Insurance --Bajaj Allianz Bike Insurance
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on subheading "<Loan type>" and "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | Subheading | level 2 Sub Type |Expected Url|
      | Insurance | Bike Insurance | Comprehensive bike Insurance | Bajaj Allianz Bike Insurance | https://uat-oneweb.bajajfinserv.in/insurance/bajaj-allianz-two-wheeler-insurance |

  Scenario Outline:  Bike Insurance - ACKO General Insurance
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<Subheading>" and "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | Subheading | level 2 Sub Type |Expected Url|
      | Insurance | Bike Insurance | Partners | ACKO General Insurance  | https://uat-oneweb.bajajfinserv.in/insurance/acko-insurance |

  Scenario Outline:  Bike Insurance -Bajaj Allianz General Insurance
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<Subheading>" and "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | Subheading | level 2 Sub Type |Expected Url|
      | Insurance | Bike Insurance | Partners | Bajaj Allianz General Insurance | https://uat-oneweb.bajajfinserv.in/insurance/bajaj-allianz-general-insurance |
