Feature: 3241328 HL HL BT redirection change

@check
  Scenario Outline: To verify customer is redirected to HL Form when customer click on Apply online
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    When Customer Clicks on "Loans" Drop-down
    And Hover over "Home Loan"
    And clicks on SubMenu"Home Loan"
    And clicks on "Apply Online" Button
    Then Customer should be Redirected to "<URL>"

    Examples:
      | Mobile Number | Date     | Customer Type | URL                                                                                                                                                       |
      | 7979997305    | 26051982 | Individual    | https://www.bajajhousingfinance.in/home-loan-application-form?utm_source=Website&utm_medium=MyAccount&utm_campaign=MyAccount_organic&utm_content=HomeLoan |
  @check
  Scenario Outline: To verify customer is redirected to HL Form when customer click on Home loan Offer banner
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Click on Home loan banner
    Then Customer should be Redirected to "<URL>"

    Examples:
      | Mobile Number | Date     | Customer Type | URL                                                                                                                                                       |
      | 7979997305    | 26051982 | Individual    | https://www.bajajhousingfinance.in/home-loan-application-form?utm_source=Website&utm_medium=MyAccount&utm_campaign=MyAccount_organic&utm_content=HomeLoan |

  @check
  Scenario Outline: To verify customer is redirected to HL Form when customer click on Home loan Offer under Pre-apprroved offer for you section
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Click on Home Loan -Apply Now CTA
    Then Customer should be Redirected to "<URL>"

    Examples:
      | Mobile Number | Date     | Customer Type | URL                                                                                                                                                       |
      | 7979997305    | 26051982 | Individual    | https://www.bajajhousingfinance.in/home-loan-application-form?utm_source=Website&utm_medium=MyAccount&utm_campaign=MyAccount_organic&utm_content=HomeLoan |
  @check
  Scenario Outline: To verify customer is redirected to HL Form when customer click on Home loan
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Click on Home Loan option in Cards
    Then Customer should be able to redirected to the Below "<URL>" in New page

    Examples:
      | Mobile Number | Date     | Customer Type | URL                                                                                                                                                       |
      | 7979997305    | 26051982 | Individual    | https://www.bajajhousingfinance.in/home-loan-application-form?utm_source=Website&utm_medium=MyAccount&utm_campaign=MyAccount_organic&utm_content=HomeLoan |
      | 7045733821    | 26051982 | Individual    | https://www.bajajhousingfinance.in/home-loan-application-form?utm_source=Website&utm_medium=MyAccount&utm_campaign=MyAccount_organic&utm_content=HomeLoan |



#
#  Scenario Outline: To verify customer is redirected to HL Form when customer click on Home loan Balance Transfer
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User is on Home Page
#    And Click on Home loan Balance Transfer option
#    Then Customer should be able to redirected to the Below URL
#
#    Examples:
#      | Mobile Number | Date     | Customer Type | URL                                                                                                                                                       |
#      | 7979997305    | 26051982 | Individual    | https://www.bajajhousingfinance.in/home-loan-application-form?utm_source=Website&utm_medium=MyAccount&utm_campaign=MyAccount_organic&utm_content=HomeLoan
#
#
#  Scenario Outline: To verify customer is redirected to HL Form when customer click on Home loan
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User is on Home Page
#    And Click on Home Loan option
#    Then Customer should be able to redirected to the Below URL
#
#    Examples:
#      | Mobile Number | Date     | Customer Type | URL                                                                                                                                                       |
#      | 7979997305    | 26051982 | Individual    | https://www.bajajhousingfinance.in/home-loan-application-form?utm_source=Website&utm_medium=MyAccount&utm_campaign=MyAccount_organic&utm_content=HomeLoan
#
#  Scenario Outline: To verify customer is redirected to HL Form when customer click on Home loan
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User is on Home Page
#    And Click on All
#    And Click on Home Loan option Under pre-approved offer
#    Then Customer should be able to redirected to the Below URL
#
#    Examples:
#      | Mobile Number | Date     | Customer Type | URL                                                                                                                                                       |
#      | 7979997305    | 26051982 | Individual    | https://www.bajajhousingfinance.in/home-loan-application-form?utm_source=Website&utm_medium=MyAccount&utm_campaign=MyAccount_organic&utm_content=HomeLoan
#
#  Scenario Outline: To verify customer is redirected to HL Form when customer click on Home loan Balance Transfer
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User is on Home Page
#    And Click on All
#    And Click on Home loan Balance Transfer option under Products for You
#
#    Then Customer should be able to redirected to the Below URL
#
#    Examples:
#      | Mobile Number | Date     | Customer Type | URL                                                                                                                                                       |
#      | 7979997305    | 26051982 | Individual    | https://www.bajajhousingfinance.in/home-loan-application-form?utm_source=Website&utm_medium=MyAccount&utm_campaign=MyAccount_organic&utm_content=HomeLoan
#
#  Scenario Outline: To verify customer is redirected to HL Form when customer click on Home loan option
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User is on Home Page
#    And Click on All
#    And Click on Home loan option under Loans
#    Then Customer should be able to redirected to the Below URL
#
#    Examples:
#      | Mobile Number | Date     | Customer Type | URL                                                                                                                                                       |
#      | 7979997305    | 26051982 | Individual    | https://www.bajajhousingfinance.in/home-loan-application-form?utm_source=Website&utm_medium=MyAccount&utm_campaign=MyAccount_organic&utm_content=HomeLoan

  
  
  
  
  
  
  
  
  