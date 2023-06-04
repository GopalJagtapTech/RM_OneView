@regression

@SingleK
Feature: Locate US
  Scenario Outline: HM To verify Locate Us- Branches
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over menu "<Loan type>"
    And clicks on single "<dropDownType>" and "<Loan type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | Expected Url                      |
      | Locate Us | Branches |  https://uat-oneweb.bajajfinserv.in/branch-locator |

  Scenario Outline: HM To verify Locate Us- EMI Network Partner Stores
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over menu "<Loan type>"
    And clicks on single "<dropDownType>" and "<Loan type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | Expected Url                      |
      | Locate Us | EMI Network Partner Stores | https://uat-oneweb.bajajfinserv.in/bajaj-mall-store-locator |


  Scenario Outline: HM To verify Locate Us- Hospitals & Wellness Centres
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over menu "<Loan type>"
    And clicks on single "<dropDownType>" and "<Loan type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | Expected Url                      |
      | Locate Us | Hospitals & Wellness Centres | https://uat-oneweb.bajajfinserv.in/health-care-locator |


  Scenario Outline: HM To verify Locate Us- Insurance Network Hospitals
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over menu "<Loan type>"
    And clicks on single "<dropDownType>" and "<Loan type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | Expected Url                      |
      | Locate Us | Insurance Network Hospitals | https://uat-oneweb.bajajfinserv.in/insurance-hospital-locator |


  Scenario Outline: HM To verify Locate Us- Collection Centres
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over menu "<Loan type>"
    And clicks on single "<dropDownType>" and "<Loan type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | Expected Url                      |
      | Locate Us | Collection Centres |  https://uat-oneweb.bajajfinserv.in/collection-center-locator |