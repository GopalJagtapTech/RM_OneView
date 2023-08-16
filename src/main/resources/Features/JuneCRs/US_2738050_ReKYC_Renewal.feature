Feature: US2738050 - ReKYC in Renewal Journey

  @pass
  Scenario Outline: To verify ReKYC pop-up is displayed with given CTA when customer log in with valid credentials
    Given User is logged in "<MOB>" "<DOB>" for "<Customer Type>"
    When User is on Home Page for KYC Poup
    Then ReKYC pop-up should be displayed to customer with below Contents:
    Then verify the following buttons "<CTA>" are displayed in the page kyc
#  1.This is Correct CTA
#  2.Complete KYC
#  3.Check Box
#  4.Cross Icon
    Examples:
      | MOB        | DOB        | Customer Type | CTA                          |
      | 8108811029 | 02-03-1960 | Individual    | This is correct,Complete KYC |

  @pass
  Scenario Outline: To verify when customer clicks on Cross icon on ReKYC Pop-up
    Given User is logged in "<MOB>" "<DOB>" for "<Customer Type>"
    When User is on Home Page for KYC Poup
    And  verify re KYC popup
    And Clicks Cross icon on ReKYC
    Then ReKYC Popup should be closed
    Examples:
      | MOB        | DOB        | Customer Type |
      | 8108811029 | 02-03-1960 | Individual    |

  @check
  Scenario Outline: To verify when customer clicks on "This is Correct" ReKYC pop is closed
    Given User is logged in "<MOB>" "<DOB>" for "<Customer Type>"
    When User is on Home Page for KYC Poup
    And  verify re KYC popup
    And clicks on Check Box of re KYC popup
    And clicks on "This is correct" CTA on ReKYC
    Then ReKYC Popup should be closed
    Examples:
      | MOB        | DOB        | Customer Type |
      | 8108811029 | 02-03-1960 | Individual    |

  @pass
  Scenario Outline: To verify when customer clicks on “This is Correct” on ReKYC pop and re-login with the same ID then ReKYC is not displayed
    Given User is logged in "<MOB>" "<DOB>" for "<Customer Type>"
    When User is on Home Page for KYC Poup
    Then ReKYC Popup should not be Displayed
#    And logs out from the Account
#    And log in with same ID
#    Then ReKYC should not be displayed to user
    Examples:
      | MOB        | DOB        | Customer Type |
      | 8108811029 | 02-03-1960 | Individual    |

  @pass
  Scenario Outline: To verify when customer clicks on “Complete KYC” CTA on ReKYC
    Given User is logged in "<MOB>" "<DOB>" for "<Customer Type>"
    When User is on Home Page for KYC Poup
    And  verify re KYC popup
    And clicks on Check Box of re KYC popup
    And clicks on "Complete KYC" CTA on ReKYC
    Then Verify Customer Redirected to "MyAccountService/UpdateDetails/UserProfileDetails" Url

    Examples:
      | MOB        | DOB        | Customer Type |
      | 7986199893 | 02-03-1960 | Individual    |

  @1108
  Scenario Outline: To verify Registry section is displayed with given fields
    Given User is logged in "<MOB>" "<DOB>" for "<Customer Type>"
    When User is on Home Page for KYC Poup
    And  verify re KYC popup
    And Clicks Cross icon on ReKYC
    Then ReKYC Popup should be closed
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    Then verify Redirection using Account number "<Acc Number>"
    And Customer Click on "Renew your FD" CTA in RHS
    And Verify Customer Redirected to "<url>" Url
    And Clicks on "PROCEED" Button
    And Verify Customer Redirected to "<url1>" Url
    And Clicks on "PROCEED" Button
    And Verify Customer Redirected to "<Url2>" Url
    Then Registry section should be displayed with below fields on Renewal Summary Page
#  1.PAN field
#  2.Dirth of Birth



    Examples:
      | MOB        | DOB        | Customer Type | Acc Number | url                                                 | url1                                             | Url2                                                |
 | 7986199893 | 02-03-1960 | Individual    | 393858     | MyAccountFixedDeposit/FixedDeposit/FDRenewalDetails | MyAccountFixedDeposit/FixedDeposit/FDRenewalPlan | MyAccountFixedDeposit/FixedDeposit/FDRenewalSummary |
  @1108
  Scenario Outline: To verify when user entering invalid input in PAN field given validation text is displayed
    Given User is logged in "<MOB>" "<DOB>" for "<Customer Type>"
    When User is on Home Page for KYC Poup
    And  verify re KYC popup
    And Clicks Cross icon on ReKYC
    Then ReKYC Popup should be closed
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    Then verify Redirection using Account number "<Acc Number>"
    And Customer Click on "Renew your FD" CTA in RHS
    And Verify Customer Redirected to "<url>" Url
    And Clicks on "PROCEED" Button
    And Verify Customer Redirected to "<url1>" Url
    And Clicks on "PROCEED" Button
    And Verify Customer Redirected to "<Url2>" Url
    Then Registry section should be displayed on Renewal Summary Page
    And Verify Error Msg "Enter valid PAN" when Customer Enters invalid data "<Data>" in PAN field
    Examples:
      | MOB        | DOB        | Customer Type | Acc Number | url                                                 | url1                                             | Url2                                                | Data                            |
      | 7986199893 | 02-03-1960 | Individual    | 393858     | MyAccountFixedDeposit/FixedDeposit/FDRenewalDetails | MyAccountFixedDeposit/FixedDeposit/FDRenewalPlan | MyAccountFixedDeposit/FixedDeposit/FDRenewalSummary | 1111111111,1posasasa,#@#@#@##@# |
  @1108
  Scenario Outline: To verify when user click on PAN Tooltip
    Given User is logged in "<MOB>" "<DOB>" for "<Customer Type>"
    When User is on Home Page for KYC Poup
    And  verify re KYC popup
    And Clicks Cross icon on ReKYC
    Then ReKYC Popup should be closed
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    Then verify Redirection using Account number "<Acc Number>"
    And Customer Click on "Renew your FD" CTA in RHS
    And Verify Customer Redirected to "<url>" Url
    And Clicks on "PROCEED" Button
    And Verify Customer Redirected to "<url1>" Url
    And Clicks on "PROCEED" Button
    And Verify Customer Redirected to "<Url2>" Url
    Then Registry section should be displayed on Renewal Summary Page
    And click on PAN Tooltip in Renewal Summary Page
    Then Informative PAN Card pop-up should be displayed with cross icon
    Examples:
      | MOB        | DOB        | Customer Type | Acc Number | url                                                 | url1                                             | Url2                                                | Data                            |
      | 7986199893 | 02-03-1960 | Individual    | 393858      | MyAccountFixedDeposit/FixedDeposit/FDRenewalDetails | MyAccountFixedDeposit/FixedDeposit/FDRenewalPlan | MyAccountFixedDeposit/FixedDeposit/FDRenewalSummary | 1111111111,1posasasa,#@#@#@##@# |
  @1108 @debug
  Scenario Outline: To verify when user entering invalid input in DOB field given validation text is displayed
    Given User is logged in "<MOB>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
#    When User is on Home Page for KYC Poup
    And  verify re KYC popup
    And Clicks Cross icon on ReKYC
    Then ReKYC Popup should be closed
#    And Customer is able to view My Relations Section to ETB Customers
#    And Customer clicks on view all option
#    And My relations Page should be displayed
#    And click on "Deposits" tab
#    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
#    Then verify Redirection using Account number "<Acc Number>"
#    And Customer Click on "Renew your FD" CTA in RHS
#    And Verify Customer Redirected to "<url>" Url
#    And Clicks on "PROCEED" Button
#    And Verify Customer Redirected to "<url1>" Url
#    And Clicks on "PROCEED" Button
#    And Verify Customer Redirected to "<Url2>" Url
#    Then Registry section should be displayed on Renewal Summary Page
#    And Verify Error Msg "Enter valid date" when Customer Enters invalid data "<Data>" in DOB field
    Examples:
      | MOB        | DOB        | Customer Type | Acc Number | url                                                 | url1                                             | Url2                                                | Data                          |
      | 7986199893 | 02-03-1960 | Individual    | 393858      | MyAccountFixedDeposit/FixedDeposit/FDRenewalDetails | MyAccountFixedDeposit/FixedDeposit/FDRenewalPlan | MyAccountFixedDeposit/FixedDeposit/FDRenewalSummary | 11111111,1posasasa,#@#@#@##@# |
  @1108 @debug
  Scenario Outline: To verify Renew Now CTA is enabled & redirected to respective page
#    Given User is logged in "<MOB>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
#    When User is on Home Page for KYC Poup
    And  verify re KYC popup
    And Clicks Cross icon on ReKYC
    Then ReKYC Popup should be closed
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    Then verify Redirection using Account number "<Acc Number>"
    And Customer Click on "Renew your FD" CTA in RHS
    And Verify Customer Redirected to "<url>" Url
    And Clicks on "PROCEED" Button
    And Verify Customer Redirected to "<url1>" Url
    And Clicks on "PROCEED" Button
    And Verify Customer Redirected to "<Url2>" Url
    Then Registry section should be displayed on Renewal Summary Page
    And Enter valid PAN "DUEPM3825A" & DOB "15021998"
    And click on T&C Checkbox in Renewal Summary Page
    Then "renew now" CTA should be enabled
    And Click on "renew now" CTA
#    Then use should be redirected to it’s respective page

    Examples:
      | MOB        | DOB        | Customer Type | Acc Number | url                                                 | url1                                             | Url2                                                |
      | 7986199893 | 02-03-1960 | Individual    | 393858     | MyAccountFixedDeposit/FixedDeposit/FDRenewalDetails | MyAccountFixedDeposit/FixedDeposit/FDRenewalPlan | MyAccountFixedDeposit/FixedDeposit/FDRenewalSummary |

