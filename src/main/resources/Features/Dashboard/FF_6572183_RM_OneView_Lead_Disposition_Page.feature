Feature: FF_6572183_RM_OneView_Lead_Disposition_Page

#1
  @cc @pass @test
  Scenario Outline: To verify that user is able to redirect on Offer Details page when user clicks on Offer Details tile
    Given User is on RMSOneView Login Page
    And User should be able to see below Domains "<Domain>"
    And  User should select Domain "<Domain>"
#    And Clicks on LogIn Button
    And User enters UserName "<Username>"
    And Clicks on Next Button for Login
    And User enters Password "<Password>"
    And Clicks on SignIn Button for Login
    Then User should be redirected to Dashboard Page "<Url>"
    And Clicks on "Offers and Leads" Option under Quick Links Section
    Then User should be redirected to the Url "https://uatrmoneview.bajajfinserv.in/offer/offerdetails"

    Examples:
      | Domain | Username                         | Password     | Url                                                     |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://uatrmoneview.bajajfinserv.in/dashboard |


#2
  @cc @pass @test
  Scenario Outline: To Verify that user is able to view the Given text and fields on the Offer Details Page
    Given User is on RMSOneView Login Page
    And User should be able to see below Domains "<Domain>"
    And  User should select Domain "<Domain>"
#    And Clicks on LogIn Button
    And User enters UserName "<Username>"
    And Clicks on Next Button for Login
    And User enters Password "<Password>"
    And Clicks on SignIn Button for Login
    Then User should be redirected to Dashboard Page "<Url>"
    And Clicks on "Offers and Leads" Option under Quick Links Section
    Then User should be redirected to the Url "https://uatrmoneview.bajajfinserv.in/offer/offerdetails"
    Then Below text and fields should be displayed on the Offer Details landing page "<GridBoxs>"
#  1.Horizontal search bar (Top of the page ) - done
#  2. Navigation Panel (LHS of the page) - done
#    1. Offer Details
#    2. Enquiry Details
#    3.Lead Disposition
#    4. Nearing Top-up Offers
#  3. Offer Details title
#    1Search by text
#    2.search field
#    3. Total Offers
#    4.AA Based Offers - not present (others present)
#    5.Top-Up Offers
#    6.CIBIL Watch - not present
#  4. Columns to display
#    1.Customer Name
#    2.Customer ID
#    3.Offer Name
#    4.Offer Product
#    5.Offer Amount
#    6.Lead Disposition Status

    Examples:
      | Domain | Username                         | Password     | Url                                            | GridBoxs |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://uatrmoneview.bajajfinserv.in/dashboard | TOTAL#MULTIPRODUCT#SECURED#TOP-UP |

#3
  @cc @pass @test
  Scenario Outline: To verify that user is able to click on dropdown under search parameter
    Given User is on RMSOneView Login Page
    And User should be able to see below Domains "<Domain>"
    And  User should select Domain "<Domain>"
#    And Clicks on LogIn Button
    And User enters UserName "<Username>"
    And Clicks on Next Button for Login
    And User enters Password "<Password>"
    And Clicks on SignIn Button for Login
    Then User should be redirected to Dashboard Page "<Url>"
    And Clicks on "Offers and Leads" Option under Quick Links Section
    Then User should be redirected to the Url "https://uatrmoneview.bajajfinserv.in/offer/offerdetails"
    And Click on tab title "Lead Disposition" option
    And Verify the Filter By drop down
#    And Click on search parameter
    Then User should be able to click on dropdown under search parameter

    Examples:
      | Domain | Username                         | Password     | Url                                            |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://uatrmoneview.bajajfinserv.in/dashboard |


#4
  @cc @pass @test
  Scenario Outline: To verify that user is able to view given option under the search drop down
    Given User is on RMSOneView Login Page
    And User should be able to see below Domains "<Domain>"
    And  User should select Domain "<Domain>"
#    And Clicks on LogIn Button
    And User enters UserName "<Username>"
    And Clicks on Next Button for Login
    And User enters Password "<Password>"
    And Clicks on SignIn Button for Login
    Then User should be redirected to Dashboard Page "<Url>"
    And Clicks on "Offers and Leads" Option under Quick Links Section
    Then User should be redirected to the Url "https://uatrmoneview.bajajfinserv.in/offer/offerdetails"
    And Click on tab title "Lead Disposition" option
    Then Verify User is able to view Below Options "<Options>" for FilterBy Search Dropdown
#  1.Mobile Number
#  2.PAN Number
#  3.Customer ID

    Examples:
      | Domain | Username                         | Password     | Url                                            | Options                                           |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://uatrmoneview.bajajfinserv.in/dashboard | PAN Number#Mobile Number#Customer ID#Allocated To |


#5
  @data @fail @test
  Scenario Outline: To Verify that user is able to search for customers using a mobile number
    Given User is on RMSOneView Login Page
    And User should be able to see below Domains "<Domain>"
    And  User should select Domain "<Domain>"
#    And Clicks on LogIn Button
    And User enters UserName "<Username>"
    And Clicks on Next Button for Login
    And User enters Password "<Password>"
    And Clicks on SignIn Button for Login
    Then User should be redirected to Dashboard Page "<Url>"
    And Clicks on "Offers and Leads" Option under Quick Links Section
    Then User should be redirected to the Url "https://uatrmoneview.bajajfinserv.in/offer/offerdetails"
    And Click on tab title "Lead Disposition" option
    And Selects "Mobile Number" Option from Filter By Search Dropdown
    And Enters "<Mobile Number>" into Filter By Search Input Box
    Then Corresponding "Mobile Number" "<Mobile Number>" customer records should be displayed
#    Filter not working

    Examples:
      | Domain | Username                         | Password     | Url                                            | Mobile Number |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://uatrmoneview.bajajfinserv.in/dashboard | 9711328128    |


#6
  @data @fail @test
  Scenario Outline: To Verify that user is able to search for customers using a PAN Number
    Given User is on RMSOneView Login Page
    And User should be able to see below Domains "<Domain>"
    And  User should select Domain "<Domain>"
#    And Clicks on LogIn Button
    And User enters UserName "<Username>"
    And Clicks on Next Button for Login
    And User enters Password "<Password>"
    And Clicks on SignIn Button for Login
    Then User should be redirected to Dashboard Page "<Url>"
    And Clicks on "Offers and Leads" Option under Quick Links Section
    Then User should be redirected to the Url "https://uatrmoneview.bajajfinserv.in/offer/offerdetails"
    And Click on tab title "Lead Disposition" option
    And Selects "PAN Number" Option from Filter By Search Dropdown
    And Enters "<PAN Number>" into Filter By Search Input Box
    Then Corresponding "PAN Number" "<PAN Number>" customer records should be displayed

    Examples:
      | Domain | Username                         | Password     | Url                                            | PAN Number |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://uatrmoneview.bajajfinserv.in/dashboard | AWKPG9725E |

#7
  @data @fail @test
  Scenario Outline: To Verify that user is able to search for customers using a Customer ID
    Given User is on RMSOneView Login Page
    And User should be able to see below Domains "<Domain>"
    And  User should select Domain "<Domain>"
#    And Clicks on LogIn Button
    And User enters UserName "<Username>"
    And Clicks on Next Button for Login
    And User enters Password "<Password>"
    And Clicks on SignIn Button for Login
    Then User should be redirected to Dashboard Page "<Url>"
    And Clicks on "Offers and Leads" Option under Quick Links Section
    Then User should be redirected to the Url "https://uatrmoneview.bajajfinserv.in/offer/offerdetails"
    And Click on tab title "Lead Disposition" option
    And Selects "Customer ID" Option from Filter By Search Dropdown
    And Enters "<Customer ID>" into Filter By Search Input Box
    Then Corresponding "Customer ID" "<Customer ID>" customer records should be displayed

    Examples:
      | Domain | Username                         | Password     | Url                                            | Customer ID |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://uatrmoneview.bajajfinserv.in/dashboard | 248916805   |

#8
  @cc @pass @test
  Scenario Outline: To Verify that given validation message is displayed when user enters an invalid input and searches for a customer
    Given User is on RMSOneView Login Page
    And User should be able to see below Domains "<Domain>"
    And  User should select Domain "<Domain>"
#    And Clicks on LogIn Button
    And User enters UserName "<Username>"
    And Clicks on Next Button for Login
    And User enters Password "<Password>"
    And Clicks on SignIn Button for Login
    Then User should be redirected to Dashboard Page "<Url>"
    And Clicks on "Offers and Leads" Option under Quick Links Section
    Then User should be redirected to the Url "https://uatrmoneview.bajajfinserv.in/offer/offerdetails"
    And Click on tab title "Lead Disposition" option
    And Selects "Customer ID" Option from Filter By Search Dropdown
    And Enters "<Customer ID>" into Filter By Search Input Box
    Then Below Validation message "Record does not exists for input" should be displayed
#    Then Below Validation message "Invalid | unallocated records" should be displayed
#    Then Below Validation message should be displayed
#  "invalid or unallocated records" ? and data

    Examples:
      | Domain | Username                         | Password     | Url                                            | Customer ID |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://uatrmoneview.bajajfinserv.in/dashboard | 24891680225 |


#9
  @cc @pass @test
  Scenario Outline: To verify that given option is enabled and clickable
    Given User is on RMSOneView Login Page
    And User should be able to see below Domains "<Domain>"
    And  User should select Domain "<Domain>"
#    And Clicks on LogIn Button
    And User enters UserName "<Username>"
    And Clicks on Next Button for Login
    And User enters Password "<Password>"
    And Clicks on SignIn Button for Login
    Then User should be redirected to Dashboard Page "<Url>"
    And Clicks on "Offers and Leads" Option under Quick Links Section
    Then User should be redirected to the Url "https://uatrmoneview.bajajfinserv.in/offer/offerdetails"
    And Click on tab title "Lead Disposition" option
    Then Below "<Option>" should be enabled and clickable
#  1.Total Lead Allocated

    Examples:
      | Domain | Username                         | Password     | Url                                            | Option |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://uatrmoneview.bajajfinserv.in/dashboard | TOTAL#   |


#10
  @cc @pass @test
  Scenario Outline: To verify that given columns name are displayed when user is clicks on Lead Disposition tile
    Given User is on RMSOneView Login Page
    And User should be able to see below Domains "<Domain>"
    And  User should select Domain "<Domain>"
#    And Clicks on LogIn Button
    And User enters UserName "<Username>"
    And Clicks on Next Button for Login
    And User enters Password "<Password>"
    And Clicks on SignIn Button for Login
    Then User should be redirected to Dashboard Page "<Url>"
    And Clicks on "Offers and Leads" Option under Quick Links Section
    Then User should be redirected to the Url "https://uatrmoneview.bajajfinserv.in/offer/offerdetails"
    And Click on tab title "Lead Disposition" option
    Then Below Columns name should be displayed in multiple tables "<Table 1>" "<Table 2>"
#    Then Below Columns name should be displayed
#  1.(table)
#  1.Not Eligible
#  2.Not Interested
#  3.Not Contactable
#  4.Follow Up
#  5.Converted
#  6.Unactioned
#  7.Sale Mark
#  8.Total
#  2.(table)
#  1.Customer Name
#  2.Customer ID
#  3.Product
#  4.Amount
#  5.Lead Disposition Status
#  6.Type of Lead
#  7.Lead Disposition Date

    Examples:
      | Domain | Username                         | Password     | Url                                            | Table 1                                                                                                            | Table 2 |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://uatrmoneview.bajajfinserv.in/dashboard | Type Of Lead#Docs Received#Follow Up#Interested#Not Contactable#Not Eligible#Not Interested#Unactioned#Other#Total | Customer Name#Customer ID#Mobile Number#Lead Offering ID#Product#Amount#Lead Disposition Status#Type of Lead#Date  |

#11
  @wait
  Scenario Outline: To verify that Click Here CTA is enabled and clickable
    Given User is on RMSOneView Login Page
    And User should be able to see below Domains "<Domain>"
    And  User should select Domain "<Domain>"
#    And Clicks on LogIn Button
    And User enters UserName "<Username>"
    And Clicks on Next Button for Login
    And User enters Password "<Password>"
    And Clicks on SignIn Button for Login
    Then User should be redirected to Dashboard Page "<Url>"
    And Clicks on "Offers and Leads" Option under Quick Links Section
    Then User should be redirected to the Url "https://uatrmoneview.bajajfinserv.in/offer/offerdetails"
    And Click on tab title "Lead Disposition" option
    And Click on Total offer tile
    And Verify the actions column
    Then Click here CTA should be enabled and clickable
#    CTA - 2nd release

    Examples:
      | Domain | Username                         | Password     | Url                                            |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://uatrmoneview.bajajfinserv.in/dashboard |

#12
  @wait
  Scenario Outline: To verify that  user is able to redirect on the respective page when user click on the Click here CTA
    Given User is on RMSOneView Login Page
    And User should be able to see below Domains "<Domain>"
    And  User should select Domain "<Domain>"
#    And Clicks on LogIn Button
    And User enters UserName "<Username>"
    And Clicks on Next Button for Login
    And User enters Password "<Password>"
    And Clicks on SignIn Button for Login
    Then User should be redirected to Dashboard Page "<Url>"
    And Clicks on "Offers and Leads" Option under Quick Links Section
    Then User should be redirected to the Url "https://uatrmoneview.bajajfinserv.in/offer/offerdetails"
    And Click on tab title "Lead Disposition" option
    And Verify the actions column
    And Clicks on Click here CTA
    Then User should be redirected on the respective page
#    CTA - 2nd release

    Examples:
      | Domain | Username                         | Password     | Url                                            |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://uatrmoneview.bajajfinserv.in/dashboard |


#13 - duplicate 12
#  @wait
#  Scenario Outline: To verify that  user is able to redirect on the respective page when user click on the Click here CTA
#    Given User is on RMSOneView Login Page
#    And User should be able to see below Domains "<Domain>"
#    And  User should select Domain "<Domain>"
##    And Clicks on LogIn Button
#    And User enters UserName "<Username>"
#    And Clicks on Next Button for Login
#    And User enters Password "<Password>"
#    And Clicks on SignIn Button for Login
#    Then User should be redirected to Dashboard Page "<Url>"
#    And Clicks on "Offers and Leads" Option under Quick Links Section
#    Then User should be redirected to the Url "https://uatrmoneview.bajajfinserv.in/offer/offerdetails"
#    And Click on tab title "Lead Disposition" option
#    And Verify the actions column
#    And Clicks on Click here CTA
#    Then User should be redirected on the respective page
##    CTA - 2nd release
#
#    Examples:
#      | Domain | Username                         | Password     | Url                                            |
#      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://uatrmoneview.bajajfinserv.in/dashboard |


#14
  @wait @test
  Scenario Outline: To verify that detail section is displayed and the selected count remains highlighted when the user clicks on any count in the summarized section
    Given User is on RMSOneView Login Page
    And User should be able to see below Domains "<Domain>"
    And  User should select Domain "<Domain>"
#    And Clicks on LogIn Button
    And User enters UserName "<Username>"
    And Clicks on Next Button for Login
    And User enters Password "<Password>"
    And Clicks on SignIn Button for Login
    Then User should be redirected to Dashboard Page "<Url>"
    And Clicks on "Offers and Leads" Option under Quick Links Section
    Then User should be redirected to the Url "https://uatrmoneview.bajajfinserv.in/offer/offerdetails"
    And Click on tab title "Lead Disposition" option
    Then Details section should be displayed

    Examples:
      | Domain | Username                         | Password     | Url                                            |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://uatrmoneview.bajajfinserv.in/dashboard |


#15
  @wait
  Scenario Outline: To verify that user is able to view newly added lead automatically on the screen when new lead is added in the lead deposition section
    Given User is on RMSOneView Login Page
    And User should be able to see below Domains "<Domain>"
    And  User should select Domain "<Domain>"
#    And Clicks on LogIn Button
    And User enters UserName "<Username>"
    And Clicks on Next Button for Login
    And User enters Password "<Password>"
    And Clicks on SignIn Button for Login
    Then User should be redirected to Dashboard Page "<Url>"
    And Clicks on "Offers and Leads" Option under Quick Links Section
    Then User should be redirected to the Url "https://uatrmoneview.bajajfinserv.in/offer/offerdetails"
    And Click on tab title "Lead Disposition" option
    Then New added lead should be displayed

    Examples:
      | Domain | Username                         | Password     | Url                                            |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://uatrmoneview.bajajfinserv.in/dashboard |











