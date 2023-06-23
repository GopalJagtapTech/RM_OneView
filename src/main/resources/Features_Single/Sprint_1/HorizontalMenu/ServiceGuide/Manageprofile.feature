Feature: Service Guide-Manage your profile

  @runQWE
  Scenario Outline: HM_CC To verify Manage your profile Overview
    When Customer Clicks on "<dropDownType>" Drop-down
    And Hover over "<Loan type>"
    And clicks on SubOptionType"<level 2 Sub Type>" under SubMenu"<Loan type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      |Services| Manage your Profile | Overview | https://uat-oneweb.bajajfinserv.in/service-guides/manage-your-my-account-profile |


  Scenario Outline: HM_CC To verify Manage your profile Contact Details
    When Customer Clicks on "<dropDownType>" Drop-down
    And Hover over "<Loan type>"
    And clicks on SubOptionType"<level 2 Sub Type>" under SubMenu"<Loan type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      |Services| Manage your Profile | Contact Details | https://uat-oneweb.bajajfinserv.in/service-guides/manage-your-contact-details-on-my-account |



  Scenario Outline: HM_CC To verify Manage your profile Personal Details
    When Customer Clicks on "<dropDownType>" Drop-down
    And Hover over "<Loan type>"
    And clicks on SubOptionType"<level 2 Sub Type>" under SubMenu"<Loan type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      |Services| Manage your Profile | Personal Details | https://uat-oneweb.bajajfinserv.in/service-guides/manage-your-personal-details-on-my-account |



  Scenario Outline: HM_CC To verify Manage your profile GST Details
    When Customer Clicks on "<dropDownType>" Drop-down
    And Hover over "<Loan type>"
    And clicks on SubOptionType"<level 2 Sub Type>" under SubMenu"<Loan type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
      |Services| Manage your Profile | GST Details | https://uat-oneweb.bajajfinserv.in/service-guides/manage-your-gst-details-on-my-account |



