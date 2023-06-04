Feature: Login Bills and Recharge and SuperStore Investments and It Nudge FD

  @FailNudgeQWEK
  Scenario Outline: Verify customer is able to view green Nudge for smartphones option under shop on Bajaj mall section
    Given User is on Login Page
    When customer under shop on Bajaj mall Section
    And verify smartphones Option nudge color Nudgecolor
    Then customer should be able to view green nudge color with offer text Under Shop on Bajaj mall section
    Examples:
      | Nudgecolor |Section|Option|
      | green | Shop on Bajaj Mall  |   smartphones   |

  @FailNudgeQWEK
  Scenario Outline: Verify customer is able to view Green Nudge with FD rate 8.10% for Fixed Deposit option under Investment
    Given User is on Login Page
    When customer under Investment Section
    And verify fixed deposit option Fixed deposit
    Then customer should be able to view green nudge with FD rate nudegetext Up to 8.20%
    Examples:
      |Section|Option|Nudgetext|
      |Investment|Fixed Deposit |Up to 8.10% |

  @FailNudgeQWEK
  Scenario Outline: Verify customer is able to view green Nudge for Mattress option under Lifestyle Store section
    Given User is on Login Page
    When customer under Lifestyle Store Section
    And verify Mattress Option nudge color
    Then customer should be able to view green nudge color with offer text Under Lifestyle Store section
    Examples:
      |Section|Option|Nudge  Color|
      | Lifestyle Store | Mattress |green |

  @NudgeQWEK
  Scenario Outline: Verify customer is able to view green Nudge for Scooters category option under Two wheeler world section
    Given User is on Login Page
    When customer under Two wheeler world Section
    And verify Scooters category Option nudge color
    Then customer should be able to view green nudge color with offer text for Scooters category Under Two wheeler world section
    Examples:
      |Section|Option|Nudge  Color|
      | Two wheeler world | Scooters |green |

  @FailNudgeQWEK
  Scenario Outline: Verify customer is able to view Green Nudge with FD rate 8.10% for Fixed Deposit option under Products for You
    Given User is on Login Page
    When customer under products for You Section
    And verify fixed deposit option Under products for You nudge color
    Then customer should be able to view green nudge with FD rate nudge text
    Examples:
      |Section|Option|Nudgetext|
      |Investment|Fixed Deposit |Up to 8.10% |

  @FailNudgeQWEK
  Scenario Outline: Verify customer is able to view purple Nudge for Bajaj Mall option under RHS section
    Given User is on Login Page
    When customer under RHS Supersore Section
    And verify Bajaj mall Option purple nudge color
    Then customer should be able to view perple nudge nudge with offer text Under RHS super store section
    Examples:
      |Section|Option|Nudge  Color|
      |RHS Superstore|Bajaj mall |purple |

  @RHSINV
  Scenario Outline: Verify when customer clicks on Fixed Deposit offer tile under  Investment section[ETB PTB NTB]
    Given User is on Login Page
    And Click on RHS tile "<RHS Offer>"
    Then verify Login Popup should be displayed
    And Clicks on NRI tab
    And Enters NRI  Mobile Number and Date of Birth "<Mob>" "<DOB>"
    And Click on Get OTP
    And Enters "<OTP>"
    And Click on Submit
    Then Customer should be redirected to respective "<Expected Url>"
    #When User logouts application
    Examples:
      | RHS Offer |Mob|DOB|OTP|Expected Url|
      |   Investments | 8826595511  | 11111999  |  123456 | https://www.bajajfinserv.in/investment|

  @RHSINV
  Scenario Outline: Verify when customer clicks on Fixed Deposit offer tile under  Investment section[ETB PTB NTB]
    Given User is on Login Page
    And Click on RHS tile "<RHS Offer>"
    Then verify Login Popup should be displayed
    And Clicks on Corporate/Business tab
    And Enters Mobile Number and Date of Incorporation "<Mob>" "<DOI>"
    And Click on Get OTP
    And Enters "<OTP>"
    And Click on Submit
    Then Customer should be redirected to respective "<Expected Url>"
    #When User logouts application
    Examples:
      | RHS Offer |Mob|DOI|OTP|Expected Url|
      |   Investments | 9650543332  | 11111999  |  123456 | https://www.bajajfinserv.in/investment|

  @RHSINV
  Scenario Outline: Verify that Customer  When clicks on any  hyperlink under RHS  [ETB PTB NTB]
    Given User is on Login Page
    And Click on RHS tile "<RHS Offer>"
    Then verify Login Popup should be displayed
    And Enters Mobile Number and Date of Birth "<Mob>" "<DOB>"
    And Click on Get OTP
    And Enters "<OTP>"
    And Click on Submit
    Then Customer should be redirected to respective "<Expected Url>"
   # When User logouts application
    Examples:
      | RHS Offer |Mob|DOB|OTP|Expected Url|
      |   Investments | 9910955211  | 11111999  |  123456 | https://www.bajajfinserv.in/investment|



  @BRS
  Scenario:verify that Bills & Reacharge label & section is visible to the customer  [ETB PTB NTB]
    Given User is on Login Page
    Then Bills & recharge label & section should be visible  to the customer

  @BRS
  Scenario Outline:To verify Login Pop up is displayed after clicking on View All on BBPS under Login Page
    Given User is on Login Page
    When Clicks on any options under Bills & recharge View All "<Product Tile>"
    Then verify Login Popup should be displayed
    Examples:
      |  Product Tile |
      | View All |


  @BRSK
  Scenario Outline: To Verify Options on BBPS section is visible under Login Page
    When User is on Login Page
    Then Customer should be able to view below icon under BBPS "<IconImageLabelNames>"
    Examples:
      | IconImageLabelNames  |
      | Electricity#Mobile#DTH#EMIs#FASTag|


  @BRS
  Scenario Outline:Verify that Each option is clickable [ETB PTB NTB]
    Given User is on Login Page
    When Clicks on any options under Bills & recharge "<Product Tile>"
    Then verify Login Popup should be displayed
    And Enters Mobile Number and Date of Birth "<Mob>" "<DOB>"
    And Click on Get OTP
    And Enters "<OTP>"
    And Click on Submit
    Then verify Bills & Recharge options are redirected to "<Expected Url>"
    When User logouts application
    Examples:
      | Mob       | DOB     |OTP |  Product Tile |Expected Url |
      | 7412822091 |02011999|123456| Electricity | https://www.bajajfinserv.in/bbps-bills-and-payments    |
      | 7412822091 |02011999|123456| Mobile| https://www.bajajfinserv.in/bbps-bills-and-payments    |
      | 7412822091 |02011999|123456| DTH| https://www.bajajfinserv.in/bbps-bills-and-payments    |
      | 7412822091 |02011999|123456| EMIs | https://www.bajajfinserv.in/bbps-bills-and-payments    |
      | 7412822091 |02011999|123456| FASTag| https://www.bajajfinserv.in/bbps-bills-and-payments    |



  @BRS
  Scenario Outline:Verify that Each option is clickable [ETB PTB NTB]
    Given User is on Login Page
    When Clicks on any options under Bills & recharge View All "<Product Tile>"
    Then verify Login Popup should be displayed
    And Enters Mobile Number and Date of Birth "<Mob>" "<DOB>"
    And Click on Get OTP
    And Enters "<OTP>"
    And Click on Submit
    Then verify Bills & Recharge options are redirected to "<Expected Url>"
    When User logouts application
    Examples:
      | Mob       | DOB     |OTP |  Product Tile |Expected Url |
      | 7412822091 |02011999|123456| View All | https://www.bajajfinserv.in/bbps-bills-and-payments    |