@CR_RHS
Feature: New Home Page - Super Stores RHS
  @NudgeColor
  Scenario Outline: Superstores - <Product Name>
    And Get Data for "<Section Name>" in "Home Page"
    And Get Data for "<Product Name>" under "<Section Name>"
    And verify "<Product Name>" Logo is Displayed under "<Section Name>"
    And verify Nudge Text with Labels for "<Section Name>" - "<Product Name>"
    And Click on "<Product Name>" Option under "<Section Name>" Section
    And verify "<Product Name>" Redirection for "<Section Name>" with New Tab
    Examples:
      | Section Name | Product Name |
      | Superstores    | Bajaj Mall         |


  Scenario Outline: Superstores - <Product Name>
    And Get Data for "<Section Name>" in "Home Page"
    And Get Data for "<Product Name>" under "<Section Name>"
    And verify "<Product Name>" Logo is Displayed under "<Section Name>"
    And verify Nudge Text with Labels for "<Section Name>" - "<Product Name>"
    And Click on "<Product Name>" Option under "<Section Name>" Section
    And verify "<Product Name>" Redirection for "<Section Name>" with SSO

    Examples:
      | Section Name | Product Name |
      | Superstores    | Investments          |

  Scenario Outline: Superstores - <Product Name>
    And Get Data for "<Section Name>" in "Home Page"
    And Get Data for "<Product Name>" under "<Section Name>"
    And verify "<Product Name>" Logo is Displayed under "<Section Name>"
    And verify Nudge Text with Labels for "<Section Name>" - "<Product Name>"
    And Click on "<Product Name>" Option under "<Section Name>" Section
    And verify "<Product Name>" Redirection for "<Section Name>" with New Tab

    Examples:
      | Section Name | Product Name |
      | Superstores    | Insurance       |

  Scenario Outline: Superstores - <Product Name>
    And Get Data for "<Section Name>" in "Home Page"
    And Get Data for "<Product Name>" under "<Section Name>"
    And verify "<Product Name>" Logo is Displayed under "<Section Name>"
    And verify Nudge Text with Labels for "<Section Name>" - "<Product Name>"
    And Click on "<Product Name>" Option under "<Section Name>" Section
    And verify "<Product Name>" Redirection for "<Section Name>" with New Tab

    Examples:
      | Section Name | Product Name |
      | Superstores    | Securities  |

