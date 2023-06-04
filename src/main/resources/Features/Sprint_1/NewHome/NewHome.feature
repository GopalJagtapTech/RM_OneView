
Feature: New Home

  #@CR
  Scenario Outline: Pre Approved Offers for You - Insta EMI Card (EMI Card is Not Present)
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And verify "Pre-approved offers for you section" is Displayed or Not
    And verify following fields and formats in Pre-Approved Offers section - "Insta EMI Card"
        |Title|Insta EMI Card|
        |Description|approved amount|
        |Button|Apply Online|
    And verify Redirection for "with SSO": "/webform/emicard/pay-now"
    And Go Back to Previous Page
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 7972681037           | 19011966 | Individual    |

  Scenario Outline: Home My Relations - Flexi Loan Tile  - View Details
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And verify following fields and formats in Home My Relations section - "FLEXI TERM LOAN" "with EMI overdue"
      | Loan Name      | FLEXI TERM LOAN |
      | Account Number | 405SCEFP998240 |
      | Logo           | Loan |
      | Amount         | Rs. Digits     |
      | EMI Amount     | Rs. Digits|
      | Label          | EMI OVERDUE    |
      | Button         | Pay Now    |
      | No. of EMIs Paid      | DD/DD EMIs Paid    |
    And verify Redirection for "with SSO": "https://www.bajajfinserv.in/insta-emi-card?"
    And Go Back to Previous Page
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 7972681037           | 19011966 | Individual    |

  @CR_24
  Scenario Outline: Home My Relations - Flexi Loan Tile  - View Details
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Click on "<Account No>" - "<Subtitle>" "View Details" Button My Relations Tile in Home Page
    Then verify Customer is redirected to "<Account No>" Account <"Subtitle"> Service Page
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle  | Account No     |
#      | 9579616252    | 01011996 | Individual    | FLEXI TERM LOAN | 400FLFHE869061 |
      | 8888890933    | 01011996 | Individual    | PMG FLEXI LOAN STS | 400FLFHE869061 |

  @CR_28
  Scenario Outline: Home My Relations - Flexi Loan Tile  - Pay Now
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Click on "<Account No>" - "<Subtitle>" "Pay Now" Button My Relations Tile in Home Page
    And verify Redirection for "with SSO": "/MyAccountPayments/LoanPay/EMI_Overdue?"
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle  | Account No     |
      | 8806033451    | 01011996 | Individual    |SALARIED FLEXI LOAN | 402SAFFP317508 |

@CR_25
  Scenario Outline: To Verify submit button is  enable after selecting feedback options
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
  And Clicks on "Feedback Option in Home Page"
    And Customer selects three stars on Rating Option
    And Customer selects Feedback option
    Then Submit button should be enabled
    And Clicks on submit button
    Then Thank You Pop Up should be displayed
    When user Switches to default Content
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 9579616252 | 12121999 |  Individual |

#@CR_23
  Scenario Outline: Home - Pre Approved Offers for You position
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    Then verify "Pre-approved offers for you section" is Present Below the "Bills & Recharges section"
    Then verify "Pre-approved offers for you section" is Present Above the "Shop on Bajaj Mall section"
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 9823138710    | 01011996 | Individual    |

#  @CR_23
  Scenario Outline: Home - Pre Approved Banner Offers position
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    Then verify "Pre-approved offers Banners section" is Present Below the "Mast Head section"
    Then verify "Pre-approved offers Banners section" is Present Above the "Bills & Recharges section"
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 9823138710    | 01011996 | Individual    |


    #################### CRs April Withdraw CTA US - 2888197 #########################
  @DataNotYetConfirm
  Scenario Outline: Home My Relations - Flexi Loan Tile  - Withdraw CTA
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Click on "<Account No>" - "<Subtitle>" "Withdraw Now" Button My Relations Tile in Home Page
    Then verify Customer is redirected to "<Account No>" Account <"Subtitle"> Service Page
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle  | Account No     |
      | 9579616252    | 01011996 | Individual    | FLEXI TERM LOAN | P405PSP3493728 |

@DataNotYetConfirm
  Scenario Outline: Home My Relations - Flexi Loan Tile  - View Details
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Click on "<Account No>" - "<Subtitle>" "View Details" Button My Relations Tile in Home Page
    Then verify Customer is redirected to "<Account No>" Account <"Subtitle"> Service Page
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle  | Account No     |
      | 8888890933    | 01011996 | Individual    | PMG FLEXI LOAN STS | 400FLFHE869061 |

  Scenario Outline: Home My Relations - Flexi Loan Tile  - Pay Now
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And verify following fields and formats in Home My Relations section - "FLEXI TERM LOAN" "with EMI overdue"
      | Loan Name      | FLEXI TERM LOAN |
      | Account Number | 400SPFFY988605 |
      | Logo           | Loan |
      | Amount         | Rs. Digits     |
      | EMI Amount     | Rs. Digits|
      | Label          | EMI OVERDUE    |
      | Button         | Pay Now    |
      | No. of EMIs Paid      | DD/DD EMIs Paid    |
    And verify Redirection for "with SSO": "https://uat-oneweb.bajajfinserv.in/MyAccountPayments/LoanPay/EMI_Overdue?"
    And Go Back to Previous Page
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 8019991986           | 19011966 | Individual    |
