Feature: OTP New
@OTPFor
  Scenario Outline: verify that Mobile number is in mask format on OTP popup
    Given User is on Login Page
    When User clicks on Sign in CTA
    And Enters Mobile Number and Date of Birth "<Mob>" "<DOB>"
    And Click on Get OTP
    Then Mobile number should be in mask format on OTP popup "<Mob>"
    Examples:
      | Mob       | DOB       |
      | 9425156052 | 17/03/1961 |
  @OTP
  Scenario Outline: verify that customer redirects to login popup on click of change CTA
    Given User is on Login Page
    When User clicks on Sign in CTA
    And Enters Mobile Number and Date of Birth "<Mob>" "<DOB>"
    And Click on Get OTP
    And Click on Change
    Then Customer should be redirected to login popup window
    Examples:
      | Mob       | DOB       |
      | 9425156052 | 17/03/1961 |
  @OTP
  Scenario Outline: verify that timer on OTP popup is visible and  shows decremented value from 60 secs
    Given User is on Login Page
    When User clicks on Sign in CTA
    And Enters Mobile Number and Date of Birth "<Mob>" "<DOB>"
    And Click on Get OTP
    Then Timer on OTP popup should be visible and value should be decremented from 60 secs
    Examples:
      | Mob       | DOB       |
      | 9425156052 | 17/03/1961 |

  @OTP
  Scenario Outline: To verify that Resend OTP CTA is disabled for 60 sec
    Given User is on Login Page
    When User clicks on Sign in CTA
    And Enters Mobile Number and Date of Birth "<Mob>" "<DOB>"
    And Click on Get OTP
    Then Resend CTA should be disabled for 60 sec
    Examples:
      | Mob       | DOB       |
      | 9425156052 | 17/03/1961 |


  @OTP
  Scenario Outline: verify that validation message is displayed when customer clicks resend OTP before 120 sec and enter OTP after 120 sec
    Given User is on Login Page
    When User clicks on Sign in CTA
    And Enters Mobile Number and Date of Birth "<Mob>" "<DOB>"
    And Click on Get OTP
    And Click on Resend OTP before 120 sec
    And Enter OTP after 120 sec
    And Click on Submit
    Then Validation message should be displayed correctly "<Msg>"
    Examples:
      | Mob       | DOB         |            Msg       |
      | 9425156052 | 17/03/1961 |    Verification failed. Please try again.   |
  @OTP
  Scenario Outline: verify that validation message is displayed when customer Enters wrong DOB or Wrong OTP
    Given User is on Login Page
    When User clicks on Sign in CTA
    And Enters random generated Mobile Number and Date of Birth "<Mob>" "<DOB>"
    And Click on Get OTP
    And Enters "<OTP>"
    And Click on Submit
    Then Validation message should be displayed correctly "<Msg>"
    Examples:
      | Mob       | DOB       | OTP       |     Msg    |
      | 8096962175 | 17/03/1961 |  123123 | You have entered wrong OTP. 2 attempts left. |

  @OTPs
  Scenario Outline:  verify that Account is locked for 3 min when customer tries three wrong attempt for 1st time
    Given User is on Login Page
    When User clicks on Sign in CTA
    And Enters random generated Mobile Number and Date of Birth "<Mob>" "<DOB>"
    And Click on Get OTP
    And Enters "<OTP>"
    And Click on Submit
    And Enters "<OTP>"
    And Click on Submit
    And Enters "<OTP>"
    And Click on Submit
    Then Customer should not able to login for 3 mins and below message should be displayed Account temporary locked for 3 minutes.
    Examples:
      | Mob       | DOB       | OTP |
      | 9425156052 | 17/03/1961 |  123123 |

   @ResendK
  Scenario Outline: Verify that validation message is displayed when customer clicks resend OTP for 3rd time
    Given User is on Login Page
    When User clicks on Sign in CTA
    And Enters random generated Mobile Number and Date of Birth "<Mob>" "<DOB>"
    And Click on Get OTP
    And Click Resend OTP after 60 sec
    And Click Resend OTP after 60 sec
    And Click Resend OTP after 60 sec
     Then Validation message should be displayed "<Msg>"
     Then Verify Resend otp is disabled state and grayed out.
    Examples:
      | Mob       | DOB       | Msg |
      | 9425156052 | 17/03/1961 | You have exhausted all the attempts to confirm. Please try after some time. |


  @New
  Scenario Outline: Verify that validation message is displayed when customer close active session window abruptly
    Given User is on Login Page
    When User clicks on Sign in CTA
    And Enters Mobile Number and Date of Birth "<Mob>" "<DOB>"
    And Click on Get OTP
    And Enters "<OTP>"
    And Click on Submit
    When User is on Home Page
   # And user close active session abruptly
    Given User is on Login Page
    And User clicks on Sign in CTA
    And Enters Mobile Number and Date of Birth "<Mob>" "<DOB>"
    And Click on Get OTP
    And Enters "<OTP>"
    And Click on Submit
    Then Validation message should be displayed correctly "<Msg>"
    Examples:
      | Mob       | DOB       | Msg |OTP |
      | 9425156052 | 17/03/1961 | Your previous session was either terminated incorrectly or is currently active. Please try again after sometime. | 123456|



# Unlock Scenarios are on hold

#  @Unlock
#  Scenario Outline: verify that customer is redirecting to unlock account page when customer clicks on Unlock Now CTA
#    Given User is on Login Page
#    When User clicks on Sign in CTA
#    And Enters Mobile Number and Date of Birth "<Mob>" "<DOB>"
#    And Click on Get OTP
#    And Click on Unlock Now
#    Then Customer should be redirected to unlock account page and content should be displayed "Mobile/Email ID Field" "DOB/DOI Field" "Get OTP CTA"
#    Examples:
#      | Mob       | DOB       |
#      | 9167205719 | 07-06-1991 |
#  @Unlock
#  Scenario Outline: verify that OTP popup window is visible when customer clicks on Get OTP CTA of Unlock Account popup
#    Given User is on Login Page
#    When User clicks on Sign in CTA
#    And Enters Mobile Number and Date of Birth "<Mob>" "<DOB>"
#    And Click on Get OTP
#    And Click on Unlock Now
#    And Enters Mobile Number and Date of Birth "<Mob>" "<DOB>"
#    And Click on Get OTP
#    Then OTP popup window should be visible
#    Examples:
#      | Mob       | DOB       |
#      | 9167205719 | 07-06-1991 |
#
#  @Unlock
#  Scenario Outline:  verify that verification popup is visible when customer clicks on submit CTA
#    Given User is on Login Page
#    When User clicks on Sign in CTA
#    And Enters Mobile Number and Date of Birth "<Mob>" "<DOB>"
#    And Click on Get OTP
#    And Click on Unlock Now
#    And Enters Mobile Number and Date of Birth "<Mob>" "<DOB>"
#    And Click on Get OTP
#    And Enter "<OTP>"
#    And Click on Submit
#    Then Verification popup should be visible with Content "Bank Account Number (option 1)" "EMI card number (Option 2)" "Text Field" "Verify CTA"
#    Examples:
#      | Mob       | DOB       | OTP |
#      | 9167205719 | 07-06-1991 | 123456 |
#  @Unlock
#  Scenario Outline: verify that validation message is displayed when customer enters wrong input in bank account number
#    Given User is on Login Page
#    When User clicks on Sign in CTA
#    And Enters Mobile Number and Date of Birth "<Mob>" "<DOB>"
#    And Click on Get OTP
#    And Click on Unlock Now
#    And Enters Mobile Number and Date of Birth "<Mob>" "<DOB>"
#    And Click on Get OTP
#    And Enter "<OTP>"
#    And Click on Submit
#    And Enter Value in Bank account number field "<Val1>" "<Val2>" "<Val3>"
#    Then Validation message should be displayed
#    Examples:
#      | Mob        | DOB       | OTP    | Val1 | Val2    | Val3  |
#      | 9167205719 | 07-06-1991 | 123456 |asdff | 0000000 | ';  @#|
#  @Unlock
#  Scenario Outline: verify that validation message is displayed when customer enters wrong input in EMI card number
#    Given User is on Login Page
#    When User clicks on Sign in CTA
#    And Enters Mobile Number and Date of Birth "<Mob>" "<DOB>"
#    And Click on Get OTP
#    And Click on Unlock Now
#    And Enters Mobile Number and Date of Birth "<Mob>" "<DOB>"
#    And Click on Get OTP
#    And Enter "<OTP>"
#    And Click on Submit
#    And Click on EMI card Number CTA
#    And Enter Value in EMI card Number field "<Val1>" "<Val2>" "<Val3>"
#    Then Validation message should be displayed
#    Examples:
#      | Mob        | DOB       | OTP    | Val1 | Val2    | Val3  |
#      | 9167205719 | 07-06-1991 | 123456 |asdff | 0000000 | ';  @#|
#  @Unlock
#  Scenario Outline: verify that customer is able to view Unlock message popup with Login CTA when verified successfully "Bank Account"
#    Given User is on Login Page
#    When User clicks on Sign in CTA
#    And Enters Mobile Number and Date of Birth "<Mob>" "<DOB>"
#    And Click on Get OTP
#    And Click on Unlock Now
#    And Enters Mobile Number and Date of Birth "<Mob>" "<DOB>"
#    And Click on Get OTP
#    And Enter "<OTP>"
#    And Click on Submit
#    And Enter Bank Account Number "<Acc No>"
#    And Click on Verify
#    Then Customer should be able to view  Login popup window
#    Examples:
#      | Mob        | DOB       | OTP    | Acc No |
#      | 9167205719 | 07-06-1991 | 123456 | 51010664891|
#  @Unlock
#  Scenario Outline: verify that customer is able to view Unlock message popup with Login CTA when verified successfully "EMI card"
#    Given User is on Login Page
#    When User clicks on Sign in CTA
#    And Enters Mobile Number and Date of Birth "<Mob>" "<DOB>"
#    And Click on Get OTP
#    And Click on Unlock Now
#    And Enters Mobile Number and Date of Birth "<Mob>" "<DOB>"
#    And Click on Get OTP
#    And Enter "<OTP>"
#    And Click on Submit
#    And Click on EMI card Number CTA
#    And Enter EMI card number "<EMI Card>"
#    And Click on Verify
#    Then Customer should be able to view Login popup window
#    Examples:
#      | Mob        | DOB       | OTP    | EMI Card |
#      | 9167205719 | 07-06-1991 | 123456 | 2030400189134465 |
#
#  @Unlock
#  Scenario Outline: verify that customer is able to view login popup window on click of login CTA of unlock message popup Window
#    Given User is on Login Page
#    When User clicks on Sign in CTA
#    And Enters Mobile Number and Date of Birth "<Mob>" "<DOB>"
#    And Click on Get OTP
#    And Click on Unlock Now
#    And Enters Mobile Number and Date of Birth "<Mob>" "<DOB>"
#    And Click on Get OTP
#    And Enter "<OTP>"
#    And Click on Submit
#    And Enter Bank Account Number "<Acc No>"
#    And Click on Verify
#    And Click on Login CTA
#    Then Customer should be able to view Login popup window
#    Examples:
#      | Mob        | DOB       | OTP    | Acc No |
#      | 9167205719 | 07-06-1991 | 123456 | 51010664891 |
#
#  @Unlock
#  Scenario Outline: verify that customer is able to view unlock unsuccessful message when verified unsuccessful
#    Given User is on Login Page
#    When User clicks on Sign in CTA
#    And Enters Mobile Number and Date of Birth "<Mob>" "<DOB>"
#    And Click on Get OTP
#    And Click on Unlock Now
#    And Enters Mobile Number and Date of Birth "<Mob>" "<DOB>"
#    And Click on Get OTP
#    And Enter "<OTP>"
#    And Click on Submit
#    And Enter Bank Account Number "<Acc No>"
#    And Click on Verify
#    Then Customer should be able view unlock unsuccessful message With "Raise A Request" and "Retry" CTA
#    Examples:
#      | Mob        | DOB       | OTP    | Acc No |
#      | 9167205719 | 07-06-1991 | 123456 | 12121212121212 |
#
#@Unlock
#  Scenario Outline: verify that customer is able to start unlock journey when they clicks on Retry CTA
#    Given User is on Login Page
#    When User clicks on Sign in CTA
#    And Enters Mobile Number and Date of Birth "<Mob>" "<DOB>"
#    And Click on Get OTP
#    And Click on Unlock Now
#    And Enters Mobile Number and Date of Birth "<Mob>" "<DOB>"
#    And Click on Get OTP
#    And Enter "<OTP>"
#    And Click on Submit
#    And Enter Bank Account Number "<Acc No>"
#    And Click on Verify
#    And Click on Retry
#    Then Customer should be able to start unlock journey
#    Examples:
#      | Mob        | DOB       | OTP    | Acc No |
#      | 9167205719 | 07-06-1991 | 123456 | 12121212121212   |
#



    #Mobile Browser

#  @NotInScope
#  Scenario Outline: verify that same OTP triggers for 120 sec
#    Given User is on Login Page
#    When User clicks on Sign in CTA
#    And Enters Mobile Number and Date of Birth "<Mob>" "<DOB>"
#    And Click on Get OTP
#    And Click on Resend OTP after 60 sec
#    Then Same OTP should be triggered
#    Examples:
#      | Mob       | DOB       |
#      | 9425156052 | 17/03/1961 |
#  @NotInScope
#  Scenario Outline: verify that different OTP is triggered after 120 sec
#    Given User is on Login Page
#    When User clicks on Sign in CTA
#    And Enters Mobile Number and Date of Birth "<Mob>" "<DOB>"
#    And Click on Get OTP
#    And Click on Resend OTP after 120 sec
#    Then Different OTP should be triggered
#    Examples:
#      | Mob       | DOB       |
#      | 9425156052 | 17/03/1961 |

#  Scenario Outline:verify that Login pop-in with a CTA on RHS header is displaying for 10 sec
#    Given User is on Login Page
#    Then Sign in popup should be displayed for 10 sec
#    And Sign in popup should be disappeared after 10 sec
#    Examples:
#
#
#  Scenario Outline:verify that Login popup opens on click of Login CTA
#    Given User is on Login Page
#    When User clicks on Sign in CTA
#    Then Login popup should be displayed
#    Examples:
#
#
#  Scenario Outline:verify that customer is able to view tab on login pop-up
#    Given User is on Login Page
#    When User clicks on Sign in CTA
#    Then Customer should be able to view "Individual" "Corporate/Business" "NRI" tab on login popup
#    Examples:
#
#  Scenario Outline: verify that customer is able to view content on Individual tab of login pop-up
#    Given User is on Login Page
#    When User clicks on Sign in CTA
#    Then Customer should be able to view "Mobile Number" "Date of Birth" "Get OTP" content on Individual tab of login popup
#    Examples:
#
#  Scenario Outline: verify validation message is displaying when customer enters wrong input in mobile number field
#    Given User is on Login Page
#    When User clicks on Sign in CTA
#    And Enters Wrong input in mobile number field "<Val1>" "<Val2>" "<Val3>"
#    Then Customer should be able to view "<Msg1>" "<Msg2>" "<Msg3>" validation messages
#
#    Examples:
#      | Val1       | Val2       | Val3   | Msg1 							| Msg2									| Msg3							   |
#      | Asdf121222 | 1234567890 | 855855 | Only Numerical Values allowed | Please enter valid 10-digit Mobile Number | Please enter valid Mobile Number |
#
#
#  Scenario Outline:verify validation message is displaying when customer enters wrong input in DOB field
#    Given User is on Login Page
#    When User clicks on Sign in CTA
#    And Enters Wrong input in Date of Birth field "<Val1>" "<Val2>" "<Val3>"
#    Then Customer should be able to view validation messages
#
#    Examples:
#      | Val1       | Val2       | Val3   |
#      | 32/32/3232 | 00/00/0000 | hhhjkihhj |
#
#  Scenario Outline:  verify that on click on GET OTP CTA, OTP popup window is visible
#    Given User is on Login Page
#    When User clicks on Sign in CTA
#    And Enters Mobile Number and Date of Birth "<Mob>" "<DOB>"
#    And Click on Get OTP
#    Then OTP popup should be displayed
#    Examples:
#      | Mob       | DOB       |
#      | 9425156052 | 17/03/1961 |
#
#  Scenario Outline: verify that OTP is auto read and pre-filled
#    Given User is on Login Page
#    When User clicks on Sign in CTA
#    And Enters Mobile Number and Date of Birth "<Mob>" "<DOB>"
#    And Click on Get OTP
#    Then OTP should be auto-read and field should pre-filled
#    Examples:
#      | Mob       | DOB       |
#      | 9425156052 | 17/03/1961 |
#
#  Scenario Outline: verify that Customer can manually enter OTP when auto-read functionality doesn’t work
#    Given User is on Login Page
#    When User clicks on Sign in CTA
#    And Enters Mobile Number and Date of Birth "<Mob>" "<DOB>"
#    And Click on Get OTP
#    And Enter "<OTP>"
#    Then Customer should be able to enter OTP manually
#    Examples:
#      | Mob       | DOB       | OTP |
#      | 9425156052 | 17/03/1961 | 123456 |
#
#  Scenario Outline:verify that Customer is landing to home page on click of Submit button
#    Given User is on Login Page
#    When User clicks on Sign in CTA
#    And Enters Mobile Number and Date of Birth "<Mob>" "<DOB>"
#    And Click on Get OTP
#    And Click on Submit
#    Then Customer should be landed on home page
#    Examples:
#      | Mob       | DOB       |
#      | 9425156052 | 17/03/1961 |