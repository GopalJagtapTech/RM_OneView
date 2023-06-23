Feature: New Home Page – Per-approved offer for you
  @FirstPLS
  Scenario Outline: Verify User is having has a pre-approved PL offer
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Verify User is having Personal Loan Offer
    Then Verify User is redirected to new PL form when customer click on Apply Now CTA Under Pre-approved Offer for you section
    Then Customer should be redirected to respective "<Expected Url>"
    When User navigated to homePage
    Examples:
      | Mobile Number | Date     | Customer Type | Expected Url|
      | 7045733821| 26051982 | Individual    |      https://uat-onlineforms.bajajfinserv.in/webform           |
  @FirstPLSS
  Scenario Outline: Verify User is having has a pre-approved PL offer
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Verify User is having Personal Loan Offer
    Then Verify User is redirected to new PL form when customer click on Apply Now CTA under Pre-approved Banner
    Then Customer should be redirected to respective "<Expected Url>"
    When User navigated to homePage
    Examples:
      | Mobile Number | Date     | Customer Type | Expected Url|
      | 7045733821| 26051982 | Individual    |   https://uat-onlineforms.bajajfinserv.in/webform             |
  @FirstPLSS
  Scenario Outline: HM_CC To verify Personal Loan -  Apply Online
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>"& Apply Online "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | Mobile Number | Date     | Customer Type | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      | 7045733821| 26051982 | Individual    | Loans        | Personal Loan | Apply Online | https://uat-onlineforms.bajajfinserv.in/webform |



  @FirstPL
  Scenario Outline: Verify User is having has a pre-approved PL offer
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Verify User is having Personal Loan Offer
    Then Verify User is redirected to new PL form when customer click on Personal icon under Apply for Loans Master Card section
    Then Customer should be redirected to respective "<Expected Url>"
    When User navigated to homePage
    Examples:
      | Mobile Number | Date     | Customer Type | Expected Url|
      | 7045733821| 26051982 | Individual    |    https://uat-onlineforms.bajajfinserv.in/webform           |

  @FirstPL
  Scenario Outline: Verify User is having has a pre-approved PL offer
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Verify User is having Personal Loan Offer
    Then Verify User is redirected to new PL form when customer click on Personal Loan under Products for you section
    Then Customer should be redirected to respective "<Expected Url>"
    When User navigated to homePage
    Examples:
      | Mobile Number | Date     | Customer Type | Expected Url|
      | 7045733821| 26051982 | Individual    |       https://uat-onlineforms.bajajfinserv.in/webform          |
  @FirstPL
  Scenario Outline: Verify User is having has a pre-approved PL offer
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    #And Verify User is having Personal Loan Offer
    Then Verify User is redirected to new PL form when customer click on Personal Loan under Offers for you section
    Then Customer should be redirected to respective "<Expected Url>"
    When User navigated to homePage
    Examples:
      | Mobile Number | Date     | Customer Type | Expected Url|
      | 7045733821| 26051982 | Individual    |     https://uat-oneweb.bajajfinserv.in/personal-loan            |
  @FirstPL
  Scenario Outline: Verify User is having has a pre-approved PL offer
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    #And Verify User is having Personal Loan Offer
    Then Verify User is redirected to new PL form when customer click on Personal Loan under Footer section
    Then Customer should be redirected to respective "<Expected Url>"
    When User navigated to homePage
    Examples:
      | Mobile Number | Date     | Customer Type | Expected Url|
      | 7045733821| 26051982 | Individual    |  https://uat-oneweb.bajajfinserv.in/personal-loan       |



  # If the customer is an ETB, and does not have any pre-approved PL offer

  @Second
  Scenario Outline: HM_CC To verify Personal Loan -  Apply Online Hedaer section
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>"& Apply Online "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | Mobile Number | Date     | Customer Type | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      | 9344678309| 26051982 | Individual    | Loans        | Personal Loan | Apply Online | https://uat-oneweb.bajajfinserv.in/personal-loan |
  @Second
  Scenario Outline: Verify User is having has a pre-approved PL offer Master Card section
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    #And Verify User is having Personal Loan Offer
    Then Verify User is redirected to new PL form when customer click on Personal icon under Apply for Loans Master Card section
    Then Customer should be redirected to respective "<Expected Url>"
    When User navigated to homePage
    Examples:
      | Mobile Number | Date     | Customer Type | Expected Url|
      | 9344678309| 26051982 | Individual    |    https://uat-oneweb.bajajfinserv.in/personal-loan           |



  @Second
  Scenario Outline: Verify User is having has a pre-approved PL offer
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    #And Verify User is having Personal Loan Offer
    Then Verify User is redirected to new PL form when customer click on Personal Loan under Products for you section
    Then Customer should be redirected to respective "<Expected Url>"
    When User navigated to homePage
    Examples:
      | Mobile Number | Date     | Customer Type | Expected Url|
      | 9344678309| 26051982 | Individual    |       https://uat-oneweb.bajajfinserv.in/personal-loan          |
  @Second
  Scenario Outline: Verify User is having has a pre-approved PL offer
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    #And Verify User is having Personal Loan Offer
    Then Verify User is redirected to new PL form when customer click on Personal Loan under Offers for you section
    Then Customer should be redirected to respective "<Expected Url>"
    When User navigated to homePage
    Examples:
      | Mobile Number | Date     | Customer Type | Expected Url|
      | 9344678309| 26051982 | Individual    |     https://uat-oneweb.bajajfinserv.in/personal-loan            |
  @Second
  Scenario Outline: Verify User is having has a pre-approved PL offer
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    #And Verify User is having Personal Loan Offer
    Then Verify User is redirected to new PL form when customer click on Personal Loan under Footer section
    Then Customer should be redirected to respective "<Expected Url>"
    When User navigated to homePage
    Examples:
      | Mobile Number | Date     | Customer Type | Expected Url|
      | 9344678309| 26051982 | Individual    |  https://uat-oneweb.bajajfinserv.in/personal-loan       |


 # If the customer does not have any offer in any case
  @Third
  Scenario Outline: HM_CC To verify Personal Loan -  Apply Online Hedaer section
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>"& Apply Online "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | Mobile Number | Date     | Customer Type | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      | 9860149678| 26051982 | Individual    | Loans        | Personal Loan | Apply Online | https://uat-oneweb.bajajfinserv.in/personal-loan |
  @Third
  Scenario Outline: Verify User is having has a pre-approved PL offer Master Card section
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    #And Verify User is having Personal Loan Offer
    Then Verify User is redirected to new PL form when customer click on Personal icon under Apply for Loans Master Card section
    Then Customer should be redirected to respective "<Expected Url>"
    When User navigated to homePage
    Examples:
      | Mobile Number | Date     | Customer Type | Expected Url|
      | 9860149678| 26051982 | Individual    |    https://uat-oneweb.bajajfinserv.in/personal-loan           |

  @Third
  Scenario Outline: Verify User is having has a pre-approved PL offer
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    #And Verify User is having Personal Loan Offer
    Then Verify User is redirected to new PL form when customer click on Personal Loan under Products for you section
    Then Customer should be redirected to respective "<Expected Url>"
    When User navigated to homePage
    Examples:
      | Mobile Number | Date     | Customer Type | Expected Url|
      | 9860149678| 26051982 | Individual    |       https://uat-oneweb.bajajfinserv.in/personal-loan          |
  @Third
  Scenario Outline: Verify User is having has a pre-approved PL offer
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    #And Verify User is having Personal Loan Offer
    Then Verify User is redirected to new PL form when customer click on Personal Loan under Offers for you section
    Then Customer should be redirected to respective "<Expected Url>"
    When User navigated to homePage
    Examples:
      | Mobile Number | Date     | Customer Type | Expected Url|
      | 9860149678| 26051982 | Individual    |     https://uat-oneweb.bajajfinserv.in/personal-loan            |
  @Third
  Scenario Outline: Verify User is having has a pre-approved PL offer
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    #And Verify User is having Personal Loan Offer
    Then Verify User is redirected to new PL form when customer click on Personal Loan under Footer section
    Then Customer should be redirected to respective "<Expected Url>"
    When User navigated to homePage
    Examples:
      | Mobile Number | Date     | Customer Type | Expected Url|
      | 9860149678| 26051982 | Individual    |  https://uat-oneweb.bajajfinserv.in/personal-loan       |




