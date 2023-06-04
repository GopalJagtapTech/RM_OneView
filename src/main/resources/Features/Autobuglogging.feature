Feature: Home Page - Credit Card

  Scenario Outline: TC_01_To verify Credit card is displayed under My Relations
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    Then Verify Credit Card is displayed under My Relations "<CardName>"
    Examples:
      |Mobile Number| Date|Customer Type|CardName|
      |9176262627|26051982| Individual|Bajaj Finserv DBS Bank SuperCard|
