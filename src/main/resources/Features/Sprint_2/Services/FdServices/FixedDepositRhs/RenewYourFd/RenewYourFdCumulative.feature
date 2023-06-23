@notrenew@FD2
Feature: FD Services RHS - Renew your FD - Cumulative

@Pass
  Scenario Outline: Active FD - Renew Your FD is not Showing in RHS for Already Renewed FD Account
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    Then verify Redirection using Account number "<Acc Number>"
    Then verify RHS "Quick Actions" following Options: "View Statements, Submit Form 15G/H, Premature Withdrawal, Get a loan against FD, Track FD Receipt, Submit FATCA Form" are Displayed
    Then verify RHS "Quick Actions" following Options are Not Displayed: "Renew your FD"
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number |
      | 9356871941    | 19091970 | Individual    | 229405     |

  @Pass
  Scenario Outline: To verify Renew your FD redirected to Renewal Detail Page - Cumulative
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    Then My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    Then verify Redirection using Account number "<Acc Number>"
    And Customer Click on "Renew your FD" CTA in RHS
    And Verify Customer Redirected to "<url>" Url
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number | url                                                 |
      | 9004391412    | 19051999 | Individual    | 806107     | MyAccountFixedDeposit/FixedDeposit/FDRenewalDetails |
  @Pass
  Scenario Outline: To verify Components of Renew Details Page - Cumulative
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    Then My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    Then verify Redirection using Account number "<Acc Number>"
    And Customer Click on "Renew your FD" CTA in RHS
    And Verify Customer Redirected to "<url>" Url
    And verify "Verify the details of your fixed deposit" "text" is Displayed
    And verify "Deposit Summary" "text" is Displayed
    And verify "Bank Details" "text" is Displayed
    And verify "Broker Details (Optional)" "text" is Displayed
    And verify "Cancel" "Button" is Displayed
    And verify "PROCEED" "Button" is Displayed
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number | url                                                 |
      | 9004391412    | 19051999 | Individual    | 806107     | MyAccountFixedDeposit/FixedDeposit/FDRenewalDetails |
  @Pass
  Scenario Outline: To verify Cancel button in Renew Details Page - Cumulative
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    Then My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    Then verify Redirection using Account number "<Acc Number>"
    And Customer Click on "Renew your FD" CTA in RHS
    And Verify Customer Redirected to "<url>" Url
    And verify "Verify the details of your fixed deposit" "text" is Displayed
    And verify "Cancel" "Button" is Displayed
    And click on "Cancel" Button
    And Verify Customer Redirected to "MyAccountFixedDeposit/FixedDeposit/Index" Url
    Then verify Redirection using Account number "<Acc Number>"
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number | url                                                 |
      | 9004391412    | 19051999 | Individual    | 806107     | MyAccountFixedDeposit/FixedDeposit/FDRenewalDetails |
  @Pass
  Scenario Outline: To verify Top Section in Renew Details Page - Cumulative
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    Then My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    Then verify Redirection using Account number "<Acc Number>"
    And Customer Click on "Renew your FD" CTA in RHS
    And Verify Customer Redirected to "<url>" Url
    And Verify Following Fields in the "Verify the details of your fixed deposit" Section: "FD Number"
    And verify "FD Number" value should be "<Acc Number>" ""
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number | url                                                 |
      | 9004391412    | 19051999 | Individual    | 806107     | MyAccountFixedDeposit/FixedDeposit/FDRenewalDetails |
  @Pass
  Scenario Outline: To verify Deposit Summary Section in Renew Details Page - Cumulative
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    Then My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    Then verify Redirection using Account number "<Acc Number>"
    And Customer Click on "Renew your FD" CTA in RHS
    And Verify Customer Redirected to "<url>" Url
    And Verify Following Fields in the "Deposit Summary" Section: "Rate of Interest (p.a.), Total Interest Payable, Interest Payout, Start Date, Maturity Date, Tenure, Maturity Amount"
    Then verify "Rate of Interest (p.a.)" format as <Digits%>
    Then verify "Total Interest Payable" format as <Rs. Digits>
    Then verify "Start Date" format as "dd MMM yyyy"
    Then verify "Maturity Date" format as "dd MMM yyyy"
    Then verify "Tenure" format as <MM Months>

    And verify "Maturity Amount" value should be Contains "Rs. " ""
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number | url                                                 |
      | 9004391412    | 19051999 | Individual    | 806107     | MyAccountFixedDeposit/FixedDeposit/FDRenewalDetails |
  @Pass
  Scenario Outline: To verify Bank Details Section in Renew Details Page - Cumulative
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    Then My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    Then verify Redirection using Account number "<Acc Number>"
    And Customer Click on "Renew your FD" CTA in RHS
    And Verify Customer Redirected to "<url>" Url
    And Verify Following Fields in the "Bank Details" Section: "Account Number, Account Type, Bank Name, Branch Name, IFSC"
    Then verify Last 4 Characters Should be "UnMasked" ("X") in "Account Number"
    Then verify Other than Last 4 Characters Should be "Masked" ("X") in "Account Number"
    Then verify "Account Type" Should Not be Masked Format
    Then verify "Branch Name" Should Not be Masked Format
    Then verify "IFSC" Should Not be Masked Format
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number | url                                                 |
      | 9004391412    | 19051999 | Individual    | 806107     | MyAccountFixedDeposit/FixedDeposit/FDRenewalDetails |
  @Pass
  Scenario Outline: To verify Broker Details Section in Renew Details Page - Cumulative
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    Then My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    Then verify Redirection using Account number "<Acc Number>"
    And Customer Click on "Renew your FD" CTA in RHS
    And Verify Customer Redirected to "<url>" Url
    And verify "Broker Details (Optional)" "text" is Displayed
    And Verify "FD New Broker radio Button" is Displayed
    And Verify "FD Existing Broker radio Button" is Displayed
    And Verify "FD Broker Code Text Box" is Displayed
    And Verify "FD Broker Name Text Box" is Displayed
    And "FD Broker Code Text Box" is Non Editable
    And "FD Broker Name Text Box" is Non Editable
    And verify "Enter the code of the broker who is assisting you" "text" is Displayed
    And verify "Enter the name of the broker who is assisting you" "text" is Displayed
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number | url                                                 |
      | 9004391412    | 19051999 | Individual    | 806107     | MyAccountFixedDeposit/FixedDeposit/FDRenewalDetails |
  @Pass
  Scenario Outline: To verify New Broker Code Text Box in Renew Details Page - Cumulative
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    Then My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    Then verify Redirection using Account number "<Acc Number>"
    And Customer Click on "Renew your FD" CTA in RHS
    And Verify Customer Redirected to "<url>" Url
    And Clicks on "FD New Broker radio Button"
    And Verify "FD Broker Code Text Box" is Editable
    And verify "FD Broker Code Text Box" is Not Accepted for following values: "A, a, !, @, $, %, ^, &, *, (, ), 12345678901"
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number | url                                                 |
      | 9004391412    | 19051999 | Individual    | 806107     | MyAccountFixedDeposit/FixedDeposit/FDRenewalDetails |
  @Pass
  Scenario Outline: To verify New Broker Name Text Box in Renew Details Page - Cumulative
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    Then My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    Then verify Redirection using Account number "<Acc Number>"
    And Customer Click on "Renew your FD" CTA in RHS
    And Verify Customer Redirected to "<url>" Url
    And Clicks on "FD New Broker radio Button"
    And Verify "FD Broker Name Text Box" is Editable
    And verify "FD Broker Name Text Box" is Not Accepted for following values: "0, 1, !, @, $, %, ^, &, *, (, ), 12345678901"
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number | url                                                 |
      | 9004391412    | 19051999 | Individual    | 806107     | MyAccountFixedDeposit/FixedDeposit/FDRenewalDetails |
  @Pass
  Scenario Outline: To verify User Redirected to Renewal Details page with Existing Broker Details - Cumulative
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    Then My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    Then verify Redirection using Account number "<Acc Number>"
    And Customer Click on "Renew your FD" CTA in RHS
    And Verify Customer Redirected to "<url>" Url
    And Clicks on "FD Proceed Button in Renew"
    And Verify Customer Redirected to "<urlRenewPlan>" Url
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number | url                                                 | urlRenewPlan                                     |
      | 9004391412    | 19051999 | Individual    | 806107     | MyAccountFixedDeposit/FixedDeposit/FDRenewalDetails | MyAccountFixedDeposit/FixedDeposit/FDRenewalPlan |
  @Pass
  Scenario Outline: To verify User Redirected to Renewal Details page with New Broker Details - Cumulative
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    Then My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    Then verify Redirection using Account number "<Acc Number>"
    And Customer Click on "Renew your FD" CTA in RHS
    And Verify Customer Redirected to "<url>" Url
    And Clicks on "FD New Broker radio Button"
    And Enter "Jai" in "FD Broker Name Text Box"
    And Enter "123467890" in "FD Broker Code Text Box"
    And Clicks on "FD Proceed Button in Renew"
    And Verify Customer Redirected to "<urlRenewPlan>" Url
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number | url                                                 | urlRenewPlan                                     |
      | 9004391412    | 19051999 | Individual    | 806107     | MyAccountFixedDeposit/FixedDeposit/FDRenewalDetails | MyAccountFixedDeposit/FixedDeposit/FDRenewalPlan |
############################################# Renew Plan Page ##################################################

    ###################################################### Renewal Plan Page - Cumulative ####################################################################################################
  @Pass
  Scenario Outline: To verify Top Section in Renew Plan Page - Cumulative
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    Then My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    Then verify Redirection using Account number "<Acc Number>"
    And Customer Click on "Renew your FD" CTA in RHS
    And Verify Customer Redirected to "<url>" Url
    And Clicks on "FD Proceed Button in Renew"
    And Verify Customer Redirected to "<urlRenewPlan>" Url
    And Verify Following Fields in the "Verify the details of your fixed deposit" Section: "FD Number"
    And verify "FD Number" value should be "<Acc Number>" ""
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number | url                                                 | urlRenewPlan                                     |
      | 9004391412    | 19051999 | Individual    | 806107     | MyAccountFixedDeposit/FixedDeposit/FDRenewalDetails | MyAccountFixedDeposit/FixedDeposit/FDRenewalPlan |
@Pass
  Scenario Outline: To verify Components of Renewal Plan page - Cumulative
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    Then My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    Then verify Redirection using Account number "<Acc Number>"
    And Customer Click on "Renew your FD" CTA in RHS
    And Verify Customer Redirected to "<url>" Url
    And Clicks on "FD Proceed Button in Renew"
    And Verify Customer Redirected to "<urlRenewPlan>" Url
    And verify "Verify the details of your fixed deposit" "section" is Displayed
    And verify "Renewal Plan" "title" is Displayed
    And verify "Choose from our three options" "Label" is Displayed
    And verify "On maturity, the principal amount will be reinvested. The interest earned will be transferred to your bank account." "Hint Text" is Displayed
    And verify "Renewal Amount" "label" is Displayed
    And verify "This is your principal amount invested with us" "Hint text" is Displayed
    And verify "This amount is subject to tax deductions (TDS) on the interest earned." "Hint text" is Displayed
    And verify "Select Tenure (in months)" "Label" is Displayed
    And verify "Choose a longer tenure to earn higher returns" "Ref text" is Displayed
    And verify "View Interest Rates" "Link text" is Displayed
    And verify "Select Interest Payout" "Label" is Displayed
    And verify "Choosing interest payout at maturity can earn you higher returns!" "Ref text" is Displayed
    And verify "Investment Details" "section" is Displayed
    And verify "Interest Rate" "Label" is Displayed
    And verify "Maturity Amount" "Label" is Displayed
    And verify "*The Fixed Deposit will be booked at the rate of interest prevailing on the date of renewal of deposit" "Ref text" is Displayed
    And verify "CANCEL" "Button" is Displayed
    And verify "PROCEED" "Button" is Displayed
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number | url                                                 | urlRenewPlan                                     |
      | 9004391412    | 19051999 | Individual    | 806107     | MyAccountFixedDeposit/FixedDeposit/FDRenewalDetails | MyAccountFixedDeposit/FixedDeposit/FDRenewalPlan |



#  @run
#  Scenario Outline: To verify Components of Renew Plan Page - Cumulative
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User is on Home Page
#    And Customer is able to view My Relations Section to ETB Customers
#    And Customer clicks on view all option
#    Then My relations Page should be displayed
#    And click on "Deposits" tab
#    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
#    Then verify Redirection using Account number "<Acc Number>"
#    And Customer Click on "Renew your FD" CTA in RHS
#    And Verify Customer Redirected to "<url>" Url
#    And Clicks on "FD Proceed Button in Renew"
#    And Verify Customer Redirected to "<urlRenewPlan>" Url
#    And verify "Broker Details (Optional)" "text" is Displayed
#    And Verify "FD New Broker radio Button" is Displayed
#    And Verify "FD Existing Broker radio Button" is Displayed
#    And Verify "FD Broker Code Text Box" is Displayed
#    And Verify "FD Broker Name Text Box" is Displayed
#    And "FD Broker Code Text Box" is Non Editable
#    And "FD Broker Name Text Box" is Non Editable
#    And verify "Enter the code of the broker who is assisting you" "text" is Displayed
#    And verify "Enter the name of the broker who is assisting you" "text" is Displayed
#    Examples:
#      | Mobile Number | Date     | Customer Type | Acc Number | url                                                 | urlRenewPlan                                     |
#      | 9004391412    | 19051999 | Individual    | 806107     | MyAccountFixedDeposit/FixedDeposit/FDRenewalDetails | MyAccountFixedDeposit/FixedDeposit/FDRenewalPlan |


  @Ignore
  Scenario Outline: To verify Renewal Plan Maturity Amount Calculator for Cumulative
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    Then My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    Then verify Redirection using Account number "<Acc Number>"
    And Customer Click on "Renew your FD" CTA in RHS
    And Verify Customer Redirected to "<url>" Url
    And Clicks on "FD Proceed Button in Renew"
    And Verify Customer Redirected to "<urlRenewPlan>" Url
    And verify Renewal plan calculation for Maturity Amount
      | Principal, 60, Maturity, 7.75%               |
      | Principal, 48, Maturity, 7.75%               |
      | Principal, 36, Maturity, 7.75%               |
      | Principal, 24, Maturity, 7.50%               |
      | Principal, 12, Maturity, 7.05%               |
      | Principal, 60, Monthly, 7.49%                |
      | Principal, 48, Monthly, 7.49%                |
      | Principal, 36, Monthly, 7.49%                |
      | Principal, 24, Monthly, 7.25%                |
      | Principal, 12, Monthly, 6.83%                |
      | Principal, 60, Quarterly, 7.53%              |
      | Principal, 48, Quarterly, 7.53%              |
      | Principal, 36, Quarterly, 7.53%              |
      | Principal, 24, Quarterly, 7.30%              |
      | Principal, 12, Quarterly, 6.87%              |
      | Principal, 60, Half-yearly, 7.61%            |
      | Principal, 48, Half-yearly, 7.61%            |
      | Principal, 36, Half-yearly, 7.61%            |
      | Principal, 24, Half-yearly, 7.36%            |
      | Principal, 12, Half-yearly, 6.93%            |
      | Principal, 60, Annually, 7.75%               |
      | Principal, 48, Annually, 7.75%               |
      | Principal, 36, Annually, 7.75%               |
      | Principal, 24, Annually, 7.50%               |
      | Principal, 12, Annually, 7.05%               |
      | Principal + Interest, 60, Maturity, 7.75%    |
      | Principal + Interest, 48, Maturity, 7.75%    |
      | Principal + Interest, 36, Maturity, 7.75%    |
      | Principal + Interest, 24, Maturity, 7.50%    |
      | Principal + Interest, 12, Maturity, 7.05%    |
      | Principal + Interest, 60, Monthly, 7.49%     |
      | Principal + Interest, 48, Monthly, 7.49%     |
      | Principal + Interest, 36, Monthly, 7.49%     |
      | Principal + Interest, 24, Monthly, 7.25%     |
      | Principal + Interest, 12, Monthly, 6.83%     |
      | Principal + Interest, 60, Quarterly, 7.53%   |
      | Principal + Interest, 48, Quarterly, 7.53%   |
      | Principal + Interest, 36, Quarterly, 7.53%   |
      | Principal + Interest, 24, Quarterly, 7.30%   |
      | Principal + Interest, 12, Quarterly, 6.87%   |
      | Principal + Interest, 60, Half-yearly, 7.61% |
      | Principal + Interest, 48, Half-yearly, 7.61% |
      | Principal + Interest, 36, Half-yearly, 7.61% |
      | Principal + Interest, 24, Half-yearly, 7.36% |
      | Principal + Interest, 12, Half-yearly, 6.93% |
      | Principal + Interest, 60, Annually, 7.75%    |
      | Principal + Interest, 48, Annually, 7.75%    |
      | Principal + Interest, 36, Annually, 7.75%    |
      | Principal + Interest, 24, Annually, 7.50%    |
      | Principal + Interest, 12, Annually, 7.05%    |
      | Partial Renewal, 60, Maturity, 7.75%         |
      | Partial Renewal, 48, Maturity, 7.75%         |
      | Partial Renewal, 36, Maturity, 7.75%         |
      | Partial Renewal, 24, Maturity, 7.50%         |
      | Partial Renewal, 12, Maturity, 7.05%         |
      | Partial Renewal, 60, Monthly, 7.49%          |
      | Partial Renewal, 48, Monthly, 7.49%          |
      | Partial Renewal, 36, Monthly, 7.49%          |
      | Partial Renewal, 24, Monthly, 7.25%          |
      | Partial Renewal, 12, Monthly, 6.83%          |
      | Partial Renewal, 60, Quarterly, 7.53%        |
      | Partial Renewal, 48, Quarterly, 7.53%        |
      | Partial Renewal, 36, Quarterly, 7.53%        |
      | Partial Renewal, 24, Quarterly, 7.30%        |
      | Partial Renewal, 12, Quarterly, 6.87%        |
      | Partial Renewal, 60, Half-yearly, 7.61%      |
      | Partial Renewal, 48, Half-yearly, 7.61%      |
      | Partial Renewal, 36, Half-yearly, 7.61%      |
      | Partial Renewal, 24, Half-yearly, 7.36%      |
      | Partial Renewal, 12, Half-yearly, 6.93%      |
      | Partial Renewal, 60, Annually, 7.75%         |
      | Partial Renewal, 48, Annually, 7.75%         |
      | Partial Renewal, 36, Annually, 7.75%         |
      | Partial Renewal, 24, Annually, 7.50%         |
      | Partial Renewal, 12, Annually, 7.05%         |
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number | url                                                 | urlRenewPlan                                     |
      | 9422010772    | 19051999 | Individual    | 500953     | MyAccountFixedDeposit/FixedDeposit/FDRenewalDetails | MyAccountFixedDeposit/FixedDeposit/FDRenewalPlan |
  @Pass
  Scenario Outline: To verify Default Options in Renew Plan Page - Cumulative
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    Then My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    Then verify Redirection using Account number "<Acc Number>"
    And Customer Click on "Renew your FD" CTA in RHS
    And Verify Customer Redirected to "<url>" Url
    And Clicks on "FD Proceed Button in Renew"
    And Verify Customer Redirected to "<urlRenewPlan>" Url
    And verify "Principal" is Default Option in "Plan type section"
    And verify "48" is Default Option in "Tenure Section"
    And verify "Maturity" is Default Option in "Interest Payout Type Section"
    And verify Badge displayed with "48" for "Tenure"
    And verify Badge displayed with "Maturity" for "Interest Payout type"
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number | url                                                 | urlRenewPlan                                     |
      | 9004391412    | 19051999 | Individual    | 806107     | MyAccountFixedDeposit/FixedDeposit/FDRenewalDetails | MyAccountFixedDeposit/FixedDeposit/FDRenewalPlan |
  @Pass
  Scenario Outline: To verify Choose Plan from three Options in Renew Plan Page - Cumulative
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    Then My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    Then verify Redirection using Account number "<Acc Number>"
    And Customer Click on "Renew your FD" CTA in RHS
    And Verify Customer Redirected to "<url>" Url
    And Clicks on "FD Proceed Button in Renew"
    And Verify Customer Redirected to "<urlRenewPlan>" Url
    And Click on "Principal" in Renewal Plan Page
    And verify "Edit Button in Renew Amount" is Not Displayed
    And Click on "Principal + Interest" in Renewal Plan Page
    And verify "Edit Button in Renew Amount" is Not Displayed
    And Click on "Partial Renewal" in Renewal Plan Page
    And Verify "Edit Button in Renew Amount" is Displayed
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number | url                                                 | urlRenewPlan                                     |
      | 9004391412    | 19051999 | Individual    | 806107     | MyAccountFixedDeposit/FixedDeposit/FDRenewalDetails | MyAccountFixedDeposit/FixedDeposit/FDRenewalPlan |
  @Pass
  Scenario Outline: To Validate Renewal Amount Text box in Renew Plan Page - Cumulative
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    Then My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    Then verify Redirection using Account number "<Acc Number>"
    And Customer Click on "Renew your FD" CTA in RHS
    And Verify Customer Redirected to "<url>" Url
    And Clicks on "FD Proceed Button in Renew"
    And Verify Customer Redirected to "<urlRenewPlan>" Url
    And Click on "Partial Renewal" in Renewal Plan Page
    And Verify "Edit Button in Renew Amount" is Displayed
    And "Renew Amount Edit Text Box" is Non Editable
    And Clicks on "Edit Button in Renew Amount"
    And Verify "Renew Amount Edit Text Box" is Editable
    And verify "Renew Amount Edit Text Box" is Accepted following values: "1.23456789, 12.3456789, 123.456789, 1234.56789, 12345.6780, 123456.780, 1234567.80, 12345678.0, 1234567890"
    And verify "Renew Amount Edit Text Box" is Not Accepted for following values: "`, ~, !, @, $, %, ^, &, *, (, ), -, +, _, +, 99999999999"
    And Verify "Renew Amount Text Box Error Message" for following values: "Greater Than Maturity Amount and Less Than 15 K" in Renew Amount Edit Box
    And Verify Not Showing "Renew Amount Text Box Error Message" for following values: "Less Than Maturity Amount and Greater Than 15 K" in Renew Amount Edit Box
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number | url                                                 | urlRenewPlan                                     |
      | 9004391412    | 19051999 | Individual    | 806107     | MyAccountFixedDeposit/FixedDeposit/FDRenewalDetails | MyAccountFixedDeposit/FixedDeposit/FDRenewalPlan |
  @Pass
  Scenario Outline: To Verify Custom Option Textbox in Select Tenure - Cumulative
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    Then My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    Then verify Redirection using Account number "<Acc Number>"
    And Customer Click on "Renew your FD" CTA in RHS
    And Verify Customer Redirected to "<url>" Url
    And Clicks on "FD Proceed Button in Renew"
    And Verify Customer Redirected to "<urlRenewPlan>" Url
    And Click on "Custom" in Renewal Plan Page
    And verify "Enter a tenure between 12 and 60 months" "text" is Displayed
    And Verify "Renew Tenure Custom Text Box" is Displayed
    And verify "Renew Tenure Custom Text Box" is Not Accepted for following values: "`, ~, !, @, $, %, ^, &, *, (, ), _, +, -, ="
    And verify "Renew Tenure Custom Text Box" is Accepted following values: "0, 1, 2, 3, 4, 5, 6, 7, 8, 9"
    And Verify "Enter months between 12 and 60 Error Message" for following values: "11, 12, 60, 61, 0" in "Renew Tenure Custom Text Box"
    And Verify Not Showing "Enter months between 12 and 60 Error Message" for following values: "13, 59, 25" in "Renew Tenure Custom Text Box"
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number | url                                                 | urlRenewPlan                                     |
      | 9004391412    | 19051999 | Individual    | 806107     | MyAccountFixedDeposit/FixedDeposit/FDRenewalDetails | MyAccountFixedDeposit/FixedDeposit/FDRenewalPlan |
  @Pass
  Scenario Outline: To Verify Interest rates Link Text - Cumulative
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    Then My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    Then verify Redirection using Account number "<Acc Number>"
    And Customer Click on "Renew your FD" CTA in RHS
    And Verify Customer Redirected to "<url>" Url
    And Clicks on "FD Proceed Button in Renew"
    And Verify Customer Redirected to "<urlRenewPlan>" Url
    And click on "View Interest Rates" Button
    And verify "Interest Rates" "text" is Displayed
    And click on "Got It" Button
    And verify "View Interest Rates" "button" is Displayed
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number | url                                                 | urlRenewPlan                                     |
      | 9004391412    | 19051999 | Individual    | 806107     | MyAccountFixedDeposit/FixedDeposit/FDRenewalDetails | MyAccountFixedDeposit/FixedDeposit/FDRenewalPlan |

    ################################################# RENEWAL SUMMARY PAGE ####################################################################
  @Pass
  Scenario Outline: To Verify redirected to FD Renew Summary Page - Cumulative
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    Then My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    Then verify Redirection using Account number "<Acc Number>"
    And Customer Click on "Renew your FD" CTA in RHS
    And Verify Customer Redirected to "<url>" Url
    And Clicks on "FD Proceed Button in Renew"
    And Verify Customer Redirected to "<urlRenewPlan>" Url
    And Clicks on "FD Proceed Button in Renew"
    And Verify Customer Redirected to "<urlRenewSummary>" Url
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number | url                                                 | urlRenewPlan                                     | urlRenewSummary                                     |
      | 9004391412    | 19051999 | Individual    | 806107     | MyAccountFixedDeposit/FixedDeposit/FDRenewalDetails | MyAccountFixedDeposit/FixedDeposit/FDRenewalPlan | MyAccountFixedDeposit/FixedDeposit/FDRenewalSummary |

  @Pass
  Scenario Outline: To Verify Components of FD Renew Summary Page - Cumulative
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    Then My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    Then verify Redirection using Account number "<Acc Number>"
    And Customer Click on "Renew your FD" CTA in RHS
    And Verify Customer Redirected to "<url>" Url
    And Clicks on "FD Proceed Button in Renew"
    And Verify Customer Redirected to "<urlRenewPlan>" Url
    And Clicks on "FD Proceed Button in Renew"
    And Verify Customer Redirected to "<urlRenewSummary>" Url
    And verify "Renewal Summary" "title" is Displayed
    And verify "You can check or edit your investment details before you proceed." "text" is Displayed
    And verify "Deposit Summary" "title" is Displayed
    And verify "Fixed Deposit - Renewal" "text" is Displayed
    And verify "Deposit Amount" "text" is Displayed
    And verify "Check your renewal details carefully" "text" is Displayed
    And verify "You will not be able to make any changes once you confirm them." "text" is Displayed
    And verify "I confirm the deposit summary mentioned here. I agree to the" "text" is Displayed
    And verify "terms and conditions" "button" is Displayed
    And verify "Edit Investment Details" "button" is Displayed
    And verify "Declaration" "title" is Displayed
    And verify "I have gone through statements/particulars/representations furnished by the company. After careful consideration, I am investing in a fixed deposit with the company at my own risk and volition." "text" is Displayed
    And verify "Cancel" "button" is Displayed
    And verify "PROCEED" "button" is Displayed
    And "FD Proceed Button in Renew" is Disabled
    And "FD Cancel Button in Renew" is Enabled
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number | url                                                 | urlRenewPlan                                     | urlRenewSummary                                     |
      | 9004391412    | 19051999 | Individual    | 806107     | MyAccountFixedDeposit/FixedDeposit/FDRenewalDetails | MyAccountFixedDeposit/FixedDeposit/FDRenewalPlan | MyAccountFixedDeposit/FixedDeposit/FDRenewalSummary |
  @Pass
  Scenario Outline: To Verify Cancel Button in FD Renew Summary Page - Cumulative
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    Then My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    Then verify Redirection using Account number "<Acc Number>"
    And Customer Click on "Renew your FD" CTA in RHS
    And Verify Customer Redirected to "<url>" Url
    And Clicks on "FD Proceed Button in Renew"
    And Verify Customer Redirected to "<urlRenewPlan>" Url
    And Clicks on "FD Proceed Button in Renew"
    And Verify Customer Redirected to "<urlRenewSummary>" Url
    And Clicks on "FD Cancel Button in Renew"
    And Verify Customer Redirected to "MyAccountFixedDeposit/FixedDeposit/Index" Url
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number | url                                                 | urlRenewPlan                                     | urlRenewSummary                                     |
      | 9004391412    | 19051999 | Individual    | 806107     | MyAccountFixedDeposit/FixedDeposit/FDRenewalDetails | MyAccountFixedDeposit/FixedDeposit/FDRenewalPlan | MyAccountFixedDeposit/FixedDeposit/FDRenewalSummary |
  @Pass
  Scenario Outline: To Verify Edit Investment Details Button in FD Renew Summary Page - Cumulative
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    Then My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    Then verify Redirection using Account number "<Acc Number>"
    And Customer Click on "Renew your FD" CTA in RHS
    And Verify Customer Redirected to "<url>" Url
    And Clicks on "FD Proceed Button in Renew"
    And Verify Customer Redirected to "<urlRenewPlan>" Url
    And Clicks on "FD Proceed Button in Renew"
    And Verify Customer Redirected to "<urlRenewSummary>" Url
    And Clicks on "Edit Investment Details Button"
    And Verify Customer Redirected to "<urlRenewPlan>" Url
    And Clicks on "FD Proceed Button in Renew"
    And Verify Customer Redirected to "<urlRenewSummary>" Url
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number | url                                                 | urlRenewPlan                                     | urlRenewSummary                                     |
      | 9004391412    | 19051999 | Individual    | 806107     | MyAccountFixedDeposit/FixedDeposit/FDRenewalDetails | MyAccountFixedDeposit/FixedDeposit/FDRenewalPlan | MyAccountFixedDeposit/FixedDeposit/FDRenewalSummary |
  @Pass
  Scenario Outline: To Verify Deposit Summary Section in FD Renew Summary Page - Cumulative
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    Then My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    Then verify Redirection using Account number "<Acc Number>"
    And Customer Click on "Renew your FD" CTA in RHS
    And Verify Customer Redirected to "<url>" Url
    And Clicks on "FD Proceed Button in Renew"
    And Verify Customer Redirected to "<urlRenewPlan>" Url
    And Clicks on "FD Proceed Button in Renew"
    And Verify Customer Redirected to "<urlRenewSummary>" Url
    And verify "Deposit Amount" "in FD Renew Summary Page" Value is Displayed
    And verify "Deposit Amount" format as <Rs. Digits>
    And verify "Start Date" "in FD Renew Summary Page" Value is Displayed
    And verify "Start Date" format as "dd MMM yyyy"
    And verify "Maturity Date" "in FD Renew Summary Page" Value is Displayed
    And verify "Maturity Date" format as "dd MMM yyyy"
    And verify "Tenure" "in FD Renew Summary Page" Value is Displayed
    And verify "Tenure" format as <MM Months>
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number | url                                                 | urlRenewPlan                                     | urlRenewSummary                                     |
      | 9004391412    | 19051999 | Individual    | 806107     | MyAccountFixedDeposit/FixedDeposit/FDRenewalDetails | MyAccountFixedDeposit/FixedDeposit/FDRenewalPlan | MyAccountFixedDeposit/FixedDeposit/FDRenewalSummary |
  @Pass
  Scenario Outline: To Verify Terms and Conditions Checkbox in FD Renew Summary Page - Cumulative
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    Then My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    Then verify Redirection using Account number "<Acc Number>"
    And Customer Click on "Renew your FD" CTA in RHS
    And Verify Customer Redirected to "<url>" Url
    And Clicks on "FD Proceed Button in Renew"
    And Verify Customer Redirected to "<urlRenewPlan>" Url
    And Clicks on "FD Proceed Button in Renew"
    And Verify Customer Redirected to "<urlRenewSummary>" Url
    And "FD Proceed Button in Renew" is Disabled
    And Clicks on "Check Box in FD Renew Summary Page"
    And "FD Proceed Button in Renew" is Enabled
#    And Clicks on "terms and conditions in FD Renew Summary Page"
#    And Verify Customer Redirected to "<urlRenewSummary>" Url
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number | url                                                 | urlRenewPlan                                     | urlRenewSummary                                     |
      | 9004391412    | 19051999 | Individual    | 806107     | MyAccountFixedDeposit/FixedDeposit/FDRenewalDetails | MyAccountFixedDeposit/FixedDeposit/FDRenewalPlan | MyAccountFixedDeposit/FixedDeposit/FDRenewalSummary |

  @Pass
  Scenario Outline: To Verify Components of OTP and Close Button in FD Renew Summary Page - Cumulative
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    Then My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    Then verify Redirection using Account number "<Acc Number>"
    And Customer Click on "Renew your FD" CTA in RHS
    And Verify Customer Redirected to "<url>" Url
    And Clicks on "FD Proceed Button in Renew"
    And Verify Customer Redirected to "<urlRenewPlan>" Url
    And Clicks on "FD Proceed Button in Renew"
    And Verify Customer Redirected to "<urlRenewSummary>" Url
    And Clicks on "Check Box in FD Renew Summary Page"
    And "FD Proceed Button in Renew" is Enabled
    And Clicks on "FD Proceed Button in Renew"
    Then OTP Verification title Displayed
    And Verify "OTP Sent Your Mob Number Message" is Displayed
    And verify "Enter One Time Password" "text" is Displayed
    And verify "Primary Account Holder OTP" "text" is Displayed
    And Verify "Resend OTP Button" is Displayed
    And Verify "OTP Screen Text box 1" is Displayed
    And Verify "OTP Screen Text box 2" is Displayed
    And Verify "OTP Screen Text box 3" is Displayed
    And Verify "OTP Screen Text box 4" is Displayed
    And Verify "OTP Screen Text box 5" is Displayed
    And Verify "OTP Screen Text box 6" is Displayed
    And Verify "Submit Button in Renew FD OTP Screen" is Displayed
    And "Submit Button in Renew FD OTP Screen" is Disabled
    And Clicks on "OTP Screen Close Button"
    And verify "OTP Screen Close Button" is Not Displayed
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number | url                                                 | urlRenewPlan                                     | urlRenewSummary                                     |
#      | 9004391412    | 19051999 | Individual    | 806107     | MyAccountFixedDeposit/FixedDeposit/FDRenewalDetails | MyAccountFixedDeposit/FixedDeposit/FDRenewalPlan | MyAccountFixedDeposit/FixedDeposit/FDRenewalSummary |
      | 9422010772    | 19051999 | Individual    | 500953     | MyAccountFixedDeposit/FixedDeposit/FDRenewalDetails | MyAccountFixedDeposit/FixedDeposit/FDRenewalPlan | MyAccountFixedDeposit/FixedDeposit/FDRenewalSummary |
  @Pass
  Scenario Outline: To Verify OTP Timing & Resend Button in FD Renew Summary Page - Cumulative
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    Then My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    Then verify Redirection using Account number "<Acc Number>"
    And Customer Click on "Renew your FD" CTA in RHS
    And Verify Customer Redirected to "<url>" Url
    And Clicks on "FD Proceed Button in Renew"
    And Verify Customer Redirected to "<urlRenewPlan>" Url
    And Clicks on "FD Proceed Button in Renew"
    And Verify Customer Redirected to "<urlRenewSummary>" Url
    And Clicks on "Check Box in FD Renew Summary Page"
    And "FD Proceed Button in Renew" is Enabled
    And Clicks on "FD Proceed Button in Renew"
    And OTP Verification title Displayed
    Then verify Resend OTP button and Timing in Reverse Order
    And Wait 60 seconds for "Enable Resend OTP Button"
    And Verify "Enable Resend OTP Button" is Displayed
    And Clicks on "Enable Resend OTP Button"
    And verify Resend OTP button and Timing in Reverse Order
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number | url                                                 | urlRenewPlan                                     | urlRenewSummary                                     |
      | 9004391412    | 19051999 | Individual    | 806107     | MyAccountFixedDeposit/FixedDeposit/FDRenewalDetails | MyAccountFixedDeposit/FixedDeposit/FDRenewalPlan | MyAccountFixedDeposit/FixedDeposit/FDRenewalSummary |
@Pass
  Scenario Outline: To Verify OTP Validations in FD Renew Summary Page - Cumulative
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    Then My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    Then verify Redirection using Account number "<Acc Number>"
    And Customer Click on "Renew your FD" CTA in RHS
    And Verify Customer Redirected to "<url>" Url
    And Clicks on "FD Proceed Button in Renew"
    And Verify Customer Redirected to "<urlRenewPlan>" Url
    And Clicks on "FD Proceed Button in Renew"
    And Verify Customer Redirected to "<urlRenewSummary>" Url
    And Clicks on "Check Box in FD Renew Summary Page"
    And "FD Proceed Button in Renew" is Enabled
    And Clicks on "FD Proceed Button in Renew"
    And OTP Verification title Displayed
    Then Enter "0" in "OTP Screen Text box 1"
    And "OTP Screen Text box 1" Bottom Line Color Changed into "Green" After Enter "Valid" Value
    And "Submit Button in Renew FD OTP Screen" is Disabled
    And Enter "2" in "OTP Screen Text box 2"
    And "OTP Screen Text box 2" Bottom Line Color Changed into "Green" After Enter "Valid" Value
    And "Submit Button in Renew FD OTP Screen" is Disabled
    And Enter "3" in "OTP Screen Text box 3"
    And "OTP Screen Text box 3" Bottom Line Color Changed into "Green" After Enter "Valid" Value
    And "Submit Button in Renew FD OTP Screen" is Disabled
    And Enter "4" in "OTP Screen Text box 4"
    And "OTP Screen Text box 4" Bottom Line Color Changed into "Green" After Enter "Valid" Value
    And "Submit Button in Renew FD OTP Screen" is Disabled
    And Enter "5" in "OTP Screen Text box 5"
    And "OTP Screen Text box 5" Bottom Line Color Changed into "Green" After Enter "Valid" Value
    And "Submit Button in Renew FD OTP Screen" is Disabled
    And Enter "6" in "OTP Screen Text box 6"
    And "OTP Screen Text box 6" Bottom Line Color Changed into "Green" After Enter "Valid" Value
    And "Submit Button in Renew FD OTP Screen" is Enabled
    And Clicks on "Submit Button in Renew FD OTP Screen"
    And Verify "Invalid OTP Error Message" is Displayed
#    And "Submit Button in Renew FD OTP Screen" is Disabled
    And verify "OTP Screen Text box 1" is Not Accepted for following values: "a, A, !, @, $, %, ^, &, *, (, ., ),  "
    And verify "OTP Screen Text box 2" is Not Accepted for following values: "a, A, !, @, $, %, ^, &, *, (, ., ),  "
    And verify "OTP Screen Text box 3" is Not Accepted for following values: "a, A, !, @, $, %, ^, &, *, (, ., ),  "
    And verify "OTP Screen Text box 4" is Not Accepted for following values: "a, A, !, @, $, %, ^, &, *, (, ., ),  "
    And verify "OTP Screen Text box 5" is Not Accepted for following values: "a, A, !, @, $, %, ^, &, *, (, ., ),  "
    And verify "OTP Screen Text box 6" is Not Accepted for following values: "a, A, !, @, $, %, ^, &, *, (, ., ),  "
    And Wait 60 seconds
    And Enter "1" in "OTP Screen Text box 1"
    And Enter "2" in "OTP Screen Text box 2"
    And Enter "3" in "OTP Screen Text box 3"
    And Enter "4" in "OTP Screen Text box 4"
    And Enter "5" in "OTP Screen Text box 5"
    And Enter "6" in "OTP Screen Text box 6"
    And "Submit Button in Renew FD OTP Screen" is Enabled
    And Clicks on "Submit Button in Renew FD OTP Screen"
    And Verify "OTP Expired Error Message" is Displayed
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number | url                                                 | urlRenewPlan                                     | urlRenewSummary                                     |
#      | 9004391412    | 19051999 | Individual    | 806107     | MyAccountFixedDeposit/FixedDeposit/FDRenewalDetails | MyAccountFixedDeposit/FixedDeposit/FDRenewalPlan | MyAccountFixedDeposit/FixedDeposit/FDRenewalSummary |
      | 9820983030    | 19051999 | Individual    | 308079     | MyAccountFixedDeposit/FixedDeposit/FDRenewalDetails | MyAccountFixedDeposit/FixedDeposit/FDRenewalPlan | MyAccountFixedDeposit/FixedDeposit/FDRenewalSummary |

@runn
  Scenario Outline: To Verify Success Screen in FD Renew Process - Cumulative
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    Then My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    Then verify Redirection using Account number "<Acc Number>"
    And Customer Click on "Renew your FD" CTA in RHS
    And Verify Customer Redirected to "<url>" Url
    And Clicks on "FD Proceed Button in Renew"
    And Verify Customer Redirected to "<urlRenewPlan>" Url
    And verify "Renew Amount Edit Text Box" Value is Displayed
    And Clicks on "FD Proceed Button in Renew"
    And Verify Customer Redirected to "<urlRenewSummary>" Url
    And Clicks on "Check Box in FD Renew Summary Page"
    And "FD Proceed Button in Renew" is Enabled
    And Clicks on "FD Proceed Button in Renew"
    And OTP Verification title Displayed
    And Enter "1" in "OTP Screen Text box 1"
    And Enter "2" in "OTP Screen Text box 2"
    And Enter "3" in "OTP Screen Text box 3"
    And Enter "4" in "OTP Screen Text box 4"
    And Enter "5" in "OTP Screen Text box 5"
    And Enter "6" in "OTP Screen Text box 6"
    And Clicks on "Submit Button in Renew FD OTP Screen"
    And Wait 30 seconds
    And Verify "Success Logo for Renewal Process" is Displayed
    And verify "Congratulations! The renewal process is complete." "text" is Displayed
    And verify "Your renewal will come into effect on the date of maturity." "text" is Displayed
    And verify "Details of your fixed deposit" "sub title" is Displayed
    And verify "Deposit Amount" "in FD Renew Success Page" Value is Displayed
    And verify "Deposit Amount" and "Renew Amount Edit Text Box" are Same
    And verify "Start Date" "in FD Renew Success Page" Value is Displayed
    And verify "Start Date" format as "dd MMM yyyy"
    And verify "Maturity date" "in FD Renew Success Page" Value is Displayed
    And verify "Maturity date" format as "dd MMM yyyy"
    And verify "Tenure" "in FD Renew Success Page" Value is Displayed
    And verify "Tenure" format as <MM Months>
    And verify "Documents" "text" is Displayed
    And verify "How can I view or download my Fixed Deposit Statement Of Account?" "text" is Displayed
    And verify "To view or download your Statement of Account, please select your FD number from My relations and click View statements or visit Document center for more documents." "text" is Displayed
    And verify "Choose the eco-friendly option of a digital receipt and avoid printing paper" "text" is Displayed
    And verify "FD Acknowledgement Statement" "text" is Displayed
    And verify "done" "button" is Displayed
    And click on "done" Button
    And Verify Customer Redirected to "MyAccountFixedDeposit/FixedDeposit/Index" Url
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number | url                                                 | urlRenewPlan                                     | urlRenewSummary                                     | urlRenewSuccess                                     |
      | 9820372335    | 19051999 | Individual    | 964495     | MyAccountFixedDeposit/FixedDeposit/FDRenewalDetails | MyAccountFixedDeposit/FixedDeposit/FDRenewalPlan | MyAccountFixedDeposit/FixedDeposit/FDRenewalSummary | MyAccountFixedDeposit/FixedDeposit/FDRenewalSuccess |
  @runn
  Scenario Outline: To Verify Already Renewal Proceess Done message in FD Renew Process - Cumulative
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    Then My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    Then verify Redirection using Account number "<Acc Number>"
    And Customer Click on "Renew your FD" CTA in RHS
    And Verify Customer Redirected to "<url>" Url
    And Clicks on "FD Proceed Button in Renew"
    And Verify Customer Redirected to "<urlRenewPlan>" Url
    And Clicks on "FD Proceed Button in Renew"
    And Verify Customer Redirected to "<urlRenewSummary>" Url
    And Clicks on "Check Box in FD Renew Summary Page"
    And "FD Proceed Button in Renew" is Enabled
    And Clicks on "FD Proceed Button in Renew"
    And OTP Verification title Displayed
    And Enter "1" in "OTP Screen Text box 1"
    And Enter "2" in "OTP Screen Text box 2"
    And Enter "3" in "OTP Screen Text box 3"
    And Enter "4" in "OTP Screen Text box 4"
    And Enter "5" in "OTP Screen Text box 5"
    And Enter "6" in "OTP Screen Text box 6"
    And Clicks on "Submit Button in Renew FD OTP Screen"
    And Verify "This deposit has already been requested for renewal Request ID" is Displayed
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number | url                                                 | urlRenewPlan                                     | urlRenewSummary                                     | urlRenewSuccess                                     |
      | 9820372335    | 19051999 | Individual    | 964495     | MyAccountFixedDeposit/FixedDeposit/FDRenewalDetails | MyAccountFixedDeposit/FixedDeposit/FDRenewalPlan | MyAccountFixedDeposit/FixedDeposit/FDRenewalSummary | MyAccountFixedDeposit/FixedDeposit/FDRenewalSuccess |

    ##########################################################################################################################################################
  @Pass1
  Scenario Outline: To Verify All Combinations of Plans redirected to FD Renew Summary Page - Cumulative
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    Then My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    Then verify Redirection using Account number "<Acc Number>"
    And Customer Click on "Renew your FD" CTA in RHS
    And Verify Customer Redirected to "<url>" Url
    And Clicks on "FD Proceed Button in Renew"
    And Verify Customer Redirected to "<urlRenewPlan>" Url
    And verify Following Plans working in Renew Plan Page
      | Principal|60|Maturity|
      | Principal|48|Maturity|
      | Principal|36|Maturity|
      | Principal|24|Maturity|
      | Principal|12|Maturity|
      | Principal|Custom|Maturity|
      | Principal|60|Monthly|
      | Principal|48|Monthly|
      | Principal|36|Monthly|
      | Principal|24|Monthly|
      | Principal|12|Monthly|
      | Principal|Custom|Monthly|
      | Principal|60|Quarterly|
      | Principal|48|Quarterly|
      | Principal|36|Quarterly|
      | Principal|24|Quarterly|
      | Principal|12|Quarterly|
      | Principal|Custom|Quarterly|
      | Principal|60|Half-yearly|
      | Principal|48|Half-yearly|
      | Principal|36|Half-yearly|
      | Principal|24|Half-yearly|
      | Principal|12|Half-yearly|
      | Principal|Custom|Half-yearly|
      | Principal|60|Annually|
      | Principal|48|Annually|
      | Principal|36|Annually|
      | Principal|24|Annually|
      | Principal|12|Annually|
      | Principal|Custom|Annually|
      | Principal + Interest|60|Maturity|
      | Principal + Interest|48|Maturity|
      | Principal + Interest|36|Maturity|
      | Principal + Interest|24|Maturity|
      | Principal + Interest|12|Maturity|
      | Principal + Interest|Custom|Maturity|
      | Principal + Interest|60|Monthly|
      | Principal + Interest|48|Monthly|
      | Principal + Interest|36|Monthly|
      | Principal + Interest|24|Monthly|
      | Principal + Interest|12|Monthly|
      | Principal + Interest|Custom|Monthly|
      | Principal + Interest|60|Quarterly|
      | Principal + Interest|48|Quarterly|
      | Principal + Interest|36|Quarterly|
      | Principal + Interest|24|Quarterly|
      | Principal + Interest|12|Quarterly|
      | Principal + Interest|Custom|Quarterly|
      | Principal + Interest|60|Half-yearly|
      | Principal + Interest|48|Half-yearly|
      | Principal + Interest|36|Half-yearly|
      | Principal + Interest|24|Half-yearly|
      | Principal + Interest|12|Half-yearly|
      | Principal + Interest|Custom|Half-yearly|
      | Principal + Interest|60|Annually|
      | Principal + Interest|48|Annually|
      | Principal + Interest|36|Annually|
      | Principal + Interest|24|Annually|
      | Principal + Interest|12|Annually|
      | Principal + Interest|Custom|Annually|
      | Partial Renewal|60|Maturity|
      | Partial Renewal|48|Maturity|
      | Partial Renewal|36|Maturity|
      | Partial Renewal|24|Maturity|
      | Partial Renewal|12|Maturity|
      | Partial Renewal|Custom|Maturity|
      | Partial Renewal|60|Monthly|
      | Partial Renewal|48|Monthly|
      | Partial Renewal|36|Monthly|
      | Partial Renewal|24|Monthly|
      | Partial Renewal|12|Monthly|
      | Partial Renewal|Custom|Monthly|
      | Partial Renewal|60|Quarterly|
      | Partial Renewal|48|Quarterly|
      | Partial Renewal|36|Quarterly|
      | Partial Renewal|24|Quarterly|
      | Partial Renewal|12|Quarterly|
      | Partial Renewal|Custom|Quarterly|
      | Partial Renewal|60|Half-yearly|
      | Partial Renewal|48|Half-yearly|
      | Partial Renewal|36|Half-yearly|
      | Partial Renewal|24|Half-yearly|
      | Partial Renewal|12|Half-yearly|
      | Partial Renewal|Custom|Half-yearly|
      | Partial Renewal|60|Annually|
      | Partial Renewal|48|Annually|
      | Partial Renewal|36|Annually|
      | Partial Renewal|24|Annually|
      | Partial Renewal|12|Annually|
      | Partial Renewal|Custom|Annually|
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number | url                                                 | urlRenewPlan                                     | urlRenewSummary                                     |
      | 9004391412    | 19051999 | Individual    | 806107     | MyAccountFixedDeposit/FixedDeposit/FDRenewalDetails | MyAccountFixedDeposit/FixedDeposit/FDRenewalPlan | MyAccountFixedDeposit/FixedDeposit/FDRenewalSummary |
