Feature:  EMI Debit Consent

  @ConsentR
  Scenario Outline: Verify EMI Debit Consent option is displayed under Documentation in Hamburger menu
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
   # And Clicks on "<SubListMenu>" of "<SubMenu>"
    And Verify Sub List menu "<SubListMenu>"
    Then verify EMI Debit Consent Option is displayed
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu |
      |  7984416598| 02021999    | Individual    | Mandate and documents | Manage your mandate#Document Center#EMI Debit Consent|

  @ConsentR
  Scenario Outline: Verify after clicking on EMI Debit Consent option customer is redirected to EMI Debit Consent details page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on "<SubListMenu>" of "<SubMenu>"
    Then User should be redirected to EMI Debit Consent details page
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu   | SubListMenu    |
      |  7984416598|02021999     | Individual    | Mandate and documents| EMI Debit Consent|


  @ConsentR
  Scenario Outline: Verify after clicking on EMI Debit Consent option customer is redirected to No Consent details page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on "<SubListMenu>" of "<SubMenu>"
    Then User should be redirected to No Consent details page
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu   | SubListMenu    |
      |  9036722359|02021999     | Individual    | Mandate and documents| EMI Debit Consent|


  @ConsentClar
  Scenario Outline: Verify customer is redirected to consent journey page where ‘ No Pending Consent' validation is displayed when customer not having any active overdue
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on "<SubListMenu>" of "<SubMenu>"
    Then User should be redirected to EMI details consent page with No Consent Details Validation  message
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu   | SubListMenu    |
      |  9036722359|02021999     | Individual    | Mandate and documents| EMI Debit Consent|
  @ConsentClar
  Scenario Outline: Verify customer is redirected to consent journey page where ‘ No Pending Consent' validation is displayed when Customer has accepted/rejected the 'EMI DEBIT CONSENT' previously in the current month
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on "<SubListMenu>" of "<SubMenu>"
    Then User should be redirected to EMI details consent page with No Consent Details Validation  message
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu   | SubListMenu    |
      |  9036722359|02021999     | Individual    | Mandate and documents| EMI Debit Consent|


  @Details
  Scenario Outline: Verify content displayed on EMI consent details page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on "<SubListMenu>" of "<SubMenu>"
    Then customer should be redirected to EMI consent details page and below content should be displayed
#  •	Active Loan with Product description
#  •	Active Loan with Loan account number
#  •	Tick box against each Loan
#  •	Content of providing consent.
#  •	Content 'clear your over dues instantly' and a hyperlink 'PAY ONLINE'
#  •	Content 'View your registered bank details' & a hyperlink ' Check Mandate'
#  •	Content ' Please keep your account funded to avoid EMI bounce'
#  •	RHS Section
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu   | SubListMenu    |
      |  7984416598|02021999     | Individual    | Mandate and documents| EMI Debit Consent|



#  # Data not available for below scenario it is out of scope
#  Scenario Outline: To Verify Static text is displayed and tick box is disabled for that loan when Bank name, IFSC code and Account number is not available
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User is on Home Page
#    And Clicks on Hamburger Menu
#    And Selects Sub Menu from Hamburger "<Sub Menu>"
#    And Click on Sub List menu "<Sub List Menu>"
#    And User should be redirected to EMI details consent page
#    Then below Static text “<text>” should be displayed and tick box should be disabled for “<LAN>”
#    Examples:
#      | Mobile Number | Date     | Customer Type | Sub Menu   | Sub List Menu    | text|LAN|
#      |                         |            | Individual    | Documentation| EMI Debit Consent| Your mandate for this loan is not valid|
#
  @ClarificationOverdue
  Scenario Outline: Verify active loans with overdue are displayed on EMI Debit Consent details page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on "<SubListMenu>" of "<SubMenu>"
    And User should be redirected to EMI Debit Consent details page
    Then Verify active loans with overdue are displayed
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu   | SubListMenu    |
      |  7984416598|02021999     | Individual    | Mandate and documents| EMI Debit Consent|

#@ClarificationMultipleLoan-NotinScope
#  # Multiple loan id not available
#  Scenario Outline: Verify Tick box CTA is clickable (as customer can select multiple loan at a time)
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User is on Home Page
#    And Clicks on Hamburger Menu
#    And Selects an SubMenu from Hamburger "<SubMenu>"
#    And Clicks on "<SubListMenu>" of "<SubMenu>"
#    And User should be redirected to EMI Debit Consent details page
#    And User clicks on Tick box CTA
#    Then User should be able to select Loans
#    Examples:
#      | Mobile Number | Date     | Customer Type | SubMenu   | SubListMenu    |
#      |   |02021999     | Individual    | Mandate and documents| EMI Debit Consent|
  @AcceptK
  Scenario Outline: Verify Accept CTA is disabled when no loan is selected
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on "<SubListMenu>" of "<SubMenu>"
    And User should be redirected to EMI Debit Consent details page
    And User unselects the selected "<Loan>"
    Then Accept CTA should be disabled
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu   | SubListMenu    |Loan |
      | 7984416598|02021999     | Individual    | Mandate and documents| EMI Debit Consent| 418DPFFM862608 |

  @AcceptK
  Scenario Outline: Verify after clicking on 'Pay Online' hyperlink customer is redirected to Multiple Overdue Payment Page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on "<SubListMenu>" of "<SubMenu>"
    And User should be redirected to EMI Debit Consent details page
    And User Pay Online CTA
    Then User should be redirected to Multiple Overdue Payment Page

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu   | SubListMenu    |
      |  7984416598|02021999     | Individual    | Mandate and documents| EMI Debit Consent|
  @AcceptK
  Scenario Outline: Verify after clicking on 'Check Mandate' hyperlink customer is redirected to Mandate Management Page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on "<SubListMenu>" of "<SubMenu>"
    And User should be redirected to EMI Debit Consent details page
    And User Check Mandate CTA
    Then User should be redirected to Mandate Management Page

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu   | SubListMenu    |
      |  7984416598|02021999     | Individual    | Mandate and documents| EMI Debit Consent|
  @AcceptK
  Scenario Outline: Verify 'Please keep your account funded to avoid EMI bounce' section is displayed on EMI Consent details page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on "<SubListMenu>" of "<SubMenu>"
    And User should be redirected to EMI Debit Consent details page
    Then Verify 'Please keep your account funded to avoid EMI bounce' section

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu   | SubListMenu    |
      |  7984416598 |02021999     | Individual    | Mandate and documents| EMI Debit Consent|

  @Details
  Scenario Outline: Verify after clicking on 'FAQ' under Need Assistance customer is redirected to FAQ details Page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on "<SubListMenu>" of "<SubMenu>"
    And User should be redirected to EMI Debit Consent details page
    And User clicks on FAQ CTA
    Then User should be redirected to FAQ details Page

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu   | SubListMenu    |
      |  9717788638|02021999     | Individual    | Mandate and documents| EMI Debit Consent|
    #  |FAQ|
  @ClarificationRar
  Scenario Outline: Verify after clicking on ‘RAR’ under Need Assistance customer is redirected to RAR details Page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on "<SubListMenu>" of "<SubMenu>"
    And User should be redirected to EMI Debit Consent details page
    And User clicks on RAR CTA
    Then User should be redirected to RAR details Page

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu   | SubListMenu    | CTA|
      |  9717788638|02021999     | Individual    | Mandate and documents| EMI Debit Consent||
    #  |RAR|


  @clarificationAcknowledgement
  Scenario Outline: Verify after clicking on Accept CTA customer is redirected to Acknowledgement screen
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on "<SubListMenu>" of "<SubMenu>"
    And User should be redirected to EMI Debit Consent details page
    And User selects "<Loan>"
    And User clicks on Accept CTA
    Then User should be redirected to Acknowledgement screen
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu   | SubListMenu    |  Loan |  CTA |
      |  9552544193 |02021999     | Individual    | Mandate and documents| EMI Debit Consent| 405SAFEB993296 | |
    # |Accept|

  @Details
  Scenario Outline: Verify after clicking on Done CTA customer is redirected to Home Page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on "<SubListMenu>" of "<SubMenu>"
    And User should be redirected to EMI Debit Consent details page
    #And User selects "<Loan>"
   # And User clicks on Reject CTA
    And User clicks on Done CTA
    Then User should be redirected to Home Page
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu   | SubListMenu    |  Loan |  CTA |
      |  9717788638|02021999     | Individual    | Mandate and documents| EMI Debit Consent| Loan Account Number: 418DPFFM862608 | |
  @Details
  Scenario Outline: Verify after clicking on Reject CTA pop up is  displayed
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on "<SubListMenu>" of "<SubMenu>"
    And User should be redirected to EMI Debit Consent details page
    And User selects "<Loan>"
    And User clicks on Reject CTA
    Then Tell us why do you want to reject? Popup should be displayed
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu | SubListMenu    |  Loan |  CTA |
      |  7984416598 |02021999     | Individual    | Mandate and documents | EMI Debit Consent| 418DPFFM862608 | Reject|

  @Details
  Scenario Outline: Verify given options are displayed on 'Tell us why do you want to reject?' Popup
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on "<SubListMenu>" of "<SubMenu>"
    And User should be redirected to EMI Debit Consent details page
    And User selects "<Loan>"
    And User clicks on Reject CTA
    Then Tell us why do you want to reject? Popup should be displayed
    Then Verify below options on 'Tell us why do you want to reject?' Popup
#  i)Want to change bank account
#  ii)I have a query regarding EMI debit consent
#  iii)My reason is not listed
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu | SubListMenu    |  Loan |  CTA |
      |  7984416598 |02021999     | Individual    | Mandate and documents | EMI Debit Consent| 418DPFFM862608 | Reject|
  @Details
  Scenario Outline: Verify after clicking on Cross icon CTA on 'Tell us why do you want to reject?' Pop up , Pop up is closed
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on "<SubListMenu>" of "<SubMenu>"
    And User should be redirected to EMI Debit Consent details page
    And User selects "<Loan>"
    And User clicks on Reject CTA
    Then Tell us why do you want to reject? Popup should be displayed
    And User clicks on  close cross button

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu | SubListMenu    |  Loan |  CTA |
      |  7984416598|02021999     | Individual    | Mandate and documents | EMI Debit Consent| 418DPFFM862608 | Reject|
    #  |9717788638    |02021999            | Individual    | Documentation| EMI Debit Consent|  |Reject| Cross icon|

  @Details
  Scenario Outline: Verify Proceed CTA is disabled on 'Tell us why do you want to reject?' Pop up when no reason is selected
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on "<SubListMenu>" of "<SubMenu>"
    And User should be redirected to EMI Debit Consent details page
    And User selects "<Loan>"
    And User clicks on Reject CTA
    Then Tell us why do you want to reject? Popup should be displayed
    Then Proceed CTA should be disabled on 'Tell us why do you want to reject?' Pop up

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu | SubListMenu    |  Loan |  CTA |
      |  7984416598|02021999     | Individual    | Mandate and documents | EMI Debit Consent| 418DPFFM862608 | Reject|

  @DetailsK
  Scenario Outline: Verify after clicking on Proceed CTA on 'Tell us why do you want to reject?' Pop up customer is redirected to 'Uh-OH' Page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on "<SubListMenu>" of "<SubMenu>"
    And User should be redirected to EMI Debit Consent details page
    And User selects "<Loan>"
    And User clicks on Reject CTA
    Then Tell us why do you want to reject? Popup should be displayed
    And User selects  Rejection "<Reason>"
    And User clicks on  Proceed CTA
    Then User should be redirected to Uh-OH Page

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu | SubListMenu    |  Loan |  CTA |Reason|CTA2|
      |  7984416598|02021999     | Individual    | Mandate and documents | EMI Debit Consent| 418DPFFM862608 | Reject| I want to change my registered bank account details | |
    #  |       9717788638        |   02021999       |    Individual           |     Documentation    |     EMI Debit Consent           |     Reject  |     Want to change bank account # I have a query regarding EMI debit consent # My reason is not listed |   Proceed   |


  @DetailsK
  Scenario Outline: Verify after clicking on Proceed CTA on 'Tell us why do you want to reject?' Pop up customer is redirected to 'Uh-OH' Page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on "<SubListMenu>" of "<SubMenu>"
    And User should be redirected to EMI Debit Consent details page
    And User selects "<Loan>"
    And User clicks on Reject CTA
    And User selects  Rejection "<Reason>"
    And User clicks on  Proceed CTA
    Then User should be redirected to Uh-OH Page
    And User clicks on Done CTA
    Then User should be redirected to Home Page

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu | SubListMenu    |  Loan |Reason|
      |  7984416598 |02021999    | Individual    | Mandate and documents | EMI Debit Consent| 418DPFFM862608 |I want to change my registered bank account details |
     # |9717788638    |02021999            | Individual    | Documentation| EMI Debit Consent|  |Reject| Want to change bank account # I have a query regarding EMI debit consent # My reason is not listed| Proceed|Done|

