Feature: US - 2969778 - Cancel / Surrender CTA to be removed basis new logic
  //For Funded Insurane ( With Loan) :

  @pass
  Scenario Outline: To verify Cancel / Surrender CTA is displayed only for 30 days from its Loan Disbursement date respectively
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    Then My relations Page should be displayed
    And click on "Insurance/Value-added Services" tab
    And click on "<Subtitle>" Tile of Account number "<Account No>"
    Then verify Redirection using Account number "<Account No>"
    And verify options"<Options>" available under "Quick Actions" on RHS

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle                         | Account No | Options                        |
      | 9133215187    | 27111995 | Individual    | CPP- ASSISTANCE PRODUCT/SERVICES | IMC217670  | Surrender Policy#Cancel Policy |

  @pass
  Scenario Outline: To verify Cancel / Surrender CTA is not displayed when difference between Disbursement date and current date is more then 30 days
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    Then My relations Page should be displayed
    And click on "Insurance/Value-added Services" tab
    And click on "<Subtitle>" Tile of Account number "<Account No>"
    Then verify Redirection using Account number "<Account No>"
    And verify options"<Options>" not available under "Quick Actions" on RHS

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle                 | Account No               | Options                        |
#      | 9444129712    | 27111995 | Individual    |  |   | Surrender Policy#Cancel Policy |
      | 9422278355    | 27111995 | Corporate     | BAGIC- GENERAL INSURANCE | OG-19-2001-8422-00000649 | Surrender Policy#Cancel Policy |

#  B. For Funded Insurane ( Without Loan) :

  Scenario Outline: To verify Cancel / Surrender CTA is displayed only for 30 days from its Loan Policy Start date respectively
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    Then My relations Page should be displayed
    And click on "Insurance/Value-added Services" tab
    And click on "<Subtitle>" Tile of Account number "<Account No>"
    Then verify Redirection using Account number "<Account No>"
    And verify options"<Options>" available under "Quick Actions" on RHS

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle | Account No | Options                        |
      |               | 27111995 | Individual    |          |            | Surrender Policy#Cancel Policy |
## Data Not Available

  @pass
  Scenario Outline: To verify Cancel / Surrender CTA is not displayed when difference between Policy Start date and current date is more then 30 days
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    Then My relations Page should be displayed
    And click on "Insurance/Value-added Services" tab
    And click on "<Subtitle>" Tile of Account number "<Account No>"
    Then verify Redirection using Account number "<Account No>"
    And verify options"<Options>" not available under "Quick Actions" on RHS

    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle                         | Account No | Options                        |
      | 8208966906    | 27111995 | Individual    | CPP- ASSISTANCE PRODUCT/SERVICES | IMB806274  | Surrender Policy#Cancel Policy |

#  For Non Funded Insurance :
  @pass
  Scenario Outline: To verify Cancel / Surrender CTA is displayed only for 30 days from its Loan Policy Start date respectively
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    Then My relations Page should be displayed
    And click on "Insurance/Value-added Services" tab
    And click on "<Subtitle>" Tile of Account number "<Account No>"
    Then verify Redirection using Account number "<Account No>"
    And verify options"<Options>" available under "Quick Actions" on RHS
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle | Account No            | Options                        |
      | 7666995802    | 27111995 | Individual    | NA       | GHI-71-23-0404171-000 | Surrender Policy#Cancel Policy |

  @pass
  Scenario Outline: To verify Cancel / Surrender CTA is not displayed when difference between Policy Start date and current date is more then 30 days
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    Then My relations Page should be displayed
    And click on "Insurance/Value-added Services" tab
    And click on "<Subtitle>" Tile of Account number "<Account No>"
    Then verify Redirection using Account number "<Account No>"
    And verify options"<Options>" not available under "Quick Actions" on RHS
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle                          | Account No | Options                        |
      | 7053912697    | 27111995 | Individual    | CPP - ASSISTANCE PRODUCT/SERVICES | AS0678687  | Surrender Policy#Cancel Policy |


#  From Hamburger :
  @pass
  Scenario Outline: To verify Cancel / Surrender option should be available for customer even after 30 days to raise a request
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "Help and support"
    And Choose "Insurance" in Category
    And Clicks on "Insurance Services" Relation in Category Page
    Then "Cancel Surrender" option should be available for customer even after 30 days to raise a request


    Examples:
      | Mobile Number | Date     | Customer Type |
      | 9898230749    | 27111995 | Individual    |

