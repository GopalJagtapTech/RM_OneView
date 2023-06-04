Feature: Alert Message - Changes_Homepage

  Scenario Outline:  Verify ETB PTB NTB customer is able to view Alert section with bell icon on header section of Homepage
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And verify Alert bell icon in header
    Then NTB PTB ETB Customer should be able to View Alert section on header of Homepage
    Examples:
      |Mobile Number| Date|Customer Type|
      |9822021252 | 08.04.1986 | Individual|
      |9970534770 | 08.04.1986 | Individual|
      |8605337783 | 08.04.1986 | Individual|



  Scenario Outline:  Verify customer is able to click on alert section
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And verify Alert bell icon in header
    And Click on Alert bell icon
    Then Customer should be able to click on Alert option and offers should be displayed
    Examples:
      |Mobile Number| Date|Customer Type|
      |9822021252 | 08.04.1986 | Individual|
      |9970534770 | 08.04.1986 | Individual|
      |8605337783 | 08.04.1986 | Individual|


  Scenario Outline:  Verify that customer is able to view offer of Fixed Deposit
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And verify Alert bell icon in header
    And Click on Alert bell icon
    And Verify Shop on No Cost EMIs offer card "<Subtext>"
    Then Customer should be able to view Fixed deposit offer card with given two "<CTA1>" and "<CTA2>" and subtext as per AEM
    Examples:
      |Mobile Number| Date|Customer Type|CTA1 |CTA2|Subtext |
      |9822021252 | 08.04.1986 | Individual|SHOP ONLINE  | VISIT STORE |Shop on No Cost EMIs|
      |9970534770 | 08.04.1986 | Individual|SHOP ONLINE  | VISIT STORE |Shop on No Cost EMIs |
      |8605337783 | 08.04.1986 | Individual|SHOP ONLINE  | VISIT STORE |Shop on No Cost EMIs |

  @Left
  Scenario Outline:  Verify that No Cost EMIs title in camel case and CTA in caps format
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And verify Alert bell icon in header
    And Click on Alert bell icon
    And Verify Shop on No Cost EMIs offer card "<Subtext>"
    Then Shop on No Cost EMIs title should be in CAPS case and CTA should be in caps Fixed Deposit "<CTA1>" and "<CTA2>"

    Examples:
      |Mobile Number| Date|Customer Type|CTA1 |CTA2|Subtext |
      |9822021252 | 08.04.1986 | Individual|SHOP ONLINE  | VISIT STORE |Shop on No Cost EMIs|
      |9970534770 | 08.04.1986 | Individual|SHOP ONLINE  | VISIT STORE |Shop on No Cost EMIs |
      |8605337783 | 08.04.1986 | Individual|SHOP ONLINE  | VISIT STORE |Shop on No Cost EMIs |


  Scenario Outline:  Verify that position of KNOW MORE AND INVEST ONLINE CTA Fixed Deposit offer
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And verify Alert bell icon in header
    And Click on Alert bell icon
    And Verify position of "<CTA1>" "<CTA2>"
    Then SHOP ONLINE CTA should be left on tile and VISIT STORE CTA should be right side on Shop On No Cost EMis
    Examples:
      |Mobile Number| Date|Customer Type|CTA1 |CTA2|
      |9822021252 | 08.04.1986 | Individual|SHOP ONLINE  | VISIT STORE |
      |9970534770 | 08.04.1986 | Individual|SHOP ONLINE  | VISIT STORE |
      |8605337783 | 08.04.1986 | Individual|SHOP ONLINE  | VISIT STORE |


  Scenario Outline: Verify that when Click on INVEST ONLINE CTA of Fixed Deposit offer
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And verify Alert bell icon in header
    And Click on Alert bell icon
    And Verify Shop on No Cost EMIs Click on SHOP ONLINE "<CTA>"
    Then Customer should be Redirected to new tab "<Expected Url>"

    Examples:
      |Mobile Number| Date|Customer Type|CTA |Expected Url |
      |9822021252 | 08.04.1986 | Individual|SHOP ONLINE |  https://www.bajajmall.in/emi-store |
      |9970534770 | 08.04.1986 | Individual|SHOP ONLINE  | https://www.bajajmall.in/emi-store|
      |8605337783 | 08.04.1986 | Individual|SHOP ONLINE  | https://www.bajajmall.in/emi-store |


  Scenario Outline: Verify that when Click on VISIT STORE CTA of Fixed Deposit offer
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And verify Alert bell icon in header
    And Click on Alert bell icon
    And  Verify Shop on No Cost EMIs tile Click on  VISIT STORE "<CTA>"
    Then Customer should be redirected to respective page and "<URL>" with SSO
    When User navigated to homePage
    Examples:
      |Mobile Number| Date|Customer Type|CTA |URL |
      |9822021252 | 08.04.1986 | Individual| VISIT STORE  |https://www.bajajfinserv.in/bajaj-mall-store-locator |
      |9970534770 | 08.04.1986 | Individual|VISIT STORE   |https://www.bajajfinserv.in/bajaj-mall-store-locator |
      |8605337783 | 08.04.1986 | Individual|VISIT STORE   | https://www.bajajfinserv.in/bajaj-mall-store-locator|



