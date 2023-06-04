
Feature: New Home Page - Investments

  @FD_8.10@NudgeColor
  Scenario Outline: Investments - <Product Name>
    Given Get Data for "<Section Name>" in "Home Page"
    When Get Data for "<Product Name>" under "<Section Name>"
    Then verify "<Product Name>" Logo is Displayed under "<Section Name>"
    And verify Nudge Text with Labels for "<Section Name>" - "<Product Name>"
#    And Click on "<Product Name>" Option under "<Section Name>" Section
#    And verify "<Product Name>" Redirection for "<Section Name>" with SSO
    Examples:
      | Section Name | Product Name |
      | Investments    | Fixed Deposit         |


  Scenario Outline: Investments - <Product Name>
    And Get Data for "<Section Name>" in "Home Page"
    And Get Data for "<Product Name>" under "<Section Name>"
    And verify "<Product Name>" Logo is Displayed under "<Section Name>"
    And verify Nudge Text with Labels for "<Section Name>" - "<Product Name>"
    And Click on "<Product Name>" Option under "<Section Name>" Section
    And verify "<Product Name>" Redirection for "<Section Name>" with SSO

    Examples:
      | Section Name | Product Name |
      | Investments    | Systematic Deposit Plan          |

  Scenario Outline: Investments - <Product Name>
    And Get Data for "<Section Name>" in "Home Page"
    And Get Data for "<Product Name>" under "<Section Name>"
    And verify "<Product Name>" Logo is Displayed under "<Section Name>"
    And verify Nudge Text with Labels for "<Section Name>" - "<Product Name>"
    And Click on "<Product Name>" Option under "<Section Name>" Section
    And verify "<Product Name>" Redirection for "<Section Name>" with SSO

    Examples:
      | Section Name | Product Name |
      | Investments    | Senior Citizen FD       |

  Scenario Outline: Investments - <Product Name>
    And Get Data for "<Section Name>" in "Home Page"
    And Get Data for "<Product Name>" under "<Section Name>"
    And verify "<Product Name>" Logo is Displayed under "<Section Name>"
    And verify Nudge Text with Labels for "<Section Name>" - "<Product Name>"
    And Click on "<Product Name>" Option under "<Section Name>" Section
    And verify "<Product Name>" Redirection for "<Section Name>" with SSO

    Examples:
      | Section Name | Product Name |
      | Investments    | Mutual Funds  |

  Scenario Outline: Investments - <Product Name>
    And Get Data for "<Section Name>" in "Home Page"
    And Get Data for "<Product Name>" under "<Section Name>"
    And verify "<Product Name>" Logo is Displayed under "<Section Name>"
    And verify Nudge Text with Labels for "<Section Name>" - "<Product Name>"
    And Click on "<Product Name>" Option under "<Section Name>" Section
    And verify "<Product Name>" Redirection for "<Section Name>" with SSO

    Examples:
      | Section Name | Product Name      |
      | Investments    | Online Trading |
