Feature: Service Guide-Manage your Insta EMI Card

  @runQWE
  Scenario Outline: HM_CC To verify Manage your Insta EMI Card Overview
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      |Service Guides| Manage your Insta EMI Card | Overview | https://uat-oneweb.bajajfinserv.in/service-guides/manage-your-insta-emi-card-in-my-account |

  Scenario Outline: HM_CC To verify Manage your Insta EMI Card Card Details
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      |Service Guides| Manage your Insta EMI Card | Card Details | https://uat-oneweb.bajajfinserv.in/service-guides/check-insta-emi-card-details-in-my-account |

  Scenario Outline: HM_CC To verify Manage your Insta EMI Card Activate your Card
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      |Service Guides| Manage your Insta EMI Card | Activate your Card | https://uat-oneweb.bajajfinserv.in/service-guides/activate-insta-emi-card-in-my-account |


  Scenario Outline: HM_CC To verify Manage your Insta EMI Card Card Statement
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      |Service Guides| Manage your Insta EMI Card | Card Statement | https://uat-oneweb.bajajfinserv.in/service-guides/insta-emi-card-statement-in-my-account |

  Scenario Outline: HM_CC To verify Manage your Insta EMI Card Update your Card PIN
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      |Service Guides| Manage your Insta EMI Card | Update your Card PIN | https://uat-oneweb.bajajfinserv.in/service-guides/update-insta-emi-card-pin-in-my-account |

  Scenario Outline: HM_CC To verify Manage your Insta EMI Card Block or Unblock your Card
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      |Service Guides| Manage your Insta EMI Card | Block or Unblock your Card | https://uat-oneweb.bajajfinserv.in/service-guides/block-or-unblock-insta-emi-card-in-my-account |

  Scenario Outline: HM_CC To verify Manage your Insta EMI Card Access your Card
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      |Service Guides| Manage your Insta EMI Card | Access your Card | https://uat-oneweb.bajajfinserv.in/service-guides/access-insta-emi-card-in-my-account |

  Scenario Outline: HM_CC To verify Manage your Insta EMI Card Where to Use your Card
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      |Service Guides| Manage your Insta EMI Card | Where to Use your Card | https://uat-oneweb.bajajfinserv.in/service-guides/where-to-shop-with-insta-emi-card |



