@LAS
Feature: Disbursement/Drawdown

  @pass
  Scenario Outline: To verify Drawdown/Disbursement Requests option is clickable
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using FAS No"<Account No>"
    Then Verify Customer Redirected to "MyAccountLoanServices/LAS/LASDetails" Url
    And Customer Click on "Drawdown" CTA in RHS
    Then Verify Customer Redirected to "MyAccountLoanServices/LAS/LasDisbursement" Url

    Examples:
      | Mobile Number | Date     | Customer Type | Account No |
      | 9545219299    | 13091990 | Individual    | 104175     |

  @pass
  Scenario Outline: To verify that Customer is able to view content on Disbursement Requests page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using FAS No"<Account No>"
    Then Verify Customer Redirected to "MyAccountLoanServices/LAS/LASDetails" Url
    And Customer Click on "Drawdown" CTA in RHS
    Then Verify Customer Redirected to "MyAccountLoanServices/LAS/LasDisbursement" Url
    Then Customer should be able to view all the contents in Disbursement Page

    Examples:
      | Mobile Number | Date     | Customer Type | Account No |
      | 9545219299    | 13091990 | Individual    | 104175     |

  @pass
  Scenario Outline: To verify that Submit CTA is disable when Amount field is blank
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using FAS No"<Account No>"
    Then Verify Customer Redirected to "MyAccountLoanServices/LAS/LASDetails" Url
    And Customer Click on "Drawdown" CTA in RHS
    Then Verify Customer Redirected to "MyAccountLoanServices/LAS/LasDisbursement" Url
    And verify the following button "Submit" is disabled in the page

    Examples:
      | Mobile Number | Date     | Customer Type | Account No |
      | 9545219299    | 13091990 | Individual    | 104175     |

  @pass
  Scenario Outline: To verify that inline message is displayed below amount text field with min and max amount
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using FAS No"<Account No>"
    Then Verify Customer Redirected to "MyAccountLoanServices/LAS/LASDetails" Url
    And Customer Click on "Drawdown" CTA in RHS
    Then Verify Customer Redirected to "MyAccountLoanServices/LAS/LasDisbursement" Url
    And Inline message should be displayed below amount text field with min and max amount

    Examples:
      | Mobile Number | Date     | Customer Type | Account No |
      | 9545219299    | 13091990 | Individual    | 104175     |

  @pass
  Scenario Outline: To verify that inline error message is displayed in red color below amount text field when customer enters value less than min or more than max limit
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using FAS No"<Account No>"
    Then Verify Customer Redirected to "MyAccountLoanServices/LAS/LASDetails" Url
    And Customer Click on "Drawdown" CTA in RHS
    Then Verify Customer Redirected to "MyAccountLoanServices/LAS/LasDisbursement" Url
    Then Inline error message should be displayed in red color below amount text field for minimum Value
    Then Inline error message should be displayed in red color below amount text field for maximum Value
    Examples:
      | Mobile Number | Date     | Customer Type | Account No |
      | 9545219299    | 13091990 | Individual    | 104175     |

  @pass
  Scenario Outline: To verify that input field is not accepting values except Numbers and decimal point
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using FAS No"<Account No>"
    Then Verify Customer Redirected to "MyAccountLoanServices/LAS/LASDetails" Url
    And Customer Click on "Drawdown" CTA in RHS
    Then Verify Customer Redirected to "MyAccountLoanServices/LAS/LasDisbursement" Url
    And Enters Numerical values "12345" then it should be accepted
    And Enter value other than numbers "<Invalid Values>" Input field should not accept those values

    Examples:
      | Mobile Number | Date     | Customer Type | Account No | Invalid Values      |
      | 9545219299    | 13091990 | Individual    | 104175     | ASDD, asd123, @$%#$ |

  @pass
  Scenario Outline: To verify that advisory note displayed when customer enters amount more than 95% of drawing power and less than equal to max value
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using FAS No"<Account No>"
    Then Verify Customer Redirected to "MyAccountLoanServices/LAS/LASDetails" Url
    And Customer Click on "Drawdown" CTA in RHS
    Then Verify Customer Redirected to "MyAccountLoanServices/LAS/LasDisbursement" Url
    And Enters value of more than 95%
    Then Advisory note should be displayed with text,check box and disabled Proceed CTA "Proceed"

    Examples:
      | Mobile Number | Date     | Customer Type | Account No |
      | 9545219299    | 13091990 | Individual    | 104175     |

  @pass
  Scenario Outline: To verify that Proceed CTA is enabled when customer tick the check box of advisory note
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using FAS No"<Account No>"
    Then Verify Customer Redirected to "MyAccountLoanServices/LAS/LASDetails" Url
    And Customer Click on "Drawdown" CTA in RHS
    Then Verify Customer Redirected to "MyAccountLoanServices/LAS/LasDisbursement" Url
    And Enters value of more than 95%
    Then Advisory note should be displayed
    And Ticks the check box
    Then "Proceed" CTA should be enabled

    Examples:
      | Mobile Number | Date     | Customer Type | Account No |
      | 9545219299    | 13091990 | Individual    | 104175     |

  @pass
  Scenario Outline: To verify that OTP popup is displayed on click of Proceed CTA
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using FAS No"<Account No>"
    Then Verify Customer Redirected to "MyAccountLoanServices/LAS/LASDetails" Url
    And Customer Click on "Drawdown" CTA in RHS
    Then Verify Customer Redirected to "MyAccountLoanServices/LAS/LasDisbursement" Url
    And Enters value of more than 95%
    Then Advisory note should be displayed
    And Ticks the check box
    And Click on "Proceed" CTA without wait
    Then OTP Verification title Displayed

    Examples:
      | Mobile Number | Date     | Customer Type | Account No |
      | 9545219299    | 13091990 | Individual    | 104175     |

  @pass
  Scenario Outline: To verify that Submit CTA is enabled after entering value between range provided
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using FAS No"<Account No>"
    Then Verify Customer Redirected to "MyAccountLoanServices/LAS/LASDetails" Url
    And Customer Click on "Drawdown" CTA in RHS
    Then Verify Customer Redirected to "MyAccountLoanServices/LAS/LasDisbursement" Url
    And Enters value between the acceptable Range, then "Submit" CTA should be enabled

    Examples:
      | Mobile Number | Date     | Customer Type | Account No |
      | 9545219299    | 13091990 | Individual    | 104175     |

  @pass
  Scenario Outline: To verify that OTP popup is displayed on click of Submit CTA
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using FAS No"<Account No>"
    Then Verify Customer Redirected to "MyAccountLoanServices/LAS/LASDetails" Url
    And Customer Click on "Drawdown" CTA in RHS
    Then Verify Customer Redirected to "MyAccountLoanServices/LAS/LasDisbursement" Url
    And Enters Acceptable Value
    And Click on "Submit" CTA without wait
    Then OTP Verification title Displayed

    Examples:
      | Mobile Number | Date     | Customer Type | Account No |
      | 9545219299    | 13091990 | Individual    | 104175     |

  @pass
  Scenario Outline: To verify that fields are displayed for bank details
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Loans" tab
    And verify Customer is able to go to Service screen from My Relations using FAS No"<Account No>"
    Then Verify Customer Redirected to "MyAccountLoanServices/LAS/LASDetails" Url
    And Customer Click on "Drawdown" CTA in RHS
    Then Verify Customer Redirected to "MyAccountLoanServices/LAS/LasDisbursement" Url
    And Fields "<Labels>" should be displayed for bank details
    Examples:
      | Mobile Number | Date     | Customer Type | Account No | Labels                                                                               |
      | 9545219299    | 13091990 | Individual    | 104175     | Account Holder Name, Account Number, Account Type, Bank Name, Branch Name, IFSC Code |


#  Scenario Outline: To verify that customer is able to view Content on OTP pop
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User is on Home Page
#    And Customer is able to view My Relations Section to ETB Customers
#    And Customer clicks on view all option
#    And My relations Page should be displayed
#    And click on "Loans" tab
#    And verify Customer is able to go to Service screen from My Relations using FAS No"<Account No>"
#    Then Verify Customer Redirected to "MyAccountLoanServices/LAS/LASDetails" Url
#    And Customer Click on "Drawdown" CTA in RHS
#    Then Verify Customer Redirected to "MyAccountLoanServices/LAS/LasDisbursement" Url
#    And Enters Acceptable Value
#    And Click on "Submit" CTA
#    Then OTP Verification title Displayed
##    And Verify "A one time password message in LAS Drawdown OTP Screen" is Displayed
#    And verify "Enter OTP" "text" is Displayed
#    And Verify "Resend OTP Button" is Displayed
#    And "Resend OTP Button" is Disabled
#    And Verify "OTP Screen Text box 1" is Displayed
#    And Verify "OTP Screen Text box 2" is Displayed
#    And Verify "OTP Screen Text box 3" is Displayed
#    And Verify "OTP Screen Text box 4" is Displayed
#    And Verify "OTP Screen Text box 5" is Displayed
#    And Verify "OTP Screen Text box 6" is Displayed
#    And Verify "Submit Button in LAS OTP Screen" is Displayed
#    And "Submit Button in LAS OTP Screen" is Disabled
#    And Clicks on "OTP Close Button in LAS Drawdown OTP Screen"
#
#    Examples:
#      | Mobile Number | Date     | Customer Type | Account No |
#      | 9545219299    | 13091990 | Individual    | 104175     |
#
#  Scenario Outline:To verify that Submit CTA is disabled when when OTP input field is empty
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User is on Home Page
#    And Customer is able to view My Relations Section to ETB Customers
#    And Customer clicks on view all option
#    And My relations Page should be displayed
#    And click on "Loans" tab
#    And verify Customer is able to go to Service screen from My Relations using FAS No"<Account No>"
#    Then Verify Customer Redirected to "MyAccountLoanServices/LAS/LASDetails" Url
#    And Customer Click on "Drawdown" CTA in RHS
#    Then Verify Customer Redirected to "MyAccountLoanServices/LAS/LasDisbursement" Url
#    And Enters Acceptable Value
#    And Click on "Submit" CTA
#    Then OTP Verification title Displayed
#    And "Submit Button in LAS OTP Screen" is Disabled
#    And Clicks on "OTP Close Button in LAS Drawdown OTP Screen"
#
#    Examples:
#      | Mobile Number | Date     | Customer Type | Account No |
#      | 9545219299    | 13091990 | Individual    | 104175     |
#
#
#  @new
#  Scenario Outline: To verify that Validation message popup displayed when customer is not eligible for drawdown
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User is on Home Page
#    And Customer is able to view My Relations Section to ETB Customers
#    And Customer clicks on view all option
#    And My relations Page should be displayed
#    And click on "Loans" tab
#    And verify Customer is able to go to Service screen from My Relations using FAS No"<FAS No>"
#    Then Verify Customer Redirected to "MyAccountLoanServices/LAS/LASDetails" Url
#    And Customer Click on "Drawdown" CTA in RHS
#    Then Validation message popup should be displayed with "GOT IT" CTA
#
#    Examples:
#      | Mobile Number | Date       | Customer Type | FAS No |
#      | 9730668866    | 13/09/1990 | Individual    | 131860 |


#######Multiple Bank
#  Scenario Outline: To verify that List of Bank Account details displayed when customer have multiple bank accounts and single bank account is selected
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User is on Home Page
#    And Customer is able to view My Relations Section to ETB Customers
#    And Customer clicks on view all option
#    And My relations Page should be displayed
#    And click on "Loans" tab
#    And verify Customer is able to go to Service screen from My Relations using FAS No"<Account No>"
#    Then Verify Customer Redirected to "MyAccountLoanServices/LAS/LASDetails" Url
#    And Customer Click on "Drawdown" CTA in RHS
#    Then Verify Customer Redirected to "MyAccountLoanServices/LAS/LasDisbursement" Url
#    And Select single bank account
#    Then List of Bank Account details should be displayed for customer having multiple bank accounts
#    And Customer should be able to select single bank account
#    Examples:
#      | Mobile Number | Date       | Customer Type | Account No |
#      |               | 13/09/1990 | Individual    |            |
#
#  Scenario Outline: To verify that customer is able to select multiple bank account when they have multiple bank accounts
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User is on Home Page
#    And Customer is able to view My Relations Section to ETB Customers
#    And Customer clicks on view all option
#    And My relations Page should be displayed
#    And click on "Loans" tab
#    And verify Customer is able to go to Service screen from My Relations using FAS No"<Account No>"
#    Then Verify Customer Redirected to "MyAccountLoanServices/LAS/LASDetails" Url
#    And Customer Click on "Drawdown" CTA in RHS
#    Then Verify Customer Redirected to "MyAccountLoanServices/LAS/LasDisbursement" Url
#    And Select multiple bank account
#    Then Customer should not be able to select multiple bank accounts
#    Examples:
#      | Mobile Number | Date       | Customer Type | Account No |
#      |               | 13/09/1990 | Individual    |            |












