Feature: FF_6570131_RM Dashboard _UI Development RM-OneView Portal

@cc
  Scenario Outline: To Verify that the user is redirected to the Dashboard Landing page after a successful login
    Given User is on RMSOneView Login Page
    And User should be able to see below Domains "<Domain>"
    And  User should select Domain "<Domain>"
    And Clicks on LogIn Button
    And User enters UserName "<Username>"
    And Clicks on Next Button for Login
    And User enters Password "<Password>"
    And Clicks on SignIn Button for Login
    Then User should be redirected to Dashboard Page "<Url>"

    Examples:
      | Domain | Username                         | Password     | Url                                                     |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://bajaj-rmoneview-uat.azurewebsites.net/dashboard |

@cc
  Scenario Outline: To verify that two tabs are displayed on dashboard
    Given User is on RMSOneView Login Page
    And User should be able to see below Domains "<Domain>"
    And  User should select Domain "<Domain>"
    And Clicks on LogIn Button
    And User enters UserName "<Username>"
    And Clicks on Next Button for Login
    And User enters Password "<Password>"
    And Clicks on SignIn Button for Login
    Then User should be redirected to Dashboard Page "<Url>"
    And Below two tabs "<Tabs>" should be displayed in Dashboard Page

    Examples:
      | Domain | Username                         | Password     | Url                                                     | Tabs                    |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://bajaj-rmoneview-uat.azurewebsites.net/dashboard | Dashboard#Your Customer |

@cc
  Scenario Outline: To verify that Given text and fields are displayed on the Dashboard Landing page
    Given User is on RMSOneView Login Page
    And User should be able to see below Domains "<Domain>"
    And  User should select Domain "<Domain>"
    And Clicks on LogIn Button
    And User enters UserName "<Username>"
    And Clicks on Next Button for Login
    And User enters Password "<Password>"
    And Clicks on SignIn Button for Login
    Then User should be redirected to Dashboard Page "<Url>"
    And Below text and fields should be displayed in Dashboard Page

#  1.RM OneView Logo
#  2.Dashboard and Your customer tabs menu
#  3.Notification and profile icon
#  4.Search Customer
  5.Nudge
#  6.Quick Links
#  7.Lead Disposition

    Examples:
      | Domain | Username                         | Password     | Url                                                     |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://bajaj-rmoneview-uat.azurewebsites.net/dashboard |

@cc
  Scenario Outline: To verify that user is able to click on dropdown under search parameter
    Given User is on RMSOneView Login Page
    And User should be able to see below Domains "<Domain>"
    And  User should select Domain "<Domain>"
    And Clicks on LogIn Button
    And User enters UserName "<Username>"
    And Clicks on Next Button for Login
    And User enters Password "<Password>"
    And Clicks on SignIn Button for Login
    Then User should be redirected to Dashboard Page "<Url>"
    And click on search parameter
    Then User should  be  able to click on dropdown under  search parameter
    Examples:
      | Domain | Username                         | Password     | Url                                                     |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://bajaj-rmoneview-uat.azurewebsites.net/dashboard |

@cc
  Scenario Outline: To verify that Search parameter option is display when user click on dropdown  (DB Driven)
    Given User is on RMSOneView Login Page
    And User should be able to see below Domains "<Domain>"
    And  User should select Domain "<Domain>"
    And Clicks on LogIn Button
    And User enters UserName "<Username>"
    And Clicks on Next Button for Login
    And User enters Password "<Password>"
    And Clicks on SignIn Button for Login
    Then User should be redirected to Dashboard Page "<Url>"
    And Verify User is able to view Below Options "<Options>" for Search By Dropdown


    Examples:
      | Domain | Username                         | Password     | Url                                                     | Options                                                    |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://bajaj-rmoneview-uat.azurewebsites.net/dashboard | Mobile Number#PAN#Customer ID#Deal Number#Agreement Number |

@cc
  Scenario Outline:To verify that user is able to select the option under search parameter
    Given User is on RMSOneView Login Page
    And User should be able to see below Domains "<Domain>"
    And  User should select Domain "<Domain>"
    And Clicks on LogIn Button
    And User enters UserName "<Username>"
    And Clicks on Next Button for Login
    And User enters Password "<Password>"
    And Clicks on SignIn Button for Login
    Then User should be redirected to Dashboard Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9945002893" into Search Input Box

    Examples:
      | Domain | Username                         | Password     | Url                                                     |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://bajaj-rmoneview-uat.azurewebsites.net/dashboard |


  Scenario Outline: To verify that proceeds CTA is enabled and clikable
    Given User is on RMSOneView Login Page
    And User should be able to see below Domains "<Domain>"
    And  User should select Domain "<Domain>"
    And Clicks on LogIn Button
    And User enters UserName "<Username>"
    And Clicks on Next Button for Login
    And User enters Password "<Password>"
    And Clicks on SignIn Button for Login
    Then User should be redirected to Dashboard Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9945002893" into Search Input Box
    And Clicks on "PROCEED" Button

    Then User should be able to select the option under search parameter

    Examples:
      | Domain | Username                         | Password     | Url                                                     |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://bajaj-rmoneview-uat.azurewebsites.net/dashboard |

@cc
  Scenario Outline: To Verify that Validation message is displayed when the user Enter invalid input
    Given User is on RMSOneView Login Page
    And User should be able to see below Domains "<Domain>"
    And  User should select Domain "<Domain>"
    And Clicks on LogIn Button
    And User enters UserName "<Username>"
    And Clicks on Next Button for Login
    And User enters Password "<Password>"
    And Clicks on SignIn Button for Login
    Then User should be redirected to Dashboard Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9945002893" into Search Input Box
    And Clicks on "PROCEED" Button
    Then Below validation message "Record does not exists for Input" should be displayed with Error header "Invalid"

#    "Record does not exists for Input"
#  "Invalid Input"

    Examples:
      | Domain | Username                         | Password     | Url                                                     |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://bajaj-rmoneview-uat.azurewebsites.net/dashboard |

  Scenario Outline: To Verify that the user is redirected to the Individual Customer Page when user entering valid details and clicking the "Proceed" CTA
    Given User is on RMSOneView Login Page
    And User should be able to see below Domains "<Domain>"
    And  User should select Domain "<Domain>"
    And Clicks on LogIn Button
    And User enters UserName "<Username>"
    And Clicks on Next Button for Login
    And User enters Password "<Password>"
    And Clicks on SignIn Button for Login
    Then User should be redirected to Dashboard Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9945002893" into Search Input Box
    And Clicks on "PROCEED" Button
    Then Customer should be redirected to the  Individual Customer Page

    Examples:
      | Domain | Username                         | Password     | Url                                                     |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://bajaj-rmoneview-uat.azurewebsites.net/dashboard |


  Scenario Outline:To Verify that Given Validation Popup Message is displayed When user Searching for a Customer Not Allocated to RM
    Given User is on RMSOneView Login Page
    And User should be able to see below Domains "<Domain>"
    And  User should select Domain "<Domain>"
    And Clicks on LogIn Button
    And User enters UserName "<Username>"
    And Clicks on Next Button for Login
    And User enters Password "<Password>"
    And Clicks on SignIn Button for Login
    Then User should be redirected to Dashboard Page "<Url>"
    And click on search parameter
    And Enter respective value under the search parameter fields
    And  click  on proceeds CTA
    Then Below pop-up message should be displayed

#  "Searched Customer Not Allocated To RM"
    Examples:
      | Domain | Username                         | Password     | Url                                                     |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://bajaj-rmoneview-uat.azurewebsites.net/dashboard |


  Scenario Outline: To Verify that the user is able to view the notification section on the dashboard page
    Given User is on RMSOneView Login Page
    And User should be able to see below Domains "<Domain>"
    And  User should select Domain "<Domain>"
    And Clicks on LogIn Button
    And User enters UserName "<Username>"
    And Clicks on Next Button for Login
    And User enters Password "<Password>"
    And Clicks on SignIn Button for Login
    Then User should be redirected to Dashboard Page "<Url>"
    Then User should be  able to view notification section  under dashboard page

    Examples:
      | Domain | Username                         | Password     | Url                                                     |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://bajaj-rmoneview-uat.azurewebsites.net/dashboard |


  Scenario Outline:To verify that RM Name and profile is  displayed on top Right corner of the Page
    Given User is on RMSOneView Login Page
    And User should be able to see below Domains "<Domain>"
    And  User should select Domain "<Domain>"
    And Clicks on LogIn Button
    And User enters UserName "<Username>"
    And Clicks on Next Button for Login
    And User enters Password "<Password>"
    And Clicks on SignIn Button for Login
    Then User should be redirected to Dashboard Page "<Url>"
    Then RM Name and profile should be displayed on top Right corner of the Page
    Examples:
      | Domain | Username                         | Password     | Url                                                     |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://bajaj-rmoneview-uat.azurewebsites.net/dashboard |


  Scenario Outline: To verify that profile drop-down arrow is enabled and clickable
    Given User is on RMSOneView Login Page
    And User should be able to see below Domains "<Domain>"
    And  User should select Domain "<Domain>"
    And Clicks on LogIn Button
    And User enters UserName "<Username>"
    And Clicks on Next Button for Login
    And User enters Password "<Password>"
    And Clicks on SignIn Button for Login
    Then User should be redirected to Dashboard Page "<Url>"
    Then profile drop-down arrow should be  enabled and clickable

    Examples:
      | Domain | Username                         | Password     | Url                                                     |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://bajaj-rmoneview-uat.azurewebsites.net/dashboard |


  Scenario Outline: To verify that user is able to logout from the account after clicks on logout option
    Given User is on RMSOneView Login Page
    And User should be able to see below Domains "<Domain>"
    And  User should select Domain "<Domain>"
    And Clicks on LogIn Button
    And User enters UserName "<Username>"
    And Clicks on Next Button for Login
    And User enters Password "<Password>"
    And Clicks on SignIn Button for Login
    Then User should be redirected to Dashboard Page "<Url>"
    Then User should to be redirected back to Login Page

    Examples:
      | Domain | Username                         | Password     | Url                                                     |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://bajaj-rmoneview-uat.azurewebsites.net/dashboard |


  Scenario Outline: To verify that user is able to view notification tile under notification section
    Given User is on RMSOneView Login Page
    And User should be able to see below Domains "<Domain>"
    And  User should select Domain "<Domain>"
    And Clicks on LogIn Button
    And User enters UserName "<Username>"
    And Clicks on Next Button for Login
    And User enters Password "<Password>"
    And Clicks on SignIn Button for Login
    Then User should be redirected to Dashboard Page "<Url>"
    Then User should be able to view Below notification tile
#  1.SME Offer
#  2.Cibil Enquiry
#  3.Debt Collection
#  4.Nearing TopUp
#  5.Multiproduct Offer
#  6.TopUp Offer
#  7.View all Cta


    Examples:
      | Domain | Username                         | Password     | Url                                                     |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://bajaj-rmoneview-uat.azurewebsites.net/dashboard |


  Scenario Outline: To verify that user is able to view notification tile under notification section
    Given User is on RMSOneView Login Page
    And User should be able to see below Domains "<Domain>"
    And  User should select Domain "<Domain>"
    And Clicks on LogIn Button
    And User enters UserName "<Username>"
    And Clicks on Next Button for Login
    And User enters Password "<Password>"
    And Clicks on SignIn Button for Login
    Then User should be redirected to Dashboard Page "<Url>"
    Then User should be able to view Below notification tile
#  1.SME Offer
#  2.Cibil Enquiry
#  3.Debt Collection
#  4.Nearing TopUp
#  5.Multiproduct Offer
#  6.TopUp Offer
#  7.View all Cta


    Examples:
      | Domain | Username                         | Password     | Url                                                     |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://bajaj-rmoneview-uat.azurewebsites.net/dashboard |


  Scenario Outline: To verify that notification section is  dynamically updates and displayed relevant notification tiles based on (DB Drivern) data retrieved from the database
    Given User is on RMSOneView Login Page
    And User should be able to see below Domains "<Domain>"
    And  User should select Domain "<Domain>"
    And Clicks on LogIn Button
    And User enters UserName "<Username>"
    And Clicks on Next Button for Login
    And User enters Password "<Password>"
    And Clicks on SignIn Button for Login
    Then User should be redirected to Dashboard Page "<Url>"
    Then notification section should be displayed  dynamically updates

    Examples:
      | Domain | Username                         | Password     | Url                                                     |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://bajaj-rmoneview-uat.azurewebsites.net/dashboard |


  Scenario Outline: To verify that "detail-level screen" is display when user is click on the notification tiles
    Given User is on RMSOneView Login Page
    And User should be able to see below Domains "<Domain>"
    And  User should select Domain "<Domain>"
    And Clicks on LogIn Button
    And User enters UserName "<Username>"
    And Clicks on Next Button for Login
    And User enters Password "<Password>"
    And Clicks on SignIn Button for Login
    Then User should be redirected to Dashboard Page "<Url>"
    Then "detail-level screen" should be displayed

    Examples:
      | Domain | Username                         | Password     | Url                                                     |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://bajaj-rmoneview-uat.azurewebsites.net/dashboard |


  Scenario Outline: To verify that user is able to view Given text on the SME offer under notification tile
    Given User is on RMSOneView Login Page
    And User should be able to see below Domains "<Domain>"
    And  User should select Domain "<Domain>"
    And Clicks on LogIn Button
    And User enters UserName "<Username>"
    And Clicks on Next Button for Login
    And User enters Password "<Password>"
    And Clicks on SignIn Button for Login
    Then User should be redirected to Dashboard Page "<Url>"
    And click on notification tile section
    And click on SME
    Then Below text should be displayed

  "You have <xx> SME offers allocated"

    Examples:
      | Domain | Username                         | Password     | Url                                                     |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://bajaj-rmoneview-uat.azurewebsites.net/dashboard |


  Scenario Outline: To verify that user is redirected to SME page when user click on SME offer
    Given User is on RMSOneView Login Page
    And User should be able to see below Domains "<Domain>"
    And  User should select Domain "<Domain>"
    And Clicks on LogIn Button
    And User enters UserName "<Username>"
    And Clicks on Next Button for Login
    And User enters Password "<Password>"
    And Clicks on SignIn Button for Login
    Then User should be redirected to Dashboard Page "<Url>"
    And click on notification tile section
    And click on SME
    Then User should be  redirected to SME page when user click on SME offer
    Examples:
      | Domain | Username                         | Password     | Url                                                     |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://bajaj-rmoneview-uat.azurewebsites.net/dashboard |


  Scenario Outline: To verify that user is able to view total no of SME offer under SME offer page
    Given User is on RMSOneView Login Page
    And User should be able to see below Domains "<Domain>"
    And  User should select Domain "<Domain>"
    And Clicks on LogIn Button
    And User enters UserName "<Username>"
    And Clicks on Next Button for Login
    And User enters Password "<Password>"
    And Clicks on SignIn Button for Login
    Then User should be redirected to Dashboard Page "<Url>"
    And click on notification tile section
    And click on SME
    Then User should be  able to view total no of  SME offer under SME offer page
    Examples:
      | Domain | Username                         | Password     | Url                                                     |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://bajaj-rmoneview-uat.azurewebsites.net/dashboard |


  Scenario Outline: To verify that user is able to view Given text on the Cibil Enquiry nudge under notification tile
    Given User is on RMSOneView Login Page
    And User should be able to see below Domains "<Domain>"
    And  User should select Domain "<Domain>"
    And Clicks on LogIn Button
    And User enters UserName "<Username>"
    And Clicks on Next Button for Login
    And User enters Password "<Password>"
    And Clicks on SignIn Button for Login
    Then User should be redirected to Dashboard Page "<Url>"
    And click on notification tile section
    And click on SME
    Then Below text should be displayed
  "Your Customer have done <xx> CIBIL triggers"

    Examples:
      | Domain | Username                         | Password     | Url                                                     |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://bajaj-rmoneview-uat.azurewebsites.net/dashboard |


  Scenario Outline: To verify that user is redirected to Cibil Enquiry page when user click on Cibil Enquiry
    Given User is on RMSOneView Login Page
    And User should be able to see below Domains "<Domain>"
    And  User should select Domain "<Domain>"
    And Clicks on LogIn Button
    And User enters UserName "<Username>"
    And Clicks on Next Button for Login
    And User enters Password "<Password>"
    And Clicks on SignIn Button for Login
    Then User should be redirected to Dashboard Page "<Url>"
    And click on notification tile section
    And Cibil Enquiry
    Then User should be  redirected to Cibil Enquiry page  when user click on Cibil Enquiry


    Examples:
      | Domain | Username                         | Password     | Url                                                     |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://bajaj-rmoneview-uat.azurewebsites.net/dashboard |


  Scenario Outline: To verify that user is able to view  no of Cibil enquiries for RM allocated customers
    Given User is on RMSOneView Login Page
    And User should be able to see below Domains "<Domain>"
    And  User should select Domain "<Domain>"
    And Clicks on LogIn Button
    And User enters UserName "<Username>"
    And Clicks on Next Button for Login
    And User enters Password "<Password>"
    And Clicks on SignIn Button for Login
    Then User should be redirected to Dashboard Page "<Url>"
    And click on notification tile section
    And Cibil Enquiry
    Then User should be  able to view  no of Cibil enquiries for RM allocated customers
    Examples:
      | Domain | Username                         | Password     | Url                                                     |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://bajaj-rmoneview-uat.azurewebsites.net/dashboard |


  Scenario Outline: To verify that user is able to view Given text on the Debt Collection nudge under notification tile
    Given User is on RMSOneView Login Page
    And User should be able to see below Domains "<Domain>"
    And  User should select Domain "<Domain>"
    And Clicks on LogIn Button
    And User enters UserName "<Username>"
    And Clicks on Next Button for Login
    And User enters Password "<Password>"
    And Clicks on SignIn Button for Login
    Then User should be redirected to Dashboard Page "<Url>"
    And click on notification tile section
    Then Below text should be displayed

  "Debt Collection" and Message under will be "<xx> customers allocated to you for Debt collection".

    Examples:
      | Domain | Username                         | Password     | Url                                                     |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://bajaj-rmoneview-uat.azurewebsites.net/dashboard |


  Scenario Outline: To verify that user is redirected to Debt Collection page when user click on Debt Collection
    Given User is on RMSOneView Login Page
    And User should be able to see below Domains "<Domain>"
    And  User should select Domain "<Domain>"
    And Clicks on LogIn Button
    And User enters UserName "<Username>"
    And Clicks on Next Button for Login
    And User enters Password "<Password>"
    And Clicks on SignIn Button for Login
    Then User should be redirected to Dashboard Page "<Url>"
    And click on notification tile section
    And Click on the Debt Collection
    Then User should be  redirected to Debt Collection page when user click on Debt Collection
    Examples:
      | Domain | Username                         | Password     | Url                                                     |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://bajaj-rmoneview-uat.azurewebsites.net/dashboard |


  Scenario Outline:To verify that user is able to view no of customers allocated to RM for Debt Collection
    Given User is on RMSOneView Login Page
    And User should be able to see below Domains "<Domain>"
    And  User should select Domain "<Domain>"
    And Clicks on LogIn Button
    And User enters UserName "<Username>"
    And Clicks on Next Button for Login
    And User enters Password "<Password>"
    And Clicks on SignIn Button for Login
    Then User should be redirected to Dashboard Page "<Url>"
    And click on notification tile section
    And Click on the Debt Collection
    Then User should be  able to view no of customers allocated to RM for Debt Collection
    Examples:
      | Domain | Username                         | Password     | Url                                                     |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://bajaj-rmoneview-uat.azurewebsites.net/dashboard |


  Scenario Outline:To verify that user is able to view Given text on the  Nearing TopUpnudge under notification tile
    Given User is on RMSOneView Login Page
    And User should be able to see below Domains "<Domain>"
    And  User should select Domain "<Domain>"
    And Clicks on LogIn Button
    And User enters UserName "<Username>"
    And Clicks on Next Button for Login
    And User enters Password "<Password>"
    And Clicks on SignIn Button for Login
    Then User should be redirected to Dashboard Page "<Url>"
    And click on notification tile section
    Then Below text should be displayed
  "Top up Offer Eligibility" and Message under will be "<xx> customers are nearing Top-Up eligibility"
    Examples:
      | Domain | Username                         | Password     | Url                                                     |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://bajaj-rmoneview-uat.azurewebsites.net/dashboard |


  Scenario Outline: To verify that user is redirected to Nearing TopUp offers page when user click on Nearing TopUp
    Given User is on RMSOneView Login Page
    And User should be able to see below Domains "<Domain>"
    And  User should select Domain "<Domain>"
    And Clicks on LogIn Button
    And User enters UserName "<Username>"
    And Clicks on Next Button for Login
    And User enters Password "<Password>"
    And Clicks on SignIn Button for Login
    Then User should be redirected to Dashboard Page "<Url>"
    And click on notification tile sect ion
    And Click on Nearing TopUp
    Then User should be  redirected to Nearing TopUp offers page when user click on Nearing TopUp
    Examples:
      | Domain | Username                         | Password     | Url                                                     |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://bajaj-rmoneview-uat.azurewebsites.net/dashboard |


  Scenario Outline: To verify that user is  able to view Nearing TopUp offers details under Nearing TopUp
    Given User is on RMSOneView Login Page
    And User should be able to see below Domains "<Domain>"
    And  User should select Domain "<Domain>"
    And Clicks on LogIn Button
    And User enters UserName "<Username>"
    And Clicks on Next Button for Login
    And User enters Password "<Password>"
    And Clicks on SignIn Button for Login
    Then User should be redirected to Dashboard Page "<Url>"
    And click on notification tile section
    And Click on Nearing TopUp
    Then User should be able to view Nearing TopUp offers details under Nearing TopUp
    Examples:
      | Domain | Username                         | Password     | Url                                                     |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://bajaj-rmoneview-uat.azurewebsites.net/dashboard |


  Scenario Outline: To verify that user is able to view Given text on the  Multiproduct Offer nudge under notification tile
    Given User is on RMSOneView Login Page
    And User should be able to see below Domains "<Domain>"
    And  User should select Domain "<Domain>"
    And Clicks on LogIn Button
    And User enters UserName "<Username>"
    And Clicks on Next Button for Login
    And User enters Password "<Password>"
    And Clicks on SignIn Button for Login
    Then User should be redirected to Dashboard Page "<Url>"
    And click on notification tile section
    And Click on Nearing TopUp
    Then Below text should be displayed
  Multi Product Offer" and Message under will be "<xx>Unsecured to Secured offers are ready for your action"
    Examples:
      | Domain | Username                         | Password     | Url                                                     |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://bajaj-rmoneview-uat.azurewebsites.net/dashboard |


  Scenario Outline: To verify that user is redirected to Multiproduct Offer page when user click on Multiproduct Offer
    Given User is on RMSOneView Login Page
    And User should be able to see below Domains "<Domain>"
    And  User should select Domain "<Domain>"
    And Clicks on LogIn Button
    And User enters UserName "<Username>"
    And Clicks on Next Button for Login
    And User enters Password "<Password>"
    And Clicks on SignIn Button for Login
    Then User should be redirected to Dashboard Page "<Url>"
    And click on notification tile section
    And Click on  Multiproduct Offer
    Then Below text should be displayed
  Multi Product Offer" and Message under will be "<xx>Unsecured to Secured offers are ready for your action"
    Examples:
      | Domain | Username                         | Password     | Url                                                     |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://bajaj-rmoneview-uat.azurewebsites.net/dashboard |


  Scenario Outline: To verify that user is able to view Multiproduct Offer details under Multiproduct Offer page
    Given User is on RMSOneView Login Page
    And User should be able to see below Domains "<Domain>"
    And  User should select Domain "<Domain>"
    And Clicks on LogIn Button
    And User enters UserName "<Username>"
    And Clicks on Next Button for Login
    And User enters Password "<Password>"
    And Clicks on SignIn Button for Login
    Then User should be redirected to Dashboard Page "<Url>"
    And click on notification tile section
    And Click on  Multiproduct Offer
    Then User should be  able to view Multiproduct Offer details under Multiproduct Offer page
    Examples:
      | Domain | Username                         | Password     | Url                                                     |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://bajaj-rmoneview-uat.azurewebsites.net/dashboard |


  Scenario Outline: To verify that user is able to view Given text on the  TopUp Offer Offer nudge under notification tile
    Given User is on RMSOneView Login Page
    And User should be able to see below Domains "<Domain>"
    And  User should select Domain "<Domain>"
    And Clicks on LogIn Button
    And User enters UserName "<Username>"
    And Clicks on Next Button for Login
    And User enters Password "<Password>"
    And Clicks on SignIn Button for Login
    Then User should be redirected to Dashboard Page "<Url>"
    And click on notification tile section
    And Click on  top up Offer
    Then Below text should be displayed
  "Top up Offer" and Message under will be "<xx> Top up offers have been assigned to you.".

    Examples:
      | Domain | Username                         | Password     | Url                                                     |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://bajaj-rmoneview-uat.azurewebsites.net/dashboard |


  Scenario Outline: To verify that user is redirected to top Up Offer Offer page when user click on top Up Offer Offer
    Given User is on RMSOneView Login Page
    And User should be able to see below Domains "<Domain>"
    And  User should select Domain "<Domain>"
    And Clicks on LogIn Button
    And User enters UserName "<Username>"
    And Clicks on Next Button for Login
    And User enters Password "<Password>"
    And Clicks on SignIn Button for Login
    Then User should be redirected to Dashboard Page "<Url>"
    And click on notification tile section
    And Click on  top up Offer
    Then User should be redirected to top Up Offer Offer page when user click on top Up Offer Offer
    Examples:
      | Domain | Username                         | Password     | Url                                                     |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://bajaj-rmoneview-uat.azurewebsites.net/dashboard |


  Scenario Outline: To verify that user is able to view top-up offer details under TopUp offer page
    Given User is on RMSOneView Login Page
    And User should be able to see below Domains "<Domain>"
    And  User should select Domain "<Domain>"
    And Clicks on LogIn Button
    And User enters UserName "<Username>"
    And Clicks on Next Button for Login
    And User enters Password "<Password>"
    And Clicks on SignIn Button for Login
    Then User should be redirected to Dashboard Page "<Url>"
    And click on notification tile section
    And Click on  top up Offer
    Then User should be  able to view top-up offer details under TopUp offer page


    Examples:
      | Domain | Username                         | Password     | Url                                                     |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://bajaj-rmoneview-uat.azurewebsites.net/dashboard |


  Scenario Outline: To Verify that the "View All" CTA is disabled when the number of notifications is Less than six
    Given User is on RMSOneView Login Page
    And User should be able to see below Domains "<Domain>"
    And  User should select Domain "<Domain>"
    And Clicks on LogIn Button
    And User enters UserName "<Username>"
    And Clicks on Next Button for Login
    And User enters Password "<Password>"
    And Clicks on SignIn Button for Login
    Then User should be redirected to Dashboard Page "<Url>"
    And click on notification tile section
    And Click on  top up Offer
    Then "View All" CTA should be disabled when the number of notifications is Less than six.
    Examples:
      | Domain | Username                         | Password     | Url                                                     |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://bajaj-rmoneview-uat.azurewebsites.net/dashboard |


  Scenario Outline: To Verify that the "View All" CTA is enabled when the number of notifications is More than six
    Given User is on RMSOneView Login Page
    And User should be able to see below Domains "<Domain>"
    And  User should select Domain "<Domain>"
    And Clicks on LogIn Button
    And User enters UserName "<Username>"
    And Clicks on Next Button for Login
    And User enters Password "<Password>"
    And Clicks on SignIn Button for Login
    Then User should be redirected to Dashboard Page "<Url>"
    And click on notification tile section
    And Click on  top up Offer
    Then "View All" CTA should be enabled when the number of notifications is More than six
    Examples:
      | Domain | Username                         | Password     | Url                                                     |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://bajaj-rmoneview-uat.azurewebsites.net/dashboard |

  @cc
  Scenario Outline: To verify that user is able to view Given option under the Quick link section
    Given User is on RMSOneView Login Page
    And User should be able to see below Domains "<Domain>"
    And  User should select Domain "<Domain>"
    And Clicks on LogIn Button
    And User enters UserName "<Username>"
    And Clicks on Next Button for Login
    And User enters Password "<Password>"
    And Clicks on SignIn Button for Login
    Then User should be redirected to Dashboard Page "<Url>"
    And Below options "<Options>" should be displayed under the Quick link section

    Examples:
      | Domain | Username                         | Password     | Url                                                     | Options                                               |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://bajaj-rmoneview-uat.azurewebsites.net/dashboard | Your Applications, Debt Collections, Offers and Leads |

  @dup
#  Scenario Outline: To verify that user is able to view Given option under the Quick link section
#    Given User is on RMSOneView Login Page
#    And User should be able to see below Domains "<Domain>"
#    And  User should select Domain "<Domain>"
#    And Clicks on LogIn Button
#    And User enters UserName "<Username>"
#    And Clicks on Next Button for Login
#    And User enters Password "<Password>"
#    And Clicks on SignIn Button for Login
#    Then User should be redirected to Dashboard Page "<Url>"
#    Then Below option should be displayed under the Quick link section
#  1.Your Application
#  2.Debt Collection
#  3.and Offer & Leads
#
#    Examples:
#      | Domain | Username                         | Password     | Url                                                     |
#      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://bajaj-rmoneview-uat.azurewebsites.net/dashboard |

@cc
  Scenario Outline: To Verify that the user is redirected to the "Your Application" page when user click on the "Your Application" option under the Quick Link section
    Given User is on RMSOneView Login Page
    And User should be able to see below Domains "<Domain>"
    And  User should select Domain "<Domain>"
    And Clicks on LogIn Button
    And User enters UserName "<Username>"
    And Clicks on Next Button for Login
    And User enters Password "<Password>"
    And Clicks on SignIn Button for Login
    Then User should be redirected to Dashboard Page "<Url>"
    And Clicks on "Your Applications" Option under Quick Links Section
    Then User should be redirected to the Url "https://uatrmoneview.bajajfinserv.in/yourapplications/disbursedlans"

    Examples:
      | Domain | Username                         | Password     | Url                                                     |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://bajaj-rmoneview-uat.azurewebsites.net/dashboard |

@cc
  Scenario Outline: To Verify that the user is redirected to the "Debt Collection" page when user click on the "Debt Collection" option under the Quick Link section
    Given User is on RMSOneView Login Page
    And User should be able to see below Domains "<Domain>"
    And  User should select Domain "<Domain>"
    And Clicks on LogIn Button
    And User enters UserName "<Username>"
    And Clicks on Next Button for Login
    And User enters Password "<Password>"
    And Clicks on SignIn Button for Login
    Then User should be redirected to Dashboard Page "<Url>"
    And Clicks on "Debt Collections" Option under Quick Links Section
    Then User should be redirected to the Url "https://uatrmoneview.bajajfinserv.in/debtcollections"

    Examples:
      | Domain | Username                         | Password     | Url                                                     |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://bajaj-rmoneview-uat.azurewebsites.net/dashboard |

@cc
  Scenario Outline: To Verify that the user is redirected to the  "Offer Details" page when user click on the "Offer & Leads"  option under the Quick Link section
    Given User is on RMSOneView Login Page
    And User should be able to see below Domains "<Domain>"
    And  User should select Domain "<Domain>"
    And Clicks on LogIn Button
    And User enters UserName "<Username>"
    And Clicks on Next Button for Login
    And User enters Password "<Password>"
    And Clicks on SignIn Button for Login
    Then User should be redirected to Dashboard Page "<Url>"
    And Clicks on "Offers and Leads" Option under Quick Links Section
    Then User should be redirected to the Url "https://uatrmoneview.bajajfinserv.in/offer/offerdetails"

    Examples:
      | Domain | Username                         | Password     | Url                                                     |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://bajaj-rmoneview-uat.azurewebsites.net/dashboard |


  Scenario Outline: To verify that given text and CTA is displayed under the Lead Disposition section
    Given User is on RMSOneView Login Page
    And User should be able to see below Domains "<Domain>"
    And  User should select Domain "<Domain>"
    And Clicks on LogIn Button
    And User enters UserName "<Username>"
    And Clicks on Next Button for Login
    And User enters Password "<Password>"
    And Clicks on SignIn Button for Login
    Then User should be redirected to Dashboard Page "<Url>"
    And click on Lead Disposition
    Then Below text and CTA should be displayed under the Disposition section
  1.Type of Lead
  2.Actioned
  3.Unactioned
  4.Followd up
  5.Total leads allocated

    Examples:
      | Domain | Username                         | Password     | Url                                                     |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://bajaj-rmoneview-uat.azurewebsites.net/dashboard |


  Scenario Outline: TTo Verify that the Lead Disposition section supports the dynamic addition of disposition types
    Given User is on RMSOneView Login Page
    And User should be able to see below Domains "<Domain>"
    And  User should select Domain "<Domain>"
    And Clicks on LogIn Button
    And User enters UserName "<Username>"
    And Clicks on Next Button for Login
    And User enters Password "<Password>"
    And Clicks on SignIn Button for Login
    Then User should be redirected to Dashboard Page "<Url>"
    And click on Lead Disposition
    Then Lead Disposition section should be  supports the dynamic addition of disposition types
    Examples:
      | Domain | Username                         | Password     | Url                                                     |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://bajaj-rmoneview-uat.azurewebsites.net/dashboard |


  Scenario Outline: To verify that user is able to redirect to the full Lead Disposition page When user clicks on "View All" CTA
    Given User is on RMSOneView Login Page
    And User should be able to see below Domains "<Domain>"
    And  User should select Domain "<Domain>"
    And Clicks on LogIn Button
    And User enters UserName "<Username>"
    And Clicks on Next Button for Login
    And User enters Password "<Password>"
    And Clicks on SignIn Button for Login
    Then User should be redirected to Dashboard Page "<Url>"
    And click on Lead Disposition
    And click on View All CTA
    Then User should be redirected on the Lead Disposition page

    Examples:
      | Domain | Username                         | Password     | Url                                                     |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://bajaj-rmoneview-uat.azurewebsites.net/dashboard |

@cc
  Scenario Outline: To verify that "Your Customer" option is enable and clickable
    Given User is on RMSOneView Login Page
    And User should be able to see below Domains "<Domain>"
    And  User should select Domain "<Domain>"
    And Clicks on LogIn Button
    And User enters UserName "<Username>"
    And Clicks on Next Button for Login
    And User enters Password "<Password>"
    And Clicks on SignIn Button for Login
    Then User should be redirected to Dashboard Page "<Url>"
    And Clicks on "Your Customer" Option under Top Section in Dashboard Page
    Then "Your Customer" option should be  enable and clickable

    Examples:
      | Domain | Username                         | Password     | Url                                                     |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://bajaj-rmoneview-uat.azurewebsites.net/dashboard |

@cc
  Scenario Outline: To verify that user is redirected to the "Your Customer"  page when user is click on the "Your Customer" option
    Given User is on RMSOneView Login Page
    And User should be able to see below Domains "<Domain>"
    And  User should select Domain "<Domain>"
    And Clicks on LogIn Button
    And User enters UserName "<Username>"
    And Clicks on Next Button for Login
    And User enters Password "<Password>"
    And Clicks on SignIn Button for Login
    Then User should be redirected to Dashboard Page "<Url>"
    And Clicks on "Your Customer" Option under Top Section in Dashboard Page
    Then User should be redirected to the Url "https://uatrmoneview.bajajfinserv.in/yourcustomer"

    Examples:
      | Domain | Username                         | Password     | Url                                                     |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://bajaj-rmoneview-uat.azurewebsites.net/dashboard |


  Scenario Outline: To Verify that the user is able to view the customer's allocated details on the "Your Customer" page
    Given User is on RMSOneView Login Page
    And User should be able to see below Domains "<Domain>"
    And  User should select Domain "<Domain>"
    And Clicks on LogIn Button
    And User enters UserName "<Username>"
    And Clicks on Next Button for Login
    And User enters Password "<Password>"
    And Clicks on SignIn Button for Login
    Then User should be redirected to Dashboard Page "<Url>"
    Then Customer's allocated details should be displayed on the "Your Customer" page

    Examples:
      | Domain | Username                         | Password     | Url                                                     |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://bajaj-rmoneview-uat.azurewebsites.net/dashboard |


  Scenario Outline: To Verify that Blue,White and Orange Colour Theme is displayed In All RM One View Application
    Given User is on RMSOneView Login Page
    And User should be able to see below Domains "<Domain>"
    And  User should select Domain "<Domain>"
    And Clicks on LogIn Button
    And User enters UserName "<Username>"
    And Clicks on Next Button for Login
    And User enters Password "<Password>"
    And Clicks on SignIn Button for Login
    Then User should be redirected to Dashboard Page "<Url>"
    Then Blue,White and Orange Colour Theme should be  displayed In All RM One View Application

    Examples:
      | Domain | Username                         | Password     | Url                                                     |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://bajaj-rmoneview-uat.azurewebsites.net/dashboard |


  Scenario Outline: To Verify that Blue,White and Orange Colour Theme is displayed In All RM One View Application
    Given User is on RMSOneView Login Page
    And User should be able to see below Domains "<Domain>"
    And  User should select Domain "<Domain>"
    And Clicks on LogIn Button
    And User enters UserName "<Username>"
    And Clicks on Next Button for Login
    And User enters Password "<Password>"
    And Clicks on SignIn Button for Login
    Then User should be redirected to Dashboard Page "<Url>"
    Then Blue,White and Orange Colour Theme should be  displayed In All RM One View Application
    Examples:
      | Domain | Username                         | Password     | Url                                                     |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://bajaj-rmoneview-uat.azurewebsites.net/dashboard |













