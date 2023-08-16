Feature: US_2974333 LAFD Product Enhancement


#  @LAFD CR Enhancement
  @1108
  Scenario Outline: To verify Joint Account holders can apply for LAFD
    Given User is logged in "<MOB>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And  Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    Then verify Redirection using Account number "<Acc Number>"
    And Customer Click on "Get a loan against FD" CTA in RHS
    Then verify Page Redirection to "<Expected Url>" Url with SSO

    Examples:
      | MOB        | DOB        | Customer Type | Acc Number | Expected Url                            |
      | 8369311535 | 02-03-1960 | Individual    | 1321652    | MyAccountFixedDeposit/FixedDeposit/LAFD |

  @1108fail
  Scenario Outline: To verify customer with Sole Proprietorship PAN Card i.e 4th of PAN Card should be “P” can apply for LAFD
    Given User is logged in "<MOB>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    Then verify Redirection using Account number "<Acc Number>"
    And Customer Click on "Get a loan against FD" CTA in RHS
    Then verify Page Redirection to "<Expected Url>" Url with SSO
#  Get a loan against FD

    Examples:
      | MOB        | DOB        | Customer Type | Acc Number | Expected Url                            |
      | 9850673690 | 02-03-1960 | Individual    | 557052     | MyAccountFixedDeposit/FixedDeposit/LAFD |

  @check
  Scenario Outline: To verify customer with HUF PAN Card i.e 4th of PAN Card should be “H” can apply for LAFD
    Given User is logged in "<MOB>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And  Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    Then verify Redirection using Account number "<Acc Number>"
    And Customer Click on "Get a loan against FD" CTA in RHS
    Then verify Page Redirection to "<Expected Url>" Url with SSO

    Examples:
      | MOB        | DOB        | Customer Type | Acc Number | Expected Url                            |
      | 8369311535 | 02-03-1960 | Individual    | 1321652    | MyAccountFixedDeposit/FixedDeposit/LAFD |

  @check
  Scenario Outline: To verify customer with Corporate PAN Card cannot apply for LAFD
    Given User is logged in "<MOB>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    Then verify Redirection using Account number "<Acc Number>"
    And Customer Click on "Get a loan against FD" CTA in RHS
    Then Customer should get Validation pop-up for Geta LAFD

    Examples:
      | MOB        | DOB        | Customer Type | Acc Number |
      | 9890248864 | 02-03-1960 | Corporate     | 987683     |

  @nodata
  Scenario Outline: To verify Happy to Assist you section is displayed on LAFD page
    Given User is logged in "<MOB>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    Then verify Redirection using Account number "<Acc Number>"
    And Customer Click on "Get a loan against FD" CTA in RHS
    Then verify Page Redirection to "<Expected Url>" Url with SSO
    Then “Happy to Assist you” section should be displayed on LAFD page

    Examples:
      | MOB        | DOB        | Customer Type | Acc Number | Expected Url                            |
      | 9821127115 | 02-03-1960 | Individual    |            | MyAccountFixedDeposit/FixedDeposit/LAFD |

