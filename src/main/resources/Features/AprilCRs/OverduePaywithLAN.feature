Feature: Overdue Payments with LAN

#  Scenario Outline: To verify after selection Loan Payment option in Hamburger menu payment options are displayed
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User is on Home Page
#    And Clicks on Hamburger Menu
#    And Selects SubMenu from Hamburger "<SubMenu>"
#    Then Below options should be displayed
#  i)Overdue Payment
#  ii)Other Payments
#    Examples:
#      | Mobile Number | Date       | Customer Type | SubMenu      |
#      | 9910955211    | 02/02/1999 | Individual    | Loan payment |
#      | 8956071386    | 02/02/1999 | Individual    | Loan payment |
#      | 9953037058    | 02/02/1999 | Individual    | Loan payment |


  Scenario Outline: To verify after clicking on Overdue Payment under Loan Payment "Clear your Overdue EMIs" pop up is displayed
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Clear your Overdue EMIs pop up should be displayed

    Examples:
      | Mobile Number | Date       | Customer Type | SubMenu      | SubListMenu |

      | 9910955211    | 02/02/1999 | Individual    | Loan payment | Overdue     |
      | 8956071386    | 02/02/1999 | Individual    | Loan payment | Overdue     |
      | 9953037058    | 02/02/1999 | Individual    | Loan payment | Overdue     |


  Scenario Outline: To verify after clicking on Sign in via Mobile CTA we are redirected to 'My Account Login' pop up
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And Clear your Overdue EMIs pop up is displayed
    And Clicks on Sign in via Mobile CTA
    Then My Account Login pop up should be displayed

    Examples:
      | Mobile Number | Date       | Customer Type | SubMenu      | SubListMenu |
      | 9910955211    | 02/02/1999 | Individual    | Loan payment | Overdue     |
      | 8956071386    | 02/02/1999 | Individual    | Loan payment | Overdue     |
      | 9953037058    | 02/02/1999 | Individual    | Loan payment | Overdue     |

  Scenario Outline: To verify after clicking on Pay using LAN CTA we are redirected to Clear Your Overdues EMIs Page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And Clear your Overdue EMIs pop up is displayed
    And Click on Pay using LAN CTA
    Then Customer should be redirected to Clear Your Overdues EMIs Page

    Examples:
      | Mobile Number | Date       | Customer Type | SubMenu      | SubListMenu |
      | 9910955211    | 02/02/1999 | Individual    | Loan payment | Overdue     |
      | 8956071386    | 02/02/1999 | Individual    | Loan payment | Overdue     |
      | 9953037058    | 02/02/1999 | Individual    | Loan payment | Overdue     |


  Scenario Outline: To verify after clicking on Pay using LAN CTA we are redirected to No Overdue amount details page (Customer must not be eligible for Overdue)
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And Clear your Overdue EMIs pop up is displayed
    And Click on Pay using LAN CTA
    Then Customer should be redirected to No Overdue amount details page

    Examples:
      | Mobile Number | Date       | Customer Type | SubMenu      | SubListMenu |
      | 9849246707    | 02/02/1999 | Individual    | Loan payment | Overdue     |
      | 7799350444    | 02/02/1999 | Individual    | Loan payment | Overdue     |

  Scenario Outline: To verify after clicking on Back to HomePage CTA we are redirected to Login Home Page (Customer must not be eligible for Overdue)
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And Clear your Overdue EMIs pop up is displayed
    And Click on Pay using LAN CTA
    And Customer is redirected to No Overdue amount details page
    And Customer clicks on Back to Home Page CTA
    Then Customer should be redirected to Login Home Page

    Examples:
      | Mobile Number | Date       | Customer Type | SubMenu      | SubListMenu |
      | 9849246707    | 02/02/1999 | Individual    | Loan payment | Overdue     |
      | 7799350444    | 02/02/1999 | Individual    | Loan payment | Overdue     |

  Scenario Outline: To verify after clicking on FAQs under Need assistance we are redirected to FAQs details page(Customer must not be eligible for Overdue)
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And Clear your Overdue EMIs pop up is displayed
    And Click on Pay using LAN CTA
    And Customer is redirected to No Overdue amount details page
    And Customer clicks on FAQ
    Then Customer should be redirected to FAQs Details Page
  https://www.bajajfinserv.in/contact-us-faq-queries

    Examples:
      | Mobile Number | Date       | Customer Type | SubMenu      | SubListMenu |
      | 9849246707    | 02/02/1999 | Individual    | Loan payment | Overdue     |
      | 7799350444    | 02/02/1999 | Individual    | Loan payment | Overdue     |

  Scenario Outline: To verify after clicking on Change your Mandate under Need assistance we are redirected to My Account Login pop up page (Customer must not be eligible for Overdue)
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And Clear your Overdue EMIs pop up is displayed
    And Click on Pay using LAN CTA
    And Customer is redirected to No Overdue amount details page
    And Customer clicks on Change your Mandate
    Then Customer should be redirected to My Account Login pop up Details Page
#  https://bajajfinserv.in/MyAccountLogin?Source=Mandate

    Examples:
      | Mobile Number | Date       | Customer Type | SubMenu      | SubListMenu |
      | 9849246707    | 02/02/1999 | Individual    | Loan payment | Overdue     |
      | 7799350444    | 02/02/1999 | Individual    | Loan payment | Overdue     |

  Scenario Outline: To verify after clicking on Home we are redirected to Login Home Page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And Clear your Overdue EMIs pop up is displayed
    And Click on Pay using LAN CTA
    And Click on Home
    Then Customer should be redirected to Login Home Page

    Examples:
      | Mobile Number | Date       | Customer Type | SubMenu      | SubListMenu |
      | 9910955211    | 02/02/1999 | Individual    | Loan payment | Overdue     |
      | 8956071386    | 02/02/1999 | Individual    | Loan payment | Overdue     |
      | 9953037058    | 02/02/1999 | Individual    | Loan payment | Overdue     |


  Scenario Outline: To verify Proceed CTA is disabled when all fields are not filled
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And Clear your Overdue EMIs pop up is displayed
    And Click on Pay using LAN CTA
    Then Proceed CTA should be displayed
    Examples:
      | Mobile Number | Date       | Customer Type | SubMenu      | SubListMenu |
      | 9910955211    | 02/02/1999 | Individual    | Loan payment | Overdue     |
      | 8956071386    | 02/02/1999 | Individual    | Loan payment | Overdue     |
      | 9953037058    | 02/02/1999 | Individual    | Loan payment | Overdue     |

  Scenario Outline: To verify invalid input is accepted in Enter Loan Account Number fields
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And Clear your Overdue EMIs pop up is displayed
    And Click on Pay using LAN CTA
    And Enter Invalid input ”<Input>”
    Then Validation message should be displayed as "Please enter your valid loan account number"
    Examples:
      | Mobile Number | Date       | Customer Type | SubMenu      | SubListMenu | Input         |
      | 9910955211    | 02/02/1999 | Individual    | Loan payment | Overdue     |               |
      | 8956071386    | 02/02/1999 | Individual    | Loan payment | Overdue     | @$%#*         |
      | 9953037058    | 02/02/1999 | Individual    | Loan payment | Overdue     | 0000000000000 |


  Scenario Outline: To verify LAN is in masked format after entering in Re-enter Loan Account Number field
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And Clear your Overdue EMIs pop up is displayed
    And Click on Pay using LAN CTA
    And Enter LAN in Re-enter Loan Account Number field
    Then LAN should be in masked format
    Examples:
      | Mobile Number | Date       | Customer Type | SubMenu      | SubListMenu |
      | 9910955211    | 02/02/1999 | Individual    | Loan payment | Overdue     |
      | 8956071386    | 02/02/1999 | Individual    | Loan payment | Overdue     |
      | 9953037058    | 02/02/1999 | Individual    | Loan payment | Overdue     |

  Scenario Outline: To verify Tracker section is displayed under RHS
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And Clear your Overdue EMIs pop up is displayed
    And Click on Pay using LAN CTA
    Then Tracker section should be displayed with below options
  1.Enter LAN
  2.Make Payment
    Examples:
      | Mobile Number | Date       | Customer Type | SubMenu      | SubListMenu |
      | 9910955211    | 02/02/1999 | Individual    | Loan payment | Overdue     |
      | 8956071386    | 02/02/1999 | Individual    | Loan payment | Overdue     |
      | 9953037058    | 02/02/1999 | Individual    | Loan payment | Overdue     |


  Scenario Outline: To verify Enter LAN option is highlighted when Clear your Overdues Page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    And Clear your Overdue EMIs pop up is displayed
    And Click on Pay using LAN CTA
    Then Enter LAN option should be highlighted
    Examples:
      | Mobile Number | Date       | Customer Type | SubMenu      | SubListMenu |
      | 9910955211    | 02/02/1999 | Individual    | Loan payment | Overdue     |
      | 8956071386    | 02/02/1999 | Individual    | Loan payment | Overdue     |
      | 9953037058    | 02/02/1999 | Individual    | Loan payment | Overdue     |












