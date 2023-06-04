
Feature:  Alerts bell Icon Offers
@Alert
  Scenario Outline:To verify Customer is redirected to Given URL when customer click on Check Offer CTA under Pre-approved Personal Loan
Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
When User is on Home Page
And User click on Alert Bell icon
And click on Check Offer CTA under Pre-approved Personal Loan
  Then Customer should be Redirected to "<Expected Url>"
  When User navigated to homePage
Examples:
| Mobile Number | Date     | Customer Type |Expected Url|
| 7979997305    | 26051982 | Individual|https://www.bajajfinserv.in/personal-loan|

  @Alert
  Scenario Outline: To verify Customer is redirected to Given URL when customer click on Get It Now CTA under Insta EMI Card
Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
When User is on Home Page
And User click on Alert Bell icon
And click on Get It Now CTA under Insta EMI Card
    Then Customer should be Redirected to "<Expected Url>"
    When User navigated to homePage
Examples:
| Mobile Number | Date     | Customer Type |Expected Url|
| 7979997305    | 26051982 | Individual|https://www.bajajfinserv.in/insta-emi-card|
