Feature: US_2935046 Call Back- FD

  Scenario Outline: To verify HAPPY TO ASSIST YOU section is displayed with given Options on RHS side on Renew Plan page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And  Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    Then verify Redirection using Account number "<Acc Number>"
    And Customer Click on "Renew your FD" CTA in RHS
    Then verify Page Redirection to "<Expected Url>" Url with SSO
    And Click on "PROCEED" CTA on Deposit Summary page
    Then verify Page Redirection to "<Url2>" Url with SSO
    And verify options"<Options>" available under "Happy to assist you" on RHS

    Examples:
      | Mobile Number | Date       | Customer Type | Acc Number | Expected Url                                        | Url2                                             | Options                    |
      | 9921345183    | 24-01-1988 | Individual    | 1028439    | MyAccountFixedDeposit/FixedDeposit/FDRenewalDetails | MyAccountFixedDeposit/FixedDeposit/FDRenewalPlan | Get a call back#Check FAQs |

  Scenario Outline: To verify when customer clicks on Get a call back option
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And  Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    Then verify Redirection using Account number "<Acc Number>"
    And Customer Click on "Renew your FD" CTA in RHS
    Then verify Page Redirection to "<Expected Url>" Url with SSO
    And Click on "PROCEED" CTA on Deposit Summary page
    Then verify Page Redirection to "<Url2>" Url with SSO
    And Customer Click on "Get a call back" CTA in RHS
    Then Pop-up should be displayed with given "<Text>"
    Examples:
      | Mobile Number | Date       | Customer Type | Acc Number | Expected Url                                        | Url2                                             | Text                                                                                                                                   |
      | 9921345183    | 24-01-1988 | Individual    | 1028439    | MyAccountFixedDeposit/FixedDeposit/FDRenewalDetails | MyAccountFixedDeposit/FixedDeposit/FDRenewalPlan | Thank you for your request, our representative will get in touch shortly.Please note our work hours are 9 AM to 6 PM, Mon to Saturday. |

  Scenario Outline: To verify when customer clicks Cross Icon on Pop-up
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And  Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    Then verify Redirection using Account number "<Acc Number>"
    And Customer Click on "Renew your FD" CTA in RHS
    Then verify Page Redirection to "<Expected Url>" Url with SSO
    And Click on "PROCEED" CTA on Deposit Summary page
    Then verify Page Redirection to "<Url2>" Url with SSO
    And Customer Click on "Get a call back" CTA in RHS
    Then Pop-up should be displayed with given "<Text>"
    And clicks on Cross icon of the Call Back popup
    Then Call Back Pop-Up should be closed
    Examples:
      | Mobile Number | Date       | Customer Type | Acc Number | Expected Url                                        | Url2                                             | Text                                                                                                                                   |
      | 9921345183    | 24-01-1988 | Individual    | 1028439    | MyAccountFixedDeposit/FixedDeposit/FDRenewalDetails | MyAccountFixedDeposit/FixedDeposit/FDRenewalPlan | Thank you for your request, our representative will get in touch shortly.Please note our work hours are 9 AM to 6 PM, Mon to Saturday. |

  Scenario Outline: To verify when customer clicks Okay CTA on Pop-up
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And  Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    Then verify Redirection using Account number "<Acc Number>"
    And Customer Click on "Renew your FD" CTA in RHS
    Then verify Page Redirection to "<Expected Url>" Url with SSO
    And Click on "PROCEED" CTA on Deposit Summary page
    Then verify Page Redirection to "<Url2>" Url with SSO
    And Customer Click on "Get a call back" CTA in RHS
    Then Pop-up should be displayed with given "<Text>"
    And Clicks on "Got It" Button
    Then Call Back Pop-Up should be closed
    Examples:
      | Mobile Number | Date       | Customer Type | Acc Number | Expected Url                                        | Url2                                             | Text                                                                                                                                   |
      | 9921345183    | 24-01-1988 | Individual    | 1028439    | MyAccountFixedDeposit/FixedDeposit/FDRenewalDetails | MyAccountFixedDeposit/FixedDeposit/FDRenewalPlan | Thank you for your request, our representative will get in touch shortly.Please note our work hours are 9 AM to 6 PM, Mon to Saturday. |

#  or Okay CTA
  Scenario Outline: To verify when customer clicks on Get a call back option once customer already raised a call back request
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And  Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    Then verify Redirection using Account number "<Acc Number>"
    And Customer Click on "Renew your FD" CTA in RHS
    Then verify Page Redirection to "<Expected Url>" Url with SSO
    And Click on "PROCEED" CTA on Deposit Summary page
    Then verify Page Redirection to "<Url2>" Url with SSO
    And Customer Click on "Get a call back" CTA in RHS
    Then Pop-up should be displayed with given "<Text1>"
    And Clicks on "Got It" Button
    Then Pop-up should be displayed with given "<Text2>"
    Examples:
      | Mobile Number | Date       | Customer Type | Acc Number | Expected Url                                        | Url2                                             | Text2                                                                                                                                  | Text2                                                                                               |
      | 9921345183    | 24-01-1988 | Individual    | 1028439    | MyAccountFixedDeposit/FixedDeposit/FDRenewalDetails | MyAccountFixedDeposit/FixedDeposit/FDRenewalPlan | Thank you for your request, our representative will get in touch shortly.Please note our work hours are 9 AM to 6 PM, Mon to Saturday. | Your request has already been registered with us. Our representative will reach out to you shortly. |

#  Scenario Outline: To verify customer can generate Call back request when Re-logins with same ID
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User is on Home Page
#    And Customer is able to view My Relations Section to ETB Customers
#    And  Customer clicks on view all option
#    And My relations Page should be displayed
#    And click on "Deposits" tab
#    And Customer Click on FD Card <FD no.><Status>
#    And Customer click on Renew Your FD option
#    And Click on Proceed CTA on Deposit Summary page
#    Then HAPPY TO ASSIST YOU section should be displayed on RHS with Get a call back & Check the FAQs option on Renewal Plan page
#    And Customer clicks on Get a call back option
#    And Customer Logs out
#    And Customer login with same credentials
#    And Lands on Renew Your FD page
#    And click on Get a call back option
#    Then Pop-up should be displayed with given “<Text>”
#    Examples:
#      | Mobile Number | Date       | Customer Type | FD no.  | Status | Text                                                                                                                                    |
#      | 9921345183    | 24-01-1988 | Individual    | 1028439 | Active | ”Thank you for your request, our representative will get in touch shortly. Please note our work hours are 9 AM to 6PM, Mon to Saturday” |

  Scenario Outline: To verify the redirection when clicks on Check the FAQs
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And  Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    Then verify Redirection using Account number "<Acc Number>"
    And Customer Click on "Renew your FD" CTA in RHS
    Then verify Page Redirection to "<Expected Url>" Url with SSO
    And Click on "PROCEED" CTA on Deposit Summary page
    Then verify Page Redirection to "<Url2>" Url with SSO
    And Customer Click on "Check FAQs" CTA in RHS
    Then verify Page Redirection to "<FAQ>" Url with SSO
    Examples:
      | Mobile Number | Date       | Customer Type | Acc Number | Expected Url                                        | Url2                                             | FAQ                                            |
      | 9921345183    | 24-01-1988 | Individual    | 1028439    | MyAccountFixedDeposit/FixedDeposit/FDRenewalDetails | MyAccountFixedDeposit/FixedDeposit/FDRenewalPlan | MyAccountService/HelpAndSupport/RARFAQCategory |

