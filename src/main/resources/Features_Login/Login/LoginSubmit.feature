Feature: Login Submit Enter buttion  to land on my account login landing page

  Scenario:  verify that customer is able to view sign in popin under my account
    Given User is on Login Page
    When User clicks on My Account
    Then Customer should be able to view sign in popin under my account


  Scenario: Verify that Login popup is visible on click of sign in
    Given User is on Login Page
    When User clicks on My Account
    And Click on Sign in popin
    Then Login popup should be visible to customer

  Scenario Outline: verify that Customer is redirecting to OTP popup on hit of enter key from keyboard
    Given User is on Login Page
    When User clicks on My Account
    And Click on Sign in popin
    And Enters Mobile Number and Date of Birth "<Mob>" "<DOB>"
    And Hit the enter key from keyboard for GET OTP
    Then OTP popup should be displayed
    Examples:
      |Mob    | DOB |
      | 8888890933 | 02022000 |


@EnterK
  Scenario Outline: verify that Customer is landing to homepage on hit of enter key from keyboard
    Given User is on Login Page
    When User clicks on My Account
    And Click on Sign in popin
    And Enters Mobile Number and Date of Birth "<Mob>" "<DOB>"
    And Hit the enter key from keyboard for GET OTP
    And Enters "<OTP>"
    And Click on Submit
    Then Customer should be redirected to home page
    When User logouts application
    Examples:
      | Mob | DOB | OTP |
      | 8888890933 | 02022000 | 123456 |


