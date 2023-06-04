@regression

Feature: Insta Emi card
  Scenario Outline: HM_CC To verify Insta Emi Card - About Credit Card
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      | Cards | Insta EMI Card | Overview | https://uat-oneweb.bajajfinserv.in/insta-emi-card |
  @run

  Scenario Outline: HM_CC To verify Insta Emi Card - Credit Card Eligibility Criteria
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      | Cards        | Insta EMI Card | Eligibility | https://uat-oneweb.bajajfinserv.in/insta-emi-card-eligibility-and-documents |
  @run

  Scenario Outline: HM_CC To verify Insta Emi Card - Features and Benefits
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      | Cards        | Insta EMI Card | Features and Benefits | https://uat-oneweb.bajajfinserv.in/insta-emi-card-features |
  @run

  Scenario Outline: HM_CC To verify Insta Emi Card - Fees and Charges
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      | Cards        | Insta EMI Card | Fees and Charges | https://uat-oneweb.bajajfinserv.in/insta-emi-card-fees-and-charges |
  @run

  Scenario Outline: HM_CC To verify Insta Emi Card - How to Apply
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      | Cards        | Insta EMI Card | How to Apply | https://uat-oneweb.bajajfinserv.in/how-to-apply-for-insta-emi-card |


    @SGN
    Scenario Outline: HM_CC To verify Insta Emi Card - Manage your Insta EMI Card
      When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
      And clicks on "<Loan type>","<level 2 Sub Type>"
      Then Customer should be Redirected to "<Expected Url>"
      Examples:
        | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
        | Cards        | Insta EMI Card | Manage your Insta EMI Card | https://uat-oneweb.bajajfinserv.in/service-guides/manage-your-insta-emi-card-in-my-account |
  @run

  Scenario Outline: HM_CC To verify Insta Emi Card - Contact Us
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      | Cards        | Insta EMI Card | Contact Us | https://uat-oneweb.bajajfinserv.in/reach-us |


