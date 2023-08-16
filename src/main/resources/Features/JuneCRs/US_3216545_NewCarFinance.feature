Feature: Header_Entry points for New Car Finance


  Scenario Outline:  Verify customer redirected respective page, when customer click on "<level 2 Sub Type>" option under New Car Finance loans Dropdown - ETB
    Given User is logged in "9890801661" "11111999" for "Individual"
    When User is on Home Page
    When Customer Clicks on "<dropDownType>" Drop-down
    And Hover over "<Loan type>"
    And clicks on SubOptionType"<level 2 Sub Type>" under SubMenu"<Loan type>"
    Then Customer should be Redirected to "<URL>"
    Examples:
      | dropDownType | Loan type       | level 2 Sub Type           | URL                                                                           |
      | Loans        | New car finance | Overview                   | https://www.bajajfinserv.in/new-car-finance                                   |
      | Loans        | New car finance | Features                   | https://www.bajajfinserv.in/new-car-finance-features                          |
      | Loans        | New car finance | Eligibility                | https://www.bajajfinserv.in/new-car-finance-eligibility-and-documents         |
      | Loans        | New car finance | How to Apply               | https://www.bajajfinserv.in/how-to-apply-for-new-car-finance                  |
      | Loans        | New car finance | Interest Rates and Charges | https://www.bajajfinserv.in/new-car-finance-interest-rates-and-charges        |
      | Loans        | New car finance | FAQs                       | https://uat-oneweb.bajajfinserv.in/new-car-finance-frequently-asked-questions |

  Scenario Outline:  Verify customer redirected respective page, when customer click on "<level 2 Sub Type>" option under New Car Finance loans Dropdown - PTB
    Given User is logged in "9425156052" "11111999" for "Individual"
    When User is on Home Page
    When Customer Clicks on "<dropDownType>" Drop-down
    And Hover over "<Loan type>"
    And clicks on SubOptionType"<level 2 Sub Type>" under SubMenu"<Loan type>"
    Then Customer should be Redirected to "<URL>"
    Examples:
      | dropDownType | Loan type       | level 2 Sub Type           | URL                                                                           |
      | Loans        | New car finance | Overview                   | https://www.bajajfinserv.in/new-car-finance                                   |
      | Loans        | New car finance | Features                   | https://www.bajajfinserv.in/new-car-finance-features                          |
      | Loans        | New car finance | Eligibility                | https://www.bajajfinserv.in/new-car-finance-eligibility-and-documents         |
      | Loans        | New car finance | How to Apply               | https://www.bajajfinserv.in/how-to-apply-for-new-car-finance                  |
      | Loans        | New car finance | Interest Rates and Charges | https://www.bajajfinserv.in/new-car-finance-interest-rates-and-charges        |
      | Loans        | New car finance | FAQs                       | https://uat-oneweb.bajajfinserv.in/new-car-finance-frequently-asked-questions |

  Scenario Outline:  Verify customer redirected respective page, when customer click on "<level 2 Sub Type>" option under New Car Finance loans Dropdown - NTB
    Given User is logged in "8605337783" "11111999" for "Individual"
    When User is on Home Page
    When Customer Clicks on "<dropDownType>" Drop-down
    And Hover over "<Loan type>"
    And clicks on SubOptionType"<level 2 Sub Type>" under SubMenu"<Loan type>"
    Then Customer should be Redirected to "<URL>"
    Examples:
      | dropDownType | Loan type       | level 2 Sub Type           | URL                                                                           |
      | Loans        | New car finance | Overview                   | https://www.bajajfinserv.in/new-car-finance                                   |
      | Loans        | New car finance | Features                   | https://www.bajajfinserv.in/new-car-finance-features                          |
      | Loans        | New car finance | Eligibility                | https://www.bajajfinserv.in/new-car-finance-eligibility-and-documents         |
      | Loans        | New car finance | How to Apply               | https://www.bajajfinserv.in/how-to-apply-for-new-car-finance                  |
      | Loans        | New car finance | Interest Rates and Charges | https://www.bajajfinserv.in/new-car-finance-interest-rates-and-charges        |
      | Loans        | New car finance | FAQs                       | https://uat-oneweb.bajajfinserv.in/new-car-finance-frequently-asked-questions |


#Header_Entry points for New Car Finance
  #Footer
  Scenario Outline: verify Customer is redirected to Respective page when clicked on particular "<Option>" in Application Forms -ETB
    Given User is logged in "9890801661" "11111999" for "Individual"
    When User is on Home Page
    When Clicks on the "<Option>" option type in Application Forms
    Then Verify Customer Redirected to "<URL>" Url

    Examples:
      | Option                               | URL                                  |
      | New Car Finance                      | new-car-finance                      |
      | Used Car Finance                     | used-car-finance                     |
      | Loan Against a Car                   | loan-against-car                     |
      | Car Loan Balance Transfer and Top-up | car-loan-balance-transfer-and-top-up |

  Scenario Outline: verify Customer is redirected to Respective page when clicked on particular "<Option>" -Loans -ETB
    Given User is logged in "9890801661" "11111999" for "Individual"
    When User is on Home Page
    When Clicks on the "<Option>" option type
    Then Verify Customer Redirected to "<URL>" Url
    Examples:
      | Option                                      | URL                             |
      | New Car Finance                      | new-car-finance                      |
      | Used Car Finance                     | used-car-finance                     |
      | Loan Against a Car                   | loan-against-car                     |
      | Car Loan Balance Transfer and Top-up | car-loan-balance-transfer-and-top-up |

  Scenario Outline: verify Customer is redirected to Respective page when clicked on particular "<Option>" in Application Forms -PTB
    Given User is logged in "9425156052" "11111999" for "Individual"
    When User is on Home Page
    When Clicks on the "<Option>" option type in Application Forms
    Then Verify Customer Redirected to "<URL>" Url

    Examples:
      | Option                               | URL                                  |
      | New Car Finance                      | new-car-finance                      |
      | Used Car Finance                     | used-car-finance                     |
      | Loan Against a Car                   | loan-against-car                     |
      | Car Loan Balance Transfer and Top-up | car-loan-balance-transfer-and-top-up |

  Scenario Outline: verify Customer is redirected to Respective page when clicked on particular "<Option>" -Loans -PTB
    Given User is logged in "9425156052" "11111999" for "Individual"
    When User is on Home Page
    When Clicks on the "<Option>" option type
    Then Verify Customer Redirected to "<URL>" Url
    Examples:
      | Option                                      | URL                             |
      | New Car Finance                      | new-car-finance                      |
      | Used Car Finance                     | used-car-finance                     |
      | Loan Against a Car                   | loan-against-car                     |
      | Car Loan Balance Transfer and Top-up | car-loan-balance-transfer-and-top-up |

  Scenario Outline: verify Customer is redirected to Respective page when clicked on particular "<Option>" in Application Forms -NTB
    Given User is logged in "8605337783" "11111999" for "Individual"
    When User is on Home Page
    When Clicks on the "<Option>" option type in Application Forms
    Then Verify Customer Redirected to "<URL>" Url

    Examples:
      | Option                               | URL                                  |
      | New Car Finance                      | new-car-finance                      |
      | Used Car Finance                     | used-car-finance                     |
      | Loan Against a Car                   | loan-against-car                     |
      | Car Loan Balance Transfer and Top-up | car-loan-balance-transfer-and-top-up |

  Scenario Outline: verify Customer is redirected to Respective page when clicked on particular "<Option>" -Loans -NTB
    Given User is logged in "8605337783" "11111999" for "Individual"
    When User is on Home Page
    When Clicks on the "<Option>" option type
    Then Verify Customer Redirected to "<URL>" Url
    Examples:
      | Option                                      | URL                             |
      | New Car Finance                      | new-car-finance                      |
      | Used Car Finance                     | used-car-finance                     |
      | Loan Against a Car                   | loan-against-car                     |
      | Car Loan Balance Transfer and Top-up | car-loan-balance-transfer-and-top-up |

