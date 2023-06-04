@Regression @mult
Feature: Insurance Services- Active Non Funded(VAS)

##########Services
  Scenario Outline: To verify Insurance Page Sections - VAS Non Funded
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
      | Mobile Number | Date     | Customer Type | Subtitle                 | Account No               | Components                                                                                       |
      | 9910427143    | 27111995 | Individual    | BAGIC- GENERAL INSURANCE | OG-17-1000-6609-00706155 | Policy , Relationship Details, Quick Actions, Frequently asked questions, Check your CIBIL Score |

  @Serv
  Scenario Outline: To verify Top section in Insurance Page - VAS Non Funded
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
      | Mobile Number | Date     | Customer Type | Subtitle                 | Account No               | Number Text | Amount text    | Label Names                        |
      | 9910427143    | 27111995 | Individual    | BAGIC- GENERAL INSURANCE | OG-17-1000-6609-00706155 | Policy No : | PREMIUM AMOUNT | Policy Start Date, Policy End Date |

  @Serv
  Scenario Outline: To verify Relationship Details Section - Nominee Details - VAS Non Funded
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
      | Mobile Number | Date     | Customer Type | Subtitle                 | Account No               | Label Names                    |
      | 9910427143    | 27111995 | Individual    | BAGIC- GENERAL INSURANCE | OG-17-1000-6609-00706155 | Nominee Name, Nominee Relation |

  @Serv
  Scenario Outline: verify Customer is redirected to FAQ Page when click on FAQ - VAS Non Funded
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
      | Mobile Number | Date     | Customer Type | Subtitle                 | Account No               |
      | 9910427143    | 27111995 | Individual    | BAGIC- GENERAL INSURANCE | OG-17-1000-6609-00706155 |

  @Serv
  Scenario Outline: verify Customer is redirected to CIBIL Page when Customer click on know your Cibil - VAS Non Funded
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
      | Mobile Number | Date     | Customer Type | Subtitle                 | Account No               | Expected Url                                       |
      | 9910427143    | 27111995 | Individual    | BAGIC- GENERAL INSURANCE | OG-17-1000-6609-00706155 | https://www.bajajfinserv.in/check-free-cibil-score |

  @Serv
  Scenario Outline: verify Given buttons are displayed under 'Quick Actions' at RHS Section - VAS Non Funded
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Insurance/Value-added Services" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    And verify options"<Options>" available under "Quick Actions" on RHS

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle                 | Account No               | Options                                                                           |
      | 9910427143    | 27111995 | Individual    | BAGIC- GENERAL INSURANCE | OG-17-1000-6609-00706155 | Claim Request#View Documents#Update Policy Details#Surrender Policy#Cancel Policy |


  ##########################################################################################################################################################
#####RHS
  #    Claim Request
  @ClaimReq
  Scenario Outline:  verify Customer is redirected to "Claim Request Page" when Customer Click on "Claim Request" CTA - VAS Non Funded
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
      | Mobile Number | Date     | Customer Type | Subtitle                 | Account No               |
      | 9910427143    | 27111995 | Individual    | BAGIC- GENERAL INSURANCE | OG-17-1000-6609-00706155 |


  @ClaimReq
  Scenario Outline:  verify the header text displayed when customer is on "Claim Request" Page - VAS Non Funded
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
      | Mobile Number | Date     | Customer Type | Subtitle                 | Account No               |
      | 9910427143    | 27111995 | Individual    | BAGIC- GENERAL INSURANCE | OG-17-1000-6609-00706155 |

  @ClaimReq
  Scenario Outline:  verify Customer is able to view the list of Document that need to upload for Claim Request - VAS Non Funded
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
      | Mobile Number | Date     | Customer Type | Subtitle                 | Account No               |
      | 9910427143    | 27111995 | Individual    | BAGIC- GENERAL INSURANCE | OG-17-1000-6609-00706155 |

  @ClaimReq
  Scenario Outline:  verify Customer is redirected to to RAR page when Customer click on Raise a Request CTA - VAS Non Funded
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
      | Mobile Number | Date     | Customer Type | Subtitle                 | Account No               |
      | 9910427143    | 27111995 | Individual    | BAGIC- GENERAL INSURANCE | OG-17-1000-6609-00706155 |

#    Claim Request VAS
  @ClaimReq
  Scenario Outline: verify customer is able to redirect to the document upload screen when clicks on Claim Request - VAS Non Funded
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
      | Mobile Number | Date     | Customer Type | Subtitle                 | Account No               | Documents                                                                                                                            |
      | 9910427143    | 27111995 | Individual    | BAGIC- GENERAL INSURANCE | OG-17-1000-6609-00706155 | Photo ID#Policy copy#Discharge summary / OPD-IPD Papers / Medical reports#Cancelled Cheque Leaf / Passbook page with account details |

################
  @Cancel
  Scenario Outline:  verify Customer is redirected to Cancellation Policy Page when Customer click on Cancel Policy CTA from RHS - VAS Non Funded
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
      | Mobile Number | Date     | Customer Type | Subtitle                 | Account No               |
      | 9910427143    | 27111995 | Individual    | BAGIC- GENERAL INSURANCE | OG-17-1000-6609-00706155 |

  @Cancel
  Scenario Outline:  verify Customer is able to view following Details on Cancellation Policy Page - VAS Non Funded
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
      | Mobile Number | Date     | Customer Type | Subtitle                 | Account No               |
      | 9910427143    | 27111995 | Individual    | BAGIC- GENERAL INSURANCE | OG-17-1000-6609-00706155 |

  @Cancel
  Scenario Outline: verify customer is abe to view Details under Policy Details Section - VAS Non Funded
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
      | Mobile Number | Date     | Customer Type | Subtitle                 | Account No               |
      | 9910427143    | 27111995 | Individual    | BAGIC- GENERAL INSURANCE | OG-17-1000-6609-00706155 |

  @Cancel
#    Check the Dropdown
  Scenario Outline: verify Customer is able to view the list of Reason to Cancel the Policy - VAS Non Funded
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
      | Mobile Number | Date     | Customer Type | Subtitle                 | Account No               |
      | 9910427143    | 27111995 | Individual    | BAGIC- GENERAL INSURANCE | OG-17-1000-6609-00706155 |

  @Cancel
  Scenario Outline: verify Customer is able to view selected Reason & Change the Reason - VAS Non Funded
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
      | Mobile Number | Date     | Customer Type | Subtitle                 | Account No               | Reason            | Reason2        |
      | 9910427143    | 27111995 | Individual    | BAGIC- GENERAL INSURANCE | OG-17-1000-6609-00706155 | Financial Problem | Change of Mind |

  @Cancel
  Scenario Outline: verify Customer is redirected to Insurance page when customer click on Keep the Policy CTA - VAS Non Funded
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
      | Mobile Number | Date     | Customer Type | Subtitle                 | Account No               |
      | 9910427143    | 27111995 | Individual    | BAGIC- GENERAL INSURANCE | OG-17-1000-6609-00706155 |

  @Cancel
  Scenario Outline: verify Customer is redirected to RAR page when click on Cancel Policy after selecting a Reason - VAS Non Funded
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
      | Mobile Number | Date     | Customer Type | Subtitle                 | Account No               | Reason            | RAR Header                                               |
      | 9910427143    | 27111995 | Individual    | BAGIC- GENERAL INSURANCE | OG-17-1000-6609-00706155 | Financial Problem | Select the product for which you wish to raise a request |

  @Cancel
  Scenario Outline: verify Customer gets a validation when click on Cancel Policy Button without selecting Cancel Reason - VAS Non Funded
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
      | Mobile Number | Date     | Customer Type | Subtitle                 | Account No               |
      | 9910427143    | 27111995 | Individual    | BAGIC- GENERAL INSURANCE | OG-17-1000-6609-00706155 |

    #########
  @Updatepolicy
  Scenario Outline: verify Customer is redirected to RAR page after Clicking on Update Policy Details - VAS Non Funded
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
      | Mobile Number | Date     | Customer Type | Subtitle                 | Account No               | Header                                                   |
      | 9910427143    | 27111995 | Individual    | BAGIC- GENERAL INSURANCE | OG-17-1000-6609-00706155 | Select the product for which you wish to raise a request |

##########
  @Surr
  Scenario Outline: verify Customer is able to view the Details when Customer click on Surrender Policy CTA from Thing you can do RHS - VAS Non Funded
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
      | Mobile Number | Date     | Customer Type | Subtitle                 | Account No               |
      | 9910427143    | 27111995 | Individual    | BAGIC- GENERAL INSURANCE | OG-17-1000-6609-00706155 |

  @Surr
  Scenario Outline: verify Customer is able to view Details under Policy Details Section - VAS Non Funded
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
      | Mobile Number | Date     | Customer Type | Subtitle                 | Account No               |
      | 9910427143    | 27111995 | Individual    | BAGIC- GENERAL INSURANCE | OG-17-1000-6609-00706155 |


  @Surr
  Scenario Outline: verify Customer is able to view the list of Surrender Reason - VAS Non Funded
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
      | Mobile Number | Date     | Customer Type | Subtitle                 | Account No               |
      | 9910427143    | 27111995 | Individual    | BAGIC- GENERAL INSURANCE | OG-17-1000-6609-00706155 |

  @Surr
  Scenario Outline: verify Customer is able to view selected Surrender Reason and Change the Surrender Reason - VAS Non Funded
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
      | Mobile Number | Date     | Customer Type | Subtitle                 | Account No               | Reason            | Reason2        |
      | 9910427143    | 27111995 | Individual    | BAGIC- GENERAL INSURANCE | OG-17-1000-6609-00706155 | Financial Problem | Change of Mind |

  @Surr
  Scenario Outline: verify Customer gets a validation when click on Surrender Policy Button without selecting Surrendering Reason - VAS Non Funded
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
      | Mobile Number | Date     | Customer Type | Subtitle                 | Account No               |
      | 9910427143    | 27111995 | Individual    | BAGIC- GENERAL INSURANCE | OG-17-1000-6609-00706155 |

  @Surr
  Scenario Outline: verify Customer redirected to Service Page when click on Keep the Policy Button - VAS Non Funded
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
      | Mobile Number | Date     | Customer Type | Subtitle                 | Account No               |
      | 9910427143    | 27111995 | Individual    | BAGIC- GENERAL INSURANCE | OG-17-1000-6609-00706155 |

  Scenario Outline: verify customer successfully completes Surrender Policy Journey - VAS Non Funded
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
#    Then verify customer is redirected to RAR page when click on Surrender Policy after selecting a Reason for "<Account No>"
    Then verify customer is redirected to RAR page when click on Surrender Policy after selecting a Reason With "<Header>"


    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle                 | Account No               | Reason            | Header                                                   |
      | 9910427143    | 27111995 | Individual    | BAGIC- GENERAL INSURANCE | OG-17-1000-6609-00706155 | Financial Problem | Select the product for which you wish to raise a request |











