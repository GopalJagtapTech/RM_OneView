@Not
Feature: New Home Page - Health Products

  Scenario Outline: Verify ETB PTB NTB customer is able to view Health Product section on Homepage
    And verify "<Product Name>" Logo is Displayed - "<Section Name>"
    And Click on "<Product Name>" Option - "<Section Name>" Section
    And verify "<Product Name>" Redirection - "<Section Name>" with "SSO"
    Examples:
      | Section Name | Product Name |
      | Health Products    | Health Plans         |



  Scenario Outline: Health Products - <Product Name>
    And Get Data for "<Section Name>" in "Home Page"
    And Get Data for "<Product Name>" under "<Section Name>"
    And verify "<Product Name>" Logo is Displayed under "<Section Name>" with Slider
    And verify Nudge Text with Labels for "<Section Name>" - "<Product Name>"
    And verify "<Product Name>" Redirection for "<Section Name>" with New Tab
    Examples:
      | Section Name | Product Name |
      | Health Products    | Bajaj Mall          |

  Scenario Outline: Health Products - <Product Name>
    And Get Data for "<Section Name>" in "Home Page"
    And Get Data for "<Product Name>" under "<Section Name>"
    And verify "<Product Name>" Logo is Displayed under "<Section Name>" with Slider
    And verify Nudge Text with Labels for "<Section Name>" - "<Product Name>"
    And verify "<Product Name>" Redirection for "<Section Name>" with SSO

    Examples:
      | Section Name | Product Name |
      | Health Products    | Co-Branded Credit Card       |

  @FD_8.10
  Scenario Outline: Health Products - <Product Name>
    And Get Data for "<Section Name>" in "Home Page"
    And Get Data for "<Product Name>" under "<Section Name>"
    And verify "<Product Name>" Logo is Displayed under "<Section Name>" with Slider
    And verify Nudge Text with Labels for "<Section Name>" - "<Product Name>"
#    And Click on "<Product Name>" Option under "<Section Name>" Section
#    And verify "<Product Name>" Redirection for "<Section Name>" with SSO
#    And Go Back to Previous Page
    Examples:
      | Section Name | Product Name |
      | Health Products    | Fixed Deposit  |

  Scenario Outline: Health Products - <Product Name>
    And Get Data for "<Section Name>" in "Home Page"
    And Get Data for "<Product Name>" under "<Section Name>"
    And verify "<Product Name>" Logo is Displayed under "<Section Name>" with Slider
    And verify Nudge Text with Labels for "<Section Name>" - "<Product Name>"
    And verify "<Product Name>" Redirection for "<Section Name>" with SSO

    Examples:
      | Section Name | Product Name      |
      | Health Products    | Gold Loan |

 Scenario Outline: Health Products - <Product Name>
    And Get Data for "<Section Name>" in "Home Page"
    And Get Data for "<Product Name>" under "<Section Name>"
    And verify "<Product Name>" Logo is Displayed under "<Section Name>" with Slider
    And verify Nudge Text with Labels for "<Section Name>" - "<Product Name>"
    And verify "<Product Name>" Redirection for "<Section Name>" with SSO

    Examples:
      | Section Name | Product Name      |
      | Health Products    | Health Insurance |

 Scenario Outline: Health Products - <Product Name>
    And Get Data for "<Section Name>" in "Home Page"
    And Get Data for "<Product Name>" under "<Section Name>"
    And verify "<Product Name>" Logo is Displayed under "<Section Name>" with Slider
    And verify Nudge Text with Labels for "<Section Name>" - "<Product Name>"
    And verify "<Product Name>" Redirection for "<Section Name>" with SSO

    Examples:
      | Section Name | Product Name      |
      | Health Products    | Car Insurance |

 Scenario Outline: Health Products - <Product Name>
    And Get Data for "<Section Name>" in "Home Page"
    And Get Data for "<Product Name>" under "<Section Name>"
    And verify "<Product Name>" Logo is Displayed under "<Section Name>" with Slider
    And verify Nudge Text with Labels for "<Section Name>" - "<Product Name>"
    And verify "<Product Name>" Redirection for "<Section Name>" with SSO

    Examples:
      | Section Name | Product Name      |
      | Health Products    | Bike Insurance |

Scenario Outline: Health Products - <Product Name>
    And Get Data for "<Section Name>" in "Home Page"
    And Get Data for "<Product Name>" under "<Section Name>"
    And verify "<Product Name>" Logo is Displayed under "<Section Name>" with Slider
    And verify Nudge Text with Labels for "<Section Name>" - "<Product Name>"
    And verify "<Product Name>" Redirection for "<Section Name>" with SSO

    Examples:
      | Section Name | Product Name      |
      | Health Products    | Business Loan |

Scenario Outline: Health Products - <Product Name>
    And Get Data for "<Section Name>" in "Home Page"
    And Get Data for "<Product Name>" under "<Section Name>"
    And verify "<Product Name>" Logo is Displayed under "<Section Name>" with Slider
    And verify Nudge Text with Labels for "<Section Name>" - "<Product Name>"
    And verify "<Product Name>" Redirection for "<Section Name>" with SSO

    Examples:
      | Section Name | Product Name      |
      | Health Products    | Doctor Loan |

Scenario Outline: Health Products - <Product Name>
    And Get Data for "<Section Name>" in "Home Page"
    And Get Data for "<Product Name>" under "<Section Name>"
    And verify "<Product Name>" Logo is Displayed under "<Section Name>" with Slider
    And verify Nudge Text with Labels for "<Section Name>" - "<Product Name>"
    And verify "<Product Name>" Redirection for "<Section Name>" with New Tab

    Examples:
      | Section Name | Product Name      |
      | Health Products    | Two-wheeler Loan |

  Scenario Outline: Health Products - <Product Name>
    And Get Data for "<Section Name>" in "Home Page"
    And Get Data for "<Product Name>" under "<Section Name>"
    And verify "<Product Name>" Logo is Displayed under "<Section Name>" with Slider
    And verify Nudge Text with Labels for "<Section Name>" - "<Product Name>"
    And verify "<Product Name>" Redirection for "<Section Name>" with SSO
    Examples:
      | Section Name | Product Name |
      | Health Products    | Loan Against Property |
