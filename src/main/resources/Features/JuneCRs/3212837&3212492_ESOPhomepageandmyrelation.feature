Feature:  ESOP homepage and my relation

  Scenario Outline: To verify that customer is able to view loan card for on home page for ESOP product
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    Then Customer should be able to view loan card for on home page for ESOP product "<LAN>"
    Examples:
      | Mobile Number | Date       | Customer Type | LAN    |
      | 9820809937    | 13/09/1990 | Individual    | 126312 |


  Scenario Outline: To verify that customer is able to view loan card for on home page for Active FCP product
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    Then Active FCP should not be displayed on home page "<LAN>"
    Examples:
      | Mobile Number | Date       | Customer Type | LAN    |
      | 9820809937    | 13/09/1990 | Individual    | 129188 |

  Scenario Outline: To verify that content is displayed on loan card of home page for FCP or ESOP product
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    Then Below Content should be displayed for LAN "<LAN>" with Icon, "<Prod name>", "Outstanding Loan Amount" and "View Details" CTA
    Examples:
      | Mobile Number | Date       | Customer Type | LAN    | Prod name           |
      | 9820809937    | 13/09/1990 | Individual    | 126312 | LOAN AGAINST SHARES |

  Scenario Outline: To verify that customer is redirected to loan details page on click of View Details
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Click on "View Details" CTA for "ESOP" tile "<LAN>"
    Then Verify Customer Redirected to "MyAccountLoanServices/LAS/ESOPDetails" Url
    Examples:
      | Mobile Number | Date       | Customer Type | LAN    |
      | 9820809937    | 13/09/1990 | Individual    | 126312 |

  Scenario Outline: To verify that content is displayed on loan card of my relation page for ESOP product
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer clicks on view all option
    And My relations Page should be displayed
    Then Below Content should be displayed for LAN "<FAS>" with "<Prod name>", "<LAN No>" and Outstanding loan amount
    Examples:
      | Mobile Number | Date       | Customer Type | FAS    | Prod name           | LAN No          |
      | 9820809937    | 13/09/1990 | Individual    | 126312 | LOAN AGAINST SHARES | V402ESO00048908 |


  Scenario Outline: To verify that customer is able to view loan card in my relation for closed FCP product
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer clicks on view all option
    And My relations Page should be displayed
    Then Customer should be able to view loan card in my relation for closed FCP product "<LAN>"
    Examples:
      | Mobile Number | Date       | Customer Type | LAN    |
      | 9324573968    | 13/09/1990 | Individual    | 131186 |

  Scenario Outline: To verify that customer is able to view loan card in my relation for active FCP product
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer clicks on view all option
    And My relations Page should be displayed
    Then Customer should not be able to view loan card in my relation for active FCP product "<LAN>"
    Examples:
      | Mobile Number | Date       | Customer Type | LAN    |
      | 9820809937    | 13/09/1990 | Individual    | 129188 |

  Scenario Outline: To verify that customer is redirected to loan details page on click of loan card
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer clicks on view all option
    And My relations Page should be displayed
    And Click on ESOP Loan card "<LAN>"
    Then Verify Customer Redirected to "MyAccountLoanServices/LAS/ESOPDetails" Url
    Examples:
      | Mobile Number | Date       | Customer Type | LAN    |
      | 9820809937    | 13/09/1990 | Individual    | 126312 |


  Scenario Outline: To verify that content is displayed on loan card of my relation page for closed ESOP/FCP product - "<Prod ID>"
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer clicks on view all option
    And My relations Page should be displayed
    Then Below Content should be displayed for LAN <LAN>  of "<Prod ID>" “Prod name”, “LAN no”, “Closed Nudge”, “FAS no”, “Loan Closed Date”
    Examples:
      | Mobile Number | Date       | Customer Type | LAN             | Prod ID |
      | 9324573968    | 13/09/1990 | Individual    | V405FCP00067125 | FCP     |
      | 9820809937    | 13/09/1990 | Individual    | V402ESO00048907 | ESOP    |

  Scenario Outline: To verify that customer is redirected to loan details page on click of closed loan card - "<Prod ID>"
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer clicks on view all option
    And My relations Page should be displayed
    And Click on ESOP Loan card with LAN Number "<LAN>"
    Then Verify Customer Redirected to "MyAccountLoanServices/LAS/ESOPDetails" Url
    Examples:
      | Mobile Number | Date       | Customer Type | LAN             | Prod ID |
      | 9324573968    | 13/09/1990 | Individual    | V405FCP00067125 | FCP     |
      | 9820809937    | 13/09/1990 | Individual    | V402ESO00048907 | ESOP    |
