@SingleK
Feature: All On EMI
  Scenario Outline: HM To verify All On EMI- Electronics
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over menu "<Loan type>"
    And clicks on single "<dropDownType>" and "<Loan type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | Expected Url                      |
      | All on EMI | Electronics | https://uat-oneweb.bajajfinserv.in/electronics-on-emis |


  Scenario Outline: HM To verify All On EMI- Two-wheelers
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over menu "<Loan type>"
    And clicks on single "<dropDownType>" and "<Loan type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | Expected Url                      |
      | All on EMI | Two-wheelers | https://uat-oneweb.bajajfinserv.in/two-wheelers-on-emis |

  Scenario Outline: HM To verify All On EMI- Lifestyle
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over menu "<Loan type>"
    And clicks on single "<dropDownType>" and "<Loan type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | Expected Url                      |
      | All on EMI | Lifestyle | https://uat-oneweb.bajajfinserv.in/lifestyle-products-on-emis |

  Scenario Outline: HM To verify All On EMI- Offers & Promotions
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over menu "<Loan type>"
    And clicks on single "<dropDownType>" and "<Loan type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | Expected Url                      |
      | All on EMI | Offers & Promotions | https://uat-oneweb.bajajfinserv.in/no-cost-emi-offers |
#https://uat-oneweb.bajajfinserv.in/no-cost-emi-offers


  Scenario Outline: All On Emi Travel - MakeMyTrip
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType     | Loan type    | level 2 Sub Type          | Expected Url                                          |
      | All on EMI  | Travel | MakeMyTrip | https://uat-oneweb.bajajfinserv.in/shop-online-make-my-trip |



  Scenario Outline: All On Emi Travel - Yatra
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType     | Loan type    | level 2 Sub Type          | Expected Url                                          |
      | All on EMI  | Travel | Yatra| https://uat-oneweb.bajajfinserv.in/shop-online-yatra |

  Scenario Outline: All On Emi Travel - Goibibo
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType     | Loan type    | level 2 Sub Type          | Expected Url                                          |
      | All on EMI  | Travel | Goibibo | https://uat-oneweb.bajajfinserv.in/shop-online-goibibo |

  Scenario Outline: All On Emi Travel - Ease My Trip
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType     | Loan type    | level 2 Sub Type          | Expected Url                                          |
      | All on EMI  | Travel | Ease My Trip | https://www.bajajfinserv.in/shop-online-ease-my-trip |


  Scenario Outline: All On Emi Travel - Holiday Packages
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType     | Loan type    | level 2 Sub Type          | Expected Url                                          |
      | All on EMI  | Travel | Holiday Packages | https://uat-oneweb.bajajfinserv.in/emi-network-holiday-packages-on-emi |