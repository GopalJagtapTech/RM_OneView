@LAS
Feature: LAS Services (Share repledge and share release )

  @pass
  Scenario Outline: To verify customer is able to view and click on Additional share repledge
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using FAS No"<Account No>"
    And Customer Click on "Release Securities" CTA in RHS
    Then Verify Customer Redirected to "MyAccountLoanServices/LAS/ShareRelease" Url
#    And Customer is redirected to the exact LAS page "<Account No>"

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle            | Account No |
      | 9545219299    | 13091990 | Individual    | LOAN AGAINST SHARES | 104175     |

  @pass
  Scenario Outline: TO verify share repledge service page divides into given 4 component
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using FAS No"<Account No>"
    And Customer Click on "Release Securities" CTA in RHS
    Then Verify Customer Redirected to "MyAccountLoanServices/LAS/ShareRelease" Url
#    And Customer is redirected to the exact LAS page "<Account No>"
    And verify the Components in LAS page

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle            | Account No |
      | 9545219299    | 13091990 | Individual    | LOAN AGAINST SHARES | 104175     |

  @pass
  Scenario Outline: To verify customer is able to view given title as per AEM and static text under Disbursement Request section
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using FAS No"<Account No>"
    And Customer Click on "Release Securities" CTA in RHS
    Then Verify Customer Redirected to "MyAccountLoanServices/LAS/ShareRelease" Url
#    And Title text should be "Disbursement Request" and "<static text>" should be displyed with "<Account No>" under Disbursement Request
    And Title text should be "Release Securities"

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle            | Account No | static text                                 |
      | 9545219299    | 13091990 | Individual    | LOAN AGAINST SHARES | 104175     | Withdrawing funds from loan account number: |

  @pass
  Scenario Outline: To verify customer is able to view available value of share and it is non editable
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using FAS No"<Account No>"
    And Customer Click on "Release Securities" CTA in RHS
    Then Verify Customer Redirected to "MyAccountLoanServices/LAS/ShareRelease" Url
    And Verify the available value of share
    Then Customer should be able to view available value of share that can be released and it should not be editable

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle            | Account No |
      | 9545219299    | 13091990 | Individual    | LOAN AGAINST SHARES | 104175     |

  @pass
  Scenario Outline: To verify customer is able to click on Check Box
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using FAS No"<Account No>"
    And Customer Click on "Release Securities" CTA in RHS
    Then Verify Customer Redirected to "MyAccountLoanServices/LAS/ShareRelease" Url
    And clicks on Check Box number 3 in Choose a Bank below
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle            | Account No |
      | 9545219299    | 13091990 | Individual    | LOAN AGAINST SHARES | 104175     |

  @pass
  Scenario Outline: To verify  customer is able to view release details with given field when select bank details
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using FAS No"<Account No>"
    And Customer Click on "Release Securities" CTA in RHS
    Then Verify Customer Redirected to "MyAccountLoanServices/LAS/ShareRelease" Url
    Then Customer should be able to view below release details when select bank details

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle            | Account No |
      | 9545219299    | 13091990 | Individual    | LOAN AGAINST SHARES | 104175     |

  @pass
  Scenario Outline: To verify custmer is  able to multi select available share
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using FAS No"<Account No>"
    And Customer Click on "Release Securities" CTA in RHS
    Then Verify Customer Redirected to "MyAccountLoanServices/LAS/ShareRelease" Url
    And clicks on Check Box number 1 in Choose a Bank below
    And clicks on Check Box number 2 in Choose a Bank below

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle            | Account No |
      | 9545219299    | 13091990 | Individual    | LOAN AGAINST SHARES | 104175     |

  @pass
  Scenario Outline: To verify customer is able to enter and edit value under Share to unpledged field
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using FAS No"<Account No>"
    And Customer Click on "Release Securities" CTA in RHS
    Then Verify Customer Redirected to "MyAccountLoanServices/LAS/ShareRelease" Url
    And verify Shares to Unpledge Input Box 1 is disabled
    And clicks on Check Box number 1 in Choose a Bank below
    And verify Shares to Unpledge Input Box 1 is enabled
    And User enters a value "10" in Shares to Unpledge Input Box 1
    Then verify the Value "10" is accepted in Unpledge Input Box 1

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle            | Account No |
      | 9545219299    | 13091990 | Individual    | LOAN AGAINST SHARES | 104175     |

  @pass
  Scenario Outline: To verify customer is able to enter special char. And alphabates under Share to unpledged field
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using FAS No"<Account No>"
    And Customer Click on "Release Securities" CTA in RHS
    Then Verify Customer Redirected to "MyAccountLoanServices/LAS/ShareRelease" Url
    And clicks on Check Box number 1 in Choose a Bank below
    Then verify the Unpledge Input Box 1 with Negative Values "<Values>"

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle            | Account No | Values          |
      | 9545219299    | 13091990 | Individual    | LOAN AGAINST SHARES | 104175     | asdksd,@#@$$@#@ |

  @pass
  Scenario Outline: To verify when customer enter any input value under  Share to unpledged field
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using FAS No"<Account No>"
    And Customer Click on "Release Securities" CTA in RHS
    Then Verify Customer Redirected to "MyAccountLoanServices/LAS/ShareRelease" Url
    And clicks on Check Box number 1 in Choose a Bank below
    And User enters a value "10" in Shares to Unpledge Input Box 1
    Then Customer should be able to view below share details of respective share to be displayed for Input Box 1: "Value of Pledged Securities" and "Value of Unpledged Securities"

    Examples:
      | Mobile Number | Date     | Customer Type |  Account No |
      | 9545219299    | 13091990 | Individual    |  104175     |

  @pass
  Scenario Outline: To verify customer is able to select less than 3 or 3 shares
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using FAS No"<Account No>"
    And Customer Click on "Release Securities" CTA in RHS
    Then Verify Customer Redirected to "MyAccountLoanServices/LAS/ShareRelease" Url
    And clicks on Check Box number 1 in Choose a Bank below
    And clicks on Check Box number 2 in Choose a Bank below
    And clicks on Check Box number 3 in Choose a Bank below

    Examples:
      | Mobile Number | Date     | Customer Type |  Account No |
      | 9545219299    | 13091990 | Individual    |  104175     |

  @pass
  Scenario Outline: To verify Informative popup is displayed when click on Release share CTA
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using FAS No"<Account No>"
    And Customer Click on "Release Securities" CTA in RHS
    Then Verify Customer Redirected to "MyAccountLoanServices/LAS/ShareRelease" Url
    And clicks on Check Box number 1 in Choose a Bank below
    And clicks on Check Box number 2 in Choose a Bank below
    And clicks on Check Box number 3 in Choose a Bank below
    And clicks on Check Box number 4 in Choose a Bank below
    Then Customer should get a Warning Popup

    Examples:
      | Mobile Number | Date     | Customer Type |  Account No |
      | 9545219299    | 13091990 | Individual    |  104175     |


  @pass
  Scenario Outline: To verify loan value and Value of Pledged Shared is displaying multiplication of allowableQty and  marketRate
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using FAS No"<Account No>"
    And Customer Click on "Release Securities" CTA in RHS
    Then Verify Customer Redirected to "MyAccountLoanServices/LAS/ShareRelease" Url
    And clicks on Check Box number 1 in Choose a Bank below
    Then customer should be able to view multiplication of allowableQty and  marketRate in Loan value and Value of Pledged Shared for Bank 1
    Examples:
      | Mobile Number | Date     | Customer Type | Account No |
      | 9545219299    | 13091990 | Individual    | 104175     |

  @pass
  Scenario Outline: To verify Value Of Unpledged Shares  is displaying multiplication of user input and marketRate
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using FAS No"<Account No>"
    And Customer Click on "Release Securities" CTA in RHS
    Then Verify Customer Redirected to "MyAccountLoanServices/LAS/ShareRelease" Url
    And clicks on Check Box number 1 in Choose a Bank below
    And User enters a value "10" in Shares to Unpledge Input Box 1
    Then customer should be able to view multiplication of user input and marketRate in Value Of Unpledged Shares for Bank 1 and for Shares "10"
    Examples:
      | Mobile Number | Date     | Customer Type | Account No |
      | 9545219299    | 13091990 | Individual    | 104175     |

  @pass
  Scenario Outline: To verify customer is not able to enter alphabets and special chracter in Share to unpledged field
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using FAS No"<Account No>"
    And Customer Click on "Release Securities" CTA in RHS
    Then Verify Customer Redirected to "MyAccountLoanServices/LAS/ShareRelease" Url
    And clicks on Check Box number 1 in Choose a Bank below
    Then verify the Unpledge Input Box 1 with Negative Values "<alpha>"

    Examples:
      | Mobile Number | Date     | Customer Type | Account No | alpha   |
      | 9545219299    | 13091990 | Individual    | 104175     | asdf@%$ |

  @pass
  Scenario Outline: To verify inline validation message is displayed when customer enters value more than Share Pledged value
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using FAS No"<Account No>"
    And Customer Click on "Release Securities" CTA in RHS
    Then Verify Customer Redirected to "MyAccountLoanServices/LAS/ShareRelease" Url
    And clicks on Check Box number 1 in Choose a Bank below
    And Enter value more than Share Pledged value in Share to Unpledge field 1
    Then Inline validation message should be displayed

    Examples:
      | Mobile Number | Date     | Customer Type | Account No |
      | 9545219299    | 13091990 | Individual    | 104175     |




#  Scenario Outline: To verify customer is able to view tooltip under available value  of share section
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When customer is on LAS details page
#    And Verify Additional share repledge
#    And Customer clicks on Additional share repledge under RHS
#    And Select bank
#    And verify tooltip
#    Then Tooltip should be display
#
#    Examples:
#      | Mobile Number | Date       | Customer Type | FAS No |
#      | 9545219299    | 13091990 | Individual    | 104175 |


  @check
  Scenario Outline: To verify when verify all fields and click on Submit CTA
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using FAS No"<Account No>"
    And Customer Click on "Release Securities" CTA in RHS
    Then Verify Customer Redirected to "MyAccountLoanServices/LAS/ShareRelease" Url
    And clicks on Check Box number 1 in Choose a Bank below
    And User enters a value "10" in Shares to Unpledge Input Box 1
    And Clicks on "Submit" Button
    Then OTP Verification title Displayed
#    And Verify "A one time password message in LAS Drawdown OTP Screen" is Displayed
    And verify "Enter OTP" "text" is Displayed
    And Verify "Resend OTP Button" is Displayed
    And "Resend OTP Button" is Disabled
    And Verify "OTP Screen Text box 1" is Displayed
    And Verify "OTP Screen Text box 2" is Displayed
    And Verify "OTP Screen Text box 3" is Displayed
    And Verify "OTP Screen Text box 4" is Displayed
    And Verify "OTP Screen Text box 5" is Displayed
    And Verify "OTP Screen Text box 6" is Displayed
    And Verify "Submit Button in LAS OTP Screen" is Displayed
    And "Submit Button in LAS OTP Screen" is Disabled
    And Clicks on "OTP Close Button in LAS Share Release OTP Screen"

    Examples:
      | Mobile Number | Date     | Customer Type | Account No |
      | 9545219299    | 13091990 | Individual    | 104175     |

  @pass @regcheck
  Scenario Outline: To Verify customer is able to Success screen  when successfully validate all fields
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using FAS No"<Account No>"
    And Customer Click on "Release Securities" CTA in RHS
    Then Verify Customer Redirected to "MyAccountLoanServices/LAS/ShareRelease" Url
    And clicks on Check Box number 1 in Choose a Bank below
    And User enters a value "1" in Shares to Unpledge Input Box 1
    And Clicks on "Submit" Button
    Then OTP Verification title Displayed
    And Enter "1" in "OTP Screen Text box 1"
    And Enter "2" in "OTP Screen Text box 2"
    And Enter "3" in "OTP Screen Text box 3"
    And Enter "4" in "OTP Screen Text box 4"
    And Enter "5" in "OTP Screen Text box 5"
    And Enter "6" in "OTP Screen Text box 6"
    And Clicks on "SUBMIT" Button
#    And wait for page to load
    Then Verify Customer Redirected to "MyAccountLoanServices/LAS/ShareReleaseSuccess" Url
    And verify the Contents in Success Page for Share Release
    And verify the button "done" is displayed in the page
    And Clicks on "done" Button
#    And wait for page to load
    Then Verify Customer Redirected to "MyAccountLoanServices/LAS/LasDetails" Url
    And Relase share CTA should be disabled for 5 min with "<text>" nudge under RHS Quick action
    And Customer Click on "Release Securities" CTA in RHS
    Then Bottom drawer should be  displayed with "<message>"
    And Clicks on "GOT IT" Button

    Examples:
      | Mobile Number | Date     | Customer Type | Account No | text        | message                                                   |
      | 9545219299    | 13091990 | Individual    | 104175     | In Progress | Your request is on progress, Kindly comeback after 5 min. |

    ######OTP Failed Attempts

#  @check
#  Scenario Outline: To verify the Invalid Message OTP Attempts
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User is on Home Page
#    And Customer is able to view My Relations Section to ETB Customers
#    And Customer clicks on view all option
#    And My relations Page should be displayed
#    And click on "Loans" tab
#    And verify Customer is able to go to Service screen from My Relations using FAS No"<Account No>"
#    And Customer Click on "Release Securities" CTA in RHS
#    Then Verify Customer Redirected to "MyAccountLoanServices/LAS/ShareRelease" Url
#    And clicks on Check Box number 1 in Choose a Bank below
#    And User enters a value "10" in Shares to Unpledge Input Box 1
#    And Clicks on "Submit" Button
#    Then OTP Verification title Displayed
#    And Enter "1" in "OTP Screen Text box 1"
#    And Enter "2" in "OTP Screen Text box 2"
#    And Enter "3" in "OTP Screen Text box 3"
#    And Enter "4" in "OTP Screen Text box 4"
#    And Enter "5" in "OTP Screen Text box 5"
#    And Enter "5" in "OTP Screen Text box 6"
#    And Clicks on "SUBMIT" Button
#    And verify "You have entered wrong OTP. 2 attempts left." "Error text" is Displayed
#    And Enter "1" in "OTP Screen Text box 1"
#    And Enter "2" in "OTP Screen Text box 2"
#    And Enter "3" in "OTP Screen Text box 3"
#    And Enter "4" in "OTP Screen Text box 4"
#    And Enter "5" in "OTP Screen Text box 5"
#    And Enter "5" in "OTP Screen Text box 6"
#    And Clicks on "SUBMIT" Button
#    And verify "You have entered wrong OTP. 1 attempt left." "Error text" is Displayed
#    And Enter "1" in "OTP Screen Text box 1"
#    And Enter "2" in "OTP Screen Text box 2"
#    And Enter "3" in "OTP Screen Text box 3"
#    And Enter "4" in "OTP Screen Text box 4"
#    And Enter "5" in "OTP Screen Text box 5"
#    And Enter "5" in "OTP Screen Text box 6"
#    And Clicks on "SUBMIT" Button
#    And verify "You have entered wrong OTP multiple times. Please try again after sometime." "Error text" is Displayed
#
#    Examples:
#      | Mobile Number | Date     | Customer Type | Account No |
#      | 8794430710    | 13091990 | Individual    | 115984     |
#
#
#@check
#  Scenario Outline: To verify resend OTP CTA is enable after 60 seconds and timer is decrementing from 60 secs
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User is on Home Page
#    And Customer is able to view My Relations Section to ETB Customers
#    And Customer clicks on view all option
#    And My relations Page should be displayed
#    And click on "Loans" tab
#    And verify Customer is able to go to Service screen from My Relations using FAS No"<Account No>"
#    And Customer Click on "Release Securities" CTA in RHS
#    Then Verify Customer Redirected to "MyAccountLoanServices/LAS/ShareRelease" Url
#    And clicks on Check Box number 1 in Choose a Bank below
#    And User enters a value "10" in Shares to Unpledge Input Box 1
#    And Clicks on "Submit" Button
#    And Verify "Disable Resend OTP Button" is Displayed
#    And Wait 60 seconds
#    And Verify "Enable Resend OTP Button" is Displayed
#
#    Examples:
#      | Mobile Number | Date     | Customer Type | Account No | OTP    |
#      | 8794430710    | 13091990 | Individual    | 115984     | 111111 |









######ShortFall


#
#  @Share
#  Scenario Outline: To verify customer  Share release request is  accepted if loan account is in excess positon  & not in shortfall
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When customer is on LAS details page
#    And Verify release share repledge
#    And Customer clicks on release share repledge under RHS
#    And Select share
#    And Customer excess must be more than equals to 50% LTV
#    And Enter  securities value above 50%  under Share to unpledged
#    Then share release request should be accepted and below acceptance message should be displayed <Your pledge request has been accepted>
#
#    Examples:
#      | Mobile Number | Date     | Customer Type | FAS No | message                               |
#      | 9545219299    | 13091990 | Individual    | 104175 | Your pledge request has been accepted |
#
#
#  Scenario Outline: To verify customer  Share release request is  accepted if loan account is in shortfall position and  not in excess positon
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When customer is on LAS details page
#    And Verify release share repledge
#    And Customer clicks on release share repledge under RHS
#    And Select share
#    And Customer excess must be less than  50% LTV
#    And Enter  securities value below 50%  under Share to unpledged
#    Then  Share release request should not be accepted and  popup message should be displayed with two CTA Cancel and Procced to Pay
##  <Unable to proceed. Your pledge request cannot be processed. Please regularize by paying shortfall of Rs.30,000 (value fetch from API )or pledge additional securities >
#
#    Examples:
#      | Mobile Number | Date     | Customer Type | FAS No | message                                                                                                                                                               |
#      | 9545219299    | 13091990 | Individual    | 104175 | Unable to proceed. Your pledge request cannot be processed. Please regularize by paying shortfall of Rs.30,000 (value fetch from API )or pledge additional securities |
#
#
#  Scenario Outline: To verify when customer click on Cancel CTA of popup
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When customer is on LAS details page
#    And Verify release share repledge
#    And Customer clicks on release share repledge under RHS
#    And Select share
#    And Customer excess must be less than  50% LTV
#    And Enter  securities value below 50%  under Share to unpledged
#    And Click on Cancel button from unable proceed popup
#    Then Request should be cancelled & user should  be redirected to the landing page
#
#    Examples:
#      | Mobile Number | Date     | Customer Type | FAS No |
#      | 9545219299    | 13091990 | Individual    | 104175 |
#
#  Scenario Outline: To verify when customer click on Procced to Pay CTA of popup
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When customer is on LAS details page
#    And Verify release share repledge
#    And Customer clicks on release share repledge under RHS
#    And Select share
#    And Customer excess must be less than  50% LTV
#    And Enter  securities value below 50%  under Share to unpledged
#    And Click on Procced to Pay button from unable proceed popup
#    Then Customer should be redirection to “make a payment” screen
#
#    Examples:
#      | Mobile Number | Date     | Customer Type | FAS No |
#      | 9545219299    | 13091990 | Individual    | 104175 |
#
#  Scenario Outline: To verify when request not accepted,Drawdown message is displayed
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When customer is on LAS details page
#    And Verify release share repledge
#    And Customer clicks on release share repledge under RHS
#    And Select share
#    And Customer excess must be less than  or  More than 50% LTV
#    And Enter  securities value  under Share to unpledged
#    Then Error message popup should be displayed to the customer with GOT IT CTA
#  <Your release request could not be processed as value of securities is higher than permitted value. Please try again with lower value of securities>
#
#    Examples:
#      | Mobile Number | Date       | Customer Type | FAS No | Error Message                                                                                                                                      |
#      | 9545219299    | 13091990 | Individual    | 104175 | Your release request could not be processed as value of securities is higher than permitted value. Please try again with lower value of securities |
#
#  Scenario Outline: To verify when customer click on GOT IT CTA of popup
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When customer is on LAS details page
#    And Verify release share repledge
#    And Customer clicks on release share repledge under RHS
#    And Select share
#    And Customer excess must be less than  or  More than 50% LTV
#    And Enter  securities value  under Share to unpledged
#    And Click on GOT IT button from Error message popup
#    Then Customer should be redirected to  release shares screen where they should be revise his securities detail
#
#    Examples:
#      | Mobile Number | Date       | Customer Type | FAS No |
#      | 9545219299    | 13091990 | Individual    | 104175 |
#
#  Scenario Outline: To verify once request succefully raised,Relase share CTA is disble under RHS Quick action
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When customer is on LAS details page
#    And Verify release share repledge
#    And Customer clicks on release share repledge under RHS
#    And Select share
#    And Customer excess must be More than 50% LTV
#    And Enter  securities value more than 50 %  under Share to unpledged
#    And Click on Submit
#    And Enter OTP
#    And Submit OTP
#    And Click on Done button and back to LAS Details page
#    Then Once request succefully raised,Relase share CTA should be disble for 5 mins with In progress nudge under RHS Quick action
#
#    Examples:
#      | Mobile Number | Date       | Customer Type | FAS No | Nudge       |
#      | 9545219299    | 13091990 | Individual    | 104175 | In Progress |
#
#  Scenario Outline: To verify when click Release share CTA after 5 mins
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When customer is on LAS details page
#    And Verify release share repledge
#    And Customer clicks on release share repledge under RHS
#    And Select share
#    And Customer excess must be More than 50% LTV
#    And Enter  securities value more than 50 %  under Share to unpledged
#    And Click on Submit
#    And Enter OTP
#    And Submit OTP
#    And Click on Done button and back to LAS Details page
#    And Click on release share under quick action
#    Then Bottom drawer should be appear with something like -  <Your request is on progress, Kindly comeback after 5 min >
#
#    Examples:
#      | Mobile Number | Date       | Customer Type | FAS No | message                                                  |
#      | 9545219299    | 13091990 | Individual    | 104175 | Your request is on progress, Kindly comeback after 5 min |
#
#
#  Scenario Outline: To verify  Informative popup is displayed when click on Release share CTA
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When customer is on LAS details page
#    And Verify release share repledge
#    And Customer clicks on release share repledge under RHS
#    And Select share
#    And Customer excess must be More than 50% LTV
#    And Enter  securities value more than 50 %  under Share to unpledged
#    And Click on Submit
#    And Enter OTP
#    And Submit OTP
#    And Click on Done button and back to LAS Details page
#    And Click on release share under quick action
#    Then Informative popup should be displayed <The values visible per share maybe 10-15 min old, so there can be difference in actual value>
#
#    Examples:
#      | Mobile Number | Date       | Customer Type | FAS No | message                                                                                      |
#      | 9545219299    | 13091990 | Individual    | 104175 | The values visible per share maybe 10-15 min old, so there can be difference in actual value |


