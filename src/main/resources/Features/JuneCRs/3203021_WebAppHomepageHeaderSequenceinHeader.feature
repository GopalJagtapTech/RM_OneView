Feature: 3203021 Web=App Homepage-Header+ Sequence in Header

  Scenario Outline: To verify customer is able to view EMI Card under Header section on Home page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    Then Customer should be able to view EMI CARD icon under Header section on Home page
    And "EMI Card" Name should be displayed under the Icon


    Examples:
      | Mobile Number | Date     | Customer Type |
      | 7045733821    | 26051982 | Individual    |

  Scenario Outline: To verify customer is able to view Bell icon under Header section
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    Then Customer should be able to view Bell icon on under Header section on Home page
    And "Alerts" Name should be displayed under the Icon

    Examples:
      | Mobile Number | Date     | Customer Type |
      | 7045733821    | 26051982 | Individual    |

  Scenario Outline: To verify customer is able to view Cart under Header section
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    Then Customer should be able to view Cart icon on under Header section on Home page
    And "Cart" Name should be displayed under the Icon

    Examples:
      | Mobile Number | Date     | Customer Type |
      | 7045733821    | 26051982 | Individual    |

  Scenario Outline: To verify customer is able to view Profile under Header section for the Desktop view
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    Then Customer should be able to view Profile icon on under Header section on Home page
    And "Profile" Name should be displayed under the Icon

    Examples:
      | Mobile Number | Date     | Customer Type |
      | 7045733821    | 26051982 | Individual    |



