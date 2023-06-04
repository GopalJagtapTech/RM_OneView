@MR@Run02022023_3@Pass
Feature: My Relations

  @MyRelations@Common@ViewAll
  Scenario Outline: verify My Relation Section - View All
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    Then My relations Page should be displayed
    Examples:
      | Mobile Number | Date     | Customer Type |
#      #      | 7721001199    | 05081984 | Individual    |
#      | 9898989899    | 19011966 | Individual    |
      | 9898989899    | 19011966 | Individual    |

  @MyRelations@Common@Tabs
  Scenario Outline: verify My Relation Tabs
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    Then Below Fields should be displayed: a.Loans b.Deposits c.InsuranceVAS d.Mutual funds e.Cards
    Examples:
      | Mobile Number | Date     | Customer Type |
#      #      | 7721001199    | 05081984 | Individual    |
#      | 9898989899    | 19011966 | Individual    |
      | 8097927579    | 16111984 | Individual    |

  @MyRelations@Common@DefaultTab
  Scenario Outline: verify My Relation Loan Tab Default
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    Then Customer Should be Landed in My Relation Loans Tab
    Examples:
      | Mobile Number | Date     | Customer Type |
#      #      | 7721001199    | 05081984 | Individual    |
#      | 9898989899    | 19011966 | Individual    |
      | 9898989899    | 19011966 | Individual    |

  @MyRelations@Common@Filter
  Scenario Outline: verify Filter Visible with My Relation Tabs
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    Then Filter option should be displayed in Following tabs only: a.Loans b.Deposits c.InsuranceVAS d.Cards

    Examples:
      | Mobile Number | Date     | Customer Type |
      #      | 7721001199    | 05081984 | Individual    |
      | 9898989899    | 19011966 | Individual    |

  @MyRelations@Common@FilterCrossIcon
  Scenario Outline: verify My Relation Filter is Closed using cross Icon
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And Click on Filter
    And Close filter using cross icon
    Then Filter should be closed

    Examples:
      | Mobile Number | Date     | Customer Type |
      #      | 7721001199    | 05081984 | Individual    |
      | 9898989899    | 19011966 | Individual    |

  @MyRelations@Common@FilterCloseOutsideCick
  Scenario Outline: verify My Relation Filter is Closed on Outside Click
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And Click on Filter
    And Close filter using outside of the filter
    Then Filter should be closed

    Examples:
      | Mobile Number | Date     | Customer Type |
      #      | 7721001199    | 05081984 | Individual    |
      | 9898989899    | 19011966 | Individual    |

  @MyRelations@Common@PreApprovedOffers
  Scenario Outline: verify Pre-Approved Offers section on My Relation Page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    Then verify Pre Approved Offers on My Relations

    Examples:
      | Mobile Number | Date     | Customer Type |
      #      | 7721001199    | 05081984 | Individual    |
      | 9819184004    | 28111958 | Individual    |

  @MyRelations@Common@NoPreApprovedOffers
  Scenario Outline: verify Pre-Approved Offers section is Not Visible for Non Pre Approved Offers Customers in My Relations Page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    Then verify Pre Approved Offers is Not Visible on My Relations Page

    Examples:
      | Mobile Number | Date     | Customer Type |
      | 9898989899    | 19011966 | Individual    |


  @MyRelations@Common@RHS
  Scenario Outline: verify Quick Action section on My Relation Page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    Then verify Quick Action Section on My Relations

    Examples:
      | Mobile Number | Date     | Customer Type |
      #      | 7721001199    | 05081984 | Individual    |
      | 9898989899    | 19011966 | Individual    |

    #############################Loans#######################################
  @MyRelations@Loans@FilterOptions
  Scenario Outline: verify My Relation Filter Options for Loans
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And Click on Filter
    Then Customer able to see following Filter Text Options: "Filters, Filter your relations by using either of the parameters, Relationship Status, Clear All, Apply" and Status options: "Active, Closed"

    Examples:
      | Mobile Number | Date     | Customer Type |
      #      | 7721001199    | 05081984 | Individual    |
#      | 9898989899    | 19011966 | Individual    |
      | 8097927579    | 16111984 | Individual    |

  @MyRelations@Loans@Filter@Active
  Scenario Outline: verify My Relation Filter Options for Loans - Active
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And get count of "Loans" Active Relations
    And Click on Filter
    And click on "Active" Relationship status in Filter
    And click on "Apply" Button
    Then verify "Loans" Count After Filter "Active"

    Examples:
      | Mobile Number | Date     | Customer Type |
      #      | 7721001199    | 05081984 | Individual    |
      | 9898989899    | 19011966 | Individual    |

  @MyRelations@Loans@Filter@Closed
  Scenario Outline: verify My Relation Filter Options for Loans - Closed
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And get count of "Loans" "CLOSED" Relations
    And Click on Filter
    And click on "Closed" Relationship status in Filter
    And click on "Apply" Button
    Then verify "Loans" Count After Filter "CLOSED"

    Examples:
      | Mobile Number | Date     | Customer Type |
      #      | 7721001199    | 05081984 | Individual    |
#      | 9898989899    | 19011966 | Individual    |
      | 8097927579    | 16111984 | Individual    |

  @MyRelations@Loans@ClearAll
  Scenario Outline: verify My Relation Filter Options for Loans - Clear All
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And get count of "Loans" All Relations
    And Click on Filter
    And click on "Closed" Relationship status in Filter
    And click on "Apply" Button
    And Click on Filter
    And click on "Clear All" Button
    Then verify "Loans" Count After Clear Filter

    Examples:
      | Mobile Number | Date     | Customer Type |
      #      | 7721001199    | 05081984 | Individual    |
      | 9898989899    | 19011966 | Individual    |

  @MyRelations@Loans@Count
  Scenario Outline: verify My Relation Loans Group of cards Title with Count
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    Then verify "Loans" Group of Relations Title Count

    Examples:
      | Mobile Number | Date     | Customer Type |
      #      | 7721001199    | 05081984 | Individual    |
      | 8097927579    | 16111984 | Individual    |

  @MyRelations@Loans@LabelColor@Closed
  Scenario Outline: verify My Relations Loans - Closed Label Color
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    Then verify "Loans" Relations "CLOSED" Label Color: "Blue"-"#002a53"

    Examples:
      | Mobile Number | Date     | Customer Type |
      #      | 7721001199    | 05081984 | Individual    |
#      | 9898989899    | 19011966 | Individual    |
      | 8097927579    | 16111984 | Individual    |

  @MyRelations@Loans@LabelColor@EmiOverDue
  Scenario Outline: verify My Relations Loans - EMI Overdue Label Color
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    Then verify "Loans" Relations "EMI OVERDUE" Label Color: "Red"-"#b40000"

    Examples:
      | Mobile Number | Date     | Customer Type |
      | 9987160686    | 19091970 | Individual    |

      

#############################Cards#######################################
  @MyRelations@Cards@FilterOptions
  Scenario Outline: verify My Relation Filter Options for Cards
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Cards" tab
    And Click on Filter
    Then Customer able to see following Filter Text Options: "Filters, Filter your relations by using either of the parameters, Relationship Status, Clear All, Apply" and Status options: "Active, Blocked"

    Examples:
      | Mobile Number | Date     | Customer Type |
      #      | 7721001199    | 05081984 | Individual    |
      | 9898989899    | 19011966 | Individual    |

  @MyRelations@Cards@Filter@Active
  Scenario Outline: verify My Relation Filter Options for Cards - Active
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Cards" tab
    And get count of "Cards" Active Relations
    And Click on Filter
    And click on "Active" Relationship status in Filter
    And click on "Apply" Button
    Then verify "Cards" Count After Filter "Active"

    Examples:
      | Mobile Number | Date     | Customer Type |
      #      | 7721001199    | 05081984 | Individual    |
#      | 9898989899    | 19011966 | Individual    |
      | 8097927579    | 16111984 | Individual    |

  @MyRelations@Cards@Filter@Blocked
  Scenario Outline: verify My Relation Filter Options for Cards - Blocked
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Cards" tab
    And get count of "Cards" "BLOCKED" Relations
    And Click on Filter
    And click on "Blocked" Relationship status in Filter
    And click on "Apply" Button
    Then verify "Cards" Count After Filter "BLOCKED"

    Examples:
      | Mobile Number | Date     | Customer Type |
      #      | 7721001199    | 05081984 | Individual    |
      | 8076212434    | 12101985 | Individual    |

  @MyRelations@Cards@ClearAll
  Scenario Outline: verify My Relation Filter Options for Cards - Clear All
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Cards" tab
    And get count of "Cards" All Relations
    And Click on Filter
    And click on "Active" Relationship status in Filter
    And click on "Apply" Button
    And Click on Filter
    And click on "Clear All" Button
    Then verify "Cards" Count After Clear Filter

    Examples:
      | Mobile Number | Date     | Customer Type |
      #      | 7721001199    | 05081984 | Individual    |
      | 9898989899    | 19011966 | Individual    |

  @MyRelations@Cards@Count
  Scenario Outline: verify My Relation Cards Group of cards Title with Count
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Cards" tab
    Then verify "Cards" Group of Relations Title Count

    Examples:
      | Mobile Number | Date     | Customer Type |
      #      | 7721001199    | 05081984 | Individual    |
      | 9898989899    | 19011966 | Individual    |

  @MyRelations@Cards@LabelColor@Blocked
  Scenario Outline: verify My Relations Cards - Blocked Label Color
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Cards" tab
    Then verify "Cards" Relations "BLOCKED" Label Color: "Maroon"-"#800000"

    Examples:
      | Mobile Number | Date     | Customer Type |
      #      | 7721001199    | 05081984 | Individual    |
      | 8076212434    | 12101985 | Individual    |

#############################Insurance#######################################
  @MyRelations@Insurances@FilterOptions
  Scenario Outline: verify My Relation Filter Options for Insurance/VAS Services
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Insurance/Value-added Services" tab
    And Click on Filter
    Then Customer able to see following Filter Text Options: "Filters, Filter your relations by using either of the parameters, Relationship Status, Clear All, Apply" and Status options: "Active, Closed, Cancelled, Surrendered"

    Examples:
      | Mobile Number | Date     | Customer Type |
      #      | 7721001199    | 05081984 | Individual    |
      | 9898989899    | 19011966 | Individual    |

  @MyRelations@Insurances@Filter@Active
  Scenario Outline: verify My Relation Filter Options for Insurance - Active
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Insurance/Value-added Services" tab
    And get count of "Insurance" Active Relations
    And Click on Filter
    And click on "Active" Relationship status in Filter
    And click on "Apply" Button
    Then verify "Insurance" Count After Filter "Active"

    Examples:
      | Mobile Number | Date     | Customer Type |
      #      | 7721001199    | 05081984 | Individual    |
      | 9898989899    | 19011966 | Individual    |

  @MyRelations@Insurances@Filter@Closed
  Scenario Outline: verify My Relation Filter Options for Insurance - Closed
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Insurance/Value-added Services" tab
#    And click on "Insurance/ Value Added Services" tab
    And get count of "Insurance" "MATURED" Relations
    And Click on Filter
    And click on "Closed" Relationship status in Filter
    And click on "Apply" Button
    Then verify "Insurance" Count After Filter "MATURED"

    Examples:
      | Mobile Number | Date     | Customer Type |
      #      | 7721001199    | 05081984 | Individual    |
      | 9717843356    | 30071985 | Individual    |

  @MyRelations@Insurances@Filter@Cancelled
  Scenario Outline: verify My Relation Filter Options for Insurance - Cancelled
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Insurance/Value-added Services" tab
    And get count of "Insurance" "CANCELLED" Relations
    And Click on Filter
    And click on "Cancelled" Relationship status in Filter
    And click on "Apply" Button
    Then verify "Insurance" Count After Filter "CANCELLED"

    Examples:
      | Mobile Number | Date     | Customer Type |
      | 8421822960    | 01081976 | Individual    |

  @MyRelations@Insurances@Filter@Surrendered
  Scenario Outline: verify My Relation Filter Options for Insurance - Surrendered
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Insurance/Value-added Services" tab
    And get count of "Insurance" "SURRENDERED" Relations
    And Click on Filter
    And click on "Surrendered" Relationship status in Filter
    And click on "Apply" Button
    Then verify "Insurance" Count After Filter "SURRENDERED"

    Examples:
      | Mobile Number | Date     | Customer Type |
      | 9582898063    | 27111995 | Individual    |

  @MyRelations@Insurances@ClearAll
  Scenario Outline: verify My Relation Filter Options for Insurance - Clear All
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Insurance/Value-added Services" tab
    And get count of "Insurance" All Relations
    And Click on Filter
    And click on "Closed" Relationship status in Filter
    And click on "Apply" Button
    And Click on Filter
    And click on "Clear All" Button
    Then verify "Insurance" Count After Clear Filter

    Examples:
      | Mobile Number | Date     | Customer Type |
      #      | 7721001199    | 05081984 | Individual    |
      | 9898989899    | 19011966 | Individual    |

  @MyRelations@Insurances@Count
  Scenario Outline: verify My Relation Insurance Group of cards Title with Count
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Insurance/Value-added Services" tab
    Then verify "Insurance" Group of Relations Title Count

    Examples:
      | Mobile Number | Date     | Customer Type |
      #      | 7721001199    | 05081984 | Individual    |
      | 9898989899    | 19011966 | Individual    |

  @MyRelations@Insurances@LabelColor@Closed
  Scenario Outline: verify My Relations Insurance - Closed Label Color
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Insurance/Value-added Services" tab
    Then verify "Insurance" Relations "MATURED" Label Color: "Blue"-"#002a53"

    Examples:
      | Mobile Number | Date     | Customer Type |
      #      | 7721001199    | 05081984 | Individual    |
#      | 9898989899    | 19011966 | Individual    |
      | 9717843356    | 30071985 | Individual    |

  @MyRelations@Insurances@LabelColor@Cancelled
  Scenario Outline: verify My Relations Insurance - Cancelled Label Color
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Insurance/Value-added Services" tab
    Then verify "Insurance" Relations "CANCELLED" Label Color: "Blue"-"#002a53"

    Examples:
      | Mobile Number | Date     | Customer Type |
      | 8421822960    | 01081976 | Individual    |

  @MyRelations@Insurances@LabelColor@Surrendered
  Scenario Outline: verify My Relations Insurance - Surrendered Label Color
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Insurance/Value-added Services" tab
    Then verify "Insurance" Relations "SURRENDERED" Label Color: "Blue"-"#002a53"

    Examples:
      | Mobile Number | Date     | Customer Type |
      | 9582898063    | 27111995 | Individual    |

  @MyRelations@Insurances@LabelColor@RenewNow
  Scenario Outline: verify My Relations Insurance - Renew now Label Color
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Insurance/Value-added Services" tab
    Then verify "Insurance" Relations "RENEW NOW" Label Color: "Green"-"#00b500"

    Examples:
      | Mobile Number | Date     | Customer Type |
      #      | 7721001199    | 05081984 | Individual    |
#      | 9898989899    | 19011966 | Individual    |
#      | 8421822960    | 01081976 | Individual    |
#      | 9324645205    | 20061973 | Individual    |
      | 9674666130    | 07051984 | Individual    |
#      | 9767867404    | 01011972 | Individual    |
#      | 9920236572    | 19051984 | Individual    |



#############################Deposits#######################################
  @MyRelations@Deposits@FilterOptions
  Scenario Outline: verify My Relation Filter Options for Deposits
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And Click on Filter
    Then Customer able to see following Filter Text Options: "Filters, Filter your relations by using either of the parameters, Relationship Status, Clear All, Apply" and Status options: "Active, Closed"

    Examples:
      | Mobile Number | Date     | Customer Type |
      | 9422010772    | 04081961 | Individual    |

  @MyRelations@Deposits@Filter@Active
  Scenario Outline: verify My Relation Filter Options for Deposits - Active
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And get count of Deposits "Active" Relations
    And Click on Filter
    And click on "Active" Relationship status in Filter
    And click on "Apply" Button
    Then verify Deposits Count After Filter "Active"

    Examples:
      | Mobile Number | Date     | Customer Type |
      | 9422010772    | 04081961 | Individual    |

  @MyRelations@Deposits@Filter@Closed
  Scenario Outline: verify My Relation Filter Options for Deposits - Closed
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And get count of Deposits "Closed" Relations
    And Click on Filter
    And click on "Closed" Relationship status in Filter
    And click on "Apply" Button
    Then verify Deposits Count After Filter "Closed"

    Examples:
      | Mobile Number | Date     | Customer Type |
      | 9422010772    | 04081961 | Individual    |

  @MyRelations@Deposits@ClearAll
  Scenario Outline: verify My Relation Filter Options for Deposits - Clear All
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And get count of "Deposits" All Relations
    And Click on Filter
    And click on "Closed" Relationship status in Filter
    And click on "Apply" Button
    And Click on Filter
    And click on "Clear All" Button
    Then verify "Deposits" Count After Clear Filter

    Examples:
      | Mobile Number | Date     | Customer Type |
      | 9422010772    | 04081961 | Individual    |

  @MyRelations@Deposits@Count
  Scenario Outline: verify My Relation Deposits Group of cards Title with Count
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    Then verify "Deposits" Group of Relations Title Count

    Examples:
      | Mobile Number | Date     | Customer Type |
      | 9422010772    | 04081961 | Individual    |


  @MyRelations@Deposits@LabelColor@MaturingSoon
  Scenario Outline: verify My Relations Deposits - Maturing Soon Label Color
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    Then verify "Deposits" Relations "MATURING SOON" Label Color: "Green"-"#00b500"

    Examples:
      | Mobile Number | Date     | Customer Type |
      #      | 7721001199    | 05081984 | Individual    |
#      | 9898989899    | 19011966 | Individual    |
      | 9324645205    | 20061973 | Individual    |

  @MyRelations@Deposits@LabelColor@Matured
  Scenario Outline: verify My Relations Deposits - Matured Label Color
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    Then verify "Deposits" Relations "MATURED" Label Color: "Blue"-"#002a53"

    Examples:
      | Mobile Number | Date     | Customer Type |
#      | 9422010772    | 04081961 | Individual    |
      | 9898989899    | 19011966 | Individual    |

  @MyRelations@Deposits@LabelColor@PreMatured
  Scenario Outline: verify My Relations Deposits - Pre-Matured Label Color
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    Then verify "Deposits" Relations "PRE-MATURED" Label Color: "Blue"-"#002a53"

    Examples:
      | Mobile Number | Date     | Customer Type |
#      | 7798716919    | 15101983 | Individual    |
      | 9898989899    | 19011966 | Individual    |
      
#############################Mutual Funds#######################################
  @MyRelations@MutualFunds
  Scenario Outline: verify My Relation Tile Text for Mutual Funds
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    When Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Mutual Funds" tab
    Then verify Following fields: "For any queries related to your existing mutual fund portfolio, you can reach us at#investmentservices@bajajfinserv.in"
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 8097927579    | 16111984 | Individual    |

  @MyRelations@MutualFunds@FilterNotVisible
  Scenario Outline: verify Filter is Not Visible with My Relation Mutual Funds Tab
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Mutual Funds" tab
    Then Filter option should not be displayed for Mutual Funds tab

    Examples:
      | Mobile Number | Date     | Customer Type |
      #      | 7721001199    | 05081984 | Individual    |
#      | 9898989899    | 19011966 | Individual    |
      | 8097927579    | 16111984 | Individual    |

###################### No Relations ####################
  @MyRelations@Loans@NoRelations@Active
  Scenario Outline: verify My Relation Filter Options for Loans - No Active Relations
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify no "active loans" Text Message for "Active" Filter in "My Relations Loans Active Relations"
#    And verify no "loans" Text Message for My Relations
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 8208189565    | 08071993 | Individual    |

  @MyRelations@Loans@NoRelations@Closed
  Scenario Outline: verify My Relation Filter Options for Loans - No Closed Relations
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify no "closed loans" Text Message for "Closed" Filter in "My Relations Loans Closed Relations"
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 9422010772    | 04081961 | Individual    |

  @MyRelations@Cards@NoRelations@Active
  Scenario Outline: verify My Relation Filter Options for Cards - No Active Cards
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Cards" tab
    And verify no "active cards" Text Message for "Active" Filter in "My Relations Cards Active Relations"
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 8421822960    | 01081976 | Individual    |

  @MyRelations@Cards@NoRelations@Blocked
  Scenario Outline: verify My Relation Filter Options for Cards - No Blocked Cards
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Cards" tab
    And verify no "blocked cards" Text Message for "Blocked" Filter in "My Relations Cards Blocked Relations"
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 9422010772    | 04081961 | Individual    |

  @MyRelations@Insurances@NoRelations@Active
  Scenario Outline: verify My Relation Filter Options for Insurances - No Active Relations
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Insurance/Value-added Services" tab
    And verify no "active insurance policy" Text Message for "Active" Filter in "My Relations Insurances Active Relations"
#    And verify "No Active Insurance" Text Message for "Active" Filter in "My Relations Insurances Active Relations"
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 8421822960    | 01081976 | Individual    |

  @MyRelations@Insurances@NoRelations@Closed
  Scenario Outline: verify My Relation Filter Options for Insurances - No Closed Relations
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Insurance/Value-added Services" tab
#    And verify "No Closed Insurance" Text Message for "Closed" Filter in "My Relations Insurances Closed Relations"
    And verify no "closed insurance policy" Text Message for "Closed" Filter in "My Relations Insurances Closed Relations"
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 8097927579    | 16111984 | Individual    |

  @MyRelations@Insurances@NoRelations@Cancelled
  Scenario Outline: verify My Relation Filter Options for Insurances - No Cancelled Relations
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Insurance/Value-added Services" tab
#    And verify "No Cancelled Insurance" Text Message for "Cancelled" Filter in "My Relations Insurances Cancelled Relations"
    And verify no "cancelled insurance policy" Text Message for "Cancelled" Filter in "My Relations Insurances Cancelled Relations"
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 8097927579    | 16111984 | Individual    |

  @MyRelations@Insurances@NoRelations@Surrendered
  Scenario Outline: verify My Relation Filter Options for Insurances - No Surrendered Relations
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Insurance/Value-added Services" tab
#    And verify "No Surrendered Insurance" Text Message for "Surrendered" Filter in "My Relations Insurances Surrendered Relations"
    And verify no "surrendered insurance policy" Text Message for "Surrendered" Filter in "My Relations Insurances Surrendered Relations"
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 8097927579    | 16111984 | Individual    |

  @MyRelations@Deposits@NoRelations@Active@CR_28
  Scenario Outline: verify My Relation Filter Options for Deposits - No Active Relations
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And verify no "active deposits" Text Message for "Active" Filter in "My Relations Deposits Active Relations"
    Examples:
      | Mobile Number | Date     | Customer Type |
#      | 7756008269    | 01012012 | Corporate     |
      | 9652374940    | 01012012 | Individual     |

  @MyRelations@Deposits@NoRelations@Closed
  Scenario Outline: verify My Relation Filter Options for Deposits - No Closed Relations
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And verify no "closed deposits" Text Message for "Closed" Filter in "My Relations Deposits Closed Relations"
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 8097927579    | 16111984 | Individual    |

################## No Filter Text ######################

  @MyRelations@Loans@NoRelations@NoFilter
  Scenario Outline: verify No Relations Text for Without Filter Loans
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify no "loans" Text Message for My Relations
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 9422886242    | 08071993 | Individual    |

  @MyRelations@Cards@NoRelations@NoFilter@CR_28
  Scenario Outline: verify No Relations Text for Without Filter Cards
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Cards" tab
    And verify no "cards" Text Message for My Relations
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 9652374940    | 08071993 | Individual    |

  @MyRelations@Insurances@NoRelations@NoFilter
  Scenario Outline: verify No Relations Text for Without Filter Insurances
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Insurance/Value-added Services" tab
    And verify no "insurance policy" Text Message for My Relations
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 9982802053    | 08071993 | Individual    |

  @MyRelations@Deposits@NoRelations@NoFilter@CR_281
  Scenario Outline: verify No Relations Text for Without Filter Deposits
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And verify no "deposits" Text Message for My Relations
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 8178042339    | 08071993 | Individual    |

#    ////////////////////////////// RHS /////////////////////////////////
  @run
  Scenario Outline: My Relations - RHS Sections
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    Then verify RHS "Quick Actions" following Options: "Help and Support, Document Center, Check your CIBIL Score, Mandate Management" are Displayed
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 9898989899    | 19011966 | Individual    |

  @MyRelations@RHS@HelpandSupport
  Scenario Outline: My Relations - RHS Options - Help and Support
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And Customer Click on "Help and Support" CTA in RHS
    Then verify Page Redirection to "/MyAccountService/HelpAndSupport/index?" Url with SSO
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 9898989899    | 19011966 | Individual    |

  @MyRelations@RHS@DocumentCenter
  Scenario Outline: My Relations - RHS Options - Document Center
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And Customer Click on "Document Center" CTA in RHS
    Then verify Page Redirection to "/MyAccountDocumentCenter/DocumentCenter/index?" Url with SSO
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 9898989899    | 19011966 | Individual    |

  @MyRelations@RHS@CheckyourCIBILScore
  Scenario Outline: My Relations - RHS Options - Check your CIBIL Score
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And Customer Click on "Check your CIBIL Score" CTA in RHS
    Then verify Page Redirection to "/check-free-cibil-score" Url with SSO
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 9898989899    | 19011966 | Individual    |

  @MyRelations@RHS@MandateManagement
  Scenario Outline: My Relations - RHS Options - Mandate Management
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And Customer Click on "Mandate Management" CTA in RHS
    Then verify Page Redirection to "/MyAccountService/Emandate/index?" Url with SSO
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 9898989899    | 19011966 | Individual    |
#/////////////////////////////// Back from Service Page ///////////////////////////////////////

  @New@MyRelations@Loans
  Scenario Outline: My Relations - Loans - verify Back button in Loan Service landed in My Relation Page Loans Tab
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    And Go Back to Previous Page
    Then Customer Should be Landed in My Relation "Loans" Tab
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle  | Account No     |
      | 9902133996    | 01011990 | Individual    | FLEXI TERM LOAN | 404SOF42758479 |

  @New@MyRelations@Cards
  Scenario Outline: My Relations - Cards - verify Back button in Loan Service landed in My Relation Page Cards Tab
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    Then verify Customer is redirected to EMI Card service page from My Relations thru "<EMI Card Number>"
    And Go Back to Previous Page
    Then Customer Should be Landed in My Relation "Cards" Tab
    Examples:
      | Mobile Number | Date     | Customer Type |EMI Card Number|
      | 9819427072    | 26051982 | Individual    | 2030-XXXX-XXXX-8906 |

  @New@MyRelations@Insurances
  Scenario Outline: My Relations - Insurances - verify Back button in Loan Service landed in My Relation Page Insurances Tab
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Insurance/Value-added Services" tab
    And verify Customer is able to go to Service screen from My Relations using subtitle"<Subtitle>" Account No"<Account No>"
    And Go Back to Previous Page
    Then Customer Should be Landed in My Relation "Insurance/Value-added Services" Tab
    Examples:
      | Mobile Number | Date     | Customer Type | Subtitle  | Account No     |
      | 9443255624    | 27111995 | Individual    | BAGIC- GENERAL INSURANCE | OG-20-1000-6609-00134221 |

  @New@MyRelations@Deposits
  Scenario Outline: My Relations - Deposits - verify Back button in Loan Service landed in My Relation Page Deposits Tab
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    Then verify Redirection using Account number "<Acc Number>"
    And Go Back to Previous Page
    Then Customer Should be Landed in My Relation "Deposits" Tab
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number |
      | 9987160686    | 19091970 | Individual    | 149382     |

##################################### CRs 20 ####################################################

  @MyRelations@Insurances@Components
  Scenario Outline: verify My Relation Insurance Tile Components in My Relations Page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Insurance/Value-added Services" tab
    And verify "Policy Number, Premium Amount" Labels are Displayed in Insurance Tile No: "<Policy Number>"
#    And verify "Policy Number, Premium Amount" Labels are Displayed in Insurance Tile No: "" with "SURRENDERED" Nudge Text

    Examples:
      | Mobile Number | Date     | Customer Type |Policy Number|
      | 9582898063    | 19011966 | Individual    |30029509|

  @MyRelations@Cards@Components
  Scenario Outline: verify My Relation Card Tile Components in My Relations Page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Cards" tab
    And verify "Available Loan Limit, Total Loan Limit" Labels are Displayed in Card Tile No: "<Card Number>"
#        And verify "Policy Number, Premium Amount" Labels are Displayed in Card Tile No: "" with "BLOCKED" Nudge Text
    Examples:
      | Mobile Number | Date     | Customer Type |Card Number|
      | 9582898063    | 19011966 | Individual    |2030-XXXX-XXXX-5519|
