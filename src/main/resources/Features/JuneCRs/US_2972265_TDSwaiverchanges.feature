Feature: US - 2972265 - TDS waiver changes

  @1108
  Scenario Outline: To verify customer having PAN fourth letter (P and H) can submit TDS

    Given User is logged in "<Mobile Number>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    Then verify Redirection using Account number "<Acc Number>"
    And Customer Click on "Submit Form 15G/H" CTA in RHS
#    Then customer should be redirected to next screen successfully to submit TDS
    Then Verify Customer Redirected to "MyAccountFixedDeposit/Form15GH/GetFormGorH" Url


    Examples:
      | Mobile Number | DOB      | Customer Type | Acc Number |
      | 9821599367    | 20082000 | Individual    | 191760     |

  @1108
  Scenario Outline: To verify validation is displayed for customer having PAN fourth except ( P , H )

    Given User is logged in "<Mobile Number>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    Then verify Redirection using Account number "<Acc Number>"
    And Customer Click on "Submit Form 15G/H" CTA in RHS
    Then "Your Customer type is not eligible for Online TDS. Kindly visit your nearest Bajaj Finance branch for assistance" Validation should be displayed

    Examples:
      | Mobile Number | DOB      | Customer Type | Acc Number |
      | 9769508586    | 31071959 | Corporate     | 588731     |

  @check
  Scenario Outline: To verify 15G form is displayed  when customer is not an Individual ( CustTypeName ≠ INDIVIDUAL )

    Given User is logged in "<Mobile Number>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "SYSTEMATIC DEPOSIT PLAN" Tile of Account number "<Acc Number>"
    Then verify Redirection using Account number "<Acc Number>"
    And Customer Click on "Submit Form 15G/H" CTA in RHS
    Then Verify Customer Redirected to "MyAccountFixedDeposit/Form15GH/GetFormGorH" Url
    And "FORM NO. 15G" should be displayed to the Customer

    Examples:
      | Mobile Number | DOB      | Customer Type | Acc Number |
      | 9379599777    | 31071959 | Corporate     | 840537     |

  @check
  Scenario Outline: To verify 15H form is displayed when customer is Individual , Resident and age >= 60 years.

    Given User is logged in "<Mobile Number>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    Then verify Redirection using Account number "<Acc Number>"
    And Customer Click on "Submit Form 15G/H" CTA in RHS
    And "FORM NO. 15H" should be displayed to the Customer

    Examples:
      | Mobile Number | DOB      | Customer Type | Acc Number |
      | 9654822461    | 31071959 | Individual    | 332255     |

  @check
  Scenario Outline: To verify 15G form is displayed when customer is Individual , Resident and age < 60 years.

    Given User is logged in "<Mobile Number>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    Then verify Redirection using Account number "<Acc Number>"
    And Customer Click on "Submit Form 15G/H" CTA in RHS
    And "FORM NO. 15G" should be displayed to the Customer

    Examples:
      | Mobile Number | DOB      | Customer Type | Acc Number |
      | 8108412990    | 31071959 | Individual    | 643150     |

  @1108
  Scenario Outline: To verify customer is not able to submit TDS wavier once already submitted for current financial year

    Given User is logged in "<Mobile Number>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    Then verify Redirection using Account number "<Acc Number>"
#    And Customer Click on "Submit Form 15G/H" CTA in RHS
    Then "Submit Form 15G/H" should not be displayed for Customer in "Quick Actions" RHS


    Examples:
      | Mobile Number | DOB      | Customer Type | Acc Number |
      | 9330041384    | 31071959 | Individual    | 248196     |

#Check the data from here
  @nodata
  Scenario Outline: To verify customer is not able to submit TDS Wavier if PAN Number is not updated

    Given User is logged in "<Mobile Number>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    Then verify Redirection using Account number "<Acc Number>"
    And Customer Click on "Submit Form 15G/H" CTA in RHS
    Then Validation should be displayed

    Examples:
      | Mobile Number | DOB      | Customer Type | Acc Number |
      | 9206430729    | 31071959 | Individual    | 1161280    |

@nodata
  Scenario Outline:To verify Individual customer who is not Resident  is not able to submit TDS Wavier

    Given User is logged in "<Mobile Number>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    Then verify Redirection using Account number "<Acc Number>"
    And Customer Click on "Submit Form 15G/H" CTA in RHS
    Then TDS Wavier should not be allowed for Customer

    Examples:
      | Mobile Number | DOB      | Customer Type | Acc Number |
      | 8619690188    | 31071959 |               |            |

  @check
  Scenario Outline:To verify customer is not allowed to submit TDS when income is more than 2.5 lakhs and age < 60 years

    Given User is logged in "<Mobile Number>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "SYSTEMATIC DEPOSIT PLAN" Tile of Account number "<Acc Number>"
    Then verify Redirection using Account number "<Acc Number>"
    And Customer Click on "Submit Form 15G/H" CTA in RHS
    Then Verify Customer Redirected to "MyAccountFixedDeposit/Form15GH/GetFormGorH" Url
    And Customer clicks on "PROCEED" Button in TDS Waiver Page
    Then Verify Customer Redirected to "MyAccountFixedDeposit/Form15GH/GetFormGorH" Url
    And Enter amount more than "250010" in Total Income Field
    And Clicks on "PROCEED" Button
    Then "You are not eligible for TDS waiver as your total interest on deposit is greater than Rs. 3 lakh." Validation should be displayed

    Examples:
      | Mobile Number | DOB      | Customer Type | Acc Number |
      | 9765800516    | 31071959 | Individual    | 581550     |

  @check
  Scenario Outline: To verify customer is not allowed to submit TDS when income is more than 5 lakhs and age >= 60 years

    Given User is logged in "<Mobile Number>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    Then verify Redirection using Account number "<Acc Number>"
    And Customer Click on "Submit Form 15G/H" CTA in RHS
    Then Verify Customer Redirected to "MyAccountFixedDeposit/Form15GH/GetFormGorH" Url
    And Customer clicks on "PROCEED" Button in TDS Waiver Page
    Then Verify Customer Redirected to "MyAccountFixedDeposit/Form15GH/GetFormGorH" Url
    And Enter amount more than "500010" in Total Income Field
    And Clicks on "PROCEED" Button
    Then "TDS waiver is not applicable if your FDs total interest amount is more than Rs 5lacs" Validation should be displayed

    Examples:
      | Mobile Number | DOB      | Customer Type | Acc Number |
      | 9650979427    | 31071959 | Individual    | 513907     |
