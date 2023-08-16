Feature: FF_3177816_My Account page for Web

#  @My Account Intermediate Page

  Scenario Outline: To verify My Account is displayed under Profile
    Given User is logged in "<MOB>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Click on Profile Icon
    Then "My Account" should be displayed under Profile
    And Click on Profile Icon

    Examples:
      | MOB        | DOB        | Customer Type |
      | 9830038796 | 13/09/1990 | Corporate     |

  Scenario Outline: To verify the redirection to My Account Intermediate page when clicking on My Account under Profile on Homepage
    Given User is logged in "<MOB>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Click on Profile Icon
    And Click on "My Account" under Profile
    Then Verify Customer Redirected to "MyAccountLoanServices/MyRelation/RelationIntermediate" Url
    Examples:
      | MOB        | DOB        | Customer Type |
      | 9830038796 | 13/09/1990 | Corporate     |

  Scenario Outline: To verify given sections & Components are displayed on My Account Intermediate page
    Given User is logged in "<MOB>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Click on Profile Icon
    And Click on "My Account" under Profile
    Then Verify Customer Redirected to "MyAccountLoanServices/MyRelation/RelationIntermediate" Url
    And Below Components & Section should be displayed:
#  1.Name Component
#  2.Shortcut Component
#  3.My Relation section
#  4.Pre-Approved section
#  5.FAQs section
    Examples:
      | MOB        | DOB        | Customer Type |
      | 9830038796 | 13/09/1990 | Corporate     |

  Scenario Outline: To verify the redirection when click on Edit Profile CTA under Name component section
    Given User is logged in "<MOB>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Click on Profile Icon
    And Click on "My Account" under Profile
    Then Verify Customer Redirected to "MyAccountLoanServices/MyRelation/RelationIntermediate" Url
    And Click on Edit Profile CTA in Profile Page
    Then Verify Customer Redirected to "MyAccountService/UpdateDetails/UserProfileDetails" Url
    Examples:
      | MOB        | DOB        | Customer Type |
      | 9830038796 | 13/09/1990 | Corporate     |

  Scenario Outline: To verify Acc. Holder name is displayed under Name component section
    Given User is logged in "<MOB>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Click on Profile Icon
    And Click on "My Account" under Profile
    Then Verify Customer Redirected to "MyAccountLoanServices/MyRelation/RelationIntermediate" Url
    And Account holder name should be displayed under Name Component section
    Examples:
      | MOB        | DOB        | Customer Type |
      | 9830038796 | 13/09/1990 | Corporate     |

  Scenario Outline: To verify the redirection when click on Shortlist option under Shortcut component
    Given User is logged in "<MOB>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Click on Profile Icon
    And Click on "My Account" under Profile
    Then Verify Customer Redirected to "MyAccountLoanServices/MyRelation/RelationIntermediate" Url
    And Click on "Shortlist" option under Shortcut component
    Then Customer should be redirected to "https://uat-onlineforms.bajajfinserv.in/webform/mycart"

    Examples:
      | MOB        | DOB        | Customer Type |
      | 9830038796 | 13/09/1990 | Corporate     |

  Scenario Outline: To verify the redirection when click on Passbook option under Shortcut component
    Given User is logged in "<MOB>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Click on Profile Icon
    And Click on "My Account" under Profile
    Then Verify Customer Redirected to "MyAccountLoanServices/MyRelation/RelationIntermediate" Url
    And Click on "Passbook" option under Shortcut component
    Then Verify Customer Redirected to "MyAccountPayments/Passbook/PassbookBBPS" Url
    Examples:
      | MOB        | DOB        | Customer Type |
      | 9830038796 | 13/09/1990 | Corporate     |

  Scenario Outline: To verify the redirection when click on Document Centre option under Shortcut component
    Given User is logged in "<MOB>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Click on Profile Icon
    And Click on "My Account" under Profile
    Then Verify Customer Redirected to "MyAccountLoanServices/MyRelation/RelationIntermediate" Url
    And Click on "Document Center" option under Shortcut component
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter/index" Url

    Examples:
      | MOB        | DOB        | Customer Type |
      | 9830038796 | 13/09/1990 | Corporate     |

  Scenario Outline: To verify the redirection when click on EMI Vault option under Shortcut component
    Given User is logged in "<MOB>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Click on Profile Icon
    And Click on "My Account" under Profile
    Then Verify Customer Redirected to "MyAccountLoanServices/MyRelation/RelationIntermediate" Url
    And Click on "EMI Vault" option under Shortcut component
    Then "Coming Soon" Popup should be displayed
    Examples:
      | MOB        | DOB        | Customer Type |
      | 9830038796 | 13/09/1990 | Corporate     |

  Scenario Outline: To verify the redirection when click on Help & Support under Shortcut component
    Given User is logged in "<MOB>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Click on Profile Icon
    And Click on "My Account" under Profile
    Then Verify Customer Redirected to "MyAccountLoanServices/MyRelation/RelationIntermediate" Url
    And Click on "Help & Support" option under Shortcut component
    Then Verify Customer Redirected to "MyAccountService/HelpAndSupport/Index" Url

    Examples:
      | MOB        | DOB        | Customer Type |
      | 9830038796 | 13/09/1990 | Corporate     |

  Scenario Outline: To verify under My Relation section all the relation are displayed in given Relation type and order
    Given User is logged in "<MOB>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Click on Profile Icon
    And Click on "My Account" under Profile
    Then Verify Customer Redirected to "MyAccountLoanServices/MyRelation/RelationIntermediate" Url
    And Customer is able to view My Relations Section

    Examples:
      | MOB        | DOB        | Customer Type |
      | 9830038796 | 13/09/1990 | Corporate     |

  Scenario Outline: To verify the redirection when click on View All under My Relation section on My Account Intermediate page
    Given User is logged in "<MOB>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Click on Profile Icon
    And Click on "My Account" under Profile
    Then Verify Customer Redirected to "MyAccountLoanServices/MyRelation/RelationIntermediate" Url
    And Click on "View All" under My Relation section on My Account Intermediate page
    Then Verify Customer Redirected to "MyAccountLoanServices/MyRelation/Index" Url

    Examples:
      | MOB        | DOB        | Customer Type |
      | 9830038796 | 13/09/1990 | Corporate     |

  @check
  Scenario Outline: To verify the Pre-Approved carousal banner is moving left or right when clicking on Left or Right Arrow
    Given User is logged in "<MOB>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Click on Profile Icon
    And Click on "My Account" under Profile
    Then Verify Customer Redirected to "MyAccountLoanServices/MyRelation/RelationIntermediate" Url
    And verify Pre Approved Offers in Intermediate Page
    Then Pre Approved banner should move left or right as per the click
    Examples:
      | MOB        | DOB        | Customer Type |
      | 9830038796 | 13/09/1990 | Corporate     |





