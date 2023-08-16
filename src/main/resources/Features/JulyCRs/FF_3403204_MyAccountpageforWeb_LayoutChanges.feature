Feature: US_3403204_My Account page for Web_Layout Changes

@pass
  Scenario Outline: To verify below options are displayed under Profile for ETB/PTB Customer
    Given User is logged in "<MOB>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Click on Profile Icon
    Then Below options "<Options>" should be displayed under Profile
    And Click on Profile Icon


    Examples:
      | MOB        | DOB        | Customer Type | Options                                                                    |
      | 9422010772 | 13/09/1990 | Individual     | My Account#Raise a Request#Update Contact Details#Document Center#Sign out |
  @pass
  Scenario Outline: To verify below options are displayed under Profile for NTB Customer
    Given User is logged in "<MOB>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Click on Profile Icon
    Then Below options "<Options>" should be displayed under Profile
    And Click on Profile Icon


    Examples:
      | MOB        | DOB        | Customer Type | Options                                             |
      | 8994885654 | 13/09/1990 | Individual    | My Account#Raise a Request#Document Center#Sign out |

@pass
  Scenario Outline: To verify the redirection when click on My Account under Profile
    Given User is logged in "<MOB>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Click on Profile Icon
    And Click on "My Account" under Profile
    Then Verify Customer Redirected to "MyAccountLoanServices/MyRelation/RelationIntermediate" Url
    Examples:
      | MOB        | DOB        | Customer Type |
      | 9830038796 | 13/09/1990 | Corporate     |
  @pass
  Scenario Outline: To verify the redirection when click on Raise a Request option under Profile
    Given User is logged in "<MOB>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Click on Profile Icon
    And Click on "Raise a Request" under Profile
    Then Verify Customer Redirected to "MyAccountService/HelpAndSupport/LogRequest" Url
    Examples:
      | MOB        | DOB        | Customer Type |
      | 9830038796 | 13/09/1990 | Corporate     |

  @pass
  Scenario Outline: To verify the redirection when ETB/PTB Customer clicks on Update Contact Detail option under Profile
    Given User is logged in "<MOB>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Click on Profile Icon
    And Click on "Update Contact Details" under Profile
    Then Verify Customer Redirected to "MyAccountService/UpdateDetails/UserProfileDetails" Url
    Examples:
      | MOB        | DOB        | Customer Type |
      | 9987160686 | 13/09/1990 | Individual    |
@pass
  Scenario Outline: To verify the redirection when ETB Customer clicks on Document Center option under Profile
    Given User is logged in "<MOB>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Click on Profile Icon
    And Click on "Document Center" under Profile
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter/Index" Url
    Examples:
      | MOB        | DOB        | Customer Type |
      | 9987160686 | 13/09/1990 | Individual     |
  @pass
  Scenario Outline: To verify the redirection when PTB/NTB Customer clicks on Document Center option under Profile
    Given User is logged in "<MOB>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Click on Profile Icon
    And Click on "Document Center" under Profile
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter/Index" Url
    And Below text "You do not have any Active or Closed Loans with us" should be displayed in Document Center Page

    Examples:
      | MOB        | DOB        | Customer Type |
      | 6203899145 | 13/09/1990 | Individual     |
@single
  Scenario Outline: To verify when Customer clicks on Sign Out option under Profile
    Given User is logged in "<MOB>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Click on Profile Icon
    And Click on "Sign out" under Profile
    Then verify User is logged out of Application
    Examples:
      | MOB        | DOB        | Customer Type |
      | 6203899145 | 13/09/1990 | Individual     |

