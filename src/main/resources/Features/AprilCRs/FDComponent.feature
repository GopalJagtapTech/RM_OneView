Feature: SSO - On FD Component in Alert Section

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
    And Verify Fixed Deposit offer card "<Subtext>"
    Then Customer should be able to view Fixed deposit offer card with given two "<CTA1>" and "<CTA2>" and subtext as per AEM
    Examples:
      |Mobile Number| Date|Customer Type|CTA1 |CTA2|Subtext |
      |9822021252 | 08.04.1986 | Individual|KNOW MORE  | INVEST ONLINE |Fixed Deposit|
      |9970534770 | 08.04.1986 | Individual|KNOW MORE  | INVEST ONLINE |Fixed Deposit|
      |8605337783 | 08.04.1986 | Individual|KNOW MORE  | INVEST ONLINE |Fixed Deposit|

@Left
  Scenario Outline:  Verify that Fixed Deposit card title in camel case and CTA in caps format
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And verify Alert bell icon in header
    And Click on Alert bell icon
    And Verify Fixed Deposit offer card "<Subtext>"
    Then Fixed Deposit card title should be in camel case and CTA should be in caps Fixed Deposit "<CTA1>" and "<CTA2>"

    Examples:
      |Mobile Number| Date|Customer Type|CTA1 |CTA2|Subtext |
      |9822021252 | 08.04.1986 | Individual|KNOW MORE  | INVEST ONLINE |Fixed Deposit|
      |9970534770 | 08.04.1986 | Individual|KNOW MORE  | INVEST ONLINE |Fixed Deposit|
      |8605337783 | 08.04.1986 | Individual|KNOW MORE  | INVEST ONLINE |Fixed Deposit|


  Scenario Outline:  Verify that posion of KNOW MORE AND INVEST ONLINE CTA Fixed Deposit offer
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And verify Alert bell icon in header
    And Click on Alert bell icon
    And Verify position of "<CTA1>" "<CTA2>"
    Then KNOW MORE CTA should be left on tile and INVEST ONLINE CTA should be right side on FD offer card
    Examples:
      |Mobile Number| Date|Customer Type|CTA1 |CTA2|
      |9822021252 | 08.04.1986 | Individual|KNOW MORE | INVEST ONLINE|
      |9970534770 | 08.04.1986 | Individual|KNOW MORE  | INVEST ONLINE |
      |8605337783 | 08.04.1986 | Individual|KNOW MORE  | INVEST ONLINE |


  Scenario Outline: Verify that when Click on INVEST ONLINE CTA of Fixed Deposit offer
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And verify Alert bell icon in header
    And Click on Alert bell icon
    And Verify Fixed Deposit tile Click on INVEST ONLINE "<CTA>"
    Then Customer should be redirected to respective page and URL with SSO and form should be prefilled
   # When User navigated to homePage
    Examples:
      |Mobile Number| Date|Customer Type|CTA |
      |9822021252 | 08.04.1986 | Individual|INVEST ONLINE |


  Scenario Outline: Verify that when Click on KNOW MORE CTA of Fixed Deposit offer
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And verify Alert bell icon in header
    And Click on Alert bell icon
    And  Verify Fixed Deposit tile Click on KNOW MORE "<CTA>"
    Then Customer should be redirected to respective page and "<URL>" with SSO
    When User navigated to homePage
    Examples:
      |Mobile Number| Date|Customer Type|CTA |URL |
      |9822021252 | 08.04.1986 | Individual|KNOW MORE  |https://uat-oneweb.bajajfinserv.in/investments/fixed-deposit |
      |9970534770 | 08.04.1986 | Individual|KNOW MORE   |https://uat-oneweb.bajajfinserv.in/investments/fixed-deposit |
      |8605337783 | 08.04.1986 | Individual|KNOW MORE   |https://uat-oneweb.bajajfinserv.in/investments/fixed-deposit|



