Feature: Login Fields Verification

  @let
Scenario Outline:verify that Login pop-in with a CTA on RHS header is displaying for 10 sec
Given User is on Login Page
Then Sign in popup should be displayed for 10 sec
And Sign in popup should be disappeared after 10 sec

Examples:
| Mobile Number | Date     | Customer Type |
| 9890801661    | 26051982 | Individual    |


  @let
  Scenario Outline: verify that Login popup opens on click of Login CTA
    Given User is on Login Page
    When User clicks on Sign in CTA
    Then Login popup should be displayed

    Examples:
      | Mobile Number | Date     | Customer Type |
      | 9890801661    | 26051982 | Individual    |

  @let
  Scenario Outline:verify that customer is able to view tab on login pop-up
    Given User is on Login Page
    When User clicks on Sign in CTA
    Then Customer should be able to view Individual Corporate/Business NRI tab on login popup
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 9890801661    | 26051982 | Individual    |

  @let
  Scenario Outline:verify that customer is able to view content on Individual tab of login pop-up
    Given User is on Login Page
    When User clicks on Sign in CTA
    Then Customer should be able to view Mobile Number Date of Birth Get OTP content on Individual tab of login popup
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 9890801661    | 26051982 | Individual    |

  @ContentP
  Scenario Outline: verify that customer is able to view content on Corporate/Business tab of login pop-up
    Given User is on Login Page
    When User clicks on Sign in CTA
    And Clicks on Corporate/Business tab
    Then Customer should be able to view Mobile Number/Email ID Date of Incorporation Get OTP content on login popup
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 9890801661    | 26051982 | Individual    |

  @ContentP
  Scenario Outline: verify that customer is able to view content on NRI tab of login pop-up
    Given User is on Login Page
    When User clicks on Sign in CTA
    And Clicks on NRI tab
    Then Customer should be able to view Mobile Number/Email ID Date of Birth Get OTP content on NRI tab of login popup

    Examples:
      | Mobile Number | Date     | Customer Type |
      | 9890801661    | 26051982 | Individual    |
  @let
  Scenario Outline: verify validation message is displaying when customer enters wrong input in mobile number field
    Given User is on Login Page
    When User clicks on Sign in CTA
    And Enters Wrong input in mobile number field "<Val>"
    Then Customer should be able to view "<Msg>" validation messages

    Examples:
      | Val        |        Msg					    |
      | Asdf121222 | Please enter a valid 10-digit mobile number  |
      |  82358|Please enter a valid 10-digit mobile number |
      |    1234567890  |Enter valid date |
  @let
  Scenario Outline:verify validation message is displaying when customer enters wrong input in DOB field
    Given User is on Login Page
    When User clicks on Sign in CTA
    And Enters Wrong input in Date of Birth field "<Val>"
    Then Customer should be able to view  DOB "<Msg>" validation messages

    Examples:
      | Val        |        Msg		 |
      | 32/32/3232 | Enter valid date |
      |100/00/0000  |Enter valid date |
      | hhhjkihhj56   |Enter valid date |
@let
  Scenario Outline:  verify that on click on GET OTP CTA OTP popup window is visible
    Given User is on Login Page
    When User clicks on Sign in CTA
    And Enters Mobile Number and Date of Birth "<Mob>" "<DOB>"
    And Click on Get OTP
    Then OTP popup should be displayed
    Examples:
      | Mob       | DOB       |
      | 9582898063 | 27/11/1995|
      | 9960820670 | 01/01/2002 |
      | 9425156052 | 17/03/1961 |

@let
  Scenario Outline: verify that customer is able to view content on OTP pop-up
    Given User is on Login Page
    When User clicks on Sign in CTA
    And Enters Mobile Number and Date of Birth "<Mob>" "<DOB>"
    And Click on Get OTP
    Then Customer should be able to view content on OTP pop-up "<Mob>"
    Examples:
      | Mob       | DOB       |
      | 9582898063 | 27/11/1995|
     # | 9960820670 | 01/01/2002 |
      | 9425156052 | 17/03/1961 |
  @FailRegKK
  Scenario Outline: verify that Term & condition opens when customer click on Term & condition
    Given User is on Login Page
    When User clicks on Sign in CTA
    And Enters Mobile Number and Date of Birth "<Mob>" "<DOB>"
    And Click on Get OTP
    And Click on Term & Conditions
    Then Term & condition should be opened
    Examples:
      | Mob       | DOB       |
      | 9582898063 | 27/11/1995|
    #  | 9960820670 | 01/01/2002 |
      | 9425156052 | 17/03/1961 |
@privacyPolicy
  Scenario Outline: verify that Privacy Policy opens when customer click on  Privacy Policy
    Given User is on Login Page
    When User clicks on Sign in CTA
    And Enters Mobile Number and Date of Birth "<Mob>" "<DOB>"
    And Click on Get OTP
    And Click on Privacy Policy
    Then Privacy Policy should be opened
    Examples:
      | Mob       | DOB       |
      | 9582898063 | 27/11/1995|
    #  | 9960820670 | 01/01/2002 |
      | 9425156052 | 17/03/1961 |


  @let
  Scenario Outline: verify that customer is able to view FAQs when he clicks on Need help
    Given User is on Login Page
    When User clicks on Sign in CTA
    And Enters Mobile Number and Date of Birth "<Mob>" "<DOB>"
    And Click on Get OTP
    And Click on need help
    Then Customer should be able to view FAQs
    Examples:
      | Mob       | DOB       |
      | 9582898063 | 27/11/1995|
      | 9960820670 | 01/01/2002 |
      | 9425156052 | 17/03/1961 |

@NewOtpmessage
  Scenario Outline:  verify that validation message is displaying when customer enters Wrong input in OTP field Wrong input in OTP field for 1st time
    Given User is on Login Page
    When User clicks on Sign in CTA
    And Enters random generated Mobile Number and Date of Birth "<Mob>" "<DOB>"
   # And Enters Mobile Number and Date of Birth "<Mob>" "<DOB>"
    And Click on Get OTP
    And Enters Wrong "<OTP>"
    And Click on Submit
  Then Validation message should be displayed correctly "<Msg>"
    Examples:
      | Mob       | DOB       | OTP| Msg |
   #   | 9582898063 | 27/11/1995| 111111 | You have entered wrong OTP. 2 attempts left. |
      | 8096962175 | 01/01/2002 | 111111 | Invalid OTP. Only 2 attempts remaining. |
      | 8341066905 | 17/03/1961 | 111111 | Invalid OTP. Only 2 attempts remaining. |

  @NewOtpmessage
  Scenario Outline:  verify that validation message is displaying when customer enters Wrong input in OTP field Wrong input in OTP field for 2nd time
    Given User is on Login Page
    When User clicks on Sign in CTA
    And Enters random generated Mobile Number and Date of Birth "<Mob>" "<DOB>"
   # And Enters Mobile Number and Date of Birth "<Mob>" "<DOB>"
    And Click on Get OTP
    And Enters Wrong "<OTP>"
    And Click on Submit
    And Enters Wrong "<OTP>"
    And Click on Submit
    Then Validation message should be displayed correctly "<Msg>"
    Examples:
      | Mob       | DOB       | OTP| Msg |
      | 9582898063 | 27/11/1995| 111111 | Invalid OTP. Only 1 attempt remaining. |
      | 8096962175 | 01/01/2002 | 111111 | Invalid OTP. Only 1 attempt remaining. |
      | 8341066905 | 17/03/1961 | 111111 | Invalid OTP. Only 1 attempt remaining. |


@FieldK
  Scenario Outline: verify that customer redirect to home page when enters valid DOB and OTP
    Given User is on Login Page
    When User clicks on Sign in CTA
    And Enters Mobile Number and Date of Birth "<Mob>" "<DOB>"
    And Click on Get OTP
    And Enters "<OTP>"
    And Click on Submit
    Then Customer should be redirected to home page
    Examples:
      | Mob       | DOB       | OTP|
      | 9582898063 | 27/11/1995| 123456 |
      #| 9960820670 | 01/01/2002 | 123456 |
      | 9425156052 | 17/03/1961 | 123456 |


  @ContentP
  Scenario Outline: Verify customer is able to login when they have multi cust id, mailing address is Y for both  cust id and same entity
    Given User is on Login Page
    When User clicks on Sign in CTA
    And Enters Mobile Number and Date of Birth "<Mob>" "<DOB>"
    And Click on Get OTP
    And Enters "<OTP>"
    And Click on Submit
    Then dropdown should be displayed with multi customer IDs
    Examples:
      | Mob       | DOB       | OTP |
      | 9075095998 | 02022002 | 123456 |
#@NotinScope
#Scenario Outline: Verify customer is able to login when they have multi cust id, mailing address is Y for both  cust id and different entity
#    Given User is on Login Page
#    When User clicks on Sign in CTA
#    And Enters Mobile Number and Date of Birth "<Mob>" "<DOB>"
#    And Click on Get OTP
#    And Enters "<OTP>"
#    And Click on Submit
#    And Select Customer id from dropdown "<SelectedCustType>"
#  Then Customer should be landed to home page with the  selected customer type "<SelectedCustType>"
#  When User logouts application
#  Examples:
#    | Mob       | DOB       | OTP | SelectedCustType |
#    | 9849002056 | 02022002 | 123456 | 10892801 |
  @FailRegK
  Scenario Outline: verify that validation message is displayed when Corporate customer try to logged in through Individual tab
    Given User is on Login Page
    When User clicks on Sign in CTA
    And Enters Mobile Number and Date of Birth "<Mob>" "<DOB>"
    And Click on Get OTP
    And Enters "<OTP>"
    And Click on Submit
    Then Validation message should be displayed "<Msg>"
    Examples:
      | Mob       | DOB         | OTP    | Msg |
      | 7756008269 | 01/02/2009 | 123456 |  Please try login with registered details   |

 @WorkingInd
  Scenario Outline: verify that ETB customer logged in as Guest when Individual NRI customer try to logged in through individual tab
    Given User is on Login Page
    When User clicks on Sign in CTA
   # And Click on NRI tab
    And Enters Mobile Number and Date of Birth "<Mob>" "<DOB>"
    And Click on Get OTP
    And Enters "<OTP>"
    And Click on Submit
    Then Individual NRI customer should be logged in as guest
   # When User logouts application
   Examples:
      | Mob       | DOB       | OTP |
      | 9871864642 | 03/07/1973 | 123456 |

  Scenario Outline: verify that validation message is displayed when Corporate NRI customer try to logged in through individual tab
    Given User is on Login Page
    When User clicks on Sign in CTA
    And Enters Mobile Number and Date of Birth "<Mob>" "<DOB>"
    And Click on Get OTP
    And Enters "<OTP>"
    And Click on Submit
    Then Validation message should be displayed "<Msg>"
    Examples:
      | Mob       | DOB       | OTP | Msg |
      | 9872710029 | 03/07/1973 | 123456 |Please try login with registered details |


  @Multicust
  Scenario Outline:  verify dropdown of multi cust id journey is visible and clickable
    Given User is on Login Page
    When User clicks on Sign in CTA
    And Enters Mobile Number and Date of Birth "<Mob>" "<DOB>"
    And Click on Get OTP
    And Enters "<OTP>"
    And Click on Submit
    Then Popup with dropdown having all cust ids linked to logged in mobile number should be displayed "<CustDropDown>"
    When User clicks on dropdown
    Then Dropdown should be clickable "<CustID>"

    Examples:
      | Mob       | DOB       | OTP      | CustID  | CustDropDown |
      | 9989773345 | 11/01/1993 | 123456 |    277  |   277#185 |
@FieldK
  Scenario Outline: Verify customer is redirecting to homepage for selected cust ID
    Given User is on Login Page
    When User clicks on Sign in CTA
    And Enters Mobile Number and Date of Birth "<Mob>" "<DOB>"
    And Click on Get OTP
    And Enters "<OTP>"
    And Click on Submit
    And Select Customer id from dropdown "<CustID>"
    Then Customer should be redirected to home page
    Examples:
      | Mob       | DOB       | OTP     |CustID |
      | 9989773345 | 11/01/1993 | 123456 | 185 |
  @Multicust
  Scenario Outline: verify muti cust id journey get cancels when customer clicks on cross(x) icon of muti cust ID popup
    Given User is on Login Page
    When User clicks on Sign in CTA
    And Enters Mobile Number and Date of Birth "<Mob>" "<DOB>"
    And Click on Get OTP
    And Enters "<OTP>"
    And Click on Submit
    And Click on cross(x) CTA of popup
    Then Customer should be redirected to login homepage
    Examples:
      | Mob       | DOB       | OTP     |
      | 9989773345 | 11/01/1993 | 123456 |
#@DataNotAvailable
#  Scenario Outline: verify customer is able to login when they have multi cust id, mailing address is ‘Y’ for both cust id and have different entity "Individual"
#    Given User is on Login Page
#    When User clicks on Sign in CTA
#    And Enters Mobile Number and Date of Birth "<Mob>" "<DOB>"
#    And Click on Get OTP
#    And Enters "<OTP>"
#    And Click on Submit
#    Then Customer should be landed to home page with selected customer type "<CustID>"
#    Examples:
#      | Mob       | DOB       | OTP     |CustID |
#      | 9989773345 | 20/05/1971 | 123456 | 185 |



 #Corporate/Business

@ContentP
  Scenario Outline:  verify validation message is displaying when customer enters wrong input in DOI  Mobile number/Email-ID field Corporate Business
    Given User is on Login Page
    When User clicks on Sign in CTA
    And Clicks on Corporate/Business tab
    And Enters Wrong input in Date of Incorporation field "<Val>"
  And Enters Wrong input in Date of Incorporation  Date field "<Val2>"
    And Click on Get OTP
    Then Customer should be able to view Date of Incorporation validation messages "<Msg>"
    Examples:
      | Val        |        Msg					    | Val2|
      | Asdf121222 | Please enter your mobile number/email ID  | 12121999|
      |  experia@gmail |Please enter your mobile number/email ID |12121999|
      |    1234567890  |Please enter your mobile number/email ID | 12121999|

  @Pass
  Scenario Outline:  verify validation message is displaying when customer enters wrong input in DOI field Corporate Business
    Given User is on Login Page
    When User clicks on Sign in CTA
    And Clicks on Corporate/Business tab
    And Enters Wrong input in Date of Incorporation  Date field "<Val>"
    And Click on Get OTP
    Then Customer should be able to view Date of Incorporation validation messages "<Msg>"
    Examples:
      | Val        |        Msg					    |
      | 32/32/3232 | Enter valid date  |
      |  00/00/0000 |Enter valid date |
      |  hhhjkihhj  | Enter valid date |


    @doic
  Scenario Outline:  verify that on click on GET OTP CTA OTP popup window is visible
    Given User is on Login Page
    When User clicks on Sign in CTA
      And Clicks on Corporate/Business tab
    And Enters Mobile Number and Date of Incorporation "<Mob>" "<DOI>"
    And Click on Get OTP
    Then OTP popup should be displayed
    Examples:
      | Mob       | DOI       |
      | 9650543332 | 30/05/2001 |

      @changeCTA
  Scenario Outline: verify that customer is able to view content on OTP pop-up
    Given User is on Login Page
    When User clicks on Sign in CTA
        And Clicks on Corporate/Business tab
    And Enters Mobile Number and Date of Incorporation "<Mob>" "<DOI>"
    And Click on Get OTP
   # Then Customer should be able to view content on OTP pop-up "<Mob>"
        Then Customer should be able to view content on OTP pop-up "<Mob>" with change CTA
        Examples:
      | Mob       | DOI       |
      | 9650543332 | 30/05/2001 |

@CorpOtp
  Scenario Outline:  verify that validation message is displaying when customer enters Wrong input in OTP field first Time
    Given User is on Login Page
    When User clicks on Sign in CTA
    And Clicks on Corporate/Business tab
  #And Enters random generated Mobile Number and Date of Birth "<Mob>" "<DOI>"
  And Enters random  Mobile Number and Date of Incorporation "<Mob>" "<DOI>"
 # And Enters Mobile Number and Date of Incorporation "<Mob>" "<DOI>"
    And Click on Get OTP
    And Enters Wrong "<OTP>"
    And Click on Submit
  Then Validation message should be displayed correctly "<Msg>"
    Examples:
      | Mob       | DOI       | OTP | Msg |
      | 8341066905 | 30/05/2001 | 111111 | Invalid OTP. Only 2 attempts remaining. |
@CorpOtp
  Scenario Outline:  verify that validation message is displaying when customer enters Wrong input in OTP field Second Time
    Given User is on Login Page
    When User clicks on Sign in CTA
    And Clicks on Corporate/Business tab
    And Enters random  Mobile Number and Date of Incorporation "<Mob>" "<DOI>"
    #And Enters Mobile Number and Date of Incorporation "<Mob>" "<DOI>"
    And Click on Get OTP
    And Enters Wrong "<OTP>"
    And Click on Submit
    And Enters Wrong "<OTP>"
    And Click on Submit
    Then Validation message should be displayed correctly "<Msg>"
    Examples:
      | Mob       | DOI       | OTP | Msg |
      | 9650543332 | 30/05/2001 | 111111 | Invalid OTP. Only 1 attempt remaining. |
@FieldK
  Scenario Outline: verify that customer redirect to home page when enters valid DOI and OTP
    Given User is on Login Page
    When User clicks on Sign in CTA
  And Clicks on Corporate/Business tab
    And Enters Mobile Number and Date of Incorporation "<Mob>" "<DOI>"
    And Click on Get OTP
    And Enters "<OTP>"
    And Click on Submit
    Then Customer should be redirected to home page
    Examples:
      | Mob       | DOI       | OTP |
      | 9650543332 | 30/05/2001 | 123456 |


@CorpN
  Scenario Outline: verify that customer redirect to home page when enters valid Email ID DOI and OTP
    Given User is on Login Page
    When User clicks on Sign in CTA
    And Clicks on Corporate/Business tab
    And Enters Email-ID and Date of Incorporation "<Email-ID>" and "<DOI>"
    And Click on Get OTP
    And Enters "<OTP>"
    And Click on Submit
    Then Customer should be redirected to home page
    Examples:
      | Email-ID       | DOI       | OTP |
      | suncab_cable@yahoo.co.in | 01/01/2002 | 123456 |
  @CorpK
  Scenario Outline: verify that validation message is displayed when customer enters invalid Email ID
    Given User is on Login Page
    When User clicks on Sign in CTA
    And Clicks on Corporate/Business tab
    And Enters Email-ID and Date of Incorporation "<Email-ID>" and "<DOI>"
    And Click on Get OTP
    Then Validation message should be displayed the "<Message>"
    Examples:
      | Email-ID          | DOI       | Message |
      | suncab_cable@yahoo| 01/01/2002| Please enter your mobile number/email ID |
@CorpN
Scenario Outline: Verify customer is able to login when they have multi cust id, mailing address is Y for both  cust id and same entity
  Given User is on Login Page
  When User clicks on Sign in CTA
  And Clicks on Corporate/Business tab
  And Enters Mobile Number and Date of Incorporation "<Mob>" "<DOI>"
  And Click on Get OTP
  And Enters "<OTP>"
  And Click on Submit
  Then dropdown should be displayed with multi customer IDs "<MultiCustID>"
  Examples:
    | Mob       | DOI       | OTP    | MultiCustID |
    | 9845039396 | 02022002 | 123456 | 317893#2738063 |
#@NotInScope
#  Scenario Outline: Verify customer is able to login when they have multi cust id, mailing address is Y for both  cust id and different entity
#    Given User is on Login Page
#    When User clicks on Sign in CTA
#    And Clicks on Corporate/Business tab
#    And Enters Mobile Number and Date of Incorporation "<Mob>" "<DOI>"
#    And Click on Get OTP
#    And Enters "<OTP>"
#    And Click on Submit
#    Then Customer should be loggged in as selected entity
#  When User logouts application
#    Examples:
#      | Mob       | DOI       | OTP    |
#      | 9820300855 | 02022002 | 123456 |
@CorpK
  Scenario Outline: verify that validation message is displayed when Individual customer try to logged in through Corporate tab
    Given User is on Login Page
    When User clicks on Sign in CTA
    And Clicks on Corporate/Business tab
    And Enters Mobile Number and Date of Incorporation "<Mob>" "<DOI>"
    And Click on Get OTP
    And Enters "<OTP>"
    And Click on Submit
    Then Validation message should be displayed the "<Message>"
    Examples:
      | Mob       | DOI       | OTP    |Message|
      | 9974247570 | 01/02/2009 | 123456 | Please try login with registered details |

@WorkingVal
  Scenario Outline: verify that validation message is displayed when individual NRI customer try to logged in through Corporate/Business tab
    Given User is on Login Page
    When User clicks on Sign in CTA
    And Clicks on Corporate/Business tab
    And Enters Mobile Number and Date of Incorporation "<Mob>" "<DOI>"
    And Click on Get OTP
    And Enters "<OTP>"
    And Click on Submit
    Then Validation message should be displayed the "<Message>"
    Examples:
      | Mob        | DOI | OTP    | Message |
      | 9871864642 | 03/07/1973 | 123456 | Please try login with registered details |



  @FieldK
  Scenario Outline:  verify dropdown of multi cust id journey is visible and clickable
    Given User is on Login Page
    When User clicks on Sign in CTA
    And Clicks on Corporate/Business tab
    And Enters Mobile Number and Date of Incorporation "<Mob>" "<DOI>"
    And Click on Get OTP
    And Enters "<OTP>"
    And Click on Submit
    Then Popup with dropdown having all cust ids linked to logged in mobile number should be displayed "<CustDropDown>"
    When User clicks on dropdown
    Then Dropdown should be clickable "<CustID>"

    Examples:
      | Mob       | DOI       | OTP      | CustID | CustDropDown |
      | 9845039396 | 11/01/1999 | 123456 |  2738063| 317893#2738063   |
  @Multi
  Scenario Outline: Verify customer is redirecting to homepage for selected cust ID
    Given User is on Login Page
    When User clicks on Sign in CTA
    And Clicks on Corporate/Business tab
    And Enters Mobile Number and Date of Incorporation "<Mob>" "<DOI>"
    And Click on Get OTP
    And Enters "<OTP>"
    And Click on Submit
    And Select Customer id from dropdown "<CustID>"
    Then Customer should be redirected to home page
    Examples:
      | Mob       | DOI       | OTP     | CustID |
      | 9845039396 | 11/11/1999 | 123456 | 317893 |

  @FieldK
  Scenario Outline: verify muti cust id journey get cancels when customer clicks on cross(x) icon of muti cust ID popup
    Given User is on Login Page
    When User clicks on Sign in CTA
    And Clicks on Corporate/Business tab
    And Enters Mobile Number and Date of Incorporation "<Mob>" "<DOI>"
    And Click on Get OTP
    And Enters "<OTP>"
    And Click on Submit
    And Click on cross(x) CTA of popup
    Then Customer should be redirected to login homepage
    Examples:
      | Mob       | DOI       | OTP     |
      | 9845039396| 11/11/1999 | 2738063 |


# NRI
  @NRI
  Scenario Outline: verify validation message is displaying when customer enters wrong input in DOB field NRI
    Given User is on Login Page
    When User clicks on Sign in CTA
    And Clicks on NRI tab
    And Enters Wrong input in NRI Mobile Number field "<Val>"
    And Enters Wrong input in NRI Date of Birth field "<Val2>"
    And Click on Get OTP
    Then Customer should be able to view  NRI validation messages "<Msg>"

    Examples:
      | Val        |   Msg | Val2|
      | Asdf121222 |  Please enter your mobile number/email ID | 12121999|
      | 554355     |  Please enter your mobile number/email ID | 12121999 |
      | 1234567890 |  Please enter your mobile number/email ID | 12121999|

  @NRI
  Scenario Outline: verify validation message is displaying when customer enters wrong input in DOB field NRI
    Given User is on Login Page
    When User clicks on Sign in CTA
    And Clicks on NRI tab
    And Enters Wrong input in NRI Date of Birth field "<Val>"
    And Click on Get OTP
    Then Customer should be able to view  NRI validation messages "<Msg>"

    Examples:

      | Val        |   Msg |
      | 00/00/0000 |  Enter valid date |
      | 32/32/3232     |  Enter valid date|
      | 5678 |  Enter valid date |

#NRI

  @NRI
  Scenario Outline:  verify that on click on GET OTP CTA OTP popup window is visible
    Given User is on Login Page
    When User clicks on Sign in CTA
    And Clicks on NRI tab
    And Enters NRI  Mobile Number and Date of Birth "<Mob>" "<DOB>"
    And Click on Get OTP
    Then OTP popup should be displayed
    Examples:
      | Mob       | DOB       |
      | 8826595511 | 03071973 |
  @NRI
  Scenario Outline: verify that customer is able to view content on OTP pop-up
    Given User is on Login Page
    When User clicks on Sign in CTA
    And Clicks on NRI tab
    And Enters NRI  Mobile Number and Date of Birth "<Mob>" "<DOB>"
    And Click on Get OTP
    Then Customer should be able to view content on OTP pop-up
    Examples:
      | Mob       | DOB       |
      | 8826595511 | 03071973 |

  @NRIOTP
  Scenario Outline:  verify that validation message is displaying when customer enters Wrong input in OTP field
    Given User is on Login Page
    When User clicks on Sign in CTA
    And Clicks on NRI tab
    And Enters random NRI  Mobile Number and Date of Birth "<Mob>" "<DOB>"
    #And Enters NRI  Mobile Number and Date of Birth "<Mob>" "<DOB>"
    And Click on Get OTP
    And Enters Wrong "<OTP>"
    And Click on Submit
    Then Validation message should be displayed correctly "<Msg>"
    Examples:
      | Mob | DOB | OTP | Msg |
      | 8826595511 | 03071973 | 111111 | Invalid OTP. Only 2 attempts remaining. |


  @NRIOTP
  Scenario Outline:  verify that validation message is displaying when customer enters Wrong input in OTP field
    Given User is on Login Page
    When User clicks on Sign in CTA
    And Clicks on NRI tab
    And Enters random NRI  Mobile Number and Date of Birth "<Mob>" "<DOB>"
    And Click on Get OTP
    And Enters Wrong "<OTP>"
    And Click on Submit
    And Enters Wrong "<OTP>"
    And Click on Submit
    Then Validation message should be displayed correctly "<Msg>"
    Examples:
      | Mob       | DOB       | OTP | Msg |
      | 8826595511 | 03071973 | 111111 | Invalid OTP. Only 1 attempt remaining. |


  @NRI
  Scenario Outline: verify that customer redirect to home page when enters valid DOB and OTP
    Given User is on Login Page
    When User clicks on Sign in CTA
    And Clicks on NRI tab
    And Enters NRI  Mobile Number and Date of Birth "<Mob>" "<DOB>"
    And Click on Get OTP
    And Enters "<OTP>"
    And Click on Submit
    Then Customer should be redirected to home page
    Examples:
      | Mob       | DOB       | OTP |
      | 8826595511 | 03071973 | 123456 |

@ContentP
  Scenario Outline: verify that customer redirect to home page when enters valid Email ID DOB and OTP
    Given User is on Login Page
    When User clicks on Sign in CTA
    And Clicks on NRI tab
    And Enters NRI  Mobile Number and Date of Birth "<Mob>" "<DOB>"
    And Click on Get OTP
    And Enters "<OTP>"
    And Click on Submit
    Then Customer should be redirected to home page
    Examples:
      | Mob       | DOB       | OTP |
      | kannan@helicalsprings.in | 23/10/1951 | 123456 |
  @ContentP
  Scenario Outline: verify that validation message is displayed when customer enters invalid Email ID
    Given User is on Login Page
    When User clicks on Sign in CTA
    And Clicks on NRI tab
    And Enters NRI  Mobile Number and Date of Birth "<Mob>" "<DOB>"
    And Click on Get OTP
    Then Validation message should be displayed "<Message>"
    Examples:
      | Mob       | DOB       | Message |
      | suncab_cable@yahoo | 01/01/2002 | Please enter your mobile number/email ID |

  @NorpK
  Scenario Outline: Verify customer is able to login when they have multi cust id, mailing address is Y for both  cust id and same entity
    Given User is on Login Page
    When User clicks on Sign in CTA
    And Clicks on NRI tab
    And Enters NRI  Mobile Number and Date of Birth "<Mob>" "<DOB>"
    And Click on Get OTP
    And Enters "<OTP>"
    And Click on Submit
    Then dropdown should be displayed with multi customer IDs "<MultiCustID>"
    Examples:
      | Mob       | DOB       | OTP | MultiCustID |
      | 9871864642 | 02022002 | 123456 |   7941701#3962667       |
#  @DataNotAvaialble
#  Scenario Outline: Verify customer is able to login when they have multi cust id, mailing address is Y for both  cust id and different entity
#    Given User is on Login Page
#    When User clicks on Sign in CTA
#    And Clicks on NRI tab
#    And Enters NRI  Mobile Number and Date of Birth "<Mob>" "<DOB>"
#    And Click on Get OTP
#    And Enters "<OTP>"
#    And Click on Submit
#   # Then Customer should be redirected to home page
#    Then Customer should be loggged in as selected entity type
#    When User logouts application
#    Examples:
#      | Mob       | DOB       | OTP |
#      | 9820300855 | 02022002 | 123456 |
  @NorpK
  Scenario Outline: verify that validation message is displayed when Individual/Corporate customer try to logged in through NRI tab
    Given User is on Login Page
    When User clicks on Sign in CTA
    And Clicks on NRI tab
    And Enters NRI  Mobile Number and Date of Birth "<Mob>" "<DOB>"
    And Click on Get OTP
    And Enters "<OTP>"
    And Click on Submit
    Then Validation message should be displayed the "<Message>"
    Examples:
      | Mob       | DOB       | OTP | Message|
      | 9974247570 | 01/02/2009 | 123456 | Please try login with registered details  |


  @DataNotAvaialable
  Scenario Outline:  verify dropdown of multi cust id journey is visible and clickable
    Given User is on Login Page
    When User clicks on Sign in CTA
    And Clicks on NRI tab
    And Enters NRI  Mobile Number and Date of Birth "<Mob>" "<DOB>"
    And Click on Get OTP
    And Enters "<OTP>"
    And Click on Submit
    Then Popup with dropdown having all cust ids linked to logged in mobile number should be displayed "<CustDropDown>"
    When User clicks on dropdown
    Then Dropdown should be clickable "<CustID>"

    Examples:
      | Mob       | DOB       | OTP    |    CustID      |  CustDropDown          |
      | 6594598030 | 11111999 | 123456 |   230297002    |   230297002#231511708  |
   #   | 9871864642 | 02022002 | 123456 |  7941701 | 7941701#3962667 |

  @Multicusts
  Scenario Outline: Verify customer is redirecting to homepage for selected cust ID
    Given User is on Login Page
    When User clicks on Sign in CTA
    And Clicks on NRI tab
    And Enters NRI  Mobile Number and Date of Birth "<Mob>" "<DOB>"
    And Click on Get OTP
    And Enters "<OTP>"
    And Click on Submit
    And Select Customer id from dropdown "<CustID>"
    Then Customer should be redirected to home page
    Examples:
      | Mob        |    DOB   | OTP     |    CustID     |
      | 6594598030 | 11111999 | 123456  | 231511708     |

  @Multicusts
  Scenario Outline: verify muti cust id journey get cancels when customer clicks on cross(x) icon of muti cust ID popup
    Given User is on Login Page
    When User clicks on Sign in CTA
    And Clicks on NRI tab
    And Enters NRI  Mobile Number and Date of Birth "<Mob>" "<DOB>"
    And Click on Get OTP
    And Enters "<OTP>"
    And Click on Submit
    And Click on cross(x) CTA of popup
    Then Customer should be redirected to login homepage
    Examples:
      | Mob       | DOB       | OTP     |
      | 6594598030 | 03071973 | 123456 |


#NTB Relogin Not in scope

#  Scenario Outline:  verify customer is able to view bottom popup with relogin CTA
#    Given User is on Login Page
#    When User clicks on Sign in CTA
#    And Enters Mobile Number and Date of Birth "<Mob>" "<DOB>"
#    And Click on Get OTP
#    And Enters "<OTP>"
#    And Click on Submit
#    Then Customer should be able to view bottom popup with religin CTA on NTB home page
#    Examples:
#      | Mob       | DOB       | OTP |
#      | 9960820670 | 01/01/2002 | 123456 |
#
#  Scenario Outline: verify that on click of relogin CTA of pop, customer is able to view new popup with asset message
#    Given User is on Login Page
#    When User clicks on Sign in CTA
#    And Enters Mobile Number and Date of Birth "<Mob>" "<DOB>"
#    And Click on Get OTP
#    And Enters "<OTP>"
#    And Click on Submit
#    And Click on re-login
#    Then Customer should be able to view asset message on new popup with below CTA "Stayed logged In" "Relogin with registered number"
#    Examples:
#      | Mob       | DOB       | OTP |
#      | 9960820670 | 01/01/2002 | 123456 |
#
#  Scenario Outline: verify that on click of stayed logged in CTA, customer is landing on NTB home page
#    Given User is on Login Page
#    When User clicks on Sign in CTA
#    And Enters Mobile Number and Date of Birth "<Mob>" "<DOB>"
#    And Click on Get OTP
#    And Enters "<OTP>"
#    And Click on Submit
#    And Click on re-login
#    And Click on Stayed logged In
#    Then Customer should be on NTB home page
#    Examples:
#      | Mob       | DOB       | OTP |
#      | 9960820670 | 01/01/2002 | 123456 |
#
#  Scenario Outline: verify that on click of Relogin with registered number CTA, customer is landing on login popup
#    Given User is on Login Page
#    When User clicks on Sign in CTA
#    And Enters Mobile Number and Date of Birth "<Mob>" "<DOB>"
#    And Click on Get OTP
#    And Enters "<OTP>"
#    And Click on Submit
#    And Click on re-login
#    And Click on Relogin with registered number
#    Then Customer should be on Login popup
#    Examples:
#      | Mob       | DOB       | OTP |
#      | 9960820670 | 01/01/2002 | 123456 |
  @NTB
  Scenario Outline: verify that validation message is displayed when NTB customer logged in through Corporate/Business tab
    Given User is on Login Page
    When User clicks on Sign in CTA
    And Clicks on Corporate/Business tab
    And Enters Mobile Number and Date of Incorporation "<Mob>" "<DOI>"
    And Click on Get OTP
    And Enters "<OTP>"
    And Click on Submit
    Then Below validation message should be displayed Please try login with registered details.
    Examples:
      | Mob        |    DOI | OTP   |
      | 9960820670 |  01/01/2002  | 123456 |
      | 9425156052 | 17/03/1961 | 123456 |

  @NTB
  Scenario Outline: verify that validation message is displayed when NTB customer logged in through NRI tab
    Given User is on Login Page
    When User clicks on Sign in CTA
    And Clicks on NRI tab
    And Enters NRI  Mobile Number and Date of Birth "<Mob>" "<DOB>"
    And Click on Get OTP
    And Enters "<OTP>"
    And Click on Submit
    Then Below validation message should be displayed Please try login with registered details.
    Examples:
      | Mob       | DOB       | OTP|
      | 9960820670 | 01/01/2002 | 123456 |
      | 9425156052 | 17/03/1961 | 123456 |

