Feature: LAFD Product Enhancement


  @LAFD CR Enhancement

  Scenario Outline: To verify Joint Account holders can apply for LAFD
    Given User is logged in "<MOB>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And  Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    Then verify Redirection using Account number "<Acc Number>"
    And Customer Click on "Renew your FD" CTA in RHS
    Then verify Page Redirection to "<Expected Url>" Url with SSO
    And “Get a loan Against FD” option should be displayed under Quick Action section
    And Clicks on Get a loan Against FD option
    Then Customer should be redirected to it’s respective page

  Examples:
  |MOB              |DOB       | Customer Type |
  |9821127115|02-03-1960| Individual         |

  Scenario Outline: To verify customer with Sole Proprietorship PAN Card i.e 4th of PAN Card should be “P” can apply for LAFD
    Given User is logged in "<MOB>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And Customer clicks on Active FD tile
    And Customer should be redirected to FD Detail page
    And “Get a loan Against FD” option should be displayed under Quick Action section
    And Clicks on Get a loan Against FD option
    Then Customer should be redirected to it’s respective page

  Examples:
  |MOB              |DOB       | Customer Type |
  |8826595511|02-03-1960| Individual         |

  Scenario Outline: To verify customer with HUF PAN Card i.e 4th of PAN Card should be “H” can apply for LAFD
    Given User is logged in "<MOB>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And Customer clicks on Active FD tile
    And Customer should be redirected to FD Detail page
    And “Get a loan Against FD” option should be displayed under Quick Action section
    And Clicks on Get a loan Against FD option
    Then Customer should be redirected to it’s respective page

  Examples:
  |MOB              |DOB       | Customer Type |
  | 8369311535|02-03-1960| Individual         |

  Scenario Outline: To verify customer with Corporate PAN Card cannot apply for LAFD
    Given User is logged in "<MOB>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And Customer clicks on Active FD tile
    And Customer should be redirected to FD Detail page
    And “Get a loan Against FD” option should be displayed under Quick Action section
    And Clicks on Get a loan Against FD option
    Then Customer should get Validation pop-up

  Examples:
  |MOB              |DOB       | Customer Type |
  | 9890248864|02-03-1960| Corporate         |

  Scenario Outline: To verify Happy to Assist you section is displayed on LAFD page
    Given User is logged in "<MOB>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And Customer clicks on Active FD tile
    And Customer should be redirected to FD Detail page
    And “Get a loan Against FD” option should be displayed under Quick Action section
    And Clicks on “Get a loan Against FD” option
    And Customer redirected to LAFD PAGE
    Then “Happy to Assist you” section should be displayed on LAFD page

  Examples:
  |MOB              |DOB       | Customer Type |
  | 9821127115|02-03-1960| Individual         |

