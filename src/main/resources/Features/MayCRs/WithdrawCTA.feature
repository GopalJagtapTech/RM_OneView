Feature: Withdraw CTA

  Scenario Outline: To verify that Withdraw CTA is displayed for flexi loan without overdue
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    Then "Withdraw Now" CTA should be displayed for flexi loan without overdue "<LAN>"
    Examples:
      | Mobile Number | Date       | Customer Type | LAN            |
      | 9145474127    | 13/09/1990 | Individual    | 402SPF73838164 |

  Scenario Outline: To verify that customer is redirecting to flexi loan service page on click of Withdraw  CTA
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Click on "Withdraw Now" CTA for tile "<LAN>"
    Then Customer should be redirected to loan service page
    Examples:
      | Mobile Number | Date       | Customer Type | LAN            |
      | 9145474127    | 13/09/1990 | Individual    | 402SPF73838164 |

  Scenario Outline: To verify that Withdraw CTA is displayed for flexi loan with overdue
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    Then "Withdraw Now" CTA should not be displayed for flexi loan without overdue "<LAN>"
    Examples:
      | Mobile Number | Date       | Customer Type | LAN            |
      | 9953037058    | 13/09/1990 | Individual    | 401SPFGM842918 |

  Scenario Outline: To verify that Active flexi loan is displayed on first position when customer has flexi , term and CD loan with overdue
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    Then Active Flexi loan “<F LAN>” should be displayed on first position  when customer has flexi , term”<T LAN>” and CD loan with overdue
    Examples:
      | Mobile Number | Date       | Customer Type | F LAN          | T LAN          |
      | 9008084552    | 13/09/1990 | corporate     | 404HFB96021095 | 404PSBGJ448127 |

  Scenario Outline: To verify that flexi loan with max overdue is displayed on first position when customer has multiple active flexi loans with overdue
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    Then Active Flexi loan with max overdue “<M LAN>” should be displayed on first position when customer has multiple active flexi loans with overdue
    Examples:
      | Mobile Number | Date       | Customer Type | M LAN          |
      | 9953037058    | 13/09/1990 | Individual    | 401SPFFU576460 |

  Scenario Outline:To verify that highest available limit flexi loan is displayed on first position when customer has multiple flexi loan without overdue
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    Then Highest available limit flexi loan “<MA LAN> “should be displayed on first position when customer has multiple flexi loan without overdue
    Examples:
      | Mobile Number | Date       | Customer Type | MA LAN         |
      | 9437189914    | 13/09/1990 | Individual    | P423DHP0753427 |
