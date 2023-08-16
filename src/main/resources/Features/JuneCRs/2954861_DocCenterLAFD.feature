Feature: Document Center pop up App_LAFD

  Scenario Outline: To verify drawer/pop-up is displayed when customer click on “View Statements”
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    And Customer Click on "View Documents" CTA in RHS
    Then Then a drawer or pop-up should be displayed with below details for "<Account No>"

    Examples:
      | Mobile Number | Date       | Customer Type | Subtitle                   | Account No     |
      | 8800384932    | 13/09/1990 | individual    | LOAN AGAINST FIXED DEPOSIT | 401LFDGD210545 |


  Scenario Outline: To verify the list of documents displayed in Pop-up
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    And Customer Click on "View Documents" CTA in RHS
    Then Below list of documents "<Documents>" should be displayed in Popup

    Examples:
      | Mobile Number | Date       | Customer Type | Subtitle                   | Account No     | Documents                                                          |
      | 8800384932    | 13/09/1990 | individual    | LOAN AGAINST FIXED DEPOSIT | 401LFDGD210545 | Statement of Account#Repayment Schedule#No Dues Certificate#Others |


  Scenario Outline: To verify document is downloaded when customer click on download sign available ahead of that document
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    And Customer Click on "View Documents" CTA in RHS
    Then On click on download sign of pop-up for "<Doc>", then that document should be downloaded in pdf format "<FileName>"

    Examples:
      | Mobile Number | Date       | Customer Type | Subtitle                   | Account No     | Doc                  | FileName               |
      | 8800384932    | 13/09/1990 | individual    | LOAN AGAINST FIXED DEPOSIT | 401LFDGD210545 | Statement of Account | 401LFDGD210545_SOA.pdf |


  Scenario Outline: To verify customer redirect to View statements screen when click on ”Find them here” hyperlink
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    Then verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    And Customer Click on "View Documents" CTA in RHS
    And click on "Find them here" hyperlink
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter/docCenter_LoanDetails" Url
    And User should be redirected to specific document page "<Account No>"

    Examples:
      | Mobile Number | Date       | Customer Type | Subtitle                   | Account No     |
      | 8800384932    | 13/09/1990 | individual    | LOAN AGAINST FIXED DEPOSIT | 401LFDGD210545 |








