@single
Feature: Hamburger


  Scenario: Customer is able to view Hamburger Menu icon
    Then Customer should be able to View 3 Lined icon of Hamburger menu before Bajaj Finserv Logo

  Scenario: To verify Hamburger menu is closed after click on Cross icon button
    And Clicks on Hamburger Menu
    And Customer Clicks on Cross icon of Hamburger
    Then Hamburger menu should be closed


  Scenario Outline: Verify  all submenu of hamburger is displayed when customer click on hamburger menu icon
    And Clicks on Hamburger Menu
    Then verify All "<Submenu>" is Displayed in Hamburger

    Examples:
      | Submenu                                                                                                                           |
      | Loan payment#Mandate and documents#Check Pre approved offers#Passbook#Calculators#Help and support#Take a Tour#Settings#My Rewards#Give Feedback#Sign out |

  Scenario Outline: Hamburger- Loan Payments options
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then verify the "<Options>" displayed for the Accordion icon
    And Clicks on Up arrow accordion "<SubMenu>"
    Then Submenu should be collapsable "<Options>"

    Examples:
      | SubMenu      | Options                |
      | Loan payment | Overdue#Other payments |

  Scenario Outline: Hamburger- Loan Payments -Overdue
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/ActiveLoanOverduePay" Url

    Examples:
      | SubMenu      | SubListMenu | Title                                          |
      | Loan payment | Overdue     | Select the loan you want to make a payment for |


  Scenario Outline: Hamburger- Loan Payments -Other payments
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/ActiveLoanPay" Url

    Examples:
      | SubMenu      | SubListMenu    | Title                                          |
      | Loan payment | Other payments | Select the loan you want to make a payment for |

  Scenario Outline: Hamburger- Verify Mandate and documents- Dropdown Options
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then verify the "<Options>" displayed for the Accordion icon
    And Clicks on Up arrow accordion "<SubMenu>"
    Then Submenu should be collapsable "<Options>"

    Examples:
      | SubMenu               | Options                             |
      | Mandate and documents | Document Center#Manage your mandate |

  Scenario Outline: Hamburger- Verify Mandate and documents- Document Center
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
#    Then verify User is redirected to Document Center Page
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter/index" Url

    Examples:
      | SubMenu               | SubListMenu     |
      | Mandate and documents | Document Center |


  Scenario Outline: Hamburger- Verify Mandate and documents- Manage your mandate
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then verify User is redirected to Mandate Management Page

    Examples:
      | SubMenu               | SubListMenu         |
      | Mandate and documents | Manage your mandate |

  Scenario Outline: Hamburger- Check Pre approved offers
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then verify User is redirected to respective URL "<Redirection URL>" in the same Tab

    Examples:
      | SubMenu    | Redirection URL                               |
      | Check Pre approved offers | https://www.bajajfinserv.in/pre-approved-loan-offers |

  Scenario Outline: Hamburger- Passbook
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then verify User is redirected to Passbook page

    Examples:
      | SubMenu  |
      | Passbook |

  Scenario Outline: Hamburger- Calculators - Dropdown Options
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then verify the "<Options>" displayed for the Accordion icon
    And Clicks on Up arrow accordion "<SubMenu>"
    Then Submenu should be collapsable "<Options>"

    Examples:
      | SubMenu     | Options                                                                  |
      | Calculators | EMI Calculator for Loans#Loan Eligibility Calculator#Deposits Calculator |

  Scenario Outline: Hamburger- Calculators- EMI Calculator for Loans
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then verify User is redirected to "<SubListMenu>" page with "<Header>"
    And verify EMI Calculator menu page is displayed with Calculator types "<Types>"

    Examples:
      | SubMenu     | SubListMenu              | Header                    | Types                                                                                       |
      | Calculators | EMI Calculator for Loans | EMI Calculators for Loans | EMI Calculator#Flexi Day-Wise Interest Calculator#Flexi Hybrid Personal Loan EMI Calculator |

  Scenario Outline: To verify customer is landed on EMI Calculator link after click on EMI Calculator option
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then verify User is redirected to "<SubListMenu>" page with "<Header>"
    And When Customer clicks on Calculator type "<Type>", then verify Customer is redirected to that Particular Page"<URL>"

    Examples:
      | SubMenu     | SubListMenu              | Header                    | Type           | URL                                        |
      | Calculators | EMI Calculator for Loans | EMI Calculators for Loans | EMI Calculator | https://www.bajajfinserv.in/emi-calculator |

  Scenario Outline: To verify customer is landed on Flexi Day Wise Interest Calculator link after click on Flexi Day Wise Interest Calculator option
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then verify User is redirected to "<SubListMenu>" page with "<Header>"
    And When Customer clicks on Calculator type "<Type>", then verify Customer is redirected to that Particular Page"<URL>"

    Examples:
      | SubMenu     | SubListMenu              | Header                    | Type                               | URL                                                                          |
      | Calculators | EMI Calculator for Loans | EMI Calculators for Loans | Flexi Day-Wise Interest Calculator | https://www.bajajfinserv.in/personal-loan-flexi-day-wise-interest-calculator |


  Scenario Outline: To verify customer is landed on Flexi Hybrid Personal Loan EMI Calculator link after click on Flexi Hybrid Personal Loan EMI Calculator option
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then verify User is redirected to "<SubListMenu>" page with "<Header>"
    And When Customer clicks on Calculator type "<Type>", then verify Customer is redirected to that Particular Page"<URL>"
    Examples:
      | SubMenu     | SubListMenu              | Header                    | Type                                      | URL                                                                   |
      | Calculators | EMI Calculator for Loans | EMI Calculators for Loans | Flexi Hybrid Personal Loan EMI Calculator | https://www.bajajfinserv.in/hybrid-flexi-personal-loan-emi-calculator |
@rerun
  Scenario Outline: Hamburger- Calculators- Loan Eligibility Calculator
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then verify User is redirected to "<SubListMenu>" page with "<Header>"
    And verify EMI Calculator menu page is displayed with Calculator types "<Types>"

    Examples:
      | SubMenu     | SubListMenu                 | Header                      | Types                   |
      | Calculators | Loan Eligibility Calculator | Loan Eligibility Calculator | Personal Loan#Home Loan#Loans for Doctors#Loan against Gold Jewellery |

  Scenario Outline: To verify customer is landed on Personal Loan Calculator link after click on Personal Loan option
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then verify User is redirected to "<SubListMenu>" page with "<Header>"
    And When Customer clicks on Calculator type "<Type>", then verify Customer is redirected to that Particular Page"<URL>"
    Examples:
      | SubMenu     | SubListMenu                 | Header                      | Type          | URL                                                              |
      | Calculators | Loan Eligibility Calculator | Loan Eligibility Calculator | Personal Loan | https://www.bajajfinserv.in/personal-loan-eligibility-calculator |

  Scenario Outline: To verify customer is landed on Home Loan Calculator link after click on Home Loan option
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then verify User is redirected to "<SubListMenu>" page with "<Header>"
    And When Customer clicks on Calculator type "<Type>", then verify Customer is redirected to that Particular Page"<URL>"
    Examples:
      | SubMenu     | SubListMenu                 | Header                      | Type      | URL                                                          |
      | Calculators | Loan Eligibility Calculator | Loan Eligibility Calculator | Home Loan | https://www.bajajfinserv.in/home-loan-eligibility-calculator |


  Scenario Outline: Hamburger- Calculators- Deposits Calculator
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then verify User is redirected to "<SubListMenu>" page with "<Header>"
    And verify EMI Calculator menu page is displayed with Calculator types "<Types>"

    Examples:
      | SubMenu     | SubListMenu         | Header              | Types                                                                                                           |
      | Calculators | Deposits Calculator | Deposit Calculators | Fixed Deposit Interest Calculator#SDP Single Maturity Scheme Calculator#SDP Multiple Maturity Scheme Calculator |

  Scenario Outline: To verify customer is landed on Fixed Deposit Interest Calculator Calculator link after click on Fixed Deposit Interest Calculator  option
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then verify User is redirected to "<SubListMenu>" page with "<Header>"
    And When Customer clicks on Calculator type "<Type>", then verify Customer is redirected to that Particular Page"<URL>"
#    And When Customer clicks on Calculator type "<Type>", then verify Customer is redirected to that Particular Page"<URL>"
    Examples:
      | SubMenu     | SubListMenu         | Header              | Type                              | URL                       |
      | Calculators | Deposits Calculator | Deposit Calculators | Fixed Deposit Interest Calculator | investments/fixed-deposit-calculator |

  Scenario Outline: To verify customer is landed on SDP Single Maturity Scheme Calculator Calculator link after click on SDP Single Maturity Scheme Calculator option
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then verify User is redirected to "<SubListMenu>" page with "<Header>"
    And When Customer clicks on Calculator type "<Type>", then verify Customer is redirected to that Particular Page"<URL>"
    Examples:
      | SubMenu     | SubListMenu         | Header              | Type                                  | URL                                       |
      | Calculators | Deposits Calculator | Deposit Calculators | SDP Single Maturity Scheme Calculator | investments/systematic-deposit-calculator |

  Scenario Outline: To verify customer is landed on SDP Multiple Maturity Scheme Calculator Calculator link after click on SDP Multiple Maturity Scheme Calculator option
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then verify User is redirected to "<SubListMenu>" page with "<Header>"
    And When Customer clicks on Calculator type "<Type>", then verify Customer is redirected to that Particular Page"<URL>"
    Examples:
      | SubMenu     | SubListMenu         | Header              | Type                                    | URL                                       |
      | Calculators | Deposits Calculator | Deposit Calculators | SDP Multiple Maturity Scheme Calculator | investments/systematic-deposit-calculator |


      ###########FAQ's and Raise A Request

  Scenario Outline: Hamburger- Calculators- EMI Calculator for Loans - FAQ's and Raise A Request page should be displayed on RHS
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then verify User is redirected to "<SubListMenu>" page with "<Header>"
    Then Following options "<RHS Options>" should be displayed under RHS Section "<Section>"

    Examples:
      | SubMenu     | SubListMenu              | Header                    | Section          | RHS Options           |
      | Calculators | EMI Calculator for Loans | EMI Calculators for Loans | Need assistance? | FAQ's#Raise A Request |

  Scenario Outline: Hamburger- Calculators- Loan Eligibility Calculator - FAQ's and Raise A Request page should be displayed on RHS
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then verify User is redirected to "<SubListMenu>" page with "<Header>"
    Then Following options "<RHS Options>" should be displayed under RHS Section "<Section>"

    Examples:
      | SubMenu     | SubListMenu                 | Header                      | Section          | RHS Options           |
      | Calculators | Loan Eligibility Calculator | Loan Eligibility Calculator | Need assistance? | FAQ's#Raise A Request |

  Scenario Outline: Hamburger- Calculators- Deposits Calculator - FAQ's and Raise A Request page should be displayed on RHS
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then verify User is redirected to "<SubListMenu>" page with "<Header>"
    Then Following options "<RHS Options>" should be displayed under RHS Section "<Section>"

    Examples:
      | SubMenu     | SubListMenu         | Header              | Section          | RHS Options           |
      | Calculators | Deposits Calculator | Deposit Calculators | Need assistance? | FAQ's#Raise A Request |


  Scenario Outline: Hamburger- Help and support
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Verify Customer Redirected to "MyAccountService/HelpAndSupport/Index" Url

    Examples:
      | SubMenu          |
      | Help and support |


  Scenario Outline: Hamburger- Settings - Dropdown Options
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then verify the "<Options>" displayed for the Accordion icon
    And Clicks on Up arrow accordion "<SubMenu>"
    Then Submenu should be collapsable "<Options>"

    Examples:
      | SubMenu  | Options                             |
      | Settings | About Us#Terms of Use#Privacy Terms |

  Scenario Outline: Hamburger- Settings- About Us
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then verify User is redirected to respective URL "<Redirection URL>" in the same Tab

    Examples:
      | SubMenu  | SubListMenu | Redirection URL                                     |
      | Settings | About Us    | https://www.bajajfinserv.in/corporate-bajaj-finserv |

  Scenario Outline: Hamburger- Settings- Terms of Use
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then verify User is redirected to respective URL "<Redirection URL>" in the same Tab

    Examples:
      | SubMenu  | SubListMenu  | Redirection URL                                                                         |
      | Settings | Terms of Use | https://dynbanners.bajajfinserv.in/TnC/TERMS%20OF%20USE%20OF%20BFL%20EXPERIA%20SERVICES |

  Scenario Outline: Hamburger- Settings- Privacy Terms
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then verify User is redirected to respective URL "<Redirection URL>" in the same Tab

    Examples:
      | SubMenu  | SubListMenu   | Redirection URL                                         |
      | Settings | Privacy Terms | https://dynbanners.bajajfinserv.in/TnC/Privacy%20Policy |


  Scenario Outline: Hamburger- Rewards
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then Verify Customer Redirected to "MyAccountCards/Rewards/RewardsIndex" Url

    Examples:
      | SubMenu | Header     |
      | My Rewards | My Rewards |

  @check
  Scenario Outline: Hamburger- Give feedback
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then verify Popup is displayed for Rating

    Examples:
      | SubMenu |
      | Give Feedback |

    ########FAQ& RAR
  @rerun
  Scenario Outline: Hamburger- Calculators- EMI Calculator for Loans - FAQ's
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then verify User is redirected to "<SubListMenu>" page with "<Header>"
    And Customer clicks on "FAQ's" option in RHS
    And Verify Customer Redirected to "MyAccountService/HelpAndsupport/Index" Url

    Examples:
      | SubMenu     | SubListMenu              | Header                    |
      | Calculators | EMI Calculator for Loans | EMI Calculators for Loans |

  @rerun
  Scenario Outline: Hamburger- Calculators- EMI Calculator for Loans - Raise a Request
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then verify User is redirected to "<SubListMenu>" page with "<Header>"
    And Customer clicks on "Raise A Request" option in RHS
    And Verify Customer Redirected to "MyAccountService/HelpAndSupport/LogRequest" Url

    Examples:
      | SubMenu     | SubListMenu              | Header                    |
      | Calculators | EMI Calculator for Loans | EMI Calculators for Loans |


  @rerun
  Scenario Outline: Hamburger- Calculators- Loan Eligibility Calculator -FAQ
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then verify User is redirected to "<SubListMenu>" page with "<Header>"
    And Customer clicks on "FAQ's" option in RHS
    And Verify Customer Redirected to "MyAccountService/HelpAndSupport/Index" Url

    Examples:
      | SubMenu     | SubListMenu                 | Header                      |
      | Calculators | Loan Eligibility Calculator | Loan Eligibility Calculator |

  @rerun
  Scenario Outline: Hamburger- Calculators- Loan Eligibility Calculator -Raise a Request
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then verify User is redirected to "<SubListMenu>" page with "<Header>"
    And Customer clicks on "Raise A Request" option in RHS
    And Verify Customer Redirected to "MyAccountService/HelpAndSupport/LogRequest" Url

    Examples:
      | SubMenu     | SubListMenu                 | Header                      |
      | Calculators | Loan Eligibility Calculator | Loan Eligibility Calculator |


  @rerun
  Scenario Outline: Hamburger- Calculators- Deposits Calculator - FAQ's
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then verify User is redirected to "<SubListMenu>" page with "<Header>"
    And Customer clicks on "FAQ's" option in RHS
    And Verify Customer Redirected to "MyAccountService/HelpAndSupport/Index" Url

    Examples:
      | SubMenu     | SubListMenu         | Header              |
      | Calculators | Deposits Calculator | Deposit Calculators |

  @rerun
  Scenario Outline: Hamburger- Calculators- Deposits Calculator - Raise a Request
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then verify User is redirected to "<SubListMenu>" page with "<Header>"
    And Customer clicks on "Raise A Request" option in RHS
    And Verify Customer Redirected to "MyAccountService/HelpAndSupport/LogRequest" Url

    Examples:
      | SubMenu     | SubListMenu         | Header              |
      | Calculators | Deposits Calculator | Deposit Calculators |


  Scenario Outline: Hamburger- Sign out
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then verify User is logged out of Application

    Examples:
      | SubMenu  |
      | Sign out |



