Feature: Content for My Account Sign-in Module

  Scenario:  To verify that login popup is displayed when customer enters URL
    Given User is on Login popup
    Then Login Popup should displayed with below field Mobile Number DOB,GET OTP CTA

  Scenario Outline:  To verify that customer is able to view validation message for blank mobile number field
    Given User is on Login popup
    When User Leaves Mobile number field blank "<MNo>"
    And Enter DOB "<DOB>"
    And Click on Get OTP
    Then Below validation message should be displayed "<message>"
    Examples:
      | MNo | DOB | message |
      |     | 02022000 | Please enter your 10-digit mobile number |


  Scenario Outline: To verify that customer is able to view validation message for less than 10 digits mobile number
    Given User is on Login popup
    When User Enters less than 10 digit Mobile number "<MNo>"
    And Enter DOB "<DOB>"
    And Click on Get OTP
    Then Below validation message should be displayed "<message>"
    Examples:
      | MNo | DOB | message |
      | 996082067 | 02022000 | Please enter valid Mobile Number |

  Scenario Outline: To verify that customer is able to view validation message for blank mobile number/email ID field
    Given User is on Login popup
    And Clicks on Corporate/Business tab
    And Leaves Mobile number/Email ID field blank "<MNo>"
    And Enter DOB "<DOB>" in Date of Incoporation
    And Click on Get OTP
    Then Below validation message should be displayed "<message>"
    Examples:
      | MNo | DOB | message |
      |          | 02022000 |  Please enter your mobile number/email ID |

  Scenario Outline:  To verify that customer able to view Change number CTA after masked mobile number
    Given User is on Login popup
    And Clicks on Corporate/Business tab
    And Enters Mobile number/Email ID field blank "<MNo>"
    And Enter DOB "<DOB>" in Date of Incoporation
    And Click on Get OTP
    Then Customer should be able to view Change number CTA after masked mobile number

    Examples:
      | MNo | DOB |
      | 8888890933 | 02022000 |




  Scenario Outline: To verify that customer is able to view validation message for blank OTP field
    Given User is on Login popup
    And Enters Mobile Number and Date of Birth "<Mob>" "<DOB>"
    And Click on Get OTP
    And Click on Submit
    Then Below validation message should be displayed "<message>"
    Examples:
      | Mob | DOB | message |
      | 8888890933 | 02022000 | Verification failed. Please try again. |

  Scenario Outline: To verify that customer is able to view validation message for Expired OTP
    Given User is on Login popup
    And Enters Mobile Number and Date of Birth "<Mob>" "<DOB>"
    And Click on Get OTP
    And Enters "<OTP>"
    And Click on Submit after 120 Sec
    Then Below validation message should be displayed "<message>"
    Examples:
      | Mob | DOB | message | OTP |
      | 8888890933 | 02022000 | Verification failed. Please try again. | 123456 |

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
      | 8096962175 | 17/03/1961 |  123123 | Invalid OTP. Only 2 attempts remaining. |

  Scenario Outline: verify that validation message is displayed when customer Enters wrong DOB or Wrong OTP
    Given User is on Login Page
    When User clicks on Sign in CTA
    And Enters random generated Mobile Number and Date of Birth "<Mob>" "<DOB>"
    And Click on Get OTP
    And Enters "<OTP>"
    And Click on Submit
    And Enters "<OTP>"
    And Click on Submit
    Then Validation message should be displayed correctly "<Msg>"
    Examples:
      | Mob       | DOB       | OTP       |     Msg    |
      | 8096962175 | 17/03/1961 |  123123 | Invalid OTP. Only 1 attempt remaining. |

  Scenario Outline:  verify that Account is locked for 3 min when customer tries three wrong attempt
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

