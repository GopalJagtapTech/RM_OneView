
Feature: RAR Testing


  Scenario Outline: Stop SDP - To verify customer able to view STOP SDP Option in Active SDP
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page

    Examples:
      | Mobile Number | Date     | Customer Type |
      | 9944979910    | 19091970 | Individual    |
