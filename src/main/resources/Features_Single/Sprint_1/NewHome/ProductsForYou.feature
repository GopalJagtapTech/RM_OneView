
Feature: New Home Page - Products for you

  Scenario Outline: Products for you - <Product Name>
    And Get Data for "<Section Name>" in "Home Page"
    And Get Data for "<Product Name>" under "<Section Name>"
    And verify "<Product Name>" Logo is Displayed under "<Section Name>" with Slider
    And verify Nudge Text with Labels for "<Section Name>" - "<Product Name>"
    And Click on "<Product Name>" Option under "<Section Name>" Section
    And verify "<Product Name>" Redirection for "<Section Name>" with SSO
    Examples:
      | Section Name | Product Name |
      | Products for you    | Personal Loan         |



  Scenario Outline: Products for you - <Product Name>
    And Get Data for "<Section Name>" in "Home Page"
    And Get Data for "<Product Name>" under "<Section Name>"
    And verify "<Product Name>" Logo is Displayed under "<Section Name>" with Slider
    And verify Nudge Text with Labels for "<Section Name>" - "<Product Name>"
    And verify "<Product Name>" Redirection for "<Section Name>" with New Tab
    Examples:
      | Section Name | Product Name |
      | Products for you    | Bajaj Mall          |

  Scenario Outline: Products for you - <Product Name>
    And Get Data for "<Section Name>" in "Home Page"
    And Get Data for "<Product Name>" under "<Section Name>"
    And verify "<Product Name>" Logo is Displayed under "<Section Name>" with Slider
    And verify Nudge Text with Labels for "<Section Name>" - "<Product Name>"
    And verify "<Product Name>" Redirection for "<Section Name>" with SSO

    Examples:
      | Section Name | Product Name |
      | Products for you    | Co-Branded Credit Card       |

  @FD_8.10
  Scenario Outline: Products for you - <Product Name>
    And Get Data for "<Section Name>" in "Home Page"
    And Get Data for "<Product Name>" under "<Section Name>"
    And verify "<Product Name>" Logo is Displayed under "<Section Name>" with Slider
    And verify Nudge Text with Labels for "<Section Name>" - "<Product Name>"
#    And Click on "<Product Name>" Option under "<Section Name>" Section
#    And verify "<Product Name>" Redirection for "<Section Name>" with SSO
#    And Go Back to Previous Page
    Examples:
      | Section Name | Product Name |
      | Products for you    | Fixed Deposit  |

  Scenario Outline: Products for you - <Product Name>
    And Get Data for "<Section Name>" in "Home Page"
    And Get Data for "<Product Name>" under "<Section Name>"
    And verify "<Product Name>" Logo is Displayed under "<Section Name>" with Slider
    And verify Nudge Text with Labels for "<Section Name>" - "<Product Name>"
    And verify "<Product Name>" Redirection for "<Section Name>" with SSO

    Examples:
      | Section Name | Product Name      |
      | Products for you    | Gold Loan |

 Scenario Outline: Products for you - <Product Name>
    And Get Data for "<Section Name>" in "Home Page"
    And Get Data for "<Product Name>" under "<Section Name>"
    And verify "<Product Name>" Logo is Displayed under "<Section Name>" with Slider
    And verify Nudge Text with Labels for "<Section Name>" - "<Product Name>"
    And verify "<Product Name>" Redirection for "<Section Name>" with SSO

    Examples:
      | Section Name | Product Name      |
      | Products for you    | Health Insurance |

 Scenario Outline: Products for you - <Product Name>
    And Get Data for "<Section Name>" in "Home Page"
    And Get Data for "<Product Name>" under "<Section Name>"
    And verify "<Product Name>" Logo is Displayed under "<Section Name>" with Slider
    And verify Nudge Text with Labels for "<Section Name>" - "<Product Name>"
    And verify "<Product Name>" Redirection for "<Section Name>" with SSO

    Examples:
      | Section Name | Product Name      |
      | Products for you    | Car Insurance |

 Scenario Outline: Products for you - <Product Name>
    And Get Data for "<Section Name>" in "Home Page"
    And Get Data for "<Product Name>" under "<Section Name>"
    And verify "<Product Name>" Logo is Displayed under "<Section Name>" with Slider
    And verify Nudge Text with Labels for "<Section Name>" - "<Product Name>"
    And verify "<Product Name>" Redirection for "<Section Name>" with SSO

    Examples:
      | Section Name | Product Name      |
      | Products for you    | Bike Insurance |

Scenario Outline: Products for you - <Product Name>
    And Get Data for "<Section Name>" in "Home Page"
    And Get Data for "<Product Name>" under "<Section Name>"
    And verify "<Product Name>" Logo is Displayed under "<Section Name>" with Slider
    And verify Nudge Text with Labels for "<Section Name>" - "<Product Name>"
    And verify "<Product Name>" Redirection for "<Section Name>" with SSO

    Examples:
      | Section Name | Product Name      |
      | Products for you    | Business Loan |

Scenario Outline: Products for you - <Product Name>
    And Get Data for "<Section Name>" in "Home Page"
    And Get Data for "<Product Name>" under "<Section Name>"
    And verify "<Product Name>" Logo is Displayed under "<Section Name>" with Slider
    And verify Nudge Text with Labels for "<Section Name>" - "<Product Name>"
    And verify "<Product Name>" Redirection for "<Section Name>" with SSO

    Examples:
      | Section Name | Product Name      |
      | Products for you    | Doctor Loan |

Scenario Outline: Products for you - <Product Name>
    And Get Data for "<Section Name>" in "Home Page"
    And Get Data for "<Product Name>" under "<Section Name>"
    And verify "<Product Name>" Logo is Displayed under "<Section Name>" with Slider
    And verify Nudge Text with Labels for "<Section Name>" - "<Product Name>"
    And verify "<Product Name>" Redirection for "<Section Name>" with New Tab

    Examples:
      | Section Name | Product Name      |
      | Products for you    | Two-wheeler Loan |

  Scenario Outline: Products for you - <Product Name>
    And Get Data for "<Section Name>" in "Home Page"
    And Get Data for "<Product Name>" under "<Section Name>"
    And verify "<Product Name>" Logo is Displayed under "<Section Name>" with Slider
    And verify Nudge Text with Labels for "<Section Name>" - "<Product Name>"
    And verify "<Product Name>" Redirection for "<Section Name>" with SSO
    Examples:
      | Section Name | Product Name |
      | Products for you    | Loan Against Property |
