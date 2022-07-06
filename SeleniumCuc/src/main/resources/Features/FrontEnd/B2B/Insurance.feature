Feature: Insurance

  @run
  Scenario Outline: To Verify Coverage and Membership fees are Pre-Populated to
    Given User is on Complete Health Protect Supreme Page
    Then Coverage and membership fees should be pre-populated "<Coverage>" "<membership_fees>"
    Examples:
      |Coverage|membership_fees|
      |Rs 1,00,000|Rs 1,299|

  Scenario Outline: To Verify validations for invalid mobile number
    Given User is on Complete Health Protect Supreme Page
    When Enters mobile number "<mobile_number>"
    Then Validation message should be displayed "<Val_msg>"
    Examples:
      |mobile_number|Val_msg|
      |1234567890|Mobile number should start with 9 or 8 or 7 or 6 or 5|
      |2234567890|Mobile number should start with 9 or 8 or 7 or 6 or 5|
      |3234567890|Mobile number should start with 9 or 8 or 7 or 6 or 5|
      |4234567890|Mobile number should start with 9 or 8 or 7 or 6 or 5|
      |123       |Please enter your 10 digit mobile number|
      |          | Please enter your Mobile No|
      |8796738158|Thank you for showing interest, currently you do not have an offer|

    @run
  Scenario Outline: To Verify Timer starts from 90 when user enters valid mobile number
    Given User is on Complete Health Protect Supreme Page
    When Enters mobile number "<mobile_number>"
    And Clicks on Generate OTP button
    Then Timer should start from "<Timer_value>"
  Examples:
    |mobile_number|Timer_value|
    |9549928493   |90 Seconds|

  Scenario Outline: To Verify Resend OTP is displayed when Timer expires
    Given User is on Complete Health Protect Supreme Page
    When Enters mobile number "<mobile_number>"
    And Clicks on Generate OTP button
    Then Resend OTP should be displayed when Timers expires
    Examples:
      |mobile_number|
      |9549928493   |

    @run
  Scenario Outline: To Verify user should be able to Re-enter mobile number
    Given User is on Complete Health Protect Supreme Page
    When Enters mobile number "<mobile_number>"
    And Clicks on Generate OTP button
    And Clicks on Enter wrong mobile number
    Then Enter mobile number field should be displayed
    Examples:
      |mobile_number|
      |9549928493   |

  Scenario Outline: To Verify error message is displayed when user enters invalid OTP
    Given User is on Complete Health Protect Supreme Page
    When Enters mobile number "<mobile_number>"
    And Clicks on Generate OTP button
    And Enters OTP "<OTP>"
    Then Validation message should be displayed "<Val_msg>"
    Examples:
      |mobile_number|OTP|Val_msg|
      |9549928493|12345| Please Enter Valid OTP|











