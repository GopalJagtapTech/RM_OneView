Feature: New Home - PL Offers - Pre-Apprved Offers has no PL Offer

  @HasNoPre-ApprovedOffers
  Scenario Outline: Horizontal Menu - Apply Online Button - Verify Personal Loan Redirection with Pre-Approved Offers has no PL Offer
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And verify "PL Offer in Pre-Approved Offers For You" is Not Present
    And click on "Loans" option in Horizontal Menu
    And Mouse Over to "Personal Loan" Sub Option in "Loans" Horizontal Menu
#    And Customer Clicks on "Loans" Drop-down & Hover over "Personal Loan"
    And Customer Clicks on "Apply Online" button in Horizontal Menu "Personal Loan" Option
    And verify Redirection for "with SSO": "https://uat-oneweb.bajajfinserv.in/personal-loan"
    And Go Back to Previous Page
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 7972681037    | 01011996 | Individual    |

  Scenario Outline: Horizontal Menu - Pre-approved Offer Button - Verify Personal Loan Redirection with Pre-Approved Offers has no PL Offer
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And verify "PL Offer in Pre-Approved Offers For You" is Not Present
    And click on "Loans" option in Horizontal Menu
    And Mouse Over to "Personal Loan" Sub Option in "Loans" Horizontal Menu
    And Customer Clicks on "Pre-approved Offer" button in Horizontal Menu "Personal Loan" Option
    And verify Redirection for "with SSO": "https://uat-oneweb.bajajfinserv.in/insta-personal-loan"
    And Go Back to Previous Page
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 7972681037    | 01011996 | Individual    |

  Scenario Outline: Master Head Section - Verify Personal Loan Redirection with Pre-Approved Offers has no PL Offer
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And verify "PL Offer in Pre-Approved Offers For You" is Not Present
    And clicks on "Personal Loan Option in Master head Section"
    And verify Redirection for "with SSO": "https://uat-oneweb.bajajfinserv.in/personal-loan"
    And Go Back to Previous Page
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 7972681037    | 01011996 | Individual    |

  Scenario Outline: Banner Offers Section - Verify Personal Loan Redirection with Pre-Approved Offers has no PL Offer
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And verify "PL Offer in Pre-Approved Offers For You" is Not Present
    And clicks on "Personal Loan Option in Banner Offers Section"
    And verify Redirection for "with SSO": "https://uat-oneweb.bajajfinserv.in/personal-loan"
    And Go Back to Previous Page
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 7972681037    | 01011996 | Individual    |


  Scenario Outline: Products for you Section - Verify Personal Loan Redirection with Pre-Approved Offers has no PL Offer
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And verify "PL Offer in Pre-Approved Offers For You" is Not Present
    And clicks on "Personal Loan Option in Products for you Section"
    And verify Redirection for "with SSO": "https://uat-oneweb.bajajfinserv.in/personal-loan"
    And Go Back to Previous Page
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 7972681037    | 01011996 | Individual    |

  Scenario Outline: Offers for You section - Verify Personal Loan Redirection with Pre-Approved Offers has no PL Offer
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And verify "PL Offer in Pre-Approved Offers For You" is Not Present
    And clicks on "Personal Loan Option in Offers for You section"
    And verify Redirection for "with SSO": "https://uat-oneweb.bajajfinserv.in/personal-loan"
    And Go Back to Previous Page
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 7972681037    | 01011996 | Individual    |

  Scenario Outline: Footer Application Forms Section - Verify Personal Loan Redirection with Pre-Approved Offers has no PL Offer
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And verify "PL Offer in Pre-Approved Offers For You" is Not Present
    And clicks on "Personal Loan Option in Footer Application Forms"
    And verify Redirection for "with SSO": "https://uat-oneweb.bajajfinserv.in/personal-loan"
    And Go Back to Previous Page
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 7972681037    | 01011996 | Individual    |

  Scenario Outline: Footer Loans Section - Verify Personal Loan Redirection with Pre-Approved Offers has no PL Offer
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And verify "PL Offer in Pre-Approved Offers For You" is Not Present
    And clicks on "Personal Loan Option in Footer Loans"
    And verify Redirection for "with SSO": "https://uat-oneweb.bajajfinserv.in/personal-loan"
    And Go Back to Previous Page
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 7972681037    | 01011996 | Individual    |
