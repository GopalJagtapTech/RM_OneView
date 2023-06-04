Feature: Login pop up cross button to land on my account login landing page


   Scenario:verify that customer is able to view sign in popin under my account
    Given User is on Login Page
    When User clicks on My Account
    Then Customer should be able to view sign in popin under my account


  Scenario:Verify that Login popup is visible on click of sign in
    Given User is on Login Page
    When User clicks on My Account
    And Click on Sign in popin
    Then Login popup should be visible to customer

  Scenario:verify that cross (x) CTA of login popup is visible and clickable
    Given User is on Login Page
    When User clicks on My Account
    And Click on Sign in popin
    Then Cross (x) CTA of login popup should be visible and clickable

  Scenario:Verify that customer lands on my account login landing page on click of cross (x) CTA of  login popup
    Given User is on Login Page
    When User clicks on My Account
    And Click on Sign in popin
    And Click on Cross mark(x) CTA of popup
    Then Customer should be landed on my account login landing page on click of cross (x) CTA of login popup
