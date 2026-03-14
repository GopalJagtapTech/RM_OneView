Feature: FF_6608144_RM_OneView_Bounce_History

#1
  @cc @pass 
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
  @cc @pass 
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
  @cc @pass 
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
  @cc @pass @data
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
#    And Verify the redirection
#    Then User should be redirected to the customer details page

    Examples:
      | Domain | Username                         | Password     | Url                                            | Customer Details page |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://uatrmoneview.bajajfinserv.in/dashboard | https://uatrmoneview.bajajfinserv.in/customerdetails|

#5
  @cc @pass @data
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
  @cc @pass @data
  Scenario Outline: To verify that Bounce history option is enable and clickable under the LHS navigation section
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
    And Click on tab title "Bounce History" option
    Then "Bounce History" option should be enable and clickable
#    Then "Bounce History" Tab option should be enable and clickable

    Examples:
      | Domain | Username                         | Password     | Url                                            |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://uatrmoneview.bajajfinserv.in/dashboard |

#7
  @cc @pass @data
  Scenario Outline: To verify that giver text and fields are displayed under the Bounce history
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
    And Click on tab title "Bounce History" option
    Then Below text and fields should be displayed to the user "Bounce history"  "<TableHeaders>"
#  1.Bounce history text -
#  2.Cust id drop-down
#  3.Customer ID check box
#  3.Co-applicant ID check box
#  (Table)
#  1.SOA
#  2.Agreement number
#  3.Application ID
#  4.Sanctioned amount- Disbursed amount
#  5.Product Type
#  6.MOB
#  7.Tenure
#  8.Loan Status
#  9.POS
#  10.Track Record

    Examples:
      | Domain | Username                         | Password     | Url                                            | TableHeaders |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://uatrmoneview.bajajfinserv.in/dashboard | SOA, AGREEMENT NUMBER, APPLICATION ID, SANCTIONED AMOUNT, PRODUCT TYPE, MOB, TENURE, LOAN STATUS, POS, TRACK RECORD |

#8
  @cc @pass @data
  Scenario Outline: To verify that Co-applicant check box enable and clickable
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
    And Click on tab title "Bounce History" option
    Then "Co-applicant" option should be enable and clickable

    Examples:
      | Domain | Username                         | Password     | Url                                            |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://uatrmoneview.bajajfinserv.in/dashboard |

#9
  @data @doubts
  Scenario Outline: To verify that bounce history details of the Co-applicant are displayed when the user selects a Co-applicant Customer ID from the Co-applicant IDs dropdown
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
    And Click on tab title "Bounce History" option
    And Select "Co-applicant" Radio Button
    Then Bounce history details should be displayed for co-applicant customer id
#    Co-applicant Details not present

    Examples:
      | Domain | Username                         | Password     | Url                                            |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://uatrmoneview.bajajfinserv.in/dashboard |

#10
  @cc @pass @data
  Scenario Outline: To verify that PDF option is enabled and clickable under the SOA column
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
    And Click on tab title "Bounce History" option
    And Click on SOA pdf option
    And Verify the SOA option
    Then "PDF" option should be enable and clickable

    Examples:
      | Domain | Username                         | Password     | Url                                            |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://uatrmoneview.bajajfinserv.in/dashboard |

#11
  @cc @pass @data
  Scenario Outline: To verify that given option is displayed after clicking on SOA PDF option
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
    And Click on tab title "Bounce History" option
    And Click on SOA pdf option
#    And Verify the SOA option
    And Below options "<Options>" should be displayed
#  1.PDF
#  2.SMS

    Examples:
      | Domain | Username                         | Password     | Url                                            | Options |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://uatrmoneview.bajajfinserv.in/dashboard | PDF, SMS |

#12
  @cc @pass @data
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
    And Clicks on "Your Customer" Option under Top Section in Dashboard Page
    And Selects "Customer ID" Option from Filter By Search Dropdown
    And Enters "246986625" into Filter By Search Input Box
    And Click on customer name in the table "1" row
    And Click on tab title "Bounce History" option
    And Click on SOA pdf option
    And Verify the SOA option
    Then Below options should be enabled and clickable "<Options>"
#  1.PDF
#  2.SMS

    Examples:
      | Domain | Username                         | Password     | Url                                            | Options |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://uatrmoneview.bajajfinserv.in/dashboard | PDF, SMS |

#13
  @cc @fail @data
  Scenario Outline: To verify that SOA SMS is triggered successfully to customer after clicks on SMS option
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
    And Click on tab title "Bounce History" option
    And Verify the Customer information section
    And Click on SOA pdf option
    And Clicks on "SMS" CTA of Consent SOA Popup
    Then On click of Yes CTA User should receive "Success" notification message "SMS with"
#    Then SOA SMS should be triggered successfully to customer

    Examples:
      | Domain | Username                         | Password     | Url                                            |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://uatrmoneview.bajajfinserv.in/dashboard |

#14
  @cc @fail @data
  Scenario Outline: To verify validation message is displayed when user is unable send SMS
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
    And Click on tab title "Bounce History" option
    And Verify the Customer information section
    And Click on SOA pdf option
    And Clicks on "SMS" CTA of Consent SOA Popup
#    Then On click of Yes CTA User should receive "Invalid" notification message "Unable to send SMS"
    Then Below Validation message should be displayed "Unable to send SMS"

    Examples:
      | Domain | Username                         | Password     | Url                                            |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://uatrmoneview.bajajfinserv.in/dashboard |

#15
  @cc @fail @data
  Scenario Outline: To verify validation message is displayed when user is Download failed
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
    And Click on tab title "Bounce History" option
    And Verify the Customer information section
    And Click on SOA pdf option
    And Click on SOA pdf option
    And Clicks on "SMS" CTA of Consent SOA Popup
#    Then On click of Yes CTA User should receive "Failed" notification message "Download failed"
    Then Below Validation message should be displayed "Download failed"

    Examples:
      | Domain | Username                         | Password     | Url                                            |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://uatrmoneview.bajajfinserv.in/dashboard |

#16
  @data
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
    And Click on tab title "Bounce History" option
    And Verify the "Customer ID" drop down
    Then "Customer ID" drop-down should be clickable for multiple customers

    Examples:
      | Domain | Username                         | Password     | Url                                            |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://uatrmoneview.bajajfinserv.in/dashboard |

#17
  @data
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
    And Click on tab title "Bounce History" option
    And Verify the "Customer ID" drop down
    Then List of customer id should be displayed

    Examples:
      | Domain | Username                         | Password     | Url                                            |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://uatrmoneview.bajajfinserv.in/dashboard |

#18
  @data
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
    And Click on tab title "Bounce History" option
    And Verify the "Customer ID" drop down
    And Selects "246986625" Option from "Customer ID" Dropdown
    And Verify the Customer information section
#    Then corresponding details should be displayed as per selected customer id

    Examples:
      | Domain | Username                         | Password     | Url                                            |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://uatrmoneview.bajajfinserv.in/dashboard |

#19
  @data
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
    And Click on tab title "Bounce History" option
    And Verify the "Customer ID" drop down
    And Selects "246986625" Option from "Customer ID" Dropdown
    Then Pagination section should be displayed at the bottom of the page

    Examples:
      | Domain | Username                         | Password     | Url                                            |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://uatrmoneview.bajajfinserv.in/dashboard |

#20
  @data
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
    And Click on tab title "Bounce History" option
    And Verify the "Customer ID" drop down
    And Selects "246986625" Option from "Customer ID" Dropdown
    Then Pagination section index should be starts at "1" and is displayed at the bottom of the page

    Examples:
      | Domain | Username                         | Password     | Url                                            |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://uatrmoneview.bajajfinserv.in/dashboard |

#21
  @data
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
    And Click on tab title "Bounce History" option
    And Verify the "Customer ID" drop down
    And Selects "246986625" Option from "Customer ID" Dropdown
    Then Pagination arrow should be enable and clickable

    Examples:
      | Domain | Username                         | Password     | Url                                            |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://uatrmoneview.bajajfinserv.in/dashboard |

#22
  @data
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
    And Selects "Customer ID" Option from Filter By Search Dropdown
    And Enters "246986625" into Filter By Search Input Box
    And Click on customer name in the table "1" row
    And Click on tab title "Bounce History" option
    And Verify the "Customer ID" drop down
    And Selects "246986625" Option from "Customer ID" Dropdown
    Then Corresponding details should be without reloading the entire page

    Examples:
      | Domain | Username                         | Password     | Url                                            |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://uatrmoneview.bajajfinserv.in/dashboard |











