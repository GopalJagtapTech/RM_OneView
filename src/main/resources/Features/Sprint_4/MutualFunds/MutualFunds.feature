Feature: Mutual Funds
  @check
  Scenario Outline: To verify Mutual Fund Tab is displayed under My Relation page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    Then Customer able to see "Mutual Funds" Tab under My Relation page
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 6969000294    | 14061965 | Corporate     |
  @check
  Scenario Outline: To verify the Static Mutual Fund Details are displayed when customer haven’t invested in Mutual Fund
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Mutual Funds" tab
    Then Customer able to see Static Mutual Fund "<Msg>" Details
    Examples:
      | Mobile Number | Date     | Customer Type | Msg                                              |
      | 8800384932    | 02021976 | Individual    | You do not have any active Mutual funds with us. |

  @check
  Scenario Outline: To verify the Mutual Fund Tile are displayed when customer invested in Mutual Fund
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Mutual Funds" tab
    Then Customer able to see mutual Fund Tile
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 6969000294    | 14061965 | Corporate     |
  @check
  Scenario Outline: To verify details are displayed on Mutual Fund Tile
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Mutual Funds" tab
    Then Customer able to see Details on Mutual Fund Tile
    Examples:
      | Mobile Number | Date     | Customer Type | Details                                                                                     |
      | 6969000294    | 14061965 | Corporate     | Mutual Fund, Annualized Return/ Absolute Return, Invested Amount, Current Value, Arrow Icon |
@guest @check
  Scenario Outline: To verify Absolute Return is displayed on Mutual Fund Tile when the holding period between purchase date and Current date is less than 365 days
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Mutual Funds" tab
    Then Customer able to see "Absolute Return" on Mutual Fund Tile
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 9960657154    | 03121987 | Individual    |
@check
  Scenario Outline: To verify Annualized Return is displayed on Mutual Fund Tile when the holding period between purchase date and Current date is more than 365 days
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Mutual Funds" tab
    Then Customer able to see "Annualized Return" on Mutual Fund Tile
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 6969000294    | 14061965 | Corporate     |
@guest
  Scenario Outline: To verify “Up green Arrow“ is displayed on Mutual Fund Tile when Current Value is greater than Invested Amount
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Mutual Funds" tab
    Then Customer able to see “Up green Arrow” on Mutual Fund Tile
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 7020222314    | 14111962 | Individual    |
@check
  Scenario Outline: To verify “Down Red Arrow“ is displayed on Mutual Fund Tile when Current Value is less than Invested Amount
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Mutual Funds" tab
    Then Customer able to see Down Red Arrow on Mutual Fund Tile
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 6969000294    | 14061965 | Corporate     |

  Scenario Outline: To verify “ Hyphen“  is displayed on Mutual Fund Tile when Current Value is equal to Invested Amount
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Mutual Funds" tab
    Then Customer able to see “ – Hyphen ” on Mutual Fund Tile
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 8800384932    | 02021976 | Individual    |

  Scenario Outline: To verify the Redirection On Click of Mutual Fund Tile
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Mutual Funds" tab
    And click on Mutual Fund Tile
    Then Customer should be redirected to “<URL>” on Different Tab
    Examples:
      | Mobile Number | Date     | Customer Type | URL                                   |
      | 8800384932    | 02021976 | Individual    | https://bfl.onelink.me/857331112/MALL |







