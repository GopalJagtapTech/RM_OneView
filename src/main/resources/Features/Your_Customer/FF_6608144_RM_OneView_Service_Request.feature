Feature: FF_6608144_RM_OneView_Service_Request

#1
  @cc @pass @test
  Scenario Outline: To Verify that the user is redirected to the Dashboard Landing page after a successful login
    Given User is on RMSOneView Login Page
    And User should be able to see below Domains "<Domain>"
    And  User should select Domain "<Domain>"
#    And Clicks on LogIn Button
    And User enters UserName "<Username>"
    And Clicks on Next Button for Login
    And User enters Password "<Password>"
    And Clicks on SignIn Button for Login
    Then User should be redirected to Dashboard Page "<Url>"

    Examples:
      | Domain | Username                         | Password     | Url                                            |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://uatrmoneview.bajajfinserv.in/dashboard |

#2
  @cc @pass @test
  Scenario Outline: To verify that two tabs are displayed on dashboard
    Given User is on RMSOneView Login Page
    And User should be able to see below Domains "<Domain>"
    And  User should select Domain "<Domain>"
#    And Clicks on LogIn Button
    And User enters UserName "<Username>"
    And Clicks on Next Button for Login
    And User enters Password "<Password>"
    And Clicks on SignIn Button for Login
    Then User should be redirected to Dashboard Page "<Url>"
    And Below two tabs "<Tabs>" should be displayed in Dashboard Page
#  1.Dashboard
#  2.Your Customer

    Examples:
      | Domain | Username                         | Password     | Url                                            | Tabs                    |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://uatrmoneview.bajajfinserv.in/dashboard | Dashboard#Your Customer |

#3
  @cc @pass @test
  Scenario Outline: To verify that user is able to redirected to the "Your Customer" page after clicking on "Your customer" tab
    Given User is on RMSOneView Login Page
    And User should be able to see below Domains "<Domain>"
    And  User should select Domain "<Domain>"
#    And Clicks on LogIn Button
    And User enters UserName "<Username>"
    And Clicks on Next Button for Login
    And User enters Password "<Password>"
    And Clicks on SignIn Button for Login
    Then User should be redirected to Dashboard Page "<Url>"
    And Clicks on "Your Customer" Option under Top Section in Dashboard Page
    Then User should be redirected to the Url "https://uatrmoneview.bajajfinserv.in/yourcustomer"

    Examples:
      | Domain | Username                         | Password     | Url                                            |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://uatrmoneview.bajajfinserv.in/dashboard |

#4
  @cc @pass @test
  Scenario Outline: To verify that user is redirected to the Customer Details page on entering the corresponding details in the top search bar
    Given User is on RMSOneView Login Page
    And User should be able to see below Domains "<Domain>"
    And  User should select Domain "<Domain>"
#    And Clicks on LogIn Button
    And User enters UserName "<Username>"
    And Clicks on Next Button for Login
    And User enters Password "<Password>"
    And Clicks on SignIn Button for Login
    Then User should be redirected to Dashboard Page "<Url>"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "247857688" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Customer Details page>"

    Examples:
      | Domain | Username                         | Password     | Url                                            | Customer Details page |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://uatrmoneview.bajajfinserv.in/dashboard | https://uatrmoneview.bajajfinserv.in/customerdetails|


#5
  @cc @pass @test
  Scenario Outline: To verify that “Customer Details” tab is pre-selected and active by default
    Given User is on RMSOneView Login Page
    And User should be able to see below Domains "<Domain>"
    And  User should select Domain "<Domain>"
#    And Clicks on LogIn Button
    And User enters UserName "<Username>"
    And Clicks on Next Button for Login
    And User enters Password "<Password>"
    And Clicks on SignIn Button for Login
    Then User should be redirected to Dashboard Page "<Url>"
    And Clicks on "Your Customer" Option under Top Section in Dashboard Page
    And Selects "Customer ID" Option from Filter By Search Dropdown
    And Enters "246986625" into Filter By Search Input Box
    And Click on customer name in the table "1" row
    Then "Customer-Details" Tab should be pre-selected and active by default

    Examples:
      | Domain | Username                         | Password     | Url                                            |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://uatrmoneview.bajajfinserv.in/dashboard |

#6
  @cc @pass @test
  Scenario Outline: To verify that Service Request option is enable and clickable under the LHS navigation section
    Given User is on RMSOneView Login Page
    And User should be able to see below Domains "<Domain>"
    And  User should select Domain "<Domain>"
#    And Clicks on LogIn Button
    And User enters UserName "<Username>"
    And Clicks on Next Button for Login
    And User enters Password "<Password>"
    And Clicks on SignIn Button for Login
    Then User should be redirected to Dashboard Page "<Url>"
    And Clicks on "Your Customer" Option under Top Section in Dashboard Page
    And Selects "Customer ID" Option from Filter By Search Dropdown
    And Enters "246986625" into Filter By Search Input Box
    And Click on customer name in the table "1" row
    And Click on tab title "Service Request" option
    Then "Service Request" option should be enable and clickable

    Examples:
      | Domain | Username                         | Password     | Url                                            |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://uatrmoneview.bajajfinserv.in/dashboard |

#7
  @cc @pass @test
  Scenario Outline: To verify that giver text and fields are displayed under the Service Request
    Given User is on RMSOneView Login Page
    And User should be able to see below Domains "<Domain>"
    And  User should select Domain "<Domain>"
#    And Clicks on LogIn Button
    And User enters UserName "<Username>"
    And Clicks on Next Button for Login
    And User enters Password "<Password>"
    And Clicks on SignIn Button for Login
    Then User should be redirected to Dashboard Page "<Url>"
    And Clicks on "Your Customer" Option under Top Section in Dashboard Page
    And Selects "Customer ID" Option from Filter By Search Dropdown
    And Enters "246986625" into Filter By Search Input Box
    And Click on customer name in the table "1" row
    And Click on tab title "Service Request" option
    Then Below text and fields should be displayed to the user "Service Request"  "<TableHeaders>"
#  1.Service Request text -
#  2.Cust id drop-down -
#  3.Co-applicant check box -
#  4.Raise SR button
#  (Table)
#  1.Origin Date
#  2.Request ID
#  3.Customer ID
#  4.Relationship No
#  5.Request Type
#  6.Sub Request Type
#  7.TAT in Days
#  8.Status Category(Case Reason)
#  9.Disposition

    Examples:
      | Domain | Username                         | Password     | Url                                            | TableHeaders |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://uatrmoneview.bajajfinserv.in/dashboard | Origin, Date, Request ID, Customer ID, Relationship No, Request Type, Sub Request Type, TAT in Days, Status, Category(Case Reason), Disposition |

#8
  @cc @pass @test
  Scenario Outline: To verify that Given option and checkbox is enabled and clickable
    Given User is on RMSOneView Login Page
    And User should be able to see below Domains "<Domain>"
    And  User should select Domain "<Domain>"
#    And Clicks on LogIn Button
    And User enters UserName "<Username>"
    And Clicks on Next Button for Login
    And User enters Password "<Password>"
    And Clicks on SignIn Button for Login
    Then User should be redirected to Dashboard Page "<Url>"
    And Clicks on "Your Customer" Option under Top Section in Dashboard Page
    And Selects "Customer ID" Option from Filter By Search Dropdown
    And Enters "246986625" into Filter By Search Input Box
    And Click on customer name in the table "1" row
    And Click on tab title "Service Request" option
#    And Verify the options and checkbox
    Then Below options and checkbox should be enabled and clickable "<Options & CheckBox>"

#  1.Co-applicant check box
#  2.customer id drop-down
#  3.Raise SR button

    Examples:
      | Domain | Username                         | Password     | Url                                            | Options & CheckBox|
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://uatrmoneview.bajajfinserv.in/dashboard | Co-applicant, Customer, Raise SR |

#9

  Scenario Outline: To verify that Service Request details of the co-applicant are displayed when the user selects a Co-applicant Customer ID from the Co-applicant IDs dropdown
    Given User is on RMSOneView Login Page
    And User should be able to see below Domains "<Domain>"
    And  User should select Domain "<Domain>"
#    And Clicks on LogIn Button
    And User enters UserName "<Username>"
    And Clicks on Next Button for Login
    And User enters Password "<Password>"
    And Clicks on SignIn Button for Login
    Then User should be redirected to Dashboard Page "<Url>"
    And Clicks on "Your Customer" Option under Top Section in Dashboard Page
    And Selects "Customer ID" Option from Filter By Search Dropdown
    And Enters "246986625" into Filter By Search Input Box
    And Click on customer name in the table "1" row
    And Click on tab title "Service Request" option
    And Select "Co-applicant" Radio Button
    And Verify the "Customer ID" drop down
    And Selects "246986625" Option from "Customer ID" Dropdown
    Then Corresponding "Customer ID" "<Customer ID>" customer records should be displayed
    Then Service Request details should be displayed for co-applicant cust id


    Examples:
      | Domain | Username                         | Password     | Url                                            | Customer ID |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://uatrmoneview.bajajfinserv.in/dashboard | 247095673   |

#10
  @test
  Scenario Outline: To verify that customer id drop-down is clickable for multiple customer
    Given User is on RMSOneView Login Page
    And User should be able to see below Domains "<Domain>"
    And  User should select Domain "<Domain>"
#    And Clicks on LogIn Button
    And User enters UserName "<Username>"
    And Clicks on Next Button for Login
    And User enters Password "<Password>"
    And Clicks on SignIn Button for Login
    Then User should be redirected to Dashboard Page "<Url>"
    And Clicks on "Your Customer" Option under Top Section in Dashboard Page
    And Selects "Customer ID" Option from Filter By Search Dropdown
    And Enters "246986625" into Filter By Search Input Box
    And Click on customer name in the table "1" row
    And Click on tab title "Service Request" option
    And Verify the "Customer ID" drop down
    Then "Customer ID" drop-down should be clickable for multiple customers

    Examples:
      | Domain | Username                         | Password     | Url                                            |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://uatrmoneview.bajajfinserv.in/dashboard |

#11
  @
  Scenario Outline: To verify that the user is able to view the list of customer IDs in the Customer ID dropdown
    Given User is on RMSOneView Login Page
    And User should be able to see below Domains "<Domain>"
    And  User should select Domain "<Domain>"
#    And Clicks on LogIn Button
    And User enters UserName "<Username>"
    And Clicks on Next Button for Login
    And User enters Password "<Password>"
    And Clicks on SignIn Button for Login
    Then User should be redirected to Dashboard Page "<Url>"
    And Clicks on "Your Customer" Option under Top Section in Dashboard Page
    And Selects "Customer ID" Option from Filter By Search Dropdown
    And Enters "246986625" into Filter By Search Input Box
    And Click on customer name in the table "1" row
    And Click on tab title "Service Request" option
    And Verify the "Customer ID" drop down
    Then List of "Customer ID" should be displayed in Customer ID drop down

    Examples:
      | Domain | Username                         | Password     | Url                                            |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://uatrmoneview.bajajfinserv.in/dashboard |

#12
  @
  Scenario Outline: To verify that user is able to view corresponding details as per selected customer id under the customer id drop-down
    Given User is on RMSOneView Login Page
    And User should be able to see below Domains "<Domain>"
    And  User should select Domain "<Domain>"
#    And Clicks on LogIn Button
    And User enters UserName "<Username>"
    And Clicks on Next Button for Login
    And User enters Password "<Password>"
    And Clicks on SignIn Button for Login
    Then User should be redirected to Dashboard Page "<Url>"
    And Clicks on "Your Customer" Option under Top Section in Dashboard Page
    And Selects "Customer ID" Option from Filter By Search Dropdown
    And Enters "246986625" into Filter By Search Input Box
    And Click on customer name in the table "1" row
    And Click on tab title "Service Request" option
    And Verify the "Customer ID" drop down
    And Selects "246986625" Option from "Customer ID" Dropdown
    Then Corresponding "Customer ID" "<Customer ID>" customer records should be displayed

    Examples:
      | Domain | Username                         | Password     | Url                                            | Customer ID |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://uatrmoneview.bajajfinserv.in/dashboard | 247095673   |

#13
  @test
  Scenario Outline: To verify that the pagination section is displayed at the bottom of the page
    Given User is on RMSOneView Login Page
    And User should be able to see below Domains "<Domain>"
    And  User should select Domain "<Domain>"
#    And Clicks on LogIn Button
    And User enters UserName "<Username>"
    And Clicks on Next Button for Login
    And User enters Password "<Password>"
    And Clicks on SignIn Button for Login
    Then User should be redirected to Dashboard Page "<Url>"
    And Clicks on "Your Customer" Option under Top Section in Dashboard Page
    And Selects "Customer ID" Option from Filter By Search Dropdown
    And Enters "246986625" into Filter By Search Input Box
    And Click on customer name in the table "1" row
    And Click on tab title "Service Request" option
    And Verify the "Customer ID" drop down
    And Selects "246986625" Option from "Customer ID" Dropdown
    Then Corresponding "Customer ID" "<Customer ID>" customer records should be displayed
    Then Pagination section should be displayed at the bottom of the page

    Examples:
      | Domain | Username                         | Password     | Url                                            | Customer ID |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://uatrmoneview.bajajfinserv.in/dashboard | 247095673   |

#14
  @
  Scenario Outline: To verify that the pagination section index starts at 1 and is displayed at the bottom of the page
    Given User is on RMSOneView Login Page
    And User should be able to see below Domains "<Domain>"
    And  User should select Domain "<Domain>"
#    And Clicks on LogIn Button
    And User enters UserName "<Username>"
    And Clicks on Next Button for Login
    And User enters Password "<Password>"
    And Clicks on SignIn Button for Login
    Then User should be redirected to Dashboard Page "<Url>"
    And Clicks on "Your Customer" Option under Top Section in Dashboard Page
    And Selects "Customer ID" Option from Filter By Search Dropdown
    And Enters "246986625" into Filter By Search Input Box
    And Click on customer name in the table "1" row
    And Click on tab title "Service Request" option
    And Verify the "Customer ID" drop down
    And Selects "246986625" Option from "Customer ID" Dropdown
    Then Corresponding "Customer ID" "<Customer ID>" customer records should be displayed
    Then Pagination section index should be starts at "1" and is displayed at the bottom of the page

    Examples:
      | Domain | Username                         | Password     | Url                                            | Customer ID |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://uatrmoneview.bajajfinserv.in/dashboard | 247095673   |
#
#15
#
#  Scenario Outline: To verify that the pagination section index starts at 1 and is displayed at the bottom of the page
#    Given User is on RMSOneView Login Page
#    And User should be able to see below Domains "<Domain>"
#    And  User should select Domain "<Domain>"
##    And Clicks on LogIn Button
#    And User enters UserName "<Username>"
#    And Clicks on Next Button for Login
#    And User enters Password "<Password>"
#    And Clicks on SignIn Button for Login
#    Then User should be redirected to Dashboard Page "<Url>"
#    And Clicks on "Your Customer" Option under Top Section in Dashboard Page
#    And Click on drop-down
#    And Select customer Id
#    And Verify the details
#    Then Pagination section index should be starts at "1" and is displayed at the bottom of the page
#
#    Examples:
#      | Domain | Username                         | Password     | Url                                            |
#      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://uatrmoneview.bajajfinserv.in/dashboard |

#16
  @
  Scenario Outline: To verify that pagination arrow is enable and clickable
    Given User is on RMSOneView Login Page
    And User should be able to see below Domains "<Domain>"
    And  User should select Domain "<Domain>"
#    And Clicks on LogIn Button
    And User enters UserName "<Username>"
    And Clicks on Next Button for Login
    And User enters Password "<Password>"
    And Clicks on SignIn Button for Login
    Then User should be redirected to Dashboard Page "<Url>"
    And Clicks on "Your Customer" Option under Top Section in Dashboard Page
    And Selects "Customer ID" Option from Filter By Search Dropdown
    And Enters "246986625" into Filter By Search Input Box
    And Click on customer name in the table "1" row
    And Click on tab title "Service Request" option
    And Verify the "Customer ID" drop down
    And Selects "246986625" Option from "Customer ID" Dropdown
    Then Corresponding "Customer ID" "<Customer ID>" customer records should be displayed
    Then Pagination arrow should be enable and clickable

    Examples:
      | Domain | Username                         | Password     | Url                                            | Customer ID |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://uatrmoneview.bajajfinserv.in/dashboard | 247095673   |

#17
  @test
  Scenario Outline: To verify that clicking any tab in the left navigation displays the corresponding details without reloading the entire page
    Given User is on RMSOneView Login Page
    And User should be able to see below Domains "<Domain>"
    And  User should select Domain "<Domain>"
#    And Clicks on LogIn Button
    And User enters UserName "<Username>"
    And Clicks on Next Button for Login
    And User enters Password "<Password>"
    And Clicks on SignIn Button for Login
    Then User should be redirected to Dashboard Page "<Url>"
    And Clicks on "Your Customer" Option under Top Section in Dashboard Page
#    And Click on your customer tab
#    And Click on another left side option
#    And Verify the details
#    Then corresponding details should be without reloading the entire page
    And Selects "Customer ID" Option from Filter By Search Dropdown
    And Enters "246986625" into Filter By Search Input Box
    And Click on customer name in the table "1" row
    And Click on tab title "Service Request" option
#    Then Corresponding "Customer ID" "<Customer ID>" customer records should be displayed
#    And Click on tab title "Bounce History" option
#    Then Corresponding "Customer ID" "<Customer ID>" customer records should be displayed
    Then Corresponding details should be without reloading the entire page

    Examples:
      | Domain | Username                         | Password     | Url                                            |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://uatrmoneview.bajajfinserv.in/dashboard |

#18
  @
  Scenario Outline: To verify that validation message is displayed when No service request found for selected co-applicant
    Given User is on RMSOneView Login Page
    And User should be able to see below Domains "<Domain>"
    And  User should select Domain "<Domain>"
#    And Clicks on LogIn Button
    And User enters UserName "<Username>"
    And Clicks on Next Button for Login
    And User enters Password "<Password>"
    And Clicks on SignIn Button for Login
    Then User should be redirected to Dashboard Page "<Url>"
    And Clicks on "Your Customer" Option under Top Section in Dashboard Page
#    And Selects "Customer ID" Option from Filter By Search Dropdown
#    And Enters "246986625" into Filter By Search Input Box
#    And Click on customer name in the table "1" row
#    And Click on tab title "Service Request" option
    And Click on another left side option
    And Verify the details
    Then Below validation message should be displayed
#  "No service request found for selected co-applicant"

    Examples:
      | Domain | Username                         | Password     | Url                                            |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://uatrmoneview.bajajfinserv.in/dashboard |

#19
  @
  Scenario Outline: To verify that validation message is displayed when Unable to initiate Service Request. Try again later
    Given User is on RMSOneView Login Page
    And User should be able to see below Domains "<Domain>"
    And  User should select Domain "<Domain>"
#    And Clicks on LogIn Button
    And User enters UserName "<Username>"
    And Clicks on Next Button for Login
    And User enters Password "<Password>"
    And Clicks on SignIn Button for Login
    Then User should be redirected to Dashboard Page "<Url>"
    And Clicks on "Your Customer" Option under Top Section in Dashboard Page
    And Click on another left side option
    And Verify the details
    Then Below validation message should be displayed
#  "Unable to initiate Service Request. Try again later"

    Examples:
      | Domain | Username                         | Password     | Url                                            |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://uatrmoneview.bajajfinserv.in/dashboard |

#20
  @
  Scenario Outline: To verify that validation message is displayed when Unable to fetch data. Please try again later
    Given User is on RMSOneView Login Page
    And User should be able to see below Domains "<Domain>"
    And  User should select Domain "<Domain>"
#    And Clicks on LogIn Button
    And User enters UserName "<Username>"
    And Clicks on Next Button for Login
    And User enters Password "<Password>"
    And Clicks on SignIn Button for Login
    Then User should be redirected to Dashboard Page "<Url>"
    And Clicks on "Your Customer" Option under Top Section in Dashboard Page
    And Click on another left side option
    And Verify the details
    Then Below validation message should be displayed "Unable to fetch data. Please try again later"
#  "Unable to fetch data. Please try again later"

    Examples:
      | Domain | Username                         | Password     | Url                                            |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://uatrmoneview.bajajfinserv.in/dashboard |

#21
  @
  Scenario Outline: To verify that validation message is displayed when Unable to load Customer IDs
    Given User is on RMSOneView Login Page
    And User should be able to see below Domains "<Domain>"
    And  User should select Domain "<Domain>"
#    And Clicks on LogIn Button
    And User enters UserName "<Username>"
    And Clicks on Next Button for Login
    And User enters Password "<Password>"
    And Clicks on SignIn Button for Login
    Then User should be redirected to Dashboard Page "<Url>"
    And Clicks on "Your Customer" Option under Top Section in Dashboard Page
    And Click on another left side option
    And Verify the details
    Then Below validation message should be displayed "Unable to load Customer IDs"
#  "Unable to load Customer IDs"

    Examples:
      | Domain | Username                         | Password     | Url                                            |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://uatrmoneview.bajajfinserv.in/dashboard |

















