Feature: B2B Services

  @Active @9323247757
  Scenario Outline: B2B- Loan Details Active- Redirection to My Relations
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    Then My relations Page should be displayed

    Examples:
      | Mobile Number | Date     | Customer Type |
#      | 7412822091    | 26061995 | Individual    |
      | 9895039466    | 20091984 | Individual    |

  @Active @9323247757
  Scenario Outline: B2B- Loan Details Active- Redirection to Service screen
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"


    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle      | Account No     |
#      | 7412822091    | 26061995 | Individual    | LOCAL - ONLINE                   | 4B0ECFHA051567 |
      | 9895039466    | 20091984 | Individual    | SAMSUNG - LED | 4440CDHH819628 |

  @Active @9323247757
  Scenario Outline: B2B- Loan Details Active- Verify Contents on Loan Details page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    Then verify given sections are showing on Loan Details page

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle      | Account No     |
#      | 7412822091    | 26061995 | Individual    | LOCAL - ONLINE                   | 4B0ECFHA051567 |
      | 9895039466    | 20091984 | Individual    | SAMSUNG - LED | 4440CDHH819628 |

  @Active @9323247757
  Scenario Outline: B2B- Loan Details Active - Verify loan details section
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    Then verify given details are showing under loan details section

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle      | Account No     |
#      | 7412822091    | 26061995 | Individual    | LOCAL - ONLINE                   | 4B0ECFHA051567 |
      | 9895039466    | 20091984 | Individual    | SAMSUNG - LED | 4440CDHH819628 |

  @Active @9323247757
  Scenario Outline: B2B- Loan Details Active- Verify Relationship Details section
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    Then verify customer is able to view Relationship Details section if customer having term loan or flexi loan with given tiles

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle      | Account No     |
#      | 7412822091    | 26061995 | Individual    | LOCAL - ONLINE                   | 4B0ECFHA051567 |
      | 9895039466    | 20091984 | Individual    | SAMSUNG - LED | 4440CDHH819628 |

  @Active @Run @9323247757
  Scenario Outline: B2B- Loan Details Active- Verify All given Content with Value is showing to customer under relationship details section- Loan Details
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    Then verify All given Content with Value is showing to customer under relationship details section

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle      | Account No     |
#      | 7412822091    | 26061995 | Individual    | LOCAL - ONLINE                   | 4B0ECFHA051567 |
      | 9895039466    | 20091984 | Individual    | SAMSUNG - LED | 4440CDHH819628 |
#      | 9175445566    | 15071980 | Individual    | VIDEOCON - COLOUR TELEVISION | 4020CD00062988 |
#      | 9440052459    | 05081975 | Individual    | REMI - APPARELS | 400REMIE782610 |

  @Active @9323247757
  Scenario Outline: B2B- Loan Details Active- Verify given contents with the values is showing under Registered Repayment Bank Details section
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    Then verify given contents with the values is showing under Registered Repayment Bank Details section

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle      | Account No     |
#      | 7412822091    | 26061995 | Individual    | LOCAL - ONLINE                   | 4B0ECFHA051567 |
      | 9895039466    | 20091984 | Individual    | SAMSUNG - LED | 4440CDHH819628 |

  @Active
  Scenario Outline: B2B- Loan Details Active- Verify customer is able to view  last 4 digit of registered bank account number in unmasked format
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    Then verify except last 4 characters of Bank account number remaining characters are masked
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle             | Account No     |
#      | 7412822091    | 26061995 | Individual    | LOCAL - ONLINE                   | 4B0ECFHA051567 |
#      | 9323247757    | 20091984 | Individual    | SAMSUNG - LIQUID CRYSTAL DISPLAY | 4050CD00235523 |
      | 9527443732    | 15081982 | Individual    | KENSTAR - AIR COOLER | 4020CDEP659972 |

  @Active @9323247757
  Scenario Outline: B2B- Loan Details Active- Verify that customer is able to view Change bank account button on the below of Bank details tile
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    Then verify that customer is able to view Change bank account button on the below of Bank details tile

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle      | Account No     |
#      | 7412822091    | 26061995 | Individual    | LOCAL - ONLINE                   | 4B0ECFHA051567 |
      | 9895039466    | 20091984 | Individual    | SAMSUNG - LED | 4440CDHH819628 |

  @Active
  Scenario Outline: B2B- Loan Details Active- FAQs Verification & Redirection
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    Then verify customer can view FAQ section
    And verify Customer is redirected to FAQ page on clicking FAQ section

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle      | Account No     |
#      | 7412822091    | 26061995 | Individual    | LOCAL - ONLINE                   | 4B0ECFHA051567 |
      | 9895039466    | 20091984 | Individual    | SAMSUNG - LED | 4440CDHH819628 |

  @Active @9323247757
  Scenario Outline: B2B- Loan Details Active- Cibil Score Verification & Redirection
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
#    And verify customer can view cibil on click of know your cibil
    And Clicks on "Check Score Button in CIBIL"
    Then verify Page Redirection to "<Expected Url>" Url with SSO


    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle      | Account No     | Expected Url                                       |
      | 9895039466    | 20091984 | Individual    | SAMSUNG - LED | 4440CDHH819628 | https://www.bajajfinserv.in/check-free-cibil-score |


  @Active3
  Scenario Outline: B2B- Loans verify Given buttons are displayed under 'Things you can do section' at RHS Section
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    And verify options available under "Quick Actions" on RHS(B2B Services)

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle      | Account No     |
#      | 7412822091    | 26061995 | Individual    | LOCAL - ONLINE                   | 4B0ECFHA051567 |
      | 9895039466    | 20091984 | Individual    | SAMSUNG - LED | 4440CDHH819628 |


  @Active3
  Scenario Outline: B2B- Loan Details Active- RHS- Make Payments
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    Then My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    And Customer Click on "Make Payments" CTA in RHS
    Then verify Payments popup is displayed

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle                 | Account No     |
   #      | 9895039466    | 20091984 | Individual    | SAMSUNG - LED | 4440CDHH819628 |
      | 9540678876    | 26061995 | Individual    | VIVO - PHONE(WEB-MOBILE) | 401DPFFM812886 |

  @Active3 @9323247757
  Scenario Outline: B2B- Loan Details Active- RHS- View Statements
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    Then My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    And Customer Click on "View Documents" CTA in RHS
    Then Then a Document drawer or pop-up should be displayed for "<Account No>"
    And click on "Find them here" hyperlink
    Then User should be redirected to specific document page "<Account No>"

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle      | Account No     |
#      | 7412822091    | 26061995 | Individual    | LOCAL - ONLINE                   | 4B0ECFHA051567 |
      | 9895039466    | 20091984 | Individual    | SAMSUNG - LED | 4440CDHH819628 |

#  @Active3
#  Scenario Outline: B2B- Loan Details Active- Pre Approved offers
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User is on Home Page
#    And Customer is able to view My Relations Section to ETB Customers
#    And Customer clicks on view all option
#    Then My relations Page should be displayed
#    And click on "Loans" tab
#    And verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
#    Then verify customer is able to view Pre-approved offers section with offers banners
#
#    Examples:
#      | Mobile Number | Date     | Customer Type | Subtitle          | Account No     |
##      | 7412822091    | 26061995 | Individual    | LOCAL - ONLINE                   | 4B0ECFHA051567 |
#      | 8097927579    | 16111984 | Individual    | BSH - DISH WASHER | 4020CDIG919002 |

  @Active3
  Scenario Outline: B2B- Loan Details Active - Verify loan details section- EMI Overdue
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    Then verify given details are showing under loan details section-EMI Overdue

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle             | Account No     |
#      | 7412822091    | 26061995 | Individual    | LOCAL - ONLINE                   | 4B0ECFHA051567 |
      | 9527443732    | 15081982 | Individual    | KENSTAR - AIR COOLER | 4020CDEP659972 |

  @Active3
  Scenario Outline: B2B- Loan Details Active - Insurance Policy
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    Then verify fields displayed in the insurance details section

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle             | Account No     |
#      | 7412822091    | 26061995 | Individual    | LOCAL - ONLINE                   | 4B0ECFHA051567 |
      | 9822021252    | 15081982 | Individual    | VIVO - PHONE(WEB-MOBILE) | 530RDDFH861072 |




#    CLOSED B2B  ##402ECFHA827722
  @Closed
  Scenario Outline: B2B- Loan Details Closed- Redirection to Service screen
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And Click on Filter
    And click on "Closed" Relationship status in Filter
    And click on "Apply" Button
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle      | Account No     |
#      | 9307555158    | 05051976 | Individual    | CONSUMER DURABLE      | 4020CDGB501012 |
      | 8097927579    | 16111984 | Individual    | LOCAL - RETRA | 402ECFHC764391 |

  @Closed
  Scenario Outline: B2B- Loan Details Closed- Contents on Loan Details page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And Click on Filter
    And click on "Closed" Relationship status in Filter
    And click on "Apply" Button
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    Then verify given sections are showing on Loan Details page

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle      | Account No     |
#      | 9307555158    | 05051976 | Individual    | CONSUMER DURABLE      | 4020CDGB501012 |
      | 8097927579    | 16111984 | Individual    | LOCAL - RETRA | 402ECFHC764391 |

  @Closed
  Scenario Outline: B2B-  Closed- Loan Details section
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And Click on Filter
    And click on "Closed" Relationship status in Filter
    And click on "Apply" Button
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    Then verify given details are showing under loan details section- Closed

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle      | Account No     |
#      | 9307555158    | 05051976 | Individual    | CONSUMER DURABLE      | 4020CDGB501012 |
      | 8097927579    | 16111984 | Individual    | LOCAL - RETRA | 402ECFHC764391 |

  @Closed
  Scenario Outline: B2B- Closed Loan Details - Verify customer is able to view Relationship Details section
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And Click on Filter
    And click on "Closed" Relationship status in Filter
    And click on "Apply" Button
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    Then verify customer is able to view Relationship Details section if customer having term loan or flexi loan with given tiles-Closed

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle      | Account No     |
#      | 9307555158    | 05051976 | Individual    | CONSUMER DURABLE      | 4020CDGB501012 |
      | 8097927579    | 16111984 | Individual    | LOCAL - RETRA | 402ECFHC764391 |

  @Closed
  Scenario Outline: B2B- Loan Details Closed-verify all given Content with Value is showing to customer under relationship details section
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And Click on Filter
    And click on "Closed" Relationship status in Filter
    And click on "Apply" Button
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    Then verify all given Content with Value is showing to customer under relationship details section-Loan Section

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle      | Account No     |
#      | 9307555158    | 05051976 | Individual    | CONSUMER DURABLE      | 4020CDGB501012 |
      | 8097927579    | 16111984 | Individual    | LOCAL - RETRA | 402ECFHC764391 |

  @Closed
  Scenario Outline: B2B- Loan Details Closed- verify given contents with the values is showing under Registered Repayment Bank Details section
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And Click on Filter
    And click on "Closed" Relationship status in Filter
    And click on "Apply" Button
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    Then verify given contents with the values is showing under  Registered Repayment Bank Details section-Closed

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle      | Account No     |
#      | 9307555158    | 05051976 | Individual    | CONSUMER DURABLE      | 4020CDGB501012 |
      | 8097927579    | 16111984 | Individual    | LOCAL - RETRA | 402ECFHC764391 |

  @Closed
  Scenario Outline: B2B- Loan Details Closed - verify customer is able to view  last 4 digit of registered bank account number in unmasked format
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And Click on Filter
    And click on "Closed" Relationship status in Filter
    And click on "Apply" Button
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
#    Then verify customer is able to view  last 4 digit of registered bank account number in unmasked format.
    Then verify except last 4 characters of Bank account number remaining characters are masked


    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle      | Account No     |
#      | 9307555158    | 05051976 | Individual    | CONSUMER DURABLE      | 4020CDGB501012 |
      | 8097927579    | 16111984 | Individual    | LOCAL - RETRA | 402ECFHC764391 |

  @Closed
  Scenario Outline: B2B- Loan Details Closed- verify customer is able to view Change bank account option for closed loans
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And Click on Filter
    And click on "Closed" Relationship status in Filter
    And click on "Apply" Button
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    Then verify customer is able to view Change bank account option for closed loans

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle      | Account No     |
#      | 9307555158    | 05051976 | Individual    | CONSUMER DURABLE      | 4020CDGB501012 |
      | 8097927579    | 16111984 | Individual    | LOCAL - RETRA | 402ECFHC764391 |

  @Closed
  Scenario Outline: B2B- Loan Details Closed - verify customer is able to view  top 7 charges details on upfront as per priority logic  on Fees & Charges tile
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And Click on Filter
    And click on "Closed" Relationship status in Filter
    And click on "Apply" Button
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    Then verify customer is able to view  top 7 charges details on upfront as per priority logic  on Fees & Charges tile

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle      | Account No     |
#      | 9307555158    | 05051976 | Individual    | CONSUMER DURABLE      | 4020CDGB501012 |
      | 8097927579    | 16111984 | Individual    | LOCAL - RETRA | 402ECFHC764391 |

  @Closed
  Scenario Outline: B2B- Loans Closed  verify Given buttons are displayed under 'Things you can do section' at RHS Section
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And Click on Filter
    And click on "Closed" Relationship status in Filter
    And click on "Apply" Button
    And verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    And verify options available under "Quick Actions" on RHS(B2B Services Closed)

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle      | Account No     |
#      | 9307555158    | 05051976 | Individual    | CONSUMER DURABLE      | 4020CDGB501012 |
      | 8097927579    | 16111984 | Individual    | LOCAL - RETRA | 402ECFHC764391 |

  @Closed
  Scenario Outline: B2B- Loan Details Closed- RHS- View Statements
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    Then My relations Page should be displayed
    And click on "Loans" tab
    And Click on Filter
    And click on "Closed" Relationship status in Filter
    And click on "Apply" Button
    And verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    And Customer Click on "View Documents" CTA in RHS
    And User should be redirected to specific document page "<Account No>"

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle      | Account No     |
#      | 9307555158    | 05051976 | Individual    | CONSUMER DURABLE      | 4020CDGB501012 |
      | 8097927579    | 16111984 | Individual    | LOCAL - RETRA | 402ECFHC764391 |

#  @Close3 @Added @debug
#  Scenario Outline: B2B- Loan Details Closed- Pre Approved offers- Personal Loan
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User is on Home Page
#    And Customer is able to view My Relations Section to ETB Customers
#    And Customer clicks on view all option
#    Then My relations Page should be displayed
#    And click on "Loans" tab
#    And verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
#    Then verify customer is able to view Pre-approved offers section with offers banners
#    And verify Personal Loan Avail Now Popup
#
#    Examples:
#      | Mobile Number | Date     | Customer Type | Subtitle      | Account No     |
##      | 7412822091    | 26061995 | Individual    | LOCAL - ONLINE                   | 4B0ECFHA051567 |
#      | 8097927579    | 16111984 | Individual    | LOCAL - RETRA | 402ECFHC764391 |
#    ##402ECFHA827722
#  @Added
#  Scenario Outline: B2B- Loan Details Closed- Pre Approved offers- Insta EMI Card
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User is on Home Page
#    And Customer is able to view My Relations Section to ETB Customers
#    And Customer clicks on view all option
#    Then My relations Page should be displayed
#    And click on "Loans" tab
#    And verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
#    Then verify customer is able to view Pre-approved offers section with offers banners
#    And verify Insta EMI Card Shop Online
#
#    Examples:
#      | Mobile Number | Date     | Customer Type | Subtitle      | Account No     |
##      | 7412822091    | 26061995 | Individual    | LOCAL - ONLINE                   | 4B0ECFHA051567 |
#      | 8097927579    | 16111984 | Individual    | LOCAL - RETRA | 402ECFHC764391 |

  @Closed
  Scenario Outline: B2B- Loan Details Closed- FAQs Verification & Redirection
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And Click on Filter
    And click on "Closed" Relationship status in Filter
    And click on "Apply" Button
    And verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    Then verify customer can view FAQ section
    And verify Customer is redirected to FAQ page on clicking FAQ section

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle      | Account No     |
#      | 7412822091    | 26061995 | Individual    | LOCAL - ONLINE                   | 4B0ECFHA051567 |
      | 8097927579    | 16111984 | Individual    | LOCAL - RETRA | 402ECFHC764391 |

  @Closed
  Scenario Outline: B2B- Loan Details Closed- Cibil Score Verification & Redirection
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And Click on Filter
    And click on "Closed" Relationship status in Filter
    And click on "Apply" Button
    And verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
#    And verify customer can view cibil on click of know your cibil
    And Clicks on "Check Score Button in CIBIL"
    Then verify Page Redirection to "<Expected Url>" Url with SSO

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle      | Account No     | Expected Url                                       |
      | 8097927579    | 16111984 | Individual    | LOCAL - RETRA | 402ECFHC764391 | https://www.bajajfinserv.in/check-free-cibil-score |

  #####################Newly ADDED
  @New @Added
  Scenario Outline: B2B- Loan Details Active- Change Bank Account Redirection
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    And verify customer clicks on Button "Change Bank Account"
    Then Customer should be redirected to Mandate Page

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle                 | Account No     |
#      | 7412822091    | 26061995 | Individual    | LOCAL - ONLINE                   | 4B0ECFHA051567 |
      | 9157838819    | 01061996 | Individual    | WHIRLPOOL - REFRIGERATOR | 40C0CDIE693325 |

  @New @Added
  Scenario Outline: B2B- Loan Details Active- Fees & Charges
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    Then verify fees and charges is displayed
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle                 | Account No     |
#      | 7412822091    | 26061995 | Individual    | LOCAL - ONLINE                   | 4B0ECFHA051567 |
      | 9540678876    | 27011995 | Individual    | VIVO - PHONE(WEB-MOBILE) | 401DPFFC184792 |


#    NO ID
  Scenario Outline: B2B- Loan Details Active- Verify Relationship Details section- 4 Tiles
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    Then verify customer is able to view Relationship Details section if customer having term loan or flexi loan with given tiles- "<Relationship Tiles>"

    Examples:
      | Mobile Number | Date | Customer Type | Subtitle | Account No | Relationship Tiles |
#      | 7412822091    | 26061995 | Individual    | LOCAL - ONLINE                   | 4B0ECFHA051567 |            |
#      | 9323247757    | 20091984 | Individual    | SAMSUNG - LIQUID CRYSTAL DISPLAY | 4050CD00235523 |  Loan Details#Registered Repayment Bank Details#Insurance Details#Fees and Charges                |
