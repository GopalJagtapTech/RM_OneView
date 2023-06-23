Feature: Login 2.0

#  @ETB-Login Journey

#  Scenario: Verify that customer is able to view content on login pop-up
#    Given User is on Login Page
#    Then Login popup should be displayed


  Scenario: Verify that customer is able to view DOB field on login pop-up
    Given User is on Login Page
    Then Customer should not be able to view DOB field on Login popup

  Scenario Outline: Verify validation message is displaying When customer enters wrong input in mobile number field
    Given User is on Login Page
    And Enters Wrong input in mobile number field "<Val>"
    Then Customer should be able to view "<Msg>" validation messages

    Examples:
      | Val        | Msg                                      |
      | Asdf121222 | Please enter your 10-digit mobile number |
      | 82358      | Please enter your 10-digit mobile number |
      | 1234567890 | Please enter valid Mobile Number.        |

  Scenario Outline:  Verify that on click on GET OTP CTA OTP popup window is visible
    Given User is on Login Page
    And Enters Mobile Number "<Mob>"
    And Click on Get OTP
    Then OTP popup should be displayed
    Examples:
      | Mob        |
      | 9146920895 |

  Scenario Outline:  Verify that customer is able to view content on OTP pop-up
    Given User is on Login Page
    And Enters Mobile Number "<Mob>"
    And Click on Get OTP
    Then Customer should be able to view content on OTP pop-up "<Mob>"
    Examples:
      | Mob        |
      | 9146920895 |

  Scenario Outline:  verify that Term & condition opens When customer click on Term & condition
    Given User is on Login Page
    And Enters Mobile Number "<Mob>"
    And Click on Get OTP
    And Click on Term & Conditions
    Then Term & condition should be opened
    Examples:
      | Mob        |
      | 9146920895 |

  Scenario Outline:  verify that privacy policy opens When customer click on privacy policy
    Given User is on Login Page
    And Enters Mobile Number "<Mob>"
    And Click on Get OTP
    And Click on Privacy Policy
    Then Privacy Policy should be opened
    Examples:
      | Mob        |
      | 9146920895 |

  Scenario Outline: verify that customer is able to view FAQs When he clicks on Need help
    Given User is on Login Page
    And Enters Mobile Number "<Mob>"
    And Click on Get OTP
    And Click on need help
    Then Customer should be able to view FAQs
    Examples:
      | Mob        |
      | 9146920895 |

  Scenario Outline:  verify that validation message is displaying When customer enters Wrong input in OTP field
    Given User is on Login Page
    And Enters Mobile Number "<Mob>"
    And Click on Get OTP
    And Enters Wrong "<OTP>"
    And Click on Submit
    Then Validation message should be displayed correctly "<Msg>"
    Examples:
      | Mob        | OTP    | Msg                                     |
      | 9582898063 | 111111 | Invalid OTP. Only 2 attempts remaining. |

  Scenario Outline: verify that customer redirect to Login page When enters valid DOB
    Given User is on Login Page
    And Enters Mobile Number "<Mob>"
    And Click on Get OTP
    And Enters "<OTP>"
    And Click on Submit
    And Enter "<DOB>"
    And Click on Proceed CTA
    Then Customer should be redirected to home page
    Examples:
      | Mob        | OTP    | DOB        |
      | 9582898063 | 123456 | 12/01/1990 |

  Scenario Outline: verify that validation message is displaying When customer enters future Date in DOB field
    Given User is on Login Page
    And Enters Mobile Number "<Mob>"
    And Click on Get OTP
    And Enters "<OTP>"
    And Click on Submit
    And Enter "<Future DOB>"
    And Click on Proceed CTA
    Then Validation message should be displayed the "<Message>"
    Examples:
      | Mob        | OTP    | Future DOB | Message          |
      | 9582898063 | 123456 | 12/10/2030 | Enter valid date |


  Scenario Outline: Verify dropdown of multi cust id journey is visible And clickable
    Given User is on Login Page
    And Enters Mobile Number "<Mob>"
    And Click on Get OTP
    And Enters "<OTP>"
    And Click on Submit
    And Enter "<DOB>"
    And Click on Proceed CTA
    Then dropdown should be displayed with multi customer IDs "<MultiCustID>"
    Examples:
      | Mob        | OTP    | DOB        | MultiCustID         |
      | 9998135293 | 123456 | 12/01/1990 | 205215278#205085770 |


  Scenario Outline: Verify customer is redirecting to homepage for selected cust ID
    Given User is on Login Page
    And Enters Mobile Number "<Mob>"
    And Click on Get OTP
    And Enters "<OTP>"
    And Click on Submit
    And Enter "<DOB>"
    And Click on Proceed CTA
    And Select Customer id from dropdown "<CustID>"
    Then Customer should be redirected to home page
    Examples:
      | Mob        | OTP    | DOB        | CustID    |
      | 9998135293 | 123456 | 12/01/1990 | 205215278 |

  Scenario Outline:  verify muti cust id journey get cancels When customer clicks on cross(x) icon of muti cust ID popup
    Given User is on Login Page
    And Enters Mobile Number "<Mob>"
    And Click on Get OTP
    And Enters "<OTP>"
    And Click on Submit
    And Enter "<DOB>"
    And Click on Proceed CTA
    Then dropdown should be displayed with multi customer IDs "205215278#205085770"
    And Click on cross(x) CTA of popup
    Then Customer should be redirected to login homepage
    Examples:
      | Mob        | OTP    | DOB        |
      | 9768305830 | 123456 | 12/01/1990 |


  Scenario Outline:  Verify that validation message is displaying When customer enters Wrong Date in DOB field
    Given User is on Login Page
    And Enters Mobile Number "<Mob>"
    And Click on Get OTP
    And Enters "<OTP>"
    And Click on Submit
    And Enter "<Invalid DOB>"
    And Click on Proceed CTA
    Then Validation message should be displayed the "<Message>"
    Examples:
      | Mob        | OTP    | Invalid DOB | Message          |
      | 9768305830 | 123456 | 12/13/18890 | Enter valid date |

  Scenario Outline:  Verify that validation message is displaying When customer enters future Date in DOB field
    Given User is on Login Page
    And Enters Mobile Number "<Mob>"
    And Click on Get OTP
    And Enters "<OTP>"
    And Click on Submit
    And Enter "<Future DOB>"
    And Click on Proceed CTA
    Then Validation message should be displayed the "<Message>"
    Examples:
      | Mob        | OTP    | Future DOB | Message          |
      | 9768305830 | 123456 | 12/10/2030 | Enter valid date |

#    @NTB-Login Journey

  Scenario Outline: verify validation message is displaying When customer enters wrong input in DOB field "<Val>"
    Given User is on Login Page
    And Enters Mobile Number "<Mob>"
    And Click on Get OTP
    And Enters "<OTP>"
    And Click on Submit
    And Enters Wrong input in Date of Birth field "<Val>"
    Then Customer should be able to view  DOB "<Msg>" validation messages

    Examples:
      | Mob        | Val         | Msg              | OTP    |
      | 9768305830 | 32/32/3232  | Enter valid date | 123456 |
      | 9768305830 | 100/00/0000 | Enter valid date | 123456 |
      | 9768305830 | hhhjkihhj56 | Enter valid date | 123456 |

  Scenario Outline: verify that ask for enters DOB to NTB Customer
    Given User is on Login Page
    And Enters Mobile Number "<Mob>"
    And Click on Get OTP
    And Enters "<OTP>"
    And Click on Submit
    Then Customer should be redirected to login homepage
    Examples:
      | Mob        | OTP    |
      | 8605337783 | 123456 |

  Scenario Outline: Verify that validation message is displayed When NTB customer logged in through Corporate/Business tab
    Given User is on Login Page
    And Clicks on "Corporate/Business" Customer tab
    And Enters Mobile Number "<Mob>"
    And Click on Get OTP
    And Enters "<OTP>"
    And Click on Submit
    Then Validation message should be displayed the "<Message>"
    Examples:
      | Mob        | Message                                  | OTP    |
      | 8605337783 | Please try login with registered details | 123456 |

  Scenario Outline: Verify that validation message is displayed When NTB customer logged in through NRI tab
    Given User is on Login Page
    And Clicks on "NRI" Customer tab
    And Enters Mobile Number "<Mob>"
    And Click on Get OTP
    And Enters "<OTP>"
    And Click on Submit
    Then Validation message should be displayed the "<Message>"
    Examples:
      | Mob        | Message                                  | OTP    |
      | 8605337783 | Please try login with registered details | 123456 |

#    @PTB-Login Journey

  Scenario Outline: verify that ask for enters DOB to PTB Customer
    Given User is on Login Page
    And Enters Mobile Number "<Mob>"
    And Click on Get OTP
    And Enters "<OTP>"
    And Click on Submit
    Then Customer should be redirected to login homepage
    Examples:
      | Mob        | OTP    |
      | 9425156052 | 123456 |

  Scenario Outline: Verify that validation message is displayed When PTB customer logged in through Corporate/Business tab
    Given User is on Login Page
    And Clicks on "Corporate/Business" Customer tab
    And Enters Mobile Number "<Mob>"
    And Click on Get OTP
    And Enters "<OTP>"
    And Click on Submit
    Then Validation message should be displayed the "<Message>"
    Examples:
      | Mob        | Message                                  | OTP    |
      | 9425156052 | Please try login with registered details | 123456 |

  Scenario Outline: Verify that validation message is displayed When PTB customer logged in through NRI tab
    Given User is on Login Page
    And Clicks on "NRI" Customer tab
    And Enters Mobile Number "<Mob>"
    And Click on Get OTP
    And Enters "<OTP>"
    And Click on Submit
    Then Validation message should be displayed the "<Message>"
    Examples:
      | Mob        | Message                                  | OTP    |
      | 9425156052 | Please try login with registered details | 123456 |


