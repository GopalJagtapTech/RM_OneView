Feature: EMI Card Services

  Scenario Outline: EMI Card Services
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And verify Customer is redirected to EMI Card service page when Click on EMI Card icon through header EMI Card section
    Then Verify customer is redirected to "<Expected URL>" when customer click on To view card number on Bajaj Finserv App, "Click here" Hyperlink
    Examples:
      | Mobile Number | Date     | Customer Type | Expected URL                               |
      | 9654418901    | 26051982 | Individual    | https://play.google.com/store/apps/details |


