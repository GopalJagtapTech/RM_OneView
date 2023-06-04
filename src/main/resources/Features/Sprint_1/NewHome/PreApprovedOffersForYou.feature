
Feature: Pre Approved Offers for You
@CR_PL
  Scenario Outline: Pre Approved Offers for You - Personal Loan
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And verify "Pre-approved offers for you section" is Displayed or Not
    And verify following fields and formats in Pre-Approved Offers section - "Personal Loan"
      |Title|Personal Loan|
      |Description|approved amount|
      |Button|Get It Now|
    And Clicks on "Personal Loan Popup Check Box"
#    And Clicks on "Pre-approved offers Personal Loan Popup Check Box"
    And click on "GET IT NOW" Button
    And verify Redirection for "with SSO": "/webform/salpl/loanapplication"
    And Go Back to Previous Page
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 9823138710           | 19011966 | Individual    |

  Scenario Outline: Pre Approved Offers for You - Home Loan
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And verify "Pre-approved offers for you section" is Displayed or Not
    And verify following fields and formats in Pre-Approved Offers section - "Home Loan"
      |Title|Home Loan|
      |Description|approved amount|
      |Button|Apply Now|
    And verify Redirection for "with New Tab": "/home-loan-form"
    #And Go Back to Previous Page
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 9823138710           | 19011966 | Individual    |

Scenario Outline: Pre Approved Offers for You - Loan Against Property Balance Transfer
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And verify "Pre-approved offers for you section" is Displayed or Not
    And verify following fields and formats in Pre-Approved Offers section - "Loan Against Property Balance Transfer"
      |Title|Loan Against Property Balance Transfer|
      |Description|approved amount|
      |Button|Apply Now|
    And verify Redirection for "with New Tab": "/loan-against-property-application-form"
    #And Go Back to Previous Page
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 9823138710           | 19011966 | Individual    |
  @CR_23
  Scenario Outline: Pre Approved Offers for You - Insta EMI Card (EMI Card already Present in MasterHead Section)
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And verify "Pre-approved offers for you section" is Displayed or Not
    And verify following fields and formats in Pre-Approved Offers section - "Insta EMI Card"
        |Title|Insta EMI Card|
        |Description|approved amount|
        |Button|Shop Online|
    And verify Redirection for "with New Tab": "https://www.bajajmall.in/emi-store"
    #And Go Back to Previous Page
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 9823138710           | 19011966 | Individual    |
  @CR_23
  Scenario Outline: Pre Approved Offers for You - Insta EMI Card (EMI Card is Not Present in MasterHead Section)
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And verify "Pre-approved offers for you section" is Displayed or Not
    And verify following fields and formats in Pre-Approved Offers section - "Insta EMI Card"
      |Title|Insta EMI Card|
      |Description|approved amount|
      |Button|Apply Online|
    And verify Redirection for "with SSO": "/webform/emicard/pay-now"
    And Go Back to Previous Page
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 7972681037           | 19011966 | Individual    |


  Scenario Outline: Pre Approved Offers for You - Health EMI Network Card
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And verify "Pre-approved offers for you section" is Displayed or Not
    And verify following fields and formats in Pre-Approved Offers section - "Health EMI Network Card"
      |Title|Health EMI Network Card|
      |Description|approved amount|
      |Button|Apply Now|
    And verify Redirection for "with New Tab": "/emi-network-health-emi-card-apply-online?"
    #And Go Back to Previous Page
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 9823138710           | 19011966 | Individual    |

  Scenario Outline: Pre Approved Offers for You - Two-wheeler Loan
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And verify "Pre-approved offers for you section" is Displayed or Not
    And verify following fields and formats in Pre-Approved Offers section - "Two-wheeler Loan"
      |Title|Two-wheeler Loan|
      |Description|approved amount|
      |Button|Apply Now|
    And verify Redirection for "with New Tab": "https://www.bajajmall.in/emi-store/two-wheeler.html"
    #And Go Back to Previous Page
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 9823138710           | 19011966 | Individual    |

  Scenario Outline: Pre Approved Offers for You - Car Insurance
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And verify "Pre-approved offers for you section" is Displayed or Not
    And verify following fields and formats in Pre-Approved Offers section - "Car Insurance"
      |Title|Car Insurance|
      |Description|starting at|
      |Button|Get Quote|
    And verify Redirection for "with New tab": "/marketplace/insurance/car-insurance/car-insurance-premium-calculator/vehicleRegistration"
    #And Go Back to Previous Page
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 9823138710           | 19011966 | Individual    |

  Scenario Outline: Pre Approved Offers for You - Health Insurance
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And verify "Pre-approved offers for you section" is Displayed or Not
    And verify following fields and formats in Pre-Approved Offers section - "Health Insurance"
      |Title|Health Insurance|
      |Description|coverage up to|
      |Button|Get Quote|
    And verify Redirection for "with New Tab": "/marketplace/insurance/health-insurance/health-insurance-premium-calculator/getGoingNow"
    #And Go Back to Previous Page
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 9823138710           | 19011966 | Individual    |

  Scenario Outline: Pre Approved Offers for You - Bike Insurance
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And verify "Pre-approved offers for you section" is Displayed or Not
    And verify following fields and formats in Pre-Approved Offers section - "Bike Insurance"
      |Title|Bike Insurance|
      |Description|starting at|
      |Button|Get Quote|
    And verify Redirection for "with New Tab": "/marketplace/insurance/two-wheeler-insurance/bike-insurance-premium-calculator/vehicleRegistration"
    #And Go Back to Previous Page
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 9823138710           | 19011966 | Individual    |

  Scenario Outline: Pre Approved Offers for You - Fixed Deposit
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And verify "Pre-approved offers for you section" is Displayed or Not
    And verify following fields and formats in Pre-Approved Offers section - "Fixed Deposit"
      |Title|Fixed Deposit|
      |Description|START INVESTING|
      |Button|Open FD|
    And verify Redirection for "with New Tab": "/fixed-deposit-application-form?"
    #And Go Back to Previous Page
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 9823138710           | 19011966 | Individual    |
