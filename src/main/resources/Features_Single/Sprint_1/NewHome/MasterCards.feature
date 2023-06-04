
Feature: New Home Page - MasterCards

  Scenario Outline: Apply for loans - <Product Name>
    And Get Data for "<Section Name>" in "Home Page" - MastHeadSection
    And Get Data for "<Product Name>" under "<Section Name>" for MastHeadSection
    And verify "<Product Name>" Logo is Displayed under "<Section Name>"
    And verify Nudge Text with Labels for "<Section Name>" - "<Product Name>"
    And Click on "<Product Name>" Option under "<Section Name>" Section
    And verify "<Product Name>" Redirection for "<Section Name>" with SSO
    Examples:
      | Section Name | Product Name |
      | Apply for loans    | Personal         |


  Scenario Outline: Apply for loans - <Product Name>
    And Get Data for "<Section Name>" in "Home Page" - MastHeadSection
    And Get Data for "<Product Name>" under "<Section Name>" for MastHeadSection
    And verify "<Product Name>" Logo is Displayed under "<Section Name>"
    And verify Nudge Text with Labels for "<Section Name>" - "<Product Name>"
    And Click on "<Product Name>" Option under "<Section Name>" Section
    And verify "<Product Name>" Redirection for "<Section Name>" with SSO

    Examples:
      | Section Name | Product Name |
      | Apply for loans    | Business          |

  Scenario Outline: Apply for loans - <Product Name>
    And Get Data for "<Section Name>" in "Home Page" - MastHeadSection
    And Get Data for "<Product Name>" under "<Section Name>" for MastHeadSection
    And verify "<Product Name>" Logo is Displayed under "<Section Name>"
    And verify Nudge Text with Labels for "<Section Name>" - "<Product Name>"
    And Click on "<Product Name>" Option under "<Section Name>" Section
    And verify "<Product Name>" Redirection for "<Section Name>" with SSO

    Examples:
      | Section Name | Product Name |
      | Apply for loans    | Doctor       |

  Scenario Outline: Apply for loans - <Product Name>
    And Get Data for "<Section Name>" in "Home Page" - MastHeadSection
    And Get Data for "<Product Name>" under "<Section Name>" for MastHeadSection
    And verify "<Product Name>" Logo is Displayed under "<Section Name>"
    And verify Nudge Text with Labels for "<Section Name>" - "<Product Name>"
    And Click on "<Product Name>" Option under "<Section Name>" Section
    And verify "<Product Name>" Redirection for "<Section Name>" with SSO

    Examples:
      | Section Name | Product Name |
      | Apply for loans    | Gold  |

  Scenario Outline: Insta EMI card - <Product Name>
    And Get Data for "<Section Name>" in "Home Page" - MastHeadSection
    And Get Data for "<Product Name>" under "<Section Name>" for MastHeadSection
    And verify "<Product Name>" Logo is Displayed under "<Section Name>"
    And verify Nudge Text with Labels for "<Section Name>" - "<Product Name>"
    And Click on "<Product Name>" Option under "<Section Name>" Section
    And verify "<Product Name>" Redirection for "<Section Name>" with SSO
    Examples:
      | Section Name | Product Name |
      | Insta EMI card    | EMI Card         |


  Scenario Outline: Insta EMI card - <Product Name>
    And Get Data for "<Section Name>" in "Home Page" - MastHeadSection
    And Get Data for "<Product Name>" under "<Section Name>" for MastHeadSection
    And verify "<Product Name>" Logo is Displayed under "<Section Name>"
    And verify Nudge Text with Labels for "<Section Name>" - "<Product Name>"
    And Click on "<Product Name>" Option under "<Section Name>" Section
    And verify "<Product Name>" Option is Disabled under "<Section Name>"
    Examples:
      | Section Name | Product Name |
      | Insta EMI card    | Fees & Charges          |

  Scenario Outline: Insta EMI card - <Product Name>
    And Get Data for "<Section Name>" in "Home Page" - MastHeadSection
    And Get Data for "<Product Name>" under "<Section Name>" for MastHeadSection
    And verify "<Product Name>" Logo is Displayed under "<Section Name>"
    And verify Nudge Text with Labels for "<Section Name>" - "<Product Name>"
    And Click on "<Product Name>" Option under "<Section Name>" Section
    And verify "<Product Name>" Redirection for "<Section Name>" with SSO

    Examples:
      | Section Name | Product Name |
      | Insta EMI card    | Partners       |

  Scenario Outline: Insta EMI card - <Product Name>
    And Get Data for "<Section Name>" in "Home Page" - MastHeadSection
    And Get Data for "<Product Name>" under "<Section Name>" for MastHeadSection
    And verify "<Product Name>" Logo is Displayed under "<Section Name>"
    And verify Nudge Text with Labels for "<Section Name>" - "<Product Name>"
    And Click on "<Product Name>" Option under "<Section Name>" Section
    And verify "<Product Name>" Redirection for "<Section Name>" with SSO

    Examples:
      | Section Name | Product Name |
      | Insta EMI card    | Offers  |

  Scenario Outline: Co-branded Credit card - <Product Name>
    And Get Data for "<Section Name>" in "Home Page" - MastHeadSection
    And Get Data for "<Product Name>" under "<Section Name>" for MastHeadSection
    And verify "<Product Name>" Logo is Displayed under "<Section Name>"
    And verify Nudge Text with Labels for "<Section Name>" - "<Product Name>"
    And Click on "<Product Name>" Option under "<Section Name>" Section
    And verify "<Product Name>" Redirection for "<Section Name>" with SSO
    Examples:
      | Section Name | Product Name |
      | Co-branded Credit card    | RBL Bank         |


  Scenario Outline: Co-branded Credit card - <Product Name>
    And Get Data for "<Section Name>" in "Home Page" - MastHeadSection
    And Get Data for "<Product Name>" under "<Section Name>" for MastHeadSection
    And verify "<Product Name>" Logo is Displayed under "<Section Name>"
    And verify Nudge Text with Labels for "<Section Name>" - "<Product Name>"
    And Click on "<Product Name>" Option under "<Section Name>" Section

#    And verify "<Product Name>" Redirection for "<Section Name>" with SSO
    Examples:
      | Section Name | Product Name |
      | Co-branded Credit card    | DBS Bank          |

  Scenario Outline: Co-branded Credit card - <Product Name>
    And Get Data for "<Section Name>" in "Home Page" - MastHeadSection
    And Get Data for "<Product Name>" under "<Section Name>" for MastHeadSection
    And verify "<Product Name>" Logo is Displayed under "<Section Name>"
    And verify Nudge Text with Labels for "<Section Name>" - "<Product Name>"
    And Click on "<Product Name>" Option under "<Section Name>" Section
    And verify "<Product Name>" Redirection for "<Section Name>" with SSO

    Examples:
      | Section Name | Product Name |
      | Co-branded Credit card    | Eligibility       |

  Scenario Outline: Co-branded Credit card - <Product Name>
    And Get Data for "<Section Name>" in "Home Page" - MastHeadSection
    And Get Data for "<Product Name>" under "<Section Name>" for MastHeadSection
    And verify "<Product Name>" Logo is Displayed under "<Section Name>"
    And verify Nudge Text with Labels for "<Section Name>" - "<Product Name>"
    And Click on "<Product Name>" Option under "<Section Name>" Section
    And verify "<Product Name>" Redirection for "<Section Name>" with SSO

    Examples:
      | Section Name | Product Name |
      | Co-branded Credit card    | Offers  |

