@regression
Feature: Business Loan NTB
#  @run
#  Scenario Outline: HM_BL To Login the Application
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User lands on Home Page
#    Examples:
#      | Mobile Number | Date     | Customer Type |
#      | 9890801661    | 26051982 | Individual    |


  Scenario Outline: Loans - Commercial Lending -Overview
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      | Loans | Commercial Lending | Overview | https://uat-oneweb.bajajfinserv.in/commercial-lending |


  Scenario Outline: Loans - Commercial Lending -Term Loans
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      | Loans | Commercial Lending | Term Loans | https://uat-oneweb.bajajfinserv.in/commercial-lending-term-loans |

  Scenario Outline: Loans - Commercial Lending -Working Capital Products
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      | Loans | Commercial Lending | Working Capital Products | https://uat-oneweb.bajajfinserv.in/commercial-lending-working-capital-products |


  Scenario Outline: Loans - Commercial Lending -Corporate Lease Rental Discounting
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      | Loans | Commercial Lending | Corporate Lease Rental Discounting | https://uat-oneweb.bajajfinserv.in/commercial-lending-corporate-lease-rental-discounting |