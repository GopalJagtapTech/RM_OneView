Feature: Reminder Section
@pass
  Scenario Outline: Verify PTB customer is not able to view Reminder Section
    Given User is logged in "<Mobile Number>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    Then "PTB" customer should not be able to view Reminder Section
    Examples:
      | Mobile Number | DOB      | Customer Type |
      | 9846348582    | 18081999 | Individual    |

  @pass
  Scenario Outline: Verify NTB customer is not able to view Reminder Section
    Given User is logged in "<Mobile Number>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    Then "NTB" customer should not be able to view Reminder Section
    Examples:
      | Mobile Number | DOB      | Customer Type |
      | 8605337783    | 18081999 | Individual    |

  @pass
  Scenario Outline: Verify ETB customer is  able to view Reminder Section
    Given User is logged in "<Mobile Number>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    Then ETB customer should be able to view Reminder Section
    Examples:
      | Mobile Number | DOB      | Customer Type |
      | 9527443732    | 18081999 | Individual    |
  @pass
  Scenario Outline: verify reminder  is displayed for FD with Renew Now CTA  under Reminder section when current date is less than equal to 90 days and 3 days before FD maturity days
    Given User is logged in "<Mobile Number>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    Then ETB customer should be able to view Reminder Section
    And Check "Fixed Deposit" tiles with "Renew Now" CTA
#    Then reminder should be displayed for FD with Renew Now CTA  under Reminder section when current date is less than equal to 90 days and 3 days before FD maturity days
    Examples:
      | Mobile Number | DOB        | Customer Type |
      | 9850673690    | 08.04.1986 | Individual    |

  @pass
  Scenario Outline: Verify the details displayed on FD tile under reminder section
    Given User is logged in "<Mobile Number>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    Then ETB customer should be able to view Reminder Section
#    And Customer must be ETB having FD relation whose maturity date is more than 90 days or less than 3 days from current date
#    And Check FD Details
    Then Customer should be able to view details on FD Tile under Reminder section with "<Product Description>", Maturity Date, FD Icon, Amount and "Renew Now" CTA
    Examples:
      | Mobile Number | DOB        | Customer Type | Product Description |
      | 9850673690    | 08.04.1986 | Individual    | Fixed Deposit       |
  @pass
  Scenario Outline: verify reminder is not displayed for FD with Renew Now CTA  under Reminder section when current date is more than  90 days or less than 3 days before FD maturity days
    Given User is logged in "<Mobile Number>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
#    And Customer must be ETB having FD relation whose maturity date is more than 90 days or less than 3 days from current date
    Then Reminder should not be displayed for FD with Renew Now CTA under Reminder section when current date is more than  90 days or less than 3 days before FD maturity days
    Examples:
      | Mobile Number | DOB        | Customer Type |
      | 9428596899    | 08.04.1986 | Individual    |

@pass
  Scenario Outline:  verify Under Reminder section Loans tile with PAY Now CTA is displayed  when total OverDue > 0 and amc Charges > 0
    Given User is logged in "<Mobile Number>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    Then ETB customer should be able to view Reminder Section
#    And Customer must have active Loan with total OverDue > 0 and amc Charges > 0
    Then Under Reminder section Loans tile with "Pay Now" CTA should be displayed  when total OverDue > 0 and amc Charges > 0
    Examples:
      | Mobile Number | DOB        | Customer Type |
      | 9527443732    | 08.04.1986 | Individual    |
  @pass
  Scenario Outline: Verify Under Reminder section Loans tile with PAY Now CTA is not displayed when totalOverDue <= 0 and amcCharges <= 0
    Given User is logged in "<Mobile Number>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    Then ETB customer should be able to view Reminder Section
#      And Customer must have active Loan with total OverDue <= 0 and amc Charges <= 0
    Then Under Reminder section Loans tile with "Pay Now" CTA should be displayed only when total OverDue > 0 and amc Charges > 0
    Examples:
      | Mobile Number | DOB        | Customer Type |
      | 9822021252    | 08.04.1986 | Individual    |

  Scenario Outline: Verify details displayed on Loans Tile under Reminder section
    Given User is logged in "<Mobile Number>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    Then ETB customer should be able to view Reminder Section
#    And Customer must have active Loan with total OverDue > 0 and amc Charges > 0
    Then Customer should be able to view details on Loan Tile under Reminder section with Product Description, OverDue Icon, Total Overdue Amount and "Pay Now" CTA
    Examples:
      | Mobile Number | DOB        | Customer Type |
      | 9527443732    | 08.04.1986 | Individual    |
  @pass
  Scenario Outline:  Verify customer redirect to Overdue payment page when click on Pay Now CTA under Loan Tile of Reminder section
    Given User is logged in "<Mobile Number>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    Then ETB customer should be able to view Reminder Section
#    And Customer must have active Loan with total OverDue > 0 and amc Charges > 0
    And Click on "Pay Now" CTA of Tile Number 1
    Then Verify Customer Redirected to "MyAccountPayments/LoanPay/EMI_Overdue" Url

    Examples:
      | Mobile Number | DOB        | Customer Type |
      | 9822021252    | 08.04.1986 | Individual    |

  @pass
  Scenario Outline:  verify Under Reminder section KYC tile is displayed with Proceed CTA when rekycflag is Y
    Given User is logged in "<Mobile Number>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    Then ETB customer should be able to view Reminder Section
#    And Verify the Reminder Section for RE-KYC tile
    And Under Reminder section KYC tile should be displayed with title "Complete Your KYC" and "Proceed" CTA when rekycflag is Y
    Examples:
      | Mobile Number | DOB        | Customer Type |
      | 9527443732    | 08.04.1986 | Individual    |

#  Scenario Outline: Verify Under Reminder section KYC tile is not displayed with Proceed CTA when rekycflag is N
#    Given User is logged in "<Mobile Number>" "<DOB>" for "<Customer Type>"
#    When User is on Home Page
#    Then ETB customer should be able to view Reminder Section
#    And Customer must be ETB having any relation whose rekycflag is N
#    And Verify the Reminder Section for RE-KYC tile
#    Then Under Reminder section KYC tile should be displayed  with Proceed CTA only when rekycflag is Y
#    Examples:
#      | Mobile Number | DOB        | Customer Type |
#      | 9527443732    | 08.04.1986 | Individual    |

  Scenario Outline: Verify customer is redirected to Profile/Demog update details page  when click on Proceed CTA+D20 under Reminder section of Re-KYC tile
    Given User is logged in "<Mobile Number>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    Then ETB customer should be able to view Reminder Section
#    And Customer must be ETB having any relation whose rekycflag is Y
    And Under Reminder section KYC tile should be displayed with title "Complete Your KYC" and "Proceed" CTA when rekycflag is Y
    And Click on "Proceed" CTA of "Complete Your KYC" tile
    Then Verify Customer Redirected to "MyAccountService/UpdateDetails/UserProfileDetails" Url

    Examples:
      | Mobile Number | DOB        | Customer Type |
      | 9527443732    | 08.04.1986 | Individual    |
	
