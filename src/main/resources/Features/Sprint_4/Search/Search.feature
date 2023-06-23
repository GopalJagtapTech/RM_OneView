Feature: Search Box Home Page


  Scenario Outline: Verify User is able to view search bar with search icon
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    Then User should be able to view search bar on Header section with search icon
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 7827553033    | 08041986 | Individual    |


@FailK
  Scenario Outline: Verify user is able to view Cross icon for clear text
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    Then User should be able to view search bar on Header section with search icon
    And enters search keywords "<Search keywords>"
    And clicks on cross icon
    Then text should be cleared

    Examples:
      | Mobile Number | Date     | Customer Type | Search keywords  |
      | 7827553033    | 08041986 | Individual    |     abc        |
      | 7827553033    | 08041986 | Individual    |        a       |


  Scenario Outline: User can view animation default text for 45 seconds in search bar when customer lands on home page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    Then User should be able to view animation text "<Animation>"

    Examples:
      | Mobile Number | Date     | Customer Type | Animation  |
      | 7827553033    | 08041986 | Individual    |  Search Bajajfinserv.in |


  Scenario Outline: Verify Default text is cleared When user click on search bar
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Click on search bar
    Then Default text should be cleared

    Examples:
      | Mobile Number | Date     | Customer Type |
      | 7827553033    | 08041986 | Individual    |

  @FailK
  Scenario Outline: Verify when user clicks on Search Bar screen 6 Promoted Searches overlay appears with the background greyed out
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Click on search bar TextBox
    Then six promoted searches Screen overlay should be display with background greyed out "<Promoted Searches Option>"

    Examples:
      | Mobile Number | Date     | Customer Type |Promoted Searches Option |
      | 7827553033    | 08041986 | Individual    | Personal Loan |
      |    7827553033   |   08041986 |Individual|EMI Store|
      |    7827553033   |   08041986 |Individual |Credit Pass |
      |    7827553033   |   08041986 |Individual | EMI Payment|
      |    7827553033   |   08041986 |Individual |Loan Status|
      |    7827553033   |   08041986 |Individual| Customer Care |

  @FailRegKP
  Scenario Outline: verify that customer is redirected to desired search result page When customer  clicks  any popular searches
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Click on search bar TextBox
    And Click on Promoted Searches Option "<Option>"
    Then Customer should be redirected to desired search result page as per the selected keyword "<Option>"

    Examples:
      | Mobile Number | Date     | Customer Type | Option |
      | 7827553033    | 08041986 | Individual    |  Personal Loan    |
      |    7827553033   |   08041986 |Individual|EMI Store|
      |    7827553033   |   08041986 |Individual |Credit Pass |
      |    7827553033   |   08041986 |Individual | EMI Payment|
      |    7827553033   |   08041986 |Individual |Loan Status|
      |    7827553033   |   08041986 |Individual| Customer Care |

  Scenario Outline: On entering 2 keywords 5 suggested searches to be displayed
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Click on search bar TextBox
    And enters search keywords "<Search Keywords>"
    Then five suggested searches should be displayed

    Examples:
      | Mobile Number | Date     | Customer Type | Search Keywords |
      | 7827553033    | 08041986 | Individual    |  FI    |


  Scenario Outline: Verify customer is not able to view suggested searches result after entering 1 letter in search field
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Click on search bar TextBox
    And enters search keywords "<Search Keywords>"
    Then Suggested searches should not be displayed after entering one letter

    Examples:
      | Mobile Number | Date     | Customer Type | Search Keywords |
      | 7827553033    | 08041986 | Individual    |  n    |


  Scenario Outline: Verify suggested searches are displayed in bold format except the user typed keywords on search bar
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Click on search bar TextBox
    And enters search keywords "<Search Keywords>"
    Then Suggested searches should be displayed in bold form except the user typed keywords on search bar "<Search Keywords>"

    Examples:
      | Mobile Number | Date     | Customer Type | Search Keywords |
      | 7827553033    | 08041986 | Individual    |  Ho    |

  @FailRegK
  Scenario Outline: Verify customer is redirected to appropriate suggested search result page on clicking on any suggested search option
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Click on search bar TextBox
    And enters search keywords "<Search Keywords>"
    And Click on suggested searches results "<Suggested Search>"
    Then Customer should be redirected to desired search result page as per the selected  suggested search option keyword "<Suggested Search>"


    Examples:
      | Mobile Number | Date     | Customer Type | Search Keywords | Suggested Search |
      | 7827553033    | 08041986 | Individual    |  Individual fixed deposit    | Fixed deposit     |
      | 7827553033    | 08041986 | Individual    |  Individual fixed deposit    | Company fixed deposit  |
      | 7827553033    | 08041986 | Individual    |  Individual fixed deposit    | Fixed deposit interest  |
      | 7827553033    | 08041986 | Individual    |  Individual fixed deposit    | Fixed deposit meaning  |
      | 7827553033    | 08041986 | Individual    |  Individual fixed deposit    | Fixed deposit rate   |

  @FailRegK
  Scenario Outline: Verify user is able to enter 26 characters on search bar
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Click on search bar TextBox
    And enters search keywords "<Search Keywords>"
    Then User should be able to enter only twentysix characters "<Search Keywords>"

    Examples:
      | Mobile Number | Date     | Customer Type | Search Keywords |
      |    7827553033   |   08041986 |Individual| get in touch on Bajaj |
      |    7827553033   |   08041986 |Individual| Get in touch on Bajaj Finserv Portal|


@FailK
  Scenario Outline: Verify that customer is not able to enter invalid data In search field
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Click on search bar TextBox
    And enters Special search keywords "<Search Keywords>"
    Then search bar should not be allowed to enter blank spaces And special characters "<Search Keywords>"

    Examples:
      | Mobile Number | Date     | Customer Type | Search Keywords |
      |    7827553033   |   08041986 |Individual|               |
      |    7827553033   |   08041986 |Individual|*****|
      |    7827553033   |   08041986 |Individual|   abc|




