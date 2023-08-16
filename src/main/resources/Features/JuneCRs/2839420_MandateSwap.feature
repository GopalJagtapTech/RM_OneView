Feature: Mandate Change/Swap

#  @Mandate Change/Swap at customer ID level

  Scenario Outline: To verify Customer ID number section is displayed on Mandate Management page
    Given User is logged in "<MOB>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<Menu>"
    And Clicks on SubListmenu "<Submenu>"
    Then Verify Customer Redirected to "MyAccountService/Emandate/index" Url
    And Customer should be able to view Customer ID number "10366008" section on Mandate Management page
    And Check Box for Customer ID number "10366008" is Unselected
    And verify Loan Tab is selected by Default
    Examples:
      | MOB        | DOB        | Customer Type | Menu                  | Submenu             |
      | 9868990539 | 13/09/1990 | Individual    | Mandate and documents | Manage your mandate |


  Scenario Outline: To verify Customer ID number section is NOT displayed for customer having No Active Loans
    Given User is logged in "<MOB>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<Menu>"
    And Clicks on SubListmenu "<Submenu>"
    Then Verify Customer Redirected to "MyAccountService/Emandate/index" Url
    And Customer ID number section on Mandate Management page should not be displayed
    Examples:
      | MOB        | DOB        | Customer Type | Menu                  | Submenu             |
      | 9830038796 | 13/09/1990 | Corporate     | Mandate and documents | Manage your mandate |

  Scenario Outline: To verify when customer selects on customer ID checkbox then all the below LAN get selected & greyed out
    Given User is logged in "<MOB>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<Menu>"
    And Clicks on SubListmenu "<Submenu>"
    Then Verify Customer Redirected to "MyAccountService/Emandate/index" Url
    And verify Loan Tab is selected by Default
    And Check Box for Customer ID number "10366008" is Unselected
    And clicks on Customer ID "10366008" checkbox
    Then All the Active Loan Tiles should be selected and greyed out
    Examples:
      | MOB        | DOB        | Customer Type | Menu                  | Submenu             |
      | 9868990539 | 13/09/1990 | Individual    | Mandate and documents | Manage your mandate |

  Scenario Outline: To verify customer can selects Active Loan Tiles by clicking on radio Button on Active Loan Tile
    Given User is logged in "<MOB>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<Menu>"
    And Clicks on SubListmenu "<Submenu>"
    Then Verify Customer Redirected to "MyAccountService/Emandate/index" Url
    And verify Loan Tab is selected by Default
    And Customer should be able to view Customer ID number "10366008" section on Mandate Management page
    And User selects a Loan card in Mandate Management Page -"401SPFGJ002813"

    Examples:
      | MOB        | DOB        | Customer Type | Menu                  | Submenu             |
      | 9868990539 | 13/09/1990 | Individual    | Mandate and documents | Manage your mandate |

  Scenario Outline: To verify the Pop-up message when click on customer ID checkbox i.e when all the Active Loans are selected and click on Proceed CTA
    Given User is logged in "<MOB>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<Menu>"
    And Clicks on SubListmenu "<Submenu>"
    Then Verify Customer Redirected to "MyAccountService/Emandate/index" Url
    And verify Loan Tab is selected by Default
    And Customer should be able to view Customer ID number "10366008" section on Mandate Management page
    And clicks on Customer ID "10366008" checkbox
    And Clicks on "Proceed" CTA
    Then "Please Note" Pop-up should be displayed with given text "<all_tile_selected_Text>"
    Examples:
      | MOB        | DOB        | Customer Type | Menu                  | Submenu             | all_tile_selected_Text                                                                                                                                                                                                        |
      | 9868990539 | 13/09/1990 | Individual    | Mandate and documents | Manage your mandate | The bank account will be changed for all your current & future loans and loans availed through EMI Card. If you wish to change the bank account for a specific loan click on cancel and proceed with the Loan Account Number. |

  Scenario Outline: To verify the Pop-up message when customer selects Loan Tiles from Radio button i.e when all the Loans are not selected
    Given User is logged in "<MOB>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<Menu>"
    And Clicks on SubListmenu "<Submenu>"
    Then Verify Customer Redirected to "MyAccountService/Emandate/index" Url
    And verify Loan Tab is selected by Default
    And Customer should be able to view Customer ID number "10366008" section on Mandate Management page
    And User selects a Loan card in Mandate Management Page -"401SPFGJ002813"
    And Clicks on "Proceed" CTA
    Then "Please Note" Pop-up should be displayed with given text "<Text>"
    Examples:
      | MOB        | DOB        | Customer Type | Menu                  | Submenu             | Text                                                                                                                                                                                            |
      | 9868990539 | 13/09/1990 | Individual    | Mandate and documents | Manage your mandate | The bank account will be changed for the selected loan and all future loans. If you wish to change the bank account for all the active loans, click on cancel and proceed with the Customer ID. |

  Scenario Outline: To verify when click on CANCEL CTA on Pop-up
    Given User is logged in "<MOB>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<Menu>"
    And Clicks on SubListmenu "<Submenu>"
    Then Verify Customer Redirected to "MyAccountService/Emandate/index" Url
    And verify Loan Tab is selected by Default
    And Customer should be able to view Customer ID number "10366008" section on Mandate Management page
    And User selects a Loan card in Mandate Management Page -"401SPFGJ002813"
    And Clicks on "Proceed" CTA
    Then "Please Note" Pop-up should be displayed with given text "<Text>"
    And Clicks on Cancel CTA in Please Note Popup
    Then Mandate Management Pop-up should be closed
    Examples:
      | MOB        | DOB        | Customer Type | Menu                  | Submenu             | Text                                                                                                                                                                                            |
      | 9868990539 | 13/09/1990 | Individual    | Mandate and documents | Manage your mandate | The bank account will be changed for the selected loan and all future loans. If you wish to change the bank account for all the active loans, click on cancel and proceed with the Customer ID. |

  Scenario Outline: To verify when click on PROCEED CTA on Pop-up
    Given User is logged in "<MOB>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<Menu>"
    And Clicks on SubListmenu "<Submenu>"
    Then Verify Customer Redirected to "MyAccountService/Emandate/index" Url
    And verify Loan Tab is selected by Default
    And Customer should be able to view Customer ID number "10366008" section on Mandate Management page
    And User selects a Loan card in Mandate Management Page -"401SPFGJ002813"
    And Clicks on "Proceed" CTA
    And Clicks on Proceed CTA in Please Note Popup
    Then User should be redirected to "<URL>"
    Examples:
      | MOB        | DOB        | Customer Type | Menu                  | Submenu             | URL                                                       |
      | 9868990539 | 13/09/1990 | Individual    | Mandate and documents | Manage your mandate | https://emandate-staging.bajajfinserv.in/Mandate/Register |

  Scenario Outline: To verify when click on CANCEL CTA on Mandate Page
    Given User is logged in "<MOB>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<Menu>"
    And Clicks on SubListmenu "<Submenu>"
    Then Verify Customer Redirected to "MyAccountService/Emandate/index" Url
    And verify Loan Tab is selected by Default
    And Customer should be able to view Customer ID number "10366008" section on Mandate Management page
    And User selects a Loan card in Mandate Management Page -"401SPFGJ002813"
    And Clicks on "Proceed" CTA
    Then The selected Active Loan tile "401SPFGJ002813" should be refreshed
    Examples:
      | MOB        | DOB        | Customer Type | Menu                  | Submenu             |
      | 9868990539 | 13/09/1990 | Individual    | Mandate and documents | Manage your mandate |

  Scenario Outline: To verify when click on Fees and Charges CTA on Mandate Page
    Given User is logged in "<MOB>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<Menu>"
    And Clicks on SubListmenu "<Submenu>"
    Then Verify Customer Redirected to "MyAccountService/Emandate/index" Url
    And verify Loan Tab is selected by Default
    And Clicks on "Click here to view fees & charges" CTA
    Then verify Fees and Charges Popup is displayed in Mandate Management page

    Examples:
      | MOB        | DOB        | Customer Type | Menu                  | Submenu             |
      | 9868990539 | 13/09/1990 | Individual    | Mandate and documents | Manage your mandate |




  
  
  