Feature: EMI Card Services-Reset PIN
  @Emiotp
  Scenario Outline: To verify number of remaining attempts is displayed when user enters invalid OTP for the first time
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And verify Customer is redirected to EMI Card service page when Click on EMI Card icon through header EMI Card section
    And  Click on Reset PIN
    And Enter Enter New PIN
    And Enter Re-enter New PIN
    And Click on Proceed CTA
    And Timer should start from  59 sec in descending order
    And Enters invalid OTP
    And click on SUBMIT CTA
    Then Inline Validation Text should be displayed "<First_wrong_OTP>"
    Examples:
      | Mobile Number | Date     | Customer Type |First_wrong_OTP |
      |9211368717     |01011980 | Individual	     | You have entered wrong OTP. 2 attempts left. |
  @Reset
  Scenario Outline: To verify number of remaining attempts is displayed when user enters invalid OTP for the Second time
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And verify Customer is redirected to EMI Card service page when Click on EMI Card icon through header EMI Card section
    And  Click on Reset PIN
    And Enter Enter New PIN
    And Enter Re-enter New PIN
    And Click on Proceed CTA
    And Timer should start from  59 sec in descending order
    And Enters invalid OTP
    And click on SUBMIT CTA
    #And click on Resend Otp Button CTA
    #And Enters invalid OTP
    #And click on SUBMIT CTA
    Then Inline Validation Text should be displayed "<Second _wrong_OTP>"
    Examples:
      | Mobile Number | Date     | Customer Type | Second _wrong_OTP |
      |9211368717     |01011980 | Individual	     | You have entered wrong OTP. 1 attempt left. |
  @Reset
  Scenario Outline: To verify number of remaining attempts is displayed when user enters invalid OTP for the Third time
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And verify Customer is redirected to EMI Card service page when Click on EMI Card icon through header EMI Card section
    And  Click on Reset PIN
    And Enter Enter New PIN
    And Enter Re-enter New PIN
    And Click on Proceed CTA
    And Timer should start from  59 sec in descending order
    And Enters invalid OTP
    And click on SUBMIT CTA
    Then Inline Validation Text should be displayed "<Third _wrong_OTP>"
    Examples:
      | Mobile Number | Date     | Customer Type | Third _wrong_OTP |
      |9211368717     |01011980 | Individual	     | You have exhausted all the attempts to confirm. Please try after some time. |

  @Reset
  Scenario Outline: To verify user is able to generate 2nd OTP after 3 invalid OTP submission attempts
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And verify Customer is redirected to EMI Card service page when Click on EMI Card icon through header EMI Card section
    And  Click on Reset PIN
    And Enter Enter New PIN
    And Enter Re-enter New PIN
    And Click on Proceed CTA
    And Enters invalid OTP
    And click on SUBMIT CTA
    Then Validation Message should be displayed in Pop-up "<Alert_Message>"
    Examples:
      |Mobile Number | Date     | Customer Type | Alert_Message |
      |9211368717     |01011980 | Individual	| You have exhausted all the attempts to confirm. Please try after some time. |
@Reset
  Scenario Outline: To verify Resend OTP attempts allowed for the customer
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And verify Customer is redirected to EMI Card service page when Click on EMI Card icon through header EMI Card section
    And  Click on Reset PIN
    And Enter Enter New PIN
    And Enter Re-enter New PIN
    And Click on Proceed CTA
    And Timer should start from  59 sec in descending order
    And Click on Resend OTP CTA when timer get Expired
    And Second time Again Click on Resend OTP CTA when timer get Expired
    And Third time Again Click on Resend OTP CTA
    And Third time Again Click on Resend OTP CTA
    Then Inline Validation Text should be displayed "<Message>"
    Examples:
      | Mobile Number | Date     | Customer Type | Message |
      |9211368717|02-03-1960| Individual	     | You have exhausted all the attempts to confirm. Please try after some time |


  Scenario Outline: To verify number of remaining attempts is displayed when user enters invalid OTP for the first time
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And verify Customer is redirected to EMI Card service page when Click on EMI Card icon through header EMI Card section
    And  Click on Blocked card
    And Click on Unblock Card option under Quick Action
    And Unblock Popup Timer should start from 59 sec in descending order
    Then verify user enter unblock invalid otp first time and validate message
#    And Enters invalid OTP
#    And click on SUBMIT CTA
#    Then Inline Validation Text should be displayed "<First_wrong_OTP>"
    Examples:
      | Mobile Number | Date     | Customer Type |First_wrong_OTP |
      | 8826319933|02-03-1960| Individual	     |You have entered wrong OTP. 2 attempts left.|

  Scenario Outline: To verify number of remaining attempts is displayed when user enters invalid OTP for the Second time
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And verify Customer is redirected to EMI Card service page when Click on EMI Card icon through header EMI Card section
    And  Click on Blocked card
    And Click on Unblock Card option under Quick Action
    And Timer should start from  59 sec in descending order
    Then verify user enter unblock invalid otp Second time and validate message
#    And Enters invalid OTP
#    And click on SUBMIT CTA
#    Then Inline Validation Text should be displayed "<Second _wrong_OTP>"
    Examples:
      | Mobile Number | Date     | Customer Type | Second _wrong_OTP |
      |8826319933|02-03-1960| Individual	     |You have entered wrong OTP. 1 attempts left.|


  Scenario Outline: To verify number of remaining attempts is displayed when user enters invalid OTP for the Third time
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And verify Customer is redirected to EMI Card service page when Click on EMI Card icon through header EMI Card section
    And  Click on Blocked card
    And Click on Unblock Card option under Quick Action
    And Timer should start from  59 sec in descending order
    Then verify user enter unblock invalid otp third time and validate otp Exhaust message
#    And Enters invalid OTP
#    And click on SUBMIT CTA
#    Then Inline Validation Text should be displayed "<Third _wrong_OTP>"
    Examples:
      | Mobile Number | Date     | Customer Type | Third _wrong_OTP |
      |8826319933|02-03-1960| Individual	     | You have exhausted all the attempts to confirm. Please try after some time.|


  Scenario Outline: To verify user is able to generate 2nd OTP after 3 invalid OTP submission attempts
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And verify Customer is redirected to EMI Card service page when Click on EMI Card icon through header EMI Card section
    And  Click on Blocked card
    And Click on Unblock Card option under Quick Action
    Then Validation Message should be displayed in Pop-up "<Alert_Message>"
    Examples:
      |Mobile Number | Date     | Customer Type | Alert_Message |
      |8826319933|02-03-1960| Individual	     |You have exhausted all the attempts to confirm. Please try after some time.|

  @Resend
  Scenario Outline: To verify Resend OTP attempts allowed for the customer
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And verify Customer is redirected to EMI Card service page when Click on EMI Card icon through header EMI Card section
    And  Click on Blocked card
    And Click on Unblock Card option under Quick Action
    And Timer should start from  59 sec in descending order
    And Click on Resend OTP CTA when timer get Expired
    And Second time Again Click on Resend OTP CTA when timer get Expired
    And Third time Again Click on Resend OTP CTA
    Then Inline Validation Text should be displayed "<Message>"
    Examples:
      | Mobile Number | Date     | Customer Type | Message |
      |8826319933|02-03-1960| Individual	     |You have exhausted all the attempts to confirm. Please try After some time.|

      # Clarification 361805	8976077725	Add on EMI , EMI, Health
      #3761524	9922942259	Add on EMI , EMI, Health
#EMI Card Services-Block card

  @BlockReason
  Scenario Outline: To verify number of remaining attempts is displayed when user enters invalid OTP for the first time
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And verify Customer is redirected to EMI Card service page when Click on EMI Card icon through header EMI Card section
    And  Click on Block Card
    And Select the Block Reason
    And Click on Proceed CTA
    And Timer should start from  59 sec in descending order for Blocked Popup
    And Enters invalid OTP
    And click on SUBMIT CTA
    Then Inline Validation Text should be displayed "<First_wrong_OTP>"
    Examples:
      | Mobile Number | Date     | Customer Type |First_wrong_OTP |
      |8976077725|02-03-1960| Individual	     | You have entered wrong OTP. 2 attempts left. |

  Scenario Outline: To verify number of remaining attempts is displayed when user enters invalid OTP for the Second time
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And verify Customer is redirected to EMI Card service page when Click on EMI Card icon through header EMI Card section
    And  Click on Block Card
    And Select the Block Reason
    And Click on Proceed CTA
    And Timer should start from  59 sec in descending order for Blocked Popup
    And Enters invalid OTP
    And click on SUBMIT CTA
    Then Inline Validation Text should be displayed "<Second _wrong_OTP>"
    Examples:
      | Mobile Number | Date     | Customer Type | Second _wrong_OTP |
      |8976077725|02-03-1960| Individual	     | You have entered wrong OTP. 1 attempt left. |

  Scenario Outline: To verify number of remaining attempts is displayed when user enters invalid OTP for the Third time
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And verify Customer is redirected to EMI Card service page when Click on EMI Card icon through header EMI Card section
    And  Click on Block Card
    And Select the Block Reason
    And Click on Proceed CTA
    And Timer should start from  59 sec in descending order for Blocked Popup
    And Enters invalid OTP
    And click on SUBMIT CTA
    Then Inline Validation Text should be displayed "<Third _wrong_OTP>"
    Examples:
      | Mobile Number | Date     | Customer Type | Third _wrong_OTP |
      |8976077725|02-03-1960| Individual	     | You have exhausted all the attempts to confirm. Please try after some time. |


  Scenario Outline: To verify user is able to generate 2nd OTP after 3 invalid OTP submission attempts
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And verify Customer is redirected to EMI Card service page when Click on EMI Card icon through header EMI Card section
    And  Click on Block Card
    And Select the Block Reason
    And Click on Proceed CTA
    Then Validation Message should be displayed in Pop-up "<Alert_Message>"
    Examples:
      |Mobile Number | Date     | Customer Type |Alert_Message |
      |8976077725|02-03-1960| Individual	    | You have exhausted all the attempts to confirm. Please try after some time. |

  Scenario Outline: To verify Resend OTP attempts allowed for the customer
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And verify Customer is redirected to EMI Card service page when Click on EMI Card icon through header EMI Card section
    And  Click on Block Card
    And Select the Block Reason
    And Click on Proceed CTA
    And Timer should start from  59 sec in descending order for Blocked Popup
    And Click on Resend OTP CTA when timer get Expired
    And Second time Again Click on Resend OTP CTA when timer get Expired
    And Third time Again Click on Resend OTP CTA
    Then Inline Validation Text should be displayed "<Message>"
    Examples:
      | Mobile Number | Date     | Customer Type | Message |
      |8976077725|02-03-1960| Individual	     |You have exhausted all the attempts to confirm. Please try After some time.|

