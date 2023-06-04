@regression
Feature: Gold Loan NTB
#  @run
#  Scenario Outline: HM_GL To Login the Application
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User lands on Home Page
#    Examples:
#      | Mobile Number | Date     | Customer Type |
#      | 9890801661    | 26051982 | Individual    |
  @run
  Scenario Outline: HM_GL To verify Gold Loan - Overview
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      | Loans        | Gold Loan | Overview | https://uat-oneweb.bajajfinserv.in/gold-loan |
  @run
  Scenario Outline: HM_GL To verify Gold Loan - Eligibility Criteria
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type        | Expected Url                                                  |
      | Loans        | Gold Loan | Eligibility Criteria | https://uat-oneweb.bajajfinserv.in/gold-loan-eligibility-and-documents |
  @run
  Scenario Outline: HM_GL To verify Gold Loan - Interest Rates, Fees and Charges
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type      | Expected Url                                                    |
      | Loans        | Gold Loan | Interest Rates, Fees and Charges | https://uat-oneweb.bajajfinserv.in/gold-loan-fees-and-interest-rates |
  @run
  Scenario Outline: HM_GL To verify Gold Loan - Auction Process
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                                        |
      | Loans        | Gold Loan | Auction Process | https://uat-oneweb.bajajfinserv.in/gold-auction-process |
  @run
  Scenario Outline: HM_GL To verify Gold Loan - FAQs
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
     Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                                     |
      | Loans        | Gold Loan | FAQs | https://uat-oneweb.bajajfinserv.in/gold-loan-faq-questions |

  @run
  Scenario Outline: HM_GL To verify Gold Loan - Contact Us
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                                     |
      | Loans        | Gold Loan | Contact Us | https://uat-oneweb.bajajfinserv.in/gold-loan-contact-us |

  Scenario Outline: verify Gold Loan -  Apply Online
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>"& Apply Online "<level 2 Sub Type>"
    Then Customer should be Redirected to new tab "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      | Loans        | Gold Loan | Apply Online | https://uat-oneweb.bajajfinserv.in/gold-loan-application-form |





#  @run
#  Scenario: HM_GL To Logout the Application
#    Given Logout the Application
#    Then close the Application