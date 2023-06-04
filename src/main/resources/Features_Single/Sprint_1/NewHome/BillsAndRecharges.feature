@CR_23
Feature: New Home Page - Bills & Recharges

  Scenario Outline: Bills & Recharges - <Product Name>
    And Get Data for "<Section Name>" in "Home Page"
    And Get Data for "<Product Name>" under "<Section Name>"
    And verify "<Product Name>" Logo is Displayed under "<Section Name>"
    And verify Nudge Text with Labels for "<Section Name>" - "<Product Name>"
    And Click on "<Product Name>" Option under "<Section Name>" Section
    And verify Redirection for "with SSO": "https://www.bajajfinserv.in/bbps-bills-and-payments"
    And Go Back to Previous Page
    Examples:
      | Section Name | Product Name |
      | Bills & Recharges    | Electricity         |


  Scenario Outline: Bills & Recharges - <Product Name>
    And Get Data for "<Section Name>" in "Home Page"
    And Get Data for "<Product Name>" under "<Section Name>"
    And verify "<Product Name>" Logo is Displayed under "<Section Name>"
    And verify Nudge Text with Labels for "<Section Name>" - "<Product Name>"
    And Click on "<Product Name>" Option under "<Section Name>" Section
    And verify Redirection for "with SSO": "https://www.bajajfinserv.in/bbps-bills-and-payments"
    And Go Back to Previous Page
    Examples:
      | Section Name | Product Name |
      | Bills & Recharges    | Mobile          |

  Scenario Outline: Bills & Recharges - <Product Name>
    And Get Data for "<Section Name>" in "Home Page"
    And Get Data for "<Product Name>" under "<Section Name>"
    And verify "<Product Name>" Logo is Displayed under "<Section Name>"
    And verify Nudge Text with Labels for "<Section Name>" - "<Product Name>"
    And Click on "<Product Name>" Option under "<Section Name>" Section
    And verify Redirection for "with SSO": "https://www.bajajfinserv.in/bbps-bills-and-payments"
    And Go Back to Previous Page
    Examples:
      | Section Name | Product Name |
      | Bills & Recharges    | DTH       |

  Scenario Outline: Bills & Recharges - <Product Name>
    And Get Data for "<Section Name>" in "Home Page"
    And Get Data for "<Product Name>" under "<Section Name>"
    And verify "<Product Name>" Logo is Displayed under "<Section Name>"
    And verify Nudge Text with Labels for "<Section Name>" - "<Product Name>"
    And Click on "<Product Name>" Option under "<Section Name>" Section
    And verify Redirection for "with SSO": "https://www.bajajfinserv.in/bbps-bills-and-payments"
    And Go Back to Previous Page
    Examples:
      | Section Name | Product Name |
      | Bills & Recharges    | EMIs  |

  Scenario Outline: Bills & Recharges - <Product Name>
    And Get Data for "<Section Name>" in "Home Page"
    And Get Data for "<Product Name>" under "<Section Name>"
    And verify "<Product Name>" Logo is Displayed under "<Section Name>"
    And verify Nudge Text with Labels for "<Section Name>" - "<Product Name>"
    And Click on "<Product Name>" Option under "<Section Name>" Section
    And verify Redirection for "with SSO": "https://www.bajajfinserv.in/bbps-bills-and-payments"
    And Go Back to Previous Page
    Examples:
      | Section Name | Product Name      |
      | Bills & Recharges    | FASTag |
