Feature: Hamburger menu ETB

  @run
  Scenario Outline: To verify Given Hamburger submenus are present when customer clicks on hamburger menu icon
    Given User launch chrome browser with URL
    And User enters logID as "<logID>" and password as "<password>"
    And Click on Login
    When Customer clicks Hamburger menu
    Then Submenus should be displayed to the customer "<Menu>"
    Examples:
      |logID|password|Menu|
      |19090039|Bajaj@123|Loan Payment|
#      |19090039|Bajaj@123|Documentation|
#      |19090039|Bajaj@123|Request for Loan|
#      |19090039|Bajaj@123|Passbooks|
#      |19090039|Bajaj@123|My Orders|
#      |19090039|Bajaj@123|Try Calculators|
#      |19090039|Bajaj@123|Help & Support|
#      |19090039|Bajaj@123|Locate Us|
#      |19090039|Bajaj@123|Voucher Redeem|
#      |19090039|Bajaj@123|Check My Offers|
#      |19090039|Bajaj@123|Communication History|
#      |19090039|Bajaj@123|Settings|


      Scenario Outline: To verify Hamburger menu is closed after click on Cross icon button
        Given User launch chrome browser with URL
        And User enters logID as "<logID>" and password as "<password>"
        And  Click on Login
        When Customer clicks Hamburger menu
        And Clicks on Cross icon
        Then Hamburger menu should be closed
        Examples:
          |logID|password|
          |19090039|Bajaj@123|

      Scenario Outline: To verify Hamburger menu is closed after click anywhere outside the hamburger menu
        Given User launch chrome browser with URL
        And User enters logID as "<logID>" and password as "<password>"
        And  Click on Login
       When Customer clicks Hamburger menu
       And Clicks on anywhere outside the hamburger menu
       Then Hamburger menu should be closed
      Examples:
        |logID|password|
        |19090039|Bajaj@123|

  Scenario Outline: To verify menu is expandable when customer clicks on down arrow Accordion
    Given User launch chrome browser with URL
    And User enters logID as "<logID>" and password as "<password>"
    And  Click on Login
    When Customer clicks Hamburger menu
    And Clicks on Down arrow accordion "<Menu>"
    Then "<SubMenu>" should be displayed
    Examples:
      |logID|password|Menu|SubMenu|
     |19090039|Bajaj@123|Loan Payment|Overdue|
      |19090039|Bajaj@123|Loan Payment|Other payments|
      |19090039|Bajaj@123|Documentation|Update your KYC|
      |19090039|Bajaj@123|Documentation|Mandate Management|
      |19090039|Bajaj@123|Documentation|Document Center|
      |19090039|Bajaj@123|Try Calculators|EMI calculator for loan|
      |19090039|Bajaj@123|Try Calculators|Loan Eligibility Calculator|
      |19090039|Bajaj@123|Try Calculators|EMI Finance Network|
      |19090039|Bajaj@123|Try Calculators|Deposits Calculator|
      |19090039|Bajaj@123|Settings|Security settings|
      |19090039|Bajaj@123|Settings|About us|
      |19090039|Bajaj@123|Settings|Terms of services|
      |19090039|Bajaj@123|Settings|Privacy Policy|
      |19090039|Bajaj@123|Settings|Logout|


  Scenario Outline: To verify menu is expandable when customer clicks on Up arrow Accordion
    Given User launch chrome browser with URL
    And User enters logID as "<logID>" and password as "<password>"
    And  Click on Login
    When Customer clicks Hamburger menu
    And Clicks on Down arrow accordion "<Menu>"
    And Clicks on Up arrow accordion "<Menu>"
    Then "<Menu>" should collapse
    Examples:
      |logID|password|Menu|
      |19090039|Bajaj@123|Loan Payment|
      |19090039|Bajaj@123|Documentation|
      |19090039|Bajaj@123|Try Calculators|
      |19090039|Bajaj@123|Settings|

  Scenario Outline: To verify under Loan Payment menu submenus are displayed
    Given User launch chrome browser with URL
    And User enters logID as "<logID>" and password as "<password>"
    And  Click on Login
    When Customer clicks Hamburger menu
    And Clicks on Loan Payment
    Then Submenus should be displayed to the customer "<Menu>"
    Examples:
     |logID|password|Menu|
     |19090039|Bajaj@123|Overdue|
      |19090039|Bajaj@123|Other Payments|

  Scenario Outline: To verify Overdue page is displayed when customer click on Overdue sub-menu
    Given User launch chrome browser with URL
    And User enters logID as "<logID>" and password as "<password>"
    And  Click on Login
    When Customer clicks Hamburger menu
    And Clicks on Loan Payment
    And Clicks on Overdue submenu
    Then Overdue page should be displayed "<Title>"
    Examples:
      |logID|password|Title|
      |19090039|Bajaj@123|Select loan for payment|

  Scenario Outline: To verify validation message is displayed when customer does not have any overdues
    Given User launch chrome browser with URL
    And User enters logID as "<logID>" and password as "<password>"
    And  Click on Login
    When Customer clicks Hamburger menu
    And Clicks on Loan Payment
    And Clicks on Overdue submenu
    Then Not any overdues validation message should be displayed "<Message>"
    Examples:
      |logID|password|Message|
      |19090039|Bajaj@123|You do not have any loans with outstanding amount|

  Scenario Outline: To verify validation message is displayed when customer does not have any active loans
    Given User launch chrome browser with URL
    And User enters logID as "<logID>" and password as "<password>"
    And  Click on Login
    When Customer clicks Hamburger menu
    And Clicks on Loan Payment
    And Clicks on Overdue submenu
    Then Not any active loans validation message should be displayed "<Message>"
    Examples:
      |logID|password|Message|
      |99119618|Bajaj@123|You do not have an overdue amount for any active Loan|

  Scenario Outline: To verify Other payment page is displayed when customer clicks on Other payments sub-menu
    Given User launch chrome browser with URL
    And User enters logID as "<logID>" and password as "<password>"
    And  Click on Login
    When Customer clicks Hamburger menu
    And Clicks on Loan Payment
    And Click on Other payments
    Then Then Other payment page should be displayed
    Examples:
      |logID|password|
      |19090039|Bajaj@123|

  Scenario Outline: To verify under Documentation menu sub-menus are displayed
    Given User launch chrome browser with URL
    And User enters logID as "<logID>" and password as "<password>"
    And  Click on Login
    When Customer clicks Hamburger menu
    And Clicks on Documentation
    Then "<Menu>" should be displayed
    Examples:
      |logID|password|Menu|
      |19090039|Bajaj@123|Update your KYC|
      |19090039|Bajaj@123|Mandate Management|
      |19090039|Bajaj@123|Document Center|

  Scenario Outline: To verify Profile Details page is displayed when customer clicks on Update your KYC sub-menu
    Given User launch chrome browser with URL
    And User enters logID as "<logID>" and password as "<password>"
    And  Click on Login
    When Customer clicks Hamburger menu
    And Clicks on Documentation
    And Click on Update your KYC
    Then Then Profile Details page should be displayed
    Examples:
      |logID|password|
      |19090039|Bajaj@123|

  Scenario Outline: To verify Mandate Management page is displayed when customer click on Mandate Management sub-menu
    Given User launch chrome browser with URL
    And User enters logID as "<logID>" and password as "<password>"
    And  Click on Login
    When Customer clicks Hamburger menu
    And Clicks on Documentation
    And Click on Mandate Management sub-menu
    Then Then Mandate Management page should be displayed
    Examples:
      |logID|password|
      |19090039|Bajaj@123|

  Scenario Outline: To verify Document Centre page is displayed when customer click on Document Centre sub-menu
    Given User launch chrome browser with URL
    And User enters logID as "<logID>" and password as "<password>"
    And  Click on Login
    When Customer clicks Hamburger menu
    And Clicks on Documentation
    And Click on Document Centre sub-menu
    Then Then Document Centre page should be displayed
    Examples:
      |logID|password|
      |19090039|Bajaj@123|

  Scenario Outline: To verify validation message is displayed when customer clicks on Document Centre sub-menu when customer does not have any document
    Given User launch chrome browser with URL
    And User enters logID as "<logID>" and password as "<password>"
    And  Click on Login
    When Customer clicks Hamburger menu
    And Clicks on Documentation
    And Click on Document Centre sub-menu
    Then Then Document Centre page should be displayed
    Examples:
      |logID|password|
      |19090039|Bajaj@123|

  Scenario Outline: To verify Request for Loan page is displayed with SSO when customer click on Request for Loan menu
    Given User launch chrome browser with URL
    And User enters logID as "<logID>" and password as "<password>"
    And  Click on Login
    When Customer clicks Hamburger menu
    And Clicks on Request for Loan
    Then Then Request for Loan page should be displayed
    Examples:
      |logID|password|
      |19090039|Bajaj@123|

  Scenario Outline: To verify Passbook page is displayed when customer click on Passbook menu
    Given User launch chrome browser with URL
    And User enters logID as "<logID>" and password as "<password>"
    And  Click on Login
    When Customer clicks Hamburger menu
    And Clicks on Passbook
    Then Then Passbook page should be displayed
    Examples:
      |logID|password|
      |19090039|Bajaj@123|

  Scenario Outline: To verify customer click on Passbook menu when Wallet is setup and no transaction is done
    Given User launch chrome browser with URL
    And User enters logID as "<logID>" and password as "<password>"
    And  Click on Login
    When Customer clicks Hamburger menu
    And Clicks on Passbook
    Then Then Customer should be redirected to Passbook page with No transactions content should be displayed
    Examples:
      |logID|password|
      |19090039|Bajaj@123|

  Scenario Outline: To verify download wallet page is displayed when customer does not set wallet and click on Passbook menu
    Given User launch chrome browser with URL
    And User enters logID as "<logID>" and password as "<password>"
    And  Click on Login
    When Customer clicks Hamburger menu
    And Clicks on Passbook
    Then Then download wallet page should be displayed
    Examples:
      |logID|password|
      |19090039|Bajaj@123|

  Scenario Outline: To verify EMI Store page with SSO is displayed when customer click on My Orders menu
    Given User launch chrome browser with URL
    And User enters logID as "<logID>" and password as "<password>"
    And  Click on Login
    When Customer clicks Hamburger menu
    And Clicks on My Orders
    Then Then My Orders page should be displayed
    Examples:
      |logID|password|
      |19090039|Bajaj@123|

  Scenario Outline: To verify under Try Calculators sub-menus are displayed
    Given User launch chrome browser with URL
    And User enters logID as "<logID>" and password as "<password>"
    And  Click on Login
    When Customer clicks Hamburger menu
    And Clicks on Try Calculators
    Then "<Menu>" should be displayed
    Examples:
      |logID|password|Menu|
      |19090039|Bajaj@123|EMI calculator for loan|
      |19090039|Bajaj@123|Loan Eligibility Calculator|
      |19090039|Bajaj@123|EMI Finance Network|
      |19090039|Bajaj@123|Deposits Calculator|

  Scenario Outline: To verify EMI Calculator menu page is displayed when customer click on EMI calculator for loan sub-menu
    Given User launch chrome browser with URL
    And User enters logID as "<logID>" and password as "<password>"
    And  Click on Login
    When Customer clicks Hamburger menu
    And Clicks on Try Calculators
    And Clicks on EMI calculator for loan
    Then Then EMI Calculator menu page is displayed
    Examples:
      |logID|password|
      |19090039|Bajaj@123|

  Scenario Outline: To verify customer is landed on EMI Calculator link after click on EMI Calculator option
    Given User launch chrome browser with URL
    And User enters logID as "<logID>" and password as "<password>"
    And  Click on Login
    When Customer clicks Hamburger menu
    And Clicks on Try Calculators
    And Clicks on EMI calculator for loan
    And Click on EMI Calculator option
    Then Then EMI Calculator menu page is displayed
    Examples:
      |logID|password|
      |19090039|Bajaj@123|

  Scenario Outline: To verify customer is landed on Flexi Day Wise Interest Calculator link after click on Flexi Day Wise Interest Calculator option
    Given User launch chrome browser with URL
    And User enters logID as "<logID>" and password as "<password>"
    And  Click on Login
    When Customer clicks Hamburger menu
    And Clicks on Try Calculators
    And Clicks on EMI calculator for loan
    And Click on Flexi Day Wise Interest Calculator option
    Then Then Flexi Day Wise Interest Calculator page is displayed
    Examples:
      |logID|password|
      |19090039|Bajaj@123|

  Scenario Outline: To verify customer is landed on Hybrid Flexi Transaction Calculator link after click on Hybrid Flexi Transaction Calculator option
    Given User launch chrome browser with URL
    And User enters logID as "<logID>" and password as "<password>"
    And  Click on Login
    When Customer clicks Hamburger menu
    And Clicks on Try Calculators
    And Clicks on EMI calculator for loan
    And Click on Hybrid Flexi Transaction Calculator option
    Then Then Hybrid Flexi Transaction Calculator page is displayed
    Examples:
      |logID|password|
      |19090039|Bajaj@123|

  Scenario Outline: To verify Offers banners are available in footer section on EMI calculator for loan sub-menu page
    Given User launch chrome browser with URL
    And User enters logID as "<logID>" and password as "<password>"
    And  Click on Login
    When Customer clicks Hamburger menu
    And Clicks on Try Calculators
    And Clicks on EMI calculator for loan
    Then Then Offers banners are should be available in footer section with horizontal scroll
    Examples:
      |logID|password|
      |19090039|Bajaj@123|

  Scenario Outline: To verify customer is redirected to respective banners page after clicks on available banners from Offers banners section
    Given User launch chrome browser with URL
    And User enters logID as "<logID>" and password as "<password>"
    And  Click on Login
    When Customer clicks Hamburger menu
    And Clicks on Try Calculators
    And Clicks on EMI calculator for loan
    And Click on banner
    Then Then customer is redirected to respective banners page
    Examples:
      |logID|password|
      |19090039|Bajaj@123|

  Scenario Outline: To verify EMI Finance Network Calculator menu page is displayed when customer click on EMI Finance Network sub-menu
    Given User launch chrome browser with URL
    And User enters logID as "<logID>" and password as "<password>"
    And  Click on Login
    When Customer clicks Hamburger menu
    And Clicks on Try Calculators
    And Clicks on EMI Finance Network
    Then Then EMI Finance Network Calculator page is displayed
    Examples:
      |logID|password|
      |19090039|Bajaj@123|

  Scenario Outline: To verify customer is landed on No Cost EMI Network Calculator link after click on No Cost EMI Network Calculator option
    Given User launch chrome browser with URL
    And User enters logID as "<logID>" and password as "<password>"
    And  Click on Login
    When Customer clicks Hamburger menu
    And Clicks on Try Calculators
    And Clicks on EMI Finance Network
    And Click on No Cost EMI Network Calculator option
    Then Then EMI Finance Network Calculator page is displayed
    Examples:
      |logID|password|
      |19090039|Bajaj@123|

  Scenario Outline: To verify customer is landed on EMI Card Savings Calculator link after click on EMI Card Savings Calculator option
    Given User launch chrome browser with URL
    And User enters logID as "<logID>" and password as "<password>"
    And  Click on Login
    When Customer clicks Hamburger menu
    And Clicks on Try Calculators
    And Clicks on EMI Finance Network
    And Click on EMI Card Savings Calculator option
    Then Then EMI Card Savings Calculator page is displayed
    Examples:
      |logID|password|
      |19090039|Bajaj@123|

  Scenario Outline: To verify customer is landed on Electronics & Appliances Specification Guide link after click on Electronics & Appliances Specification Guide option
    Given User launch chrome browser with URL
    And User enters logID as "<logID>" and password as "<password>"
    And  Click on Login
    When Customer clicks Hamburger menu
    And Clicks on Try Calculators
    And Clicks on EMI Finance Network
    And Electronics & Appliances Specification Guide option
    Then Then Electronics & Appliances Specification Guide page is displayed
    Examples:
      |logID|password|
      |19090039|Bajaj@123|

  Scenario Outline: To verify related to EMI Store  Offers banners are available in footer section on Deposits Calculator sub-menu page
    Given User launch chrome browser with URL
    And User enters logID as "<logID>" and password as "<password>"
    And Click on Login
    When Customer clicks Hamburger menu
    And Clicks on Try Calculators
    And Clicks on EMI Finance Network
    And Check Offers banner in footer section
    Then Then related to EMI Store Offers banners should be available
    Examples:
      |logID|password|
      |19090039|Bajaj@123|

  Scenario Outline: To verify customer is redirected to respective banners page after click on available banners from Offers banners section
    Given User launch chrome browser with URL
    And User enters logID as "<logID>" and password as "<password>"
    And Click on Login
    When Customer clicks Hamburger menu
    And Clicks on Try Calculators
    And Clicks on EMI Finance Network
    And Click on banner in footer section
    Then Then customer should be redirected to respective banners page
    Examples:
      |logID|password|
      |19090039|Bajaj@123|

  Scenario Outline: To verify Deposits Calculator menu page is displayed when customer click on Deposits Calculator sub-menu
    Given User launch chrome browser with URL
    And User enters logID as "<logID>" and password as "<password>"
    And Click on Login
    When Customer clicks Hamburger menu
    And Clicks on Try Calculators
    And Clicks on Deposits Calculator
    Then Then Deposits Calculator menu page should be displayed
    Examples:
      |logID|password|
      |19090039|Bajaj@123|

  Scenario Outline: To verify customer is landed on Fixed Deposit Interest Calculator link after click on Fixed Deposit Interest Calculator option
    Given User launch chrome browser with URL
    And User enters logID as "<logID>" and password as "<password>"
    And Click on Login
    When Customer clicks Hamburger menu
    And Clicks on Try Calculators
    And Clicks on Deposits Calculator
    And Clicks on Fixed Deposit Interest Calculator
    Then Then Deposits Calculator menu page should be displayed
    Examples:
      |logID|password|
      |19090039|Bajaj@123|

  Scenario Outline: To verify customer is landed on SDP Single Maturity Scheme Calculator link after click on SDP Single Maturity Scheme Calculator option
    Given User launch chrome browser with URL
    And User enters logID as "<logID>" and password as "<password>"
    And Click on Login
    When Customer clicks Hamburger menu
    And Clicks on Try Calculators
    And Clicks on Deposits Calculator
    And Clicks on SDP Single Maturity Scheme Calculator
    Then Then SDP Single Maturity Scheme Calculator should be displayed
    Examples:
      |logID|password|
      |19090039|Bajaj@123|

  Scenario Outline: To verify customer is landed on SDP Monthly Maturity Scheme Calculator link after click on SDP Monthly Maturity Scheme Calculator option
    Given User launch chrome browser with URL
    And User enters logID as "<logID>" and password as "<password>"
    And Click on Login
    When Customer clicks Hamburger menu
    And Clicks on Try Calculators
    And Clicks on Deposits Calculator
    And Clicks on SDP Monthly Maturity Scheme Calculator
    Then Then SDP Monthly Maturity Scheme Calculator should be displayed
    Examples:
      |logID|password|
      |19090039|Bajaj@123|

  Scenario Outline: To verify Offers banners are available in footer section on Deposits Calculator sub-menu page
    Given User launch chrome browser with URL
    And User enters logID as "<logID>" and password as "<password>"
    And Click on Login
    When Customer clicks Hamburger menu
    And Clicks on Try Calculators
    And Clicks on Deposits Calculator
    And Check Offers banner in footer section
    Then Then Offer Banners should be available with horizontal scroll
    Examples:
      |logID|password|
      |19090039|Bajaj@123|

  Scenario Outline: To verify customer is redirected to respective banners page after click on available banners from Offers banners section
    Given User launch chrome browser with URL
    And User enters logID as "<logID>" and password as "<password>"
    And Click on Login
    When Customer clicks Hamburger menu
    And Clicks on Try Calculators
    And Clicks on Deposits Calculator
    And Click on banner in footer section
    Then Then customer should be redirected to respective banners page
    Examples:
      |logID|password|
      |19090039|Bajaj@123|

  Scenario Outline: To verify Help & Support page is displayed when customer click on Help & Support menu
    Given User launch chrome browser with URL
    And User enters logID as "<logID>" and password as "<password>"
    And Click on Login
    When Customer clicks Hamburger menu
    And Clicks on Help & Support
    Then Then Help & Support page should be displayed
    Examples:
      |logID|password|
      |19090039|Bajaj@123|

  Scenario Outline: To verify Store locator page is displayed with SSO when customer click on Locate us menu
    Given User launch chrome browser with URL
    And User enters logID as "<logID>" and password as "<password>"
    And Click on Login
    When Customer clicks Hamburger menu
    And Clicks on Locate us
    Then Then Store locator page should be displayed
    Examples:
      |logID|password|
      |19090039|Bajaj@123|

  Scenario Outline: To verify Voucher Redeem page is displayed with SSO when customer click on Voucher Redeem menu
    Given User launch chrome browser with URL
    And User enters logID as "<logID>" and password as "<password>"
    And Click on Login
    When Customer clicks Hamburger menu
    And Clicks on Voucher Redeem
    Then Then Voucher Redeem page should be displayed
    Examples:
      |logID|password|
      |19090039|Bajaj@123|

  Scenario Outline: To verify Website offer page with SSO is displayed when customer click on Check my Offers menu
    Given User launch chrome browser with URL
    And User enters logID as "<logID>" and password as "<password>"
    And Click on Login
    When Customer clicks Hamburger menu
    And Clicks on Check my Offers
    Then Then Check my Offers page should be displayed
    Examples:
      |logID|password|
      |19090039|Bajaj@123|

  Scenario Outline: To verify Communication History page is displayed when customer click on Communication History menu
    Given User launch chrome browser with URL
    And User enters logID as "<logID>" and password as "<password>"
    And Click on Login
    When Customer clicks Hamburger menu
    And Clicks on Communication History
    Then Then Communication History page should be displayed
    Examples:
      |logID|password|
      |19090039|Bajaj@123|

  Scenario Outline: To verify under Settings menu sub-menus are displayed
    Given User launch chrome browser with URL
    And User enters logID as "<logID>" and password as "<password>"
    And Click on Login
    When Customer clicks Hamburger menu
    And Clicks on Settings
    Then "<Menu>" should be displayed
    Examples:
      |logID|password|Menu|
      |19090039|Bajaj@123|Security settings|
      |19090039|Bajaj@123|About us|
      |19090039|Bajaj@123|Terms of services|
      |19090039|Bajaj@123|Privacy Policy|
      |19090039|Bajaj@123|Logout|

  Scenario Outline: To verify Security settings page is displayed when customer click on Security settings sub-menu
    Given User launch chrome browser with URL
    And User enters logID as "<logID>" and password as "<password>"
    And Click on Login
    When Customer clicks Hamburger menu
    And Clicks on Settings
    And Clicks on Security settings
    Then Then Security settings page should be displayed
    Examples:
      |logID|password|
      |19090039|Bajaj@123|

  Scenario Outline: To verify Security questions are displayed when customer click on Reset security question drop-down
    Given User launch chrome browser with URL
    And User enters logID as "<logID>" and password as "<password>"
    And Click on Login
    When Customer clicks Hamburger menu
    And Clicks on Settings
    And Clicks on Security settings
    And Clicks on Reset security question drop-down
    Then Then Security questions should be displayed
    Examples:
      |logID|password|
      |19090039|Bajaj@123|

  Scenario Outline: To verify Security questions are displayed when customer click on Reset security question drop-down
    Given User launch chrome browser with URL
    And User enters logID as "<logID>" and password as "<password>"
    And Click on Login
    When Customer clicks Hamburger menu
    And Clicks on Settings
    And Clicks on Security settings
    And Clicks on Reset security question drop-down
    Then Then Security questions should be displayed
    Examples:
      |logID|password|
      |19090039|Bajaj@123|







