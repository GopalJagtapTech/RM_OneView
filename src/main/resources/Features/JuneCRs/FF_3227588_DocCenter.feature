Feature: US_3227588 Doc Center - Deposits


  Scenario Outline: To verify View Documents option is displayed under Quick Actions for Active FD
    Given User is logged in "<MOB>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    Then verify Redirection using Account number "<Acc Number>"
    And verify options"View Documents" available under "Quick Actions" on RHS
    Examples:
      | MOB        | DOB        | Customer Type | Acc Number |
      | 9820041515 | 13/09/1990 | Individual    | 43709      |

  Scenario Outline: To verify View Documents option is displayed under Quick Actions for Closed FD
    Given User is logged in "<MOB>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And Click on Filter
    And click on "Closed" Relationship status in Filter
    And click on "Apply" Button
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    Then verify Redirection using Account number "<Acc Number>"
    And verify options"View Documents" available under "Quick Actions" on RHS
    Examples:
      | MOB        | DOB        | Customer Type | Acc Number |
      | 9422010772 | 17/03/1999 | Individual    | 148330     |


  Scenario Outline: To verify View Statements Pop-up is displayed when customer clicks on View Documents
    Given User is logged in "<MOB>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    Then verify Redirection using Account number "<Acc Number>"
    And Customer Click on "View Documents" CTA in RHS
    Then Then a drawer or pop-up should be displayed with below details for "<Acc Number>"
    Examples:
      | MOB        | DOB        | Customer Type | Acc Number |
      | 9820041515 | 13/09/1990 | Individual    | 43709      |


  Scenario Outline: To verify View Statements Pop-up is displayed when customer clicks on View Documents - Closed
    Given User is logged in "<MOB>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And Click on Filter
    And click on "Closed" Relationship status in Filter
    And click on "Apply" Button
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    Then verify Redirection using Account number "<Acc Number>"
    And Customer Click on "View Documents" CTA in RHS
    Then Then a drawer or pop-up should be displayed with below details for "<Acc Number>"
    Examples:
      | MOB        | DOB        | Customer Type | Acc Number |
      | 9422010772 | 17/03/1999 | Individual    | 148330     |


  Scenario Outline: To verify given options and CTA are displayed under view statements Pop-up.
    Given User is logged in "<MOB>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    Then verify Redirection using Account number "<Acc Number>"
    And Customer Click on "View Documents" CTA in RHS
    Then Below list of documents "<Documents>" should be displayed in Popup
    Examples:
      | MOB        | DOB        | Customer Type | Acc Number | Documents                                                                                |
      | 9820041515 | 13/09/1990 | Individual    | 43709      | Prefilled- Form 15G/15H#Interest Certificate#Fixed Deposit Receipt#Statement of Accounts |


  Scenario Outline: To verify when customer clicks on TDS Certificate under View Statement pop-up - Active

    Given User is logged in "<MOB>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    Then verify Redirection using Account number "<Acc Number>"
    And Customer Click on "View Documents" CTA in RHS
    Then On click on download sign of pop-up for "Prefilled- Form 15G/15H"
    Then Customer should be redirected "https://report.bajajfinserv.in/Form15GH_Reports.aspx" to Form 15GH page on new Tab
    Examples:
      | MOB        | DOB        | Customer Type | Acc Number |
      | 9820041515 | 13/09/1990 | Individual    | 43709      |


  Scenario Outline: To verify when customer clicks on TDS Certificate under View Statement pop-up - Closed
    Given User is logged in "<MOB>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And Click on Filter
    And click on "Closed" Relationship status in Filter
    And click on "Apply" Button
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    Then verify Redirection using Account number "<Acc Number>"
    And Customer Click on "View Documents" CTA in RHS
    Then On click on download sign of pop-up for "Prefilled- Form 15G/15H"
    Then Customer should be redirected "https://report.bajajfinserv.in/Form15GH_Reports.aspx" to Form 15GH page on new Tab
    Examples:
      | MOB        | DOB        | Customer Type | Acc Number |
      | 9422010772 | 17/03/1999 | Individual    | 148330     |

  Scenario Outline: To verify when customer clicks on Download CTA on 15G/H page - Active
    Given User is logged in "<MOB>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    Then verify Redirection using Account number "<Acc Number>"
    And Customer Click on "View Documents" CTA in RHS
    Then On click on download sign of pop-up for "Prefilled- Form 15G/15H"
    And Click on DOWNLOAD CTA in Form 15GH page - "https://report.bajajfinserv.in/Form15GH_Reports.aspx", "Form15_G.pdf" should be downloaded
    Examples:
      | MOB        | DOB        | Customer Type | Acc Number |
      | 9820041515 | 13/09/1990 | Individual    | 43709      |

  Scenario Outline: To verify when customer clicks on Download CTA on 15G/H page - Closed
    Given User is logged in "<MOB>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And Click on Filter
    And click on "Closed" Relationship status in Filter
    And click on "Apply" Button
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    Then verify Redirection using Account number "<Acc Number>"
    And Customer Click on "View Documents" CTA in RHS
    Then On click on download sign of pop-up for "Prefilled- Form 15G/15H"
    And Click on DOWNLOAD CTA in Form 15GH page - "https://report.bajajfinserv.in/Form15GH_Reports.aspx", "Form15_G.pdf" should be downloaded
    Examples:
      | MOB        | DOB        | Customer Type | Acc Number |
      | 9422010772 | 17/03/1999 | Individual    | 148330     |

  Scenario Outline: To verify when customer clicks on Interest Certificate under View Statement pop-up - Active
    Given User is logged in "<MOB>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    Then verify Redirection using Account number "<Acc Number>"
    And Customer Click on "View Documents" CTA in RHS
    Then On click on download sign of pop-up for "Interest Certificate", then that document should be downloaded in pdf format "99120216_FDIntCertificate.pdf"
    Examples:
      | MOB        | DOB        | Customer Type | Acc Number |
      | 9820041515 | 13/09/1990 | Individual    | 43709      |

  Scenario Outline: To verify when customer clicks on Interest Certificate under View Statement pop-up - Closed
    Given User is logged in "<MOB>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And Click on Filter
    And click on "Closed" Relationship status in Filter
    And click on "Apply" Button
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    Then verify Redirection using Account number "<Acc Number>"
    And Customer Click on "View Documents" CTA in RHS
    Then On click on download sign of pop-up for "Interest Certificate", then that document should be downloaded in pdf format "6013910_FDIntCertificate.pdf"
    Examples:
      | MOB        | DOB        | Customer Type | Acc Number |
      | 9422010772 | 17/03/1999 | Individual    | 148330     |

  Scenario Outline: To verify when customer clicks on Fixed Deposits Receipt under View Statement pop-up - Active
    Given User is logged in "<MOB>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    Then verify Redirection using Account number "<Acc Number>"
    And Customer Click on "View Documents" CTA in RHS
    Then On click on download sign of pop-up for "Fixed Deposit Receipt", then that document should be downloaded in pdf format "FD_Reciept.pdf"
    Examples:
      | MOB        | DOB        | Customer Type | Acc Number |
      | 9820041515 | 13/09/1990 | Individual    | 43709      |

  Scenario Outline: To verify when customer clicks on Fixed Deposits Receipt under View Statement pop-up - Closed
    Given User is logged in "<MOB>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And Click on Filter
    And click on "Closed" Relationship status in Filter
    And click on "Apply" Button
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    Then verify Redirection using Account number "<Acc Number>"
    And Customer Click on "View Documents" CTA in RHS
    Then On click on download sign of pop-up for "Fixed Deposit Receipt", then that document should be downloaded in pdf format "FD_Reciept.pdf"
    Examples:
      | MOB        | DOB        | Customer Type | Acc Number |
      | 9422010772 | 17/03/1999 | Individual    | 148330     |

  Scenario Outline: To verify when customer clicks on Statement of Accounts under View Statement pop-up - Active
    Given User is logged in "<MOB>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    Then verify Redirection using Account number "<Acc Number>"
    And Customer Click on "View Documents" CTA in RHS
    Then On click on download sign of pop-up for "Statement of Accounts", then that document should be downloaded in pdf format "FD_SOAReport.pdf"
    Examples:
      | MOB        | DOB        | Customer Type | Acc Number |
      | 9820041515 | 13/09/1990 | Individual    | 43709      |

  Scenario Outline: To verify when customer clicks on Statement of Accounts under View Statement pop-up - Closed
    Given User is logged in "<MOB>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And Click on Filter
    And click on "Closed" Relationship status in Filter
    And click on "Apply" Button
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    Then verify Redirection using Account number "<Acc Number>"
    And Customer Click on "View Documents" CTA in RHS
    Then On click on download sign of pop-up for "Statement of Accounts", then that document should be downloaded in pdf format "FD_SOAReport.pdf"
    Examples:
      | MOB        | DOB        | Customer Type | Acc Number |
      | 9422010772 | 17/03/1999 | Individual    | 148330     |

  Scenario Outline: To verify when customer clicks on Find them her CTA under View Statement pop-up - Active
    Given User is logged in "<MOB>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    Then verify Redirection using Account number "<Acc Number>"
    And Customer Click on "View Documents" CTA in RHS
    And click on "Find them here" hyperlink
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter/docCenter_FDDetails" Url
    And User should be redirected to specific document page "<Acc Number>"
    Examples:
      | MOB        | DOB        | Customer Type | Acc Number |
      | 9820041515 | 13/09/1990 | Individual    | 43709      |

  Scenario Outline: To verify when customer clicks on Find them her CTA under View Statement pop-up - Closed
    Given User is logged in "<MOB>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And Click on Filter
    And click on "Closed" Relationship status in Filter
    And click on "Apply" Button
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    Then verify Redirection using Account number "<Acc Number>"
    And Customer Click on "View Documents" CTA in RHS
    And click on "Find them here" hyperlink
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter/docCenter_FDDetails" Url
    And User should be redirected to specific document page "<Acc Number>"
    Examples:
      | MOB        | DOB        | Customer Type | Acc Number |
      | 9422010772 | 17/03/1999 | Individual    | 148330     |

  @1108
  Scenario Outline: To verify View Documents option is displayed under Quick Actions for Active SDP
    Given User is logged in "<MOB>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "SYSTEMATIC DEPOSIT PLAN" Tile of Account number "<Acc Number>"
    Then verify Redirection using Account number "<Acc Number>"
    And verify options"View Documents" available under "Quick Actions" on RHS
    Examples:
      | MOB        | DOB        | Customer Type | Acc Number |
      | 9664694423 | 13/09/1990 | Individual    | 639642     |

  @1108
  Scenario Outline: To verify View Documents option is displayed under Quick Actions for Closed SDP
    Given User is logged in "<MOB>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And Click on Filter
    And click on "Closed" Relationship status in Filter
    And click on "Apply" Button
    And click on "SYSTEMATIC DEPOSIT PLAN" Tile of Account number "<Acc Number>"
    Then verify Redirection using Account number "<Acc Number>"
    And verify options"View Documents" available under "Quick Actions" on RHS
    Examples:
      | MOB        | DOB        | Customer Type | Acc Number |
      | 9982802053 | 13/09/1990 | Individual    | 963736     |


