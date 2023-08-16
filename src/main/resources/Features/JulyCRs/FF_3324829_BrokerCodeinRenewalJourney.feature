Feature: FF_3324829_Broker Code in Renewal Journey

  Scenario Outline: To verify Broker Details section is displayed on Deposit Summary page
    Given User is logged in "<Customer Id>" "<Password>"
    When User lands on Home Page
    Then Customer is able to view My Relations Section to ETB Customers
    And  Customer clicks on view all option
    Then My relations Page should be displayed
    And click on "Deposits" tab
    And Customer Click on  FD Card <FD no.><Status>
    And Customer click on Renew Your FD option
    Then Customer should be redirected to Deposit Summary page
    And Broker Details section should be displayed to customer
    Examples:
      | Mobile Number | Date       | Customer Type | FD no. | Status |
      | 9987160686    | 24-01-1988 | Individual    | 149382 | Active |

  Scenario Outline: To verify given CTAs and Fields are displayed under Broker Details section
    Given User is logged in "<Customer Id>" "<Password>"
    When User lands on Home Page
    Then Customer is able to view My Relations Section to ETB Customers
    And  Customer clicks on view all option
    Then My relations Page should be displayed
    And click on "Deposits" tab
    And Customer Click on  FD Card <FD no.><Status>
    And Customer click on Renew Your FD option
    Then Customer should be redirected to Deposit Summary page
    And Broker Details section should be displayed with below fields and CTA:
  1.Broker Detail ToolTip
  2.New Broker Radio button
  3.Existing Broker Radio button
  4.Broker Code Field
  5.Broker Name field
    Examples:
      | Mobile Number | Date       | Customer Type | FD no. | Status |
      | 9987160686    | 24-01-1988 | Individual    | 149382 | Active |

  Scenario Outline: To verify by default Existing Broker radio button is selected
    Given User is logged in "<Customer Id>" "<Password>"
    When User lands on Home Page
    Then Customer is able to view My Relations Section to ETB Customers
    And  Customer clicks on view all option
    Then My relations Page should be displayed
    And click on "Deposits" tab
    And Customer Click on  FD Card <FD no.><Status>
    And Customer click on Renew Your FD option
    Then Customer should be redirected to Deposit Summary page
    And Existing Broker Radio button is selected
    Examples:
      | Mobile Number | Date       | Customer Type | FD no. | Status |
      | 9987160686    | 24-01-1988 | Individual    | 149382 | Active |

  Scenario Outline: To verify when customer click on New Broker
    Given User is logged in "<Customer Id>" "<Password>"
    When User lands on Home Page
    Then Customer is able to view My Relations Section to ETB Customers
    And  Customer clicks on view all option
    Then My relations Page should be displayed
    And click on "Deposits" tab
    And Customer Click on  FD Card <FD no.><Status>
    And Customer click on Renew Your FD option
    Then Customer should be redirected to Deposit Summary page
    And click on New Broker radio button
    Then New Broker radio button should be selected and Broker Code field and Broker name field should be empty
    Examples:
      | Mobile Number | Date       | Customer Type | FD no. | Status |
      | 9987160686    | 24-01-1988 | Individual    | 149382 | Active |


  Scenario Outline: To verify when customer enter valid Broker code in Broker Code field
    Given User is logged in "<Customer Id>" "<Password>"
    When User lands on Home Page
    Then Customer is able to view My Relations Section to ETB Customers
    And  Customer clicks on view all option
    Then My relations Page should be displayed
    And click on "Deposits" tab
    And Customer Click on  FD Card <FD no.><Status>
    And Customer click on Renew Your FD option
    Then Customer should be redirected to Deposit Summary page
    And click on New Broker radio button
    And Enter valid Broker Code in Broker Code field
    Then Broker Name should be auto populated in Broker Name field
    Examples:
      | Mobile Number | Date       | Customer Type | FD no. | Status |
      | 9987160686    | 24-01-1988 | Individual    | 149382 | Active |


  Scenario Outline: To verify the validation text when entering invalid Broker Code
    Given User is logged in "<Customer Id>" "<Password>"
    When User lands on Home Page
    Then Customer is able to view My Relations Section to ETB Customers
    And  Customer clicks on view all option
    Then My relations Page should be displayed
    And click on "Deposits" tab
    And Customer Click on  FD Card <FD no.><Status>
    And Customer click on Renew Your FD option
    Then Customer should be redirected to Deposit Summary page
    And click on New Broker radio button
    And Enter Invalid Broker Code in Broker Code field
    Then Below validation text should be displayed under Broker Code field:
  “Enter valid Broker Code”
    Examples:
      | Mobile Number | Date       | Customer Type | FD no. | Status |
      | 9987160686    | 24-01-1988 | Individual    | 149382 | Active |


  Scenario Outline: To verify under New Broker, Broker name field is not editable
    Given User is logged in "<Customer Id>" "<Password>"
    When User lands on Home Page
    Then Customer is able to view My Relations Section to ETB Customers
    And  Customer clicks on view all option
    Then My relations Page should be displayed
    And click on "Deposits" tab
    And Customer Click on  FD Card <FD no.><Status>
    And Customer click on Renew Your FD option
    Then Customer should be redirected to Deposit Summary page
    And click on New Broker radio button
    And Enter valid Broker Code in Broker Code field
    And Click on Broker Name field
    Then Broker name Field should be not editable
    Examples:
      | Mobile Number | Date       | Customer Type | FD no. | Status |
      | 9987160686    | 24-01-1988 | Individual    | 149382 | Active |


  Scenario Outline: To verify under Existing Broker, Broker code and Broker name field is not editable
    Given User is logged in "<Customer Id>" "<Password>"
    When User lands on Home Page
    Then Customer is able to view My Relations Section to ETB Customers
    And  Customer clicks on view all option
    Then My relations Page should be displayed
    And click on "Deposits" tab
    And Customer Click on  FD Card <FD no.><Status>
    And Customer click on Renew Your FD option
    Then Customer should be redirected to Deposit Summary page
    And Click on Broker Name field or Broker Code
    Then Broker name and Broker Code Field should be not editable
    Examples:
      | Mobile Number | Date       | Customer Type | FD no. | Status |
      | 9987160686    | 24-01-1988 | Individual    | 149382 | Active |






