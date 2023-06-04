Feature: Service Guide-Manage your profile

  @runQWE
  Scenario Outline: HM_CC To verify Manage your profile Overview
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      |Service Guides| Manage your Profile | Overview | https://uat-oneweb.bajajfinserv.in/service-guides/manage-your-my-account-profile |


  Scenario Outline: HM_CC To verify Manage your profile Contact Details
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      |Service Guides| Manage your Profile | Contact Details | https://uat-oneweb.bajajfinserv.in/service-guides/manage-your-contact-details-on-my-account |



  Scenario Outline: HM_CC To verify Manage your profile Personal Details
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      |Service Guides| Manage your Profile | Personal Details | https://uat-oneweb.bajajfinserv.in/service-guides/manage-your-personal-details-on-my-account |



  Scenario Outline: HM_CC To verify Manage your profile GST Details
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      |Service Guides| Manage your Profile | GST Details | https://uat-oneweb.bajajfinserv.in/service-guides/manage-your-gst-details-on-my-account |



