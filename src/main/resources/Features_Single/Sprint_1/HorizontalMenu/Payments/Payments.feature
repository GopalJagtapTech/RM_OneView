@regression

@SingleK
Feature: Payments Menu
  Scenario Outline: HM To verify Payments- Pay Your EMI
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over menu "<Loan type>"
    And clicks on single "<dropDownType>" and "<Loan type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | Expected Url                      |
      | Payments | Pay Your EMI | https://uat-oneweb.bajajfinserv.in/check-emi-overdue |

  Scenario Outline: HM To verify Payments- Pay SuperCard Bill
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over menu "<Loan type>"
    And clicks on single "<dropDownType>" and "<Loan type>"
    Then Customer should be Redirected to new tab "<Expected Url>"
    Examples:
      | dropDownType | Loan type | Expected Url                      |
      | Payments | Pay SuperCard Bill | https://pgi.billdesk.com/ |


  Scenario Outline: HM To verify Payments- Download Wallet
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over menu "<Loan type>"
    And clicks on single "<dropDownType>" and "<Loan type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | Expected Url                      |
      | Payments | Download Wallet | https://uat-oneweb.bajajfinserv.in/e-wallet-payment |

  Scenario Outline: HM To verify Payments- Setup UPI ID
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over menu "<Loan type>"
    And clicks on single "<dropDownType>" and "<Loan type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | Expected Url                      |
      | Payments | Setup UPI ID | https://uat-oneweb.bajajfinserv.in/upi-payment |
@SGN
  Scenario Outline: HM To verify Payments- Repay Your Lo
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over menu "<Loan type>"
    And clicks on single "<dropDownType>" and "<Loan type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | Expected Url                      |
      | Payments | Repay your Loans | https://uat-oneweb.bajajfinserv.in/service-guides/repay-your-loan-emis-in-my-account |