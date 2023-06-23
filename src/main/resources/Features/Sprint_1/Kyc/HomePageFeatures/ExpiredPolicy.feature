Feature: Expired Policy


  #7738797860
  #9860149678

  @FirstD
  Scenario Outline: To verify that customer is able to view Hamburger icon on Home page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    Then Verify Hamburger Menu is displayed
    Examples:
      | Mobile Number | Date | Customer Type  |
      | 9860149678 | 13/09/1990 | Individual  |

  @Check
  Scenario Outline: To verify that Document Center submenu  displayed under Mandate and documents menu of Hamburger
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<Menu>"
    And Clicks on "<Submenu>" of "<Menu>"
    Examples:
      | Mobile Number | Date | Customer Type  | Menu | Submenu |
      | 9860149678 | 13/09/1990 | Individual  |  Mandate and documents |  Document Center |

  @Check
  Scenario Outline: To verify that customer is redirecting to Document Center page when they clicks on document center sub menu
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<Menu>"
    And Clicks on "<Submenu>" of "<Menu>"
    Then Customer should be redirected to document center page
    Examples:
      | Mobile Number | Date | Customer Type  | Menu | Submenu |
      | 9860149678 | 13/09/1990 | Individual  |  Mandate and documents |  Document Center |
  @RHS
  Scenario Outline: To verify that customer is redirecting to Document Center page when they clicks on document center  from RHS of My Relation
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on View all of my relation
    And Click on RHS Menu
    Then Customer should be redirected to document center page
    Examples:
      | Mobile Number | Date | Customer Type  | RHS Menu |
      | 9860149678 | 13/09/1990 | Individual  |    Document Center |
  @Check
  Scenario Outline: To verify active insurances are displaying when customer clicks on Insurance tab
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<Menu>"
    And Clicks on "<Submenu>" of "<Menu>"
    And Click on Insurance Tab
    Then All active insurances should be displayed
    Examples:
      | Mobile Number | Date | Customer Type  | Menu | Submenu |
      | 9860149678 | 13/09/1990 | Individual  |  Mandate and documents |  Document Center |
  @PAFA1
  Scenario Outline: To verify that customer is able to view popup for Active insurance with passed policy end date
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<Menu>"
    And Clicks on "<Submenu>" of "<Menu>"
    And Click on Insurance Tab
    And Click on Insurance Card "<Policy No>"
    And Click on COI document
    Then Pop up with below text and GOT IT CTA should be displayed "<Message>"
    Examples:
      | Mobile Number | Date | Customer Type  | Menu | Submenu | Policy No |Message |
      | 9860149678 | 12/12/1999 | Individual  |  Mandate and documents |  Document Center |7130109  | Your policy is expired & Certificate of Insurance cannot be downloaded. Thank you!|
  @PAFA
  Scenario Outline: To verify that customer is on document list page on click on GOT IT CTA
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<Menu>"
    And Clicks on "<Submenu>" of "<Menu>"
    And Click on Insurance Tab
    And Click on Insurance Card "<Policy No>"
    And Click on COI document
    And Click on GOT IT CTA
    Then Customer should be on document list page on click on GOT IT CTA
    Examples:
      | Mobile Number | Date | Customer Type  | Menu | Submenu | Policy No |
      | 9860149678 | 13/09/1990 | Individual  |  Mandate and documents |  Document Center |7130109  |

  @PAFA
  Scenario Outline: To verify that customer is able to view popup for Active insurance with passed policy end date
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on View All of My relatiom
    And Click on Insurance Tab in View All
    And Click on Insurance Card "<Policy No>" in homePage
    And Click on View Statement
    And Click on COI document
    Then Pop up with below text and GOT IT CTA should be displayed "<Message>"
    Examples:
      | Mobile Number | Date | Customer Type  | Policy No |Message |
      | 9860149678 | 13/09/1990 | Individual  |7130109  |Your policy is expired & Certificate of Insurance cannot be downloaded. Thank you! |
  @PAFA
  Scenario Outline: To verify that customer is on document list page on click on GOT IT CTA
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on View All of My relatiom
    And Click on Insurance Tab in View All
    And Click on Insurance Card "<Policy No>" in homePage
    And Click on View Statement
    And Click on COI document
    And Click on GOT IT CTA
    Then Customer should be on document list page on click on GOT IT CTA
    Examples:
      | Mobile Number | Date | Customer Type  | Menu | Submenu | Policy No |
      | 9860149678 | 13/09/1990 | Individual  |  Mandate and documents |  Document Center |7130109  |
