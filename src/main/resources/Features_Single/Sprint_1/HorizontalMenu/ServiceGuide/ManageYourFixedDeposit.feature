Feature: Service Guide-Manage your Fixed Deposit

  @runQWE
  Scenario Outline: HM_CC To verify Manage your Fixed deposit-Overview
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      |Service Guides| Manage your Fixed Deposit | Overview | https://uat-oneweb.bajajfinserv.in/service-guides/manage-your-fixed-deposits-in-my-account |


  @runQWE
  Scenario Outline: HM_CC To verify Manage your Fixed deposit-FD Details
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      |Service Guides| Manage your Fixed Deposit | FD Details | https://uat-oneweb.bajajfinserv.in/service-guides/check-your-fixed-deposit-details-in-my-account |

  @runQWE
  Scenario Outline: HM_CC To verify Manage your Fixed deposit-Renew your FD
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      |Service Guides| Manage your Fixed Deposit | Renew your FD | https://uat-oneweb.bajajfinserv.in/service-guides/renew-your-fixed-deposit-in-my-account |

  @runQWE
  Scenario Outline: HM_CC To verify Manage your Fixed deposit-FD Receipt
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      |Service Guides| Manage your Fixed Deposit | FD Receipt | https://uat-oneweb.bajajfinserv.in/service-guides/check-your-fixed-deposit-receipt-in-my-account |

  @runQWE
  Scenario Outline: HM_CC To verify Manage your Fixed deposit-Update Nominee Details
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      |Service Guides| Manage your Fixed Deposit | Update Nominee Details | https://uat-oneweb.bajajfinserv.in/service-guides/modify-nominee-details-in-my-account |

  @runQWE
  Scenario Outline: HM_CC To verify Manage your Fixed deposit-Bank Account Details
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      |Service Guides| Manage your Fixed Deposit | Bank Account Details | https://uat-oneweb.bajajfinserv.in/service-guides/update-your-fixed-deposit-bank-details-in-my-account |

  @runQWE
  Scenario Outline: HM_CC To verify Manage your Fixed deposit-Apply for a TDS Waiver
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      |Service Guides| Manage your Fixed Deposit | Apply for a TDS Waiver | https://uat-oneweb.bajajfinserv.in/service-guides/apply-for-tds-waiver-in-my-account |

  @runQWE
  Scenario Outline: HM_CC To verify Manage your Fixed deposit-Apply for a Loan Against Fixed Deposit
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      |Service Guides| Manage your Fixed Deposit | Apply for a Loan Against Fixed Deposit | https://uat-oneweb.bajajfinserv.in/service-guides/apply-for-a-loan-against-fixed-deposit |

  @runQWE
  Scenario Outline: HM_CC To verify Manage your Fixed deposit-Premature Withdrawal
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      |Service Guides| Manage your Fixed Deposit | Premature Withdrawal | https://uat-oneweb.bajajfinserv.in/service-guides/withdraw-your-fd-prematurely-in-my-account |

  @runQWE
  Scenario Outline: HM_CC To verify Manage your Fixed deposit-Submit FATCA Form
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      |Service Guides| Manage your Fixed Deposit | Submit FATCA Form | https://uat-oneweb.bajajfinserv.in/service-guides/submit-your-fatca-declaration-in-my-account |

  @runQWE
  Scenario Outline: HM_CC To verify Manage your Fixed deposit-Add a Joint Account Holder
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      |Service Guides| Manage your Fixed Deposit | Add a Joint Account Holder | https://uat-oneweb.bajajfinserv.in/service-guides/add-joint-account-holder-for-fd-in-my-account |
