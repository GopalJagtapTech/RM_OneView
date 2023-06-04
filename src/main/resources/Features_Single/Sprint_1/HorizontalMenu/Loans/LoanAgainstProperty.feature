@regression
Feature: Loan Against Property
#  @run
#  Scenario Outline: HM_LAP To Login the Application
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User lands on Home Page
#    Examples:
#      | Mobile Number | Date     | Customer Type |
#      | 9890801661    | 26051982 | Individual    |
  @run
  Scenario Outline: HM_LAP To verify Loan Against Property - Overview
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type     | level 2 Sub Type    | Expected Url                              |
      | Loans        | Loan Against Property  | Overview | https://uat-oneweb.bajajfinserv.in/loan-against-property |
  @run
  Scenario Outline: HM_LAP To verify Loan Against Property - Eligibility Criteria
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type     | level 2 Sub Type    | Expected Url                              |
      | Loans        | Loan Against Property  | Eligibility Criteria | https://uat-oneweb.bajajfinserv.in/loan-against-property-eligibility-and-documents |
  @run
  Scenario Outline: HM_LAP To verify Loan Against Property - Interest Rates, Fees and Charges
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type     | level 2 Sub Type    | Expected Url                              |
      | Loans        | Loan Against Property  | Interest Rates, Fees and Charges | https://uat-oneweb.bajajfinserv.in/loan-against-property-fees-and-interest-rates |
  @run
Scenario Outline: HM_LAP To verify Loan Against Property - EMI Calculator
  When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type     | level 2 Sub Type    | Expected Url                              |
      | Loans        | Loan Against Property  | EMI Calculator | https://uat-oneweb.bajajfinserv.in/loan-against-property-emi-calculator |


  Scenario Outline: HM_CC To verify Loan Against Property -  Apply Online
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>"& Apply Online "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      | Loans        | Loan Against Property | Apply Online | https://uat-oneweb.bajajfinserv.in/lap-pincode-master |

  Scenario Outline: HM To verify Lease Rental Discounting
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over menu "<Loan type>"
    And clicks on single "<dropDownType>" and "<Loan type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | Expected Url                      |
      | Loans | Lease Rental Discounting | https://uat-oneweb.bajajfinserv.in/lease-rental-discounting |





#  @run
#Scenario Outline: HM_LAP To verify Loan Against Property - Mortgage Loan
#  When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
#    And clicks on "<Loan type>","<level 2 Sub Type>"
#    Then Customer should be Redirected to "<Expected Url>"
#    Examples:
#      | dropDownType | Loan type     | level 2 Sub Type    | Expected Url                              |
#      | Loans        | Loan Against Property  | Mortgage Loan | https://www.bajajfinserv.in/mortgage-loan |
#  @run
#Scenario Outline: HM_LAP To verify Loan Against Property - Education Loan on property
#  When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
#    And clicks on "<Loan type>","<level 2 Sub Type>"
#    Then Customer should be Redirected to "<Expected Url>"
#    Examples:
#      | dropDownType | Loan type     | level 2 Sub Type    | Expected Url                              |
#      | Loans        | Loan Against Property  | Education Loan on property | https://www.bajajfinserv.in/education-loan-on-property |
#  @run
#Scenario Outline: HM_LAP To verify Loan Against Property - Lease Rental Discounting
#  When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
#    And clicks on "<Loan type>","<level 2 Sub Type>"
#    Then Customer should be Redirected to "<Expected Url>"
#    Examples:
#      | dropDownType | Loan type     | level 2 Sub Type    | Expected Url                              |
#      | Loans        | Loan Against Property  | Lease Rental Discounting | https://www.bajajfinserv.in/lease-rental-discounting |
#  @run
#Scenario Outline: HM_LAP To verify Loan Against Property - FAQs
#  When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
#    And clicks on "<Loan type>","<level 2 Sub Type>"
#    Then Customer should be Redirected to "<Expected Url>"
#    Examples:
#      | dropDownType | Loan type     | level 2 Sub Type    | Expected Url                              |
#      | Loans        | Loan Against Property  | FAQs | https://www.bajajfinserv.in/loan-against-property-faq-questions |
#  @run
#Scenario Outline: HM_LAP To verify Loan Against Property - Review
#  When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
#    And clicks on "<Loan type>","<level 2 Sub Type>"
#    Then Customer should be Redirected to "<Expected Url>"
#    Examples:
#      | dropDownType | Loan type     | level 2 Sub Type    | Expected Url                              |
#      | Loans        | Loan Against Property  | Review | https://www.bajajfinserv.in/loan-against-property-reviews |
#  @run
#Scenario Outline: HM_LAP To verify Loan Against Property - Contact Us
#  When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
#    And clicks on "<Loan type>","<level 2 Sub Type>"
#    Then Customer should be Redirected to "<Expected Url>"
#    Examples:
#      | dropDownType | Loan type     | level 2 Sub Type    | Expected Url                              |
#      | Loans        | Loan Against Property  | Contact Us | https://www.bajajfinserv.in/loan-against-property-contact-details |
#  @run
#Scenario Outline: HM_LAP To verify Loan Against Property - Loan Against Property Insights
#  When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
#    And clicks on "<Loan type>","<level 2 Sub Type>"
#    Then Customer should be Redirected to "<Expected Url>"
#    Examples:
#      | dropDownType | Loan type     | level 2 Sub Type    | Expected Url                              |
#      | Loans        | Loan Against Property  | Loan Against Property Insights | https://www.bajajfinserv.in/insights/loan-against-property |
#  @run
#  Scenario: HM_LAP To Logout the Application
#    Given Logout the Application
#    Then close the Application