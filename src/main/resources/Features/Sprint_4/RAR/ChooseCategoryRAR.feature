Feature: RAR Choose A Category
@run
  Scenario Outline: Top up
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User lands on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And verify User is redirected to Request History Page
    And Choose "Loans" in Category
    Then verify user Redirected to "Loans" Category Page
    And Clicks on "Gold Loan" Relation in Category Page
    And Clicks on "Top-Up" query in "Gold Loan" Relation
    And verify User is Redirected to FAQs Page in RAR Choose A Category
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu         |
      | 8800384932    | 02021976 | Individual    | Help and support |

  Scenario: Top UP FAQs
    Then verify FAQs
      |How will a part-payment get adjusted towards my Gold Loan?|
      |How will a part-payment get adjusted towards my Gold Loan?|
      |How will a part-payment get adjusted towards my Gold Loan?|

  Scenario Outline: Part Payment
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User lands on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And verify User is redirected to Request History Page
    And Choose "Loans" in Category
    Then verify user Redirected to "Loans" Category Page
    And Clicks on "Gold Loan" Relation in Category Page
    And Clicks on "Top-Up" query in "Gold Loan" Relation
    And verify User is Redirected to FAQs Page in RAR Choose A Category
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu         |
      | 8800384932    | 02021976 | Individual    | Help and support |

  Scenario: Part Payment FAQs
    Then verify FAQs
      |How will a part-payment get adjusted towards my Gold Loan?|
      |How will a part-payment get adjusted towards my Gold Loan?|