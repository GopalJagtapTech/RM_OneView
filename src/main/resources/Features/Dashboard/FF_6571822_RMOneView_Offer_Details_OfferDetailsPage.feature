Feature: FF_6571822_RMOneView_Offer_Details_Offer_Details_Page

#1
  @cc @pass 
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
#      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://bajaj-rmoneview-uat.azurewebsites.net/dashboard |

#2
  @cc @pass 
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
  @cc @pass 
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
#    And Click on search parameter
    Then User should be able to click on dropdown under search parameter

    Examples:
      | Domain | Username                         | Password     | Url                                            |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://uatrmoneview.bajajfinserv.in/dashboard |

#4
  @cc @pass 
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
    And Verify User is able to view Below Options "<Options>" for FilterBy Search Dropdown
#  1.Mobile Number
#  2.PAN Number
#  3.Customer ID

    Examples:
      | Domain | Username                         | Password     | Url                                            | Options                                                    |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://uatrmoneview.bajajfinserv.in/dashboard | PAN Number#Mobile Number#Customer ID |


#5
  @cc @data
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
    And Selects "Mobile Number" Option from Filter By Search Dropdown
    And Enters "<Mobile Number>" into Filter By Search Input Box
    Then Corresponding "Mobile Number" "<Mobile Number>" customer records should be displayed
#    Filter not working

    Examples:
      | Domain | Username                         | Password     | Url                                            | Mobile Number |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://uatrmoneview.bajajfinserv.in/dashboard | 9711328128    |

#6
  @data 
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
    And Selects "PAN Number" Option from Filter By Search Dropdown
    And Enters "<PAN Number>" into Filter By Search Input Box
    Then Corresponding "PAN Number" "<PAN Number>" customer records should be displayed

    Examples:
      | Domain | Username                         | Password     | Url                                            | PAN Number |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://uatrmoneview.bajajfinserv.in/dashboard | AWKPG9725E |


#7
  @data 
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
    And Selects "Customer ID" Option from Filter By Search Dropdown
    And Enters "<Customer ID>" into Filter By Search Input Box
    Then Corresponding "Customer ID" "<Customer ID>" customer records should be displayed

    Examples:
      | Domain | Username                         | Password     | Url                                            | Customer ID |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://uatrmoneview.bajajfinserv.in/dashboard | 248916805   |

#8
  @data @doubt
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
    And Selects "Customer ID" Option from Filter By Search Dropdown
    And Enters "<Customer ID>" into Filter By Search Input Box
    Then Below Validation message "Record does not exists for input" should be displayed
#    Then Below Validation message "Invalid | unallocated records" should be displayed

  "invalid or unallocated records" ? and data

    Examples:
      | Domain | Username                         | Password     | Url                                            | Customer ID |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://uatrmoneview.bajajfinserv.in/dashboard | 248916805   |


#9
  @cc @pass 
  Scenario Outline: To verify that user is able to view given option and total glance count under the offer summary section
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
    Then Below option "<Options>" and total glance count should be displayed under the offer summary section
#  1.Total Offers
#  2.AA Based Offers
#  3.Top-Up Offers
#  4.CIBIL Watch

    Examples:
      | Domain | Username                         | Password     | Url                                            |Options|
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://uatrmoneview.bajajfinserv.in/dashboard |TOTAL#MULTIPRODUCT#SECURED#TOP-UP |

#10
  @cc @pass 
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
    Then Below "<Option>" should be enabled and clickable
#  1.Total Offers
#  2.AA Based Offers
#  3.Top-Up Offers
#  4.CIBIL Watch

    Examples:
      | Domain | Username                         | Password     | Url                                            | Option |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://uatrmoneview.bajajfinserv.in/dashboard | TOTAL#MULTIPRODUCT#SECURED#TOP-UP |

#11
  @cc @pass 
  Scenario Outline: To verify that given columns name are displayed when user is clicks on Total Offers tile
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
    Then Below Columns name should be displayed "<Options>"
#    Then Below Columns name should be displayed
#  1.Customer Name
#  2.Customer ID
#  3.Offer Name
#  4.Offer Product
#  5.Offer Amount
#  6.Lead Disposition Status

    Examples:
      | Domain | Username                         | Password     | Url                                            | Options                                                    |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://uatrmoneview.bajajfinserv.in/dashboard | Customer Name#Customer ID#Mobile Number#Lead Offering ID#Offer Allocation Date#Offer Name#Offer Product#Offer Amount#Lead Disposition Status |


#12
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
    Then Click here CTA should be enabled and clickable
#    CTA ?

    Examples:
      | Domain | Username                         | Password     | Url                                            |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://uatrmoneview.bajajfinserv.in/dashboard |

#13
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
    And Clicks on Click here CTA
    Then User should be redirected on the respective page
#    CTA - 2nd release

    Examples:
      | Domain | Username                         | Password     | Url                                            |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://uatrmoneview.bajajfinserv.in/dashboard |

#14
  @cc @pass 
  Scenario Outline: To Verify that user is able to view AA-based offer details After clicks on the AA-based offer tile
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
    And Click on "AA" Based Offer tile
    Then "AA" Based Offer details should be displayed
#   AA Not Present

    Examples:
      | Domain | Username                         | Password     | Url                                            |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://uatrmoneview.bajajfinserv.in/dashboard |

#15
  @cc @pass 
  Scenario Outline: To Verify that user is able to view TopUp Based Offer details After clicks on the TopUp Based Offer tile
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
    And Click on "TOP-UP" Based Offer tile
    Then "TOP-UP" Based Offer details should be displayed

    Examples:
      | Domain | Username                         | Password     | Url                                            |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://uatrmoneview.bajajfinserv.in/dashboard |

#16
  @cc @pass 
  Scenario Outline: To Verify that user is able to view Cibil Watch Based Offer details After clicks on the Cibil Watch Based Offer tile
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
    And Click on "CIBIL WATCH" Based Offer tile
    Then "CIBIL WATCH" Based Offer details should be displayed
    # CIBIL WATCH Not Present

    Examples:
      | Domain | Username                         | Password     | Url                                            |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://uatrmoneview.bajajfinserv.in/dashboard |






