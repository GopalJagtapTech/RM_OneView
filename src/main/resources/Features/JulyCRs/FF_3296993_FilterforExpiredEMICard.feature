Feature:  US_3296993_Filter for Expired EMI Card

  Scenario Outline: To verify below option are displayed under Filter option for Cards Tab
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Cards" tab
    And Click on Filter
    Then Below Options "<Options>" should be displayed in Filter for Cards

    Examples:
      | Mobile Number | Date       | Customer Type | Options                |
      | 8826319933    | 24-01-1988 | Individual    | Active#Blocked#Expired |

  Scenario Outline: To verify when apply for Expired option under Filter Expired cards are displayed
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User lands on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Cards" tab
    And get count of "Cards" "EXPIRED" Relations
    And Click on Filter
    And click on "Expired" Relationship status in Filter
    And click on "Apply" Button
#    Then All the Expired cards should be displayed
    Then verify "Cards" Count After Filter "EXPIRED"

    Examples:
      | Mobile Number | Date       | Customer Type |
      | 8826319933    | 24-01-1988 | Individual    |

  Scenario Outline: To verify Expired Nudge is displayed on Expired Cards Tile
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User lands on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Cards" tab
    And Click on Filter
    And click on "Expired" Relationship status in Filter
    And click on "Apply" Button
    Then verify "Cards" Relations "EXPIRED" Label Color: "Maroon"-"#800000"
#    Then All the Expired cards should be displayed with Expired Nudges on tiles
    Examples:
      | Mobile Number | Date       | Customer Type |
      | 8826319933    | 24-01-1988 | Individual    |

  Scenario Outline: To verify when No Expired card relation is there then below text is displayed
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User lands on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Cards" tab
    And Click on Filter
    And click on "Active" Relationship status in Filter
    And click on "Expired" Relationship status in Filter
    And click on "Apply" Button
    And Below text "You do not have any expired cards with us." should be displayed
#    Then below text should be displayed to customer:
#  “You do not have Expired Cards with us”
    Examples:
      | Mobile Number | Date       | Customer Type |
      | 7798716919    | 24-01-1988 | Individual    |




  





