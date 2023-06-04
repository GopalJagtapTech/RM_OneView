#@Regression
Feature: Insurance Services- Active Funded

  @Serv
  Scenario Outline: To verify Insurance tile in My Relation page redirected to Insurance page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    Then My relations Page should be displayed
    And click on "Insurance/Value-added Services" tab
    And click on "<Subtitle>" Tile of Account number "<Account No>"
    Then verify Redirection using Account number "<Account No>"
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle             | Account No     |
      | 9582898063    | 27111995 | Individual    | HDFC- LIFE INSURANCE | PP000208_0GB1F |

  @Serv
  Scenario Outline: To verify Insurance Page Sections
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    Then My relations Page should be displayed
    And click on "Insurance/Value-added Services" tab
    And click on "<Subtitle>" Tile of Account number "<Account No>"
    Then verify Redirection using Account number "<Account No>"
    Then verify below components of Insurance "Insurance Services" Page: "<Components>"
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle             | Account No     | Components                                                                                       |
      | 9582898063    | 27111995 | Individual    | HDFC- LIFE INSURANCE | PP000208_0GB1F | Policy , Relationship Details, Quick Actions, Frequently asked questions, Check your CIBIL Score |

  @Serv
  Scenario Outline: To verify Top section in Insurance Page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    Then My relations Page should be displayed
    And click on "Insurance/Value-added Services" tab
    And click on "<Subtitle>" Tile of Account number "<Account No>"
    Then verify Redirection using Account number "<Account No>"
    Then verify Logo of "Insurance Services"
    Then verify "<Number Text>" of Servies
    Then verify "<Amount text>"
    Then verify Below labels of Top Section: "<Label Names>"
#    Then verify "PREMIUM AMOUNT" format as <Rs. Digits>
    Then verify "Policy Start Date" format as "dd/MM/yyyy"
    Then verify "Policy End Date" format as "dd/MM/yyyy"
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle             | Account No     | Number Text | Amount text    | Label Names                        |
      | 9582898063    | 27111995 | Individual    | HDFC- LIFE INSURANCE | PP000208_0GB1F | Policy No : | PREMIUM AMOUNT | Policy Start Date, Policy End Date |

  @Serv
  Scenario Outline: To verify Relationship Details Section - Linked Loan Details
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    Then My relations Page should be displayed
    And click on "Insurance/Value-added Services" tab
    And click on "<Subtitle>" Tile of Account number "<Account No>"
    Then verify Redirection using Account number "<Account No>"
    Then verify below Labels of "Linked Loan Details" in "Insurance Services" Relationship Details: "<Label Names>"
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle             | Account No     | Label Names                                                    |
      | 9582898063    | 27111995 | Individual    | HDFC- LIFE INSURANCE | PP000208_0GB1F | Loan Account Number, EMI Amount, Next EMI Due Date, Loan Tenor |

  @Serv
  Scenario Outline: To verify Relationship Details Section - Nominee Details
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    Then My relations Page should be displayed
    And click on "Insurance/Value-added Services" tab
    And click on "<Subtitle>" Tile of Account number "<Account No>"
    Then verify Redirection using Account number "<Account No>"
    Then verify below Labels of "Nominee Details" in "Insurance Services" Relationship Details: "<Label Names>"
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle             | Account No     | Label Names                    |
      | 9582898063    | 27111995 | Individual    | HDFC- LIFE INSURANCE | PP000208_0GB1F | Nominee Name, Nominee Relation |

  @Serv
  Scenario Outline: verify Customer is redirected to FAQ Page when click on FAQ
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Insurance/Value-added Services" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    Then verify customer can view FAQ section in Insurance page
    And Customer clicks on FAQ section in Insurance page
    And Verify Customer Redirected to "MyAccountService/HelpAndSupport/RARFAQCategory" Url

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle             | Account No     |
      | 9582898063    | 27111995 | Individual    | HDFC- LIFE INSURANCE | PP000208_0GB1F |

  @Serv
  Scenario Outline: verify Customer is redirected to CIBIL Page when Customer click on know your Cibil
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Insurance/Value-added Services" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    And Clicks on "Check Score Button in CIBIL"
    Then verify Page Redirection to "<Expected Url>" Url with SSO

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle             | Account No     | Expected Url                                       |
      | 9582898063    | 27111995 | Individual    | HDFC- LIFE INSURANCE | PP000208_0GB1F | https://www.bajajfinserv.in/check-free-cibil-score |

  @Serv
  Scenario Outline: verify Given buttons are displayed under 'Quick Actions' at RHS Section
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Insurance/Value-added Services" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    And verify options"<Options>" available under "Quick Actions" on RHS

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle             | Account No     | Options                                                                           |
      | 9582898063    | 27111995 | Individual    | HDFC- LIFE INSURANCE | PP000208_0GB1F | Claim Request#View Documents#Update Policy Details#Surrender Policy#Cancel Policy |


  ##########################################################################################################################################################


#    Claim Request
  @ClaimReq
  Scenario Outline:  verify Customer is redirected to "Claim Request Page" when Customer Click on "Claim Request" CTA
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Insurance/Value-added Services" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    And Customer Click on "Claim Request" CTA in RHS
    And verify Customer is redirected to Claim Request Page

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle             | Account No     |
#      | 9545458457    | 16061982 | Individual    | BALIC- LIFE INSURANCE | GTLN_283037478 |
      | 9582898063    | 27111995 | Individual    | HDFC- LIFE INSURANCE | PP000208_0GB1F |


  @ClaimReq
  Scenario Outline:  verify the header text displayed when customer is on "Claim Request" Page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Insurance/Value-added Services" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    And Customer Click on "Claim Request" CTA in RHS
    And verify Customer is redirected to Claim Request Page
    And verify the header text displayed when customer is on Claim Request Page

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle             | Account No     |
#      | 9545458457    | 16061982 | Individual    | BALIC- LIFE INSURANCE | GTLN_283037478 |
      | 9582898063    | 27111995 | Individual    | HDFC- LIFE INSURANCE | PP000208_0GB1F |

  @ClaimReq
  Scenario Outline:  verify Customer is able to view the list of Document that need to upload for Claim Request
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Insurance/Value-added Services" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    And Customer Click on "Claim Request" CTA in RHS
    And verify Customer is redirected to Claim Request Page
    And verify Customer is able to view the list of Document that need to upload for Claim Request

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle             | Account No     |
#      | 9545458457    | 16061982 | Individual    | BALIC- LIFE INSURANCE | GTLN_283037478 |
      | 9582898063    | 27111995 | Individual    | HDFC- LIFE INSURANCE | PP000208_0GB1F |

  @ClaimReq
  Scenario Outline:  verify Customer is redirected to to RAR page when Customer click on Raise a Request CTA
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Insurance/Value-added Services" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    And Customer Click on "Claim Request" CTA in RHS
    And verify Customer is redirected to Claim Request Page
    And verify Customer is redirected to to RAR page when Customer click on Raise a Request CTA

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle             | Account No     |
      | 9582898063    | 27111995 | Individual    | HDFC- LIFE INSURANCE | PP000208_0GB1F |

#    Claim Request VAS
  @ClaimReq
  Scenario Outline: verify customer is able to redirect to the document upload screen when clicks on Claim Request
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Insurance/Value-added Services" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    And Customer Click on "Claim Request" CTA in RHS
    And verify customer is able to redirect to the document upload screen when clicks on Claim Request
    And Below documents "<Documents>" are Displayed to the Customer in Claim Request Page

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle                          | Account No | Documents                                                                                 |
      | 8390859786    | 12061976 | Individual    | CPP - ASSISTANCE PRODUCT/SERVICES | AS0597363  | Claim Invoice#Asset Invoice Copy#Cancelled Cheque Leaf/Passbook Page with account details |

  @ClaimReq
  Scenario Outline: verify the message diplayed when customer clicks on (i) tolltip of Claim Invoice Asset Invoice Copy
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Insurance/Value-added Services" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    And Customer Click on "Claim Request" CTA in RHS
    And verify customer is able to redirect to the document upload screen when clicks on Claim Request
#    And verify the message diplayed when customer clicks on (i) tolltip of Asset Invoice Copy
    And verify the message diplayed when customer clicks on (i) tolltip of Claim Invoice
    And verify close Button is present for Claim Invoice Popup

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle                          | Account No |
      | 8390859786    | 12061976 | Individual    | CPP - ASSISTANCE PRODUCT/SERVICES | AS0597363  |



#    Cancel Policy
  @Cancel
  Scenario Outline:  verify Customer is redirected to Cancellation Policy Page when Customer click on Cancel Policy CTA from RHS
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Insurance/Value-added Services" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    And Customer Click on "Cancel Policy" CTA in RHS
    And verify Customer is redirected to Cancellation Policy Page

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle             | Account No     |
      | 9582898063    | 27111995 | Individual    | HDFC- LIFE INSURANCE | PP000208_0GB1F |

  @Cancel
  Scenario Outline:  verify Customer is able to view following Details on Cancellation Policy Page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Insurance/Value-added Services" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    And Customer Click on "Cancel Policy" CTA in RHS
    And verify Customer is redirected to Cancellation Policy Page
    And verify Customer is able to view following Details on Cancellation Policy Page

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle             | Account No     |
      | 9582898063    | 27111995 | Individual    | HDFC- LIFE INSURANCE | PP000208_0GB1F |

  @Cancel
  Scenario Outline: verify customer is abe to view Details under Policy Details Section
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Insurance/Value-added Services" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    And Customer Click on "Cancel Policy" CTA in RHS
    And verify Customer is redirected to Cancellation Policy Page
    And verify customer is abe to view Details under Policy Details Section

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle             | Account No     |
      | 9582898063    | 27111995 | Individual    | HDFC- LIFE INSURANCE | PP000208_0GB1F |

  @Cancel
#    Check the Dropdown
  Scenario Outline: verify Customer is able to view the list of Reason to Cancel the Policy
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Insurance/Value-added Services" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    And Customer Click on "Cancel Policy" CTA in RHS
    And verify Customer is redirected to Cancellation Policy Page
    And verify Customer is able to view the list of Reason to Cancel the Policy

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle             | Account No     |
      | 9582898063    | 27111995 | Individual    | HDFC- LIFE INSURANCE | PP000208_0GB1F |

  @Cancel
  Scenario Outline: verify Customer is able to view selected Reason & Change the Reason
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Insurance/Value-added Services" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    And Customer Click on "Cancel Policy" CTA in RHS
    And verify Customer is redirected to Cancellation Policy Page
    And verify Customer is able to view selected Cancel Reason -"<Reason>"
    Then verify Customer is able to view Change the Cancel Reason-"<Reason2>"
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle             | Account No     | Reason            | Reason2        |
      | 9582898063    | 27111995 | Individual    | HDFC- LIFE INSURANCE | PP000208_0GB1F | Financial Problem | Change of Mind |


  @Cancel
  Scenario Outline: verify Customer is redirected to Insurance page when customer click on Keep the Policy CTA
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Insurance/Value-added Services" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    And Customer Click on "Cancel Policy" CTA in RHS
    And verify Customer is redirected to Cancellation Policy Page
    And verify Customer redirected to Service Page when click on Keep the Policy Button

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle             | Account No     |
      | 9582898063    | 27111995 | Individual    | HDFC- LIFE INSURANCE | PP000208_0GB1F |

  @Cancel
  Scenario Outline: verify Customer is redirected to RAR page when click on Cancel Policy after selecting a Reason
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Insurance/Value-added Services" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    And Customer Click on "Cancel Policy" CTA in RHS
    And verify Customer is redirected to Cancellation Policy Page
    And verify Customer is able to view selected Cancel Reason -"<Reason>"
    Then verify customer is redirected to RAR page when click on Cancel Policy after selecting a Reason "<RAR Header>"

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle             | Account No     | Reason            | RAR Header                                               |
      | 9582898063    | 27111995 | Individual    | HDFC- LIFE INSURANCE | PP000208_0GB1F | Financial Problem | Select the product for which you wish to raise a request |

  @Cancel
  Scenario Outline: verify Customer gets a validation when click on Cancel Policy Button without selecting Cancel Reason
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Insurance/Value-added Services" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    And Customer Click on "Cancel Policy" CTA in RHS
    And verify Customer is redirected to Cancellation Policy Page
    And verify customer gets a validation when click on Cancel Policy Button without selecting Cancel Reason

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle             | Account No     |
      | 9582898063    | 27111995 | Individual    | HDFC- LIFE INSURANCE | PP000208_0GB1F |

  @Updatepolicy
  Scenario Outline: verify Customer is redirected to RAR page after Clicking on Update Policy Details
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Insurance/Value-added Services" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    And Customer Click on "Update Policy Details" CTA in RHS
#    Then verify customer is redirected to RAR page for "<Account No>"
    Then verify customer is redirected to RAR page with "<Header>"

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle             | Account No     | Header                                                   |
      | 9582898063    | 27111995 | Individual    | HDFC- LIFE INSURANCE | PP000208_0GB1F | Select the product for which you wish to raise a request |




#Surrender Policy
  @Surr
  Scenario Outline: verify Customer is able to view the Details when Customer click on Surrender Policy CTA from Thing you can do RHS
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Insurance/Value-added Services" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    And Customer Click on "Surrender Policy" CTA in RHS
    And verify Customer is redirected to Surrender Policy Page
    And verify Customer is able to view the Details in Surrender Policy Page

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle             | Account No     |
      | 9582898063    | 27111995 | Individual    | HDFC- LIFE INSURANCE | PP000208_0GB1F |


    @Surr
  Scenario Outline: verify Customer is able to view Details under Policy Details Section
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Insurance/Value-added Services" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    And Customer Click on "Surrender Policy" CTA in RHS
    And verify Customer is redirected to Surrender Policy Page
    And verify Customer is able to view Details under Policy Details Section(Surrender Policy)

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle             | Account No     |
      | 9582898063    | 27111995 | Individual    | HDFC- LIFE INSURANCE | PP000208_0GB1F |


  @Surr
  Scenario Outline: verify Customer is able to view the list of Surrender Reason
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Insurance/Value-added Services" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    And Customer Click on "Surrender Policy" CTA in RHS
    And verify Customer is redirected to Surrender Policy Page
    And verify Customer is able to view the list of Surrender Reason


    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle             | Account No     |
      | 9582898063    | 27111995 | Individual    | HDFC- LIFE INSURANCE | PP000208_0GB1F |

  @Surr
  Scenario Outline: verify Customer is able to view selected Surrender Reason and Change the Surrender Reason
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Insurance/Value-added Services" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    And Customer Click on "Surrender Policy" CTA in RHS
    And verify Customer is redirected to Surrender Policy Page
    And verify Customer is able to view selected Surrender Reason -"<Reason>"
    Then verify Customer is able to view Change the Surrender Reason-"<Reason2>"
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle             | Account No     | Reason            | Reason2        |
      | 9582898063    | 27111995 | Individual    | HDFC- LIFE INSURANCE | PP000208_0GB1F | Financial Problem | Change of Mind |


  @Surr
  Scenario Outline: verify Customer gets a validation when click on Surrender Policy Button without selecting Surrendering Reason
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Insurance/Value-added Services" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    And Customer Click on "Surrender Policy" CTA in RHS
    And verify Customer is redirected to Surrender Policy Page
    And verify customer gets a validation when click on Surrender Policy Button without selecting Surrendering Reason

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle             | Account No     |
      | 9582898063    | 27111995 | Individual    | HDFC- LIFE INSURANCE | PP000208_0GB1F |

  @Surr
  Scenario Outline: verify Customer redirected to Service Page when click on Keep the Policy Button
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Insurance/Value-added Services" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    And Customer Click on "Surrender Policy" CTA in RHS
    And verify Customer is redirected to Surrender Policy Page
    And verify Customer redirected to Service Page when click on Keep the Policy Button

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle             | Account No     |
      | 9582898063    | 27111995 | Individual    | HDFC- LIFE INSURANCE | PP000208_0GB1F |

    @Surr
  Scenario Outline: verify customer successfully completes Surrender Policy Journey
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Insurance/Value-added Services" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    And Customer Click on "Surrender Policy" CTA in RHS
    And verify Customer is redirected to Surrender Policy Page
    And verify Customer is able to view selected Surrender Reason -"<Reason>"
    Then verify customer is redirected to RAR page when click on Surrender Policy after selecting a Reason for "<Account No>"

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle             | Account No     | Reason            |
      | 9582898063    | 27111995 | Individual    | HDFC- LIFE INSURANCE | PP000208_0GB1F | Financial Problem |

#    Surrender Policy - 25112022


    #########25112022
  @PAO
  Scenario Outline: verify Customer is able to view Pre- approved offer as per homepage module
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Insurance/Value-added Services" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    And verify at the bottom of the screen will have Pre-approved offers cards
    And verify Pre-approved offers cards at the bottom of the screen


    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle             | Account No      |
      | 7028022400    | 03121991 | Individual    | HDFC- LIFE INSURANCE | PP0000864571800 |


  @Docs
  Scenario Outline: Insurance Services- View Statements
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Insurance/Value-added Services" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    And Customer Click on "View Documents" CTA in RHS
    Then User should be redirected to specific document page "<Account No>"
#    And verify that customer is able view content on View Statements page
#    And verify that statement is downloaded  on click of download button
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle             | Account No     |
      | 9582898063    | 27111995 | Individual    | HDFC- LIFE INSURANCE | PP000208_0GB1F |


