
Feature:  Alerts bell Icon Offers & CPP  Portal
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

@CPPK
  Scenario Outline:To verify customer redirected to CPP portal page when click on “ Raise A Request “ CTA
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on View All of My relatiom
    And Click on Insurance Tab in View All
    And click on Active Insurance Tile having product code "<Policy No>"
    And Click on Claim Request CTA
    Then customer should be redirected to CPP Portal Page "<Expected Url>" when customer click on Raise A Request CTA

    Examples:
      | Mobile Number | Date     | Customer Type |Expected Url| Policy No|
   #   | 9657750697    | 23101986 | Individual| https://portal.cppwebservices.in/ | IM0574087 |
      | 9884498860    | 23101986 | Individual| https://portal.cppwebservices.in/ | CP000053ES16200 |
    #  | 9004342424    | 23101986 | Individual| https://portal.cppwebservices.in/ | CP000053ET16000 |


@EMIPOpup
  Scenario Outline: Home page-IEMI Pop-up/Nudge On My Account Login To verify customer is able to view Drawer/ pop-up for first time PTB login
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Verify Customer must have Insta EMI Pre-approved Offer
    Then Customer should be able to view drawer/pop up for First time with Get your EMI Card Now CTA for PTB Customer

    Examples:
      | Mobile Number | Date     | Customer Type |
      | 9560296381|02-03-1960| Individual	     |


