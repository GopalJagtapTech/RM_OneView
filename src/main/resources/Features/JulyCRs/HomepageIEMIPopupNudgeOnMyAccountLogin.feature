Feature: Home page-IEMI Pop-up/Nudge On My Account Login

  Scenario Outline: To verify customer is able to view Drawer/ pop-up for first time PTB login
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Verify Customer must have Insta EMI Pre-approved Offer
    Then Customer should be able to view drawer/pop up for First time with “Get your EMI Card Now” CTA for PTB Customer

    Examples:
      | Mobile Number | Date       | Customer Type |
      | 9560296381    | 02-03-1960 | Individual    |


  Scenario Outline: To verify customer is able to view Drawer/ pop-up for first time PTB login
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Verify Customer must have Insta EMI Pre-approved Offer
    And Click on Cross icon
    Then Pop-up should get closed

    Examples:
      | Mobile Number | Date       | Customer Type |
      | 9560296381    | 02-03-1960 | Individual    |


