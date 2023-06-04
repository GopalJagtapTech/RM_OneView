Feature: Mandate Management

  @loan
  Scenario Outline: Verify Documentation, Mandate Management & its Redirection
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountService/Emandate/index" Url

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu         |
      | 9811146659    | 26051982 | Individual    | Mandate and documents | Manage your mandate |

  @loan
  Scenario Outline: Verify that customer is able to view product name tabs on Mandate Management page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountService/Emandate/index" Url
    And verify Header and its subtext are displayed
    And verify that following Tabs " Loans and Insta EMI Card" "Systematic Deposit Plan" are Displayed
    And verify RHS "Need help?" following Options: "Raise a Request, FAQs" are Displayed
    And verify the following buttons "<Buttons>" are displayed in the page
    And verify the following buttons "<Disabled Buttons>" are disabled in the page

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu         | Buttons        | Disabled Buttons |
      | 9811146659    | 26051982 | Individual    | Mandate and documents | Manage your mandate | Cancel,Proceed | Cancel,Proceed   |

  @loan
  Scenario Outline: Verify that Loan product tab by default is selected on Mandate Management page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountService/Emandate/index" Url
    And verify Loan Tab is selected by Default
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu         |
      | 9811146659    | 26051982 | Individual    | Mandate and documents | Manage your mandate |

  @loan
  Scenario Outline:  Verify that customer is able to view all active LAN with loan cards
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountService/Emandate/index" Url
    And verify All Loan cards are Displayed-" Loans and Insta EMI Card","Loan Account Number"
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu         |
      | 9811146659    | 26051982 | Individual    | Mandate and documents | Manage your mandate |

  @loan
  Scenario Outline:  Verify that customer is able to view fields on loan card
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountService/Emandate/index" Url
    And verify Details on the Loan Cards- "401PLFGD235440"
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu         |
      | 9811146659    | 16111984 | Individual    | Mandate and documents | Manage your mandate |

  @loan
  Scenario Outline:  verify that customer is able to view message and details when they don’t have any active loan
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountService/Emandate/index" Url
    And verify Message Displayed when Customer has No Loan Cards Available
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu         |
      | 9960262621    | 14101968 | Individual    | Mandate and documents | Manage your mandate |

  @loan
  Scenario Outline:  verify that customer is able to select multiple Loans for bank change
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountService/Emandate/index" Url
    And verify User is able to Select Multiple Loans at a time

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu         |
      | 8468953662    | 16111984 | Corporate     | Mandate and documents | Manage your mandate |

  @loan
  Scenario Outline: Verify that customer is redirecting to EMandate page when customer clicks on proceed CTA
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountService/Emandate/index" Url
    And User selects a Loan card in Mandate Management Page -"401PLFGD235440"
    And Clicks on Proceed Button
    Then verify customer is redirecting to EMandate page
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu         |
      | 9811146659    | 16111984 | Individual    | Mandate and documents | Manage your mandate |



    #SDP
  @sdp
  Scenario Outline:  verify that customer is able to view message and details when they don’t have any active Deposit
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountService/Emandate/index" Url
    And Click on the Tab "Systematic Deposit Plan" in Mandate Management Page
    And verify Message Displayed when Customer has No Deposit Cards Available
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu         |
      | 9960262621    | 14101968 | Individual    | Mandate and documents | Manage your mandate |

  @sdp
  Scenario Outline: verify Customer is able to view all the content in Mandate Management Page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountService/Emandate/index" Url
    And Click on the Tab "Systematic Deposit Plan" in Mandate Management Page
    And verify Header and its subtext are displayed for SDP
    And verify that following Tabs " Loans and Insta EMI Card" "Systematic Deposit Plan" are Displayed
    And verify RHS "Need help?" following Options: "Raise a Request, FAQs" are Displayed
    And verify the following buttons "<Buttons>" are displayed in the page
    And verify the following buttons "<Disabled Buttons>" are disabled in the page

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu         | Buttons        | Disabled Buttons |
      | 8097927579    | 26051982 | Individual    | Mandate and documents | Manage your mandate | Cancel,Proceed | Cancel,Proceed   |
  @sdp
  Scenario Outline: Verify that customer is able to view all active SDP cards
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountService/Emandate/index" Url
    And Click on the Tab "Systematic Deposit Plan" in Mandate Management Page
    And verify All Deposit cards are Displayed-"Systematic Deposit Plan","SDP Application Number"

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu         |
      | 8097927579    | 16111984 | Individual    | Mandate and documents | Manage your mandate |

  @sdp
  Scenario Outline:   Verify that customer is able to view fields on SDP card
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountService/Emandate/index" Url
    And Click on the Tab "Systematic Deposit Plan" in Mandate Management Page
    And verify Details on the SDP Card- "2500840"
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu         |
      | 8097927579    | 16111984 | Individual    | Mandate and documents | Manage your mandate |
#      | 8600444381    | 16111984 | Individual    | Mandate and documents | Manage your mandate |

  @sdp
  Scenario Outline:  verify that customer is able to select multiple SDPs
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountService/Emandate/index" Url
    And Click on the Tab "Systematic Deposit Plan" in Mandate Management Page
    And verify User is able to Select Multiple SDPs at a time
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu         |
      | 8600444381    | 16111984 | Individual    | Mandate and documents | Manage your mandate |

  @sdp
  Scenario Outline: Verify that customer is redirecting to EMandate page when customer clicks on proceed CTA for SDP
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountService/Emandate/index" Url
    And Click on the Tab "Systematic Deposit Plan" in Mandate Management Page
    And User selects a SDP card in Mandate Management Page -"2500840"
    And Clicks on Proceed Button
    Then verify customer is redirecting to EMandate page
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu         |
      | 8097927579    | 16111984 | Individual    | Mandate and documents | Manage your mandate |

############rhs
  @rhs
  Scenario Outline: Verify that Customer is redirecting to Raise a Request page when they click on Raise a Request
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountService/Emandate/index" Url
    And Customer clicks on "Raise a Request" option in RHS
    Then verify Customer redirected to the respective page using Header "<Header Text>"

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu         | Header Text                                              |
      | 8800384932    | 02021976 | Individual    | Mandate and documents | Manage your mandate | Select the product for which you wish to raise a request |

  @rhs
  Scenario Outline: Verify that Customer is redirecting to FAQs page when they click on FAQs
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountService/Emandate/index" Url
    And Customer clicks on "FAQs" option in RHS
    Then verify Customer redirected to the respective page using Header "<Header Text>"
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu         | Header Text        |
      | 8800384932    | 02021976 | Individual    | Mandate and documents | Manage your mandate | My Raised Requests |



############My Relation##############
####Loan

  @loanmr @myrel
  Scenario Outline: Verify that Customer is able to view the Options in My Relations
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    Then verify options"<Options>" available under "Quick Actions" on RHS

    Examples:
      | Mobile Number | Date     | Customer Type | Options            |
      | 9811146659    | 02021976 | Individual    | Mandate Management |

  @loanmr1 @myrel
  Scenario Outline: Verify that Customer is able to redirect to Mandate Management page on clicking it from My Relations
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And Customer Click on "Mandate Management" CTA in RHS
    Then Verify Customer Redirected to "MyAccountService/Emandate/index" Url
    And verify Header and its subtext are displayed

    Examples:
      | Mobile Number | Date     | Customer Type |
      | 9811146659    | 26051982 | Individual    |


  @loanmr @myrel
  Scenario Outline: Verify that customer is able to view product name tabs on Mandate Management page - My Relation
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And Customer Click on "Mandate Management" CTA in RHS
    Then Verify Customer Redirected to "MyAccountService/Emandate/index" Url
    And verify Header and its subtext are displayed
    And verify that following Tabs " Loans and Insta EMI Card" "Systematic Deposit Plan" are Displayed
    And verify RHS "Need help?" following Options: "Raise a Request, FAQs" are Displayed
    And verify the following buttons "<Buttons>" are displayed in the page
    And verify the following buttons "<Disabled Buttons>" are disabled in the page

    Examples:
      | Mobile Number | Date     | Customer Type | Buttons        | Disabled Buttons |
      | 9811146659    | 26051982 | Individual    | Cancel,Proceed | Cancel,Proceed   |

  @loanmr @myrel
  Scenario Outline: Verify that Loan product tab by default is selected on Mandate Management page - My Relation
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And Customer Click on "Mandate Management" CTA in RHS
    Then Verify Customer Redirected to "MyAccountService/Emandate/index" Url
    And verify Loan Tab is selected by Default
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 9811146659    | 26051982 | Individual    |

  @loanmr @myrel
  Scenario Outline:  Verify that customer is able to view all active LAN with loan cards - My Relation
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And Customer Click on "Mandate Management" CTA in RHS
    Then Verify Customer Redirected to "MyAccountService/Emandate/index" Url
    And verify All Loan cards are Displayed-" Loans and Insta EMI Card","Loan Account Number"
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 9811146659    | 26051982 | Individual    |

  @loanmr @myrel
  Scenario Outline:  Verify that customer is able to view fields on loan card - My Relation
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And Customer Click on "Mandate Management" CTA in RHS
    Then Verify Customer Redirected to "MyAccountService/Emandate/index" Url
    And verify Details on the Loan Cards- "401PLFGD235440"
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 9811146659    | 16111984 | Individual    |

  @loanmr @myrel
  Scenario Outline:  verify that customer is able to view message and details when they don’t have any active loan - My Relation
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And Customer Click on "Mandate Management" CTA in RHS
    Then Verify Customer Redirected to "MyAccountService/Emandate/index" Url
    And verify Message Displayed when Customer has No Loan Cards Available
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 9960262621    | 14101968 | Individual    |

  @loanmr @myrel
  Scenario Outline:  verify that customer is able to select multiple Loans for bank change - My Relation
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And Customer Click on "Mandate Management" CTA in RHS
    Then Verify Customer Redirected to "MyAccountService/Emandate/index" Url
    And verify User is able to Select Multiple Loans at a time

    Examples:
      | Mobile Number | Date     | Customer Type |
      | 8468953662    | 16111984 | Corporate     |

  @loanmr @myrel
  Scenario Outline: Verify that customer is redirecting to EMandate page when customer clicks on proceed CTA - My Relation
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And Customer Click on "Mandate Management" CTA in RHS
    Then Verify Customer Redirected to "MyAccountService/Emandate/index" Url
    And User selects a Loan card in Mandate Management Page -"401PLFGD235440"
    And Clicks on Proceed Button
    Then verify customer is redirecting to EMandate page
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 9811146659    | 16111984 | Individual    |


###########SDP- My Relation
  @sdp @myrel
  Scenario Outline:  verify that customer is able to view message and details when they don’t have any active Deposit -My Relation
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And Customer Click on "Mandate Management" CTA in RHS
    Then Verify Customer Redirected to "MyAccountService/Emandate/index" Url
    And Click on the Tab "Systematic Deposit Plan" in Mandate Management Page
    And verify Message Displayed when Customer has No Deposit Cards Available
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 9960262621    | 14101968 | Individual    |

  @sdp @myrel
  Scenario Outline: verify Customer is able to view all the content in Mandate Management Page -My Relation
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And Customer Click on "Mandate Management" CTA in RHS
    Then Verify Customer Redirected to "MyAccountService/Emandate/index" Url
    And Click on the Tab "Systematic Deposit Plan" in Mandate Management Page
    And verify Header and its subtext are displayed for SDP
    And verify that following Tabs " Loans and Insta EMI Card" "Systematic Deposit Plan" are Displayed
    And verify RHS "Need help?" following Options: "Raise a Request, FAQs" are Displayed
    And verify the following buttons "<Buttons>" are displayed in the page
    And verify the following buttons "<Disabled Buttons>" are disabled in the page

    Examples:
      | Mobile Number | Date     | Customer Type | Buttons        | Disabled Buttons |
      | 8097927579    | 26051982 | Individual    | Cancel,Proceed | Cancel,Proceed   |

  @sdp @myrel
  Scenario Outline: Verify that customer is able to view all active SDP cards -My Relation
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And Customer Click on "Mandate Management" CTA in RHS
    Then Verify Customer Redirected to "MyAccountService/Emandate/index" Url
    And Click on the Tab "Systematic Deposit Plan" in Mandate Management Page
    And verify All Deposit cards are Displayed-"Systematic Deposit Plan","SDP Application Number"

    Examples:
      | Mobile Number | Date     | Customer Type |
      | 8097927579    | 26051982 | Individual    |

  @sdp @myrel
  Scenario Outline:   Verify that customer is able to view fields on SDP card -My Relation
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And Customer Click on "Mandate Management" CTA in RHS
    Then Verify Customer Redirected to "MyAccountService/Emandate/index" Url
    And Click on the Tab "Systematic Deposit Plan" in Mandate Management Page
    And verify Details on the SDP Card- "2500840"
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 8097927579    | 16111984 | Individual    |

  @sdp @myrel
  Scenario Outline:  verify that customer is able to select multiple SDPs -My Relation
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And Customer Click on "Mandate Management" CTA in RHS
    Then Verify Customer Redirected to "MyAccountService/Emandate/index" Url
    And Click on the Tab "Systematic Deposit Plan" in Mandate Management Page
    And verify User is able to Select Multiple SDPs at a time
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 8600444381    | 16111984 | Individual    |

  @sdp @myrel
  Scenario Outline: Verify that customer is redirecting to EMandate page when customer clicks on proceed CTA for SDP -My Relation
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And Customer Click on "Mandate Management" CTA in RHS
    Then Verify Customer Redirected to "MyAccountService/Emandate/index" Url
    And Click on the Tab "Systematic Deposit Plan" in Mandate Management Page
    And User selects a SDP card in Mandate Management Page -"2500840"
    And Clicks on Proceed Button
    Then verify customer is redirecting to EMandate page
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 8097927579    | 16111984 | Individual    |

########ADDED

  @added
  Scenario Outline: Verify the checkmark by navigating between the Tabs
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountService/Emandate/index" Url
    And User selects a Loan card in Mandate Management Page -"4020CDIG919002"
    And Click on the Tab "Systematic Deposit Plan" in Mandate Management Page
    Then verify "Proceed" Button is disabled
    And Click on the Tab "Loans and Insta EMI Card" in Mandate Management Page
    Then verify "Proceed" Button is disabled

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu         |
      | 9811146659    | 16111984 | Individual    | Mandate and documents | Manage your mandate |


