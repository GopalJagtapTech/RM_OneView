Feature: FF_6572268_RM_TopUp_Eligibility_Page


#1
  @cc @pass @test
  Scenario Outline: To Verify that user is redirected to the Offer Details Landing Page After clicking the offer tile
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
      | Domain | Username                         | Password     | Url                                            |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://uatrmoneview.bajajfinserv.in/dashboard |


#2
  @pass @test
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
#    5.Top-Up Offers - nont present
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
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://uatrmoneview.bajajfinserv.in/dashboard | TOTAL#MULTIPRODUCT# |

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
    And Click on tab title "Nearing Top up Offers" option
    And Verify the Filter By drop down
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
    And Click on tab title "Nearing Top up Offers" option
    And Verify the Filter By drop down
    And Verify User is able to view Below Options "<Options>" for FilterBy Search Dropdown
#  1.Mobile Number
#  2.PAN Number
#  3.Customer ID

    Examples:
      | Domain | Username                         | Password     | Url                                            | Options                                                    |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://uatrmoneview.bajajfinserv.in/dashboard | PAN Number#Mobile Number#Customer ID |


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
    And Click on tab title "Nearing Top up Offers" option
    And Selects "Mobile Number" Option from Filter By Search Dropdown
    And Enters "<Mobile Number>" into Filter By Search Input Box
    Then Corresponding "Mobile Number" "<Mobile Number>" customer records should be displayed
#    Filter not working

    Examples:
      | Domain | Username                         | Password     | Url                                            | Mobile Number |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://uatrmoneview.bajajfinserv.in/dashboard | 9718876692    |

#6
  @data @fail @test
  Scenario Outline: To verify that the user is able to search for customers using a PAN Number
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
    And Click on tab title "Nearing Top up Offers" option
    And Selects "PAN Number" Option from Filter By Search Dropdown
    And Enters "<PAN Number>" into Filter By Search Input Box
    Then Corresponding "PAN Number" "<PAN Number>" customer records should be displayed

    Examples:
      | Domain | Username                         | Password     | Url                                            | PAN Number |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://uatrmoneview.bajajfinserv.in/dashboard | AWKPG9725E |

#7
  @data @fail @test
  Scenario Outline: To verify that user is able to search for customers using a Customer ID
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
    And Click on tab title "Nearing Top up Offers" option
    And Selects "Customer ID" Option from Filter By Search Dropdown
    And Enters "<Customer ID>" into Filter By Search Input Box
    Then Corresponding "Customer ID" "<Customer ID>" customer records should be displayed

    Examples:
      | Domain | Username                         | Password     | Url                                            | Customer ID |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://uatrmoneview.bajajfinserv.in/dashboard | 125862137   |

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
    And Click on tab title "Nearing Top up Offers" option
    And Selects "Customer ID" Option from Filter By Search Dropdown
    And Enters "<Customer ID>" into Filter By Search Input Box
    Then Below Validation message "Invalid" should be displayed
#    Then Below Validation message "Invalid | unallocated records" should be displayed
#    Then Below Validation message should be displayed
#  "invalid or unallocated records" ? and data

    Examples:
      | Domain | Username                         | Password     | Url                                            | Customer ID |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://uatrmoneview.bajajfinserv.in/dashboard | 123862137 |

#9
  @cc @pass @test
  Scenario Outline: To verify that user is able to view given option and total glance count under the Top up Eligibility page
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
    And Click on tab title "Nearing Top up Offers" option
    Then Below option "<Options>" and total glance count should be displayed under the offer summary section
#  1.Nearing Top us Customer

    Examples:
      | Domain | Username                         | Password     | Url                                            |Options|
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://uatrmoneview.bajajfinserv.in/dashboard |TOTAL# |

#10
  @cc @pass @test
  Scenario Outline: To verify that given Table and columns name are displayed when user is clicks on Nearing Top us Eligibility option
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
    And Click on tab title "Nearing Top up Offers" option
    And Click on "TOTAL" Based Offer tile
    Then Below Columns name should be displayed "<Options>"
#  1.(table)
#  1.Customer Name
#  2.Customer ID
#  3.Deal ID
#  4. Product
#  5. Disbursement Amount
#  6. Disbursement Date
#  7. Tenure
#  8. MOB

    Examples:
      | Domain | Username                         | Password     | Url                                            | Options |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://uatrmoneview.bajajfinserv.in/dashboard | Customer Name#Customer ID#Deal ID#Agreement No#Product#Amount Finance#Disbursement Date#Tenure#MOB |
