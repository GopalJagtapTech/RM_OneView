@FD2804@FD2
Feature: FD Services RHS - Open FD
  @Pass
  Scenario Outline: FD RHS - Open FD - TO verify open FD available in <FD Status> Customers
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    Then verify Redirection using Account number "<Acc Number>"
    Then verify RHS "Quick Actions" following Options: "Open FD" are Displayed
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number |FD Status|
      | 8800384932    | 19091970 | Individual    | 416421     |Active|
      | 8800384932    | 19091970 | Individual    | 416421     |Pre-Matured|
      | 9998135293    | 19091970 | Individual    | 640796     |Matured FD |
  @Pass
  Scenario Outline: FD RHS - Open FD - TO verify open FD Redirection
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
    And Customer Click on "Open FD" CTA in RHS
    Then verify Redirection for "with New Tab": "https://www.bajajfinserv.in/fixed-deposit-application-form?ProductName=FD"
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number |
      | 8800384932    | 19091970 | Individual    | 416421     |
@Pass
  Scenario Outline: FD  - View Details - Home My Relations - Redirection
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Click on "<Account No>" - "<Subtitle>" "View Details" Button My Relations Tile in Home Page
    Then verify Redirection using Account number "<Acc Number>"
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle  | Account No     |
      | 9987160686    | 01011996 | Individual    | Fixed Deposit | 149382 |
