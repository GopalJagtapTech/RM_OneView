Feature: FF_6735184_RM_Debt_Collection_Details_Page

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
  Scenario Outline:To verify that two tabs are displayed on dashboard
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

  Scenario Outline: To verify that given text and fields are displayed under dashboard page
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
#  5.Nudge

    Examples:
      | Domain | Username                         | Password     | Url                                                     |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://bajaj-rmoneview-uat.azurewebsites.net/dashboard |

  Scenario Outline: To verify that given tiles are enable and clickable under quick links section
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

  Scenario Outline: To verify that user is able to redirect on Debt Collection Details page when user clicks on Debt Collection tile
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
  Scenario Outline:To verify that user is able to redirect on Debt Collection Details page when user clicks on Debt Collection tile
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
  Scenario Outline:To verify that Debt Collection Details option is selected by default
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
    Then "Debt Collection Details" option should be selected by default in Debt Collections Page

    Examples:
      | Domain | Username                         | Password     | Url                                                     |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://bajaj-rmoneview-uat.azurewebsites.net/dashboard |

  Scenario Outline:To verify that given text and fields are displayed under Debt Collection Details page
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
    Then Below fields should be displayed
  1. Debt Collection Details text
  2.search bar (RHS)
  (LHS)
  1. Debt Collection Details option
  (Table)
  1.CustomerId
  2.Customer Name
  3.LAN
  4.Product (Loan type)
  5.Address
  6.Disbursement Date
  7.EMI Overdue Amount
  8.Cheque Bounce Charges
  9.Late Payment Facility (charges)
  10.Other Charges
  11.Total Outstanding Amount
  12.Allocated RM Name
  13.Allocated RM Employee ID.


    Examples:
      | Domain | Username                         | Password     | Url                                                     |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://bajaj-rmoneview-uat.azurewebsites.net/dashboard |

    @data
  Scenario Outline:To Verify that user is able to search for customers using a mobile number
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
    Then Corresponding customer records should be displayed
    Examples:
      | Domain | Username                         | Password     | Url                                                     |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://bajaj-rmoneview-uat.azurewebsites.net/dashboard |

      @data
  Scenario Outline:To verify that the user is able to search for customers using a PAN Number
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
    Then Corresponding customer records should be displayed
    Examples:
      | Domain | Username                         | Password     | Url                                                     |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://bajaj-rmoneview-uat.azurewebsites.net/dashboard |

        @data
  Scenario Outline: To verify that user is able to search for customers using a Customer ID
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
    Then Customer details should be displayed corresponding to the entered Customer ID
    Examples:
      | Domain | Username                         | Password     | Url                                                     |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://bajaj-rmoneview-uat.azurewebsites.net/dashboard |

  Scenario Outline: To verify that only the RM is able to view their assigned customers details on the Debt Collection page
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
    Then Only RM should be view assigned customers details on the Debt Collection page

    Examples:
      | Domain | Username                         | Password     | Url                                                     |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://bajaj-rmoneview-uat.azurewebsites.net/dashboard |

    @data
  Scenario Outline:To verify that address is displayed in without masking format under the Address column when the allocation flag is = ‘D’
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
    Then Address should be displayed without masking format under the Address column

    Examples:
      | Domain | Username                         | Password     | Url                                                     |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://bajaj-rmoneview-uat.azurewebsites.net/dashboard |

    @data
  Scenario Outline:To verify that address is displayed in a masking format under the Address column when the allocation flag is = ‘I’
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
    Then Address should be displayed with masking format under the Address column

    Examples:
      | Domain | Username                         | Password     | Url                                                     |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://bajaj-rmoneview-uat.azurewebsites.net/dashboard |

  Scenario Outline:To verify that the table data is center-aligned under the debt collection page
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
    Then Table data should be centered aligned

    Examples:
      | Domain | Username                         | Password     | Url                                                     |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://bajaj-rmoneview-uat.azurewebsites.net/dashboard |

    @NA
  Scenario Outline:To verify that Table all data is displayed in camel case under the debt collection page
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
    Then Table all data should be displayed in camel case
    Examples:
      | Domain | Username                         | Password     | Url                                                     |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://bajaj-rmoneview-uat.azurewebsites.net/dashboard |

  Scenario Outline:To verify that Table header is displayed in upper case and bold under the debt collection page
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
    Then Table header should be displayed in Upper case and bold
    Examples:
      | Domain | Username                         | Password     | Url                                                     |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://bajaj-rmoneview-uat.azurewebsites.net/dashboard |

  Scenario Outline:To Verify that given validation message is displayed when user enters an invalid input and searches for a customer
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
    Then Below Validation message should be displayed
  "invalid or unallocated records"

    Examples:
      | Domain | Username                         | Password     | Url                                                     |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://bajaj-rmoneview-uat.azurewebsites.net/dashboard |

  Scenario Outline:To verify that a validation message is displayed when no records is available for the customer
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
    Then Below Validation message should be displayed
  "No data available"
    Examples:
      | Domain | Username                         | Password     | Url                                                     |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://bajaj-rmoneview-uat.azurewebsites.net/dashboard |

  Scenario Outline:To verify that the pagination section is displayed at the bottom of the page
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
    Then pagination section should be displayed at the bottom of the page
    Examples:
      | Domain | Username                         | Password     | Url                                                     |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://bajaj-rmoneview-uat.azurewebsites.net/dashboard |

  Scenario Outline:To verify that the pagination section index starts at 1 and is displayed at the bottom of the page
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
    Then pagination section index should be starts at 1 and is displayed at the bottom of the page
    Examples:
      | Domain | Username                         | Password     | Url                                                     |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://bajaj-rmoneview-uat.azurewebsites.net/dashboard |

  Scenario Outline:To verify that pagination arrow is enable and clickable
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
    Then Pagination arrow should be enable and clickable
    Examples:
      | Domain | Username                         | Password     | Url                                                     |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://bajaj-rmoneview-uat.azurewebsites.net/dashboard |

  Scenario Outline:To verify that the page is not reload when the user clicks on a page index in the pagination section
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
    Then page should not be reload when the user clicks on a page index in the pagination section
    Examples:
      | Domain | Username                         | Password     | Url                                                     |
      | BFL    | chaitanya.pardhi@bajajfinserv.in | Barfani@1106 | https://bajaj-rmoneview-uat.azurewebsites.net/dashboard |



