Feature: Relation not landing on current relation

  Scenario Outline: To verify after clicking on View All customer lands on Loans Tab
    Given User is logged in "<MOB>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    Then Customer should be redirected to My Relation page with "Loans" tab selected

    Examples:
      | MOB        | DOB        | Customer Type |
      | 9582898063 | 02-03-1960 | Individual    |

  Scenario Outline: To verify after clicking on View All customer lands on Cards Tab
    Given User is logged in "<MOB>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    Then Customer should be redirected to My Relation page with "Cards" tab selected

    Examples:
      | MOB        | DOB        | Customer Type |
      | 9982802053 | 02-03-1960 | Individual    |

  Scenario Outline: To verify after clicking on View All customer lands on Deposits Tab
    Given User is logged in "<MOB>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    Then Customer should be redirected to My Relation page with "Deposits" tab selected

    Examples:
      | MOB        | DOB        | Customer Type |
      | 7738797860 | 02-03-1960 | Individual    |

  Scenario Outline: To verify after clicking on View All customer lands on Insurance Tab
    Given User is logged in "<MOB>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    Then Customer should be redirected to My Relation page with "Insurance/Value-added Services" tab selected

    Examples:
      | MOB        | DOB        | Customer Type |
      | 9443255624 | 02-03-1960 | Individual    |

