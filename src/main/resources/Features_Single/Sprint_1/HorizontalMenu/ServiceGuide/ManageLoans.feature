Feature: Service Guide-Manage your Loans

  @runQWE
  Scenario Outline: HM_CC To verify Manage your Loans Overview
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      |Service Guides| Manage your Loans | Overview | https://uat-oneweb.bajajfinserv.in/service-guides/manage-your-loans-in-my-account |

  Scenario Outline: HM_CC To verify Manage your Loans Consumer Durable Loans
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      |Service Guides| Manage your Loans | Consumer Durable Loans | https://uat-oneweb.bajajfinserv.in/service-guides/manage-your-consumer-durable-loans-in-my-account |


  Scenario Outline: HM_CC To verify Manage your Loans Loan Flexi Loans
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      |Service Guides| Manage your Loans | Flexi Loans | https://uat-oneweb.bajajfinserv.in/service-guides/manage-your-flexi-loans-in-my-account |


#  Scenario Outline: HM_CC To verify Manage your Loans Loan Repayment
#    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
#    And clicks on "<Loan type>","<level 2 Sub Type>"
#    Then Customer should be Redirected to "<Expected Url>"
#    Examples:
#      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
#      |Service Guides| Manage your Loans | Loan Repayment | https://uat-oneweb.bajajfinserv.in/service-guides/manage-your-loan-payment-in-my-account |
#
#
#  Scenario Outline: HM_CC To verify Manage your Loans Funds Withdrawal
#    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
#    And clicks on "<Loan type>","<level 2 Sub Type>"
#    Then Customer should be Redirected to "<Expected Url>"
#    Examples:
#      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
#      |Service Guides| Manage your Loans | Funds Withdrawal | https://uat-oneweb.bajajfinserv.in/service-guides/withdraw-funds-in-my-account |
#
#
#  Scenario Outline: HM_CC To verify Manage your LoansBank Account Details
#    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
#    And clicks on "<Loan type>","<level 2 Sub Type>"
#    Then Customer should be Redirected to "<Expected Url>"
#    Examples:
#      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
#      |Service Guides| Manage your Loans | Bank Account Details | https://uat-oneweb.bajajfinserv.in/service-guides/manage-bank-account-details-in-my-account |
#
#
#  Scenario Outline: HM_CC To verify Manage your Loans Loan Foreclosure
#    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
#    And clicks on "<Loan type>","<level 2 Sub Type>"
#    Then Customer should be Redirected to "<Expected Url>"
#    Examples:
#      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
#      |Service Guides| Manage your Loans | Loan Foreclosure | https://uat-oneweb.bajajfinserv.in/service-guides/loan-foreclosure-in-my-account |
