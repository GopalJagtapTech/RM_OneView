Feature: Footer

  Scenario Outline: verify Customer is redirected to Respective page when clicked on particular "<Option>" - Middle Section
    When Clicks on the "<Option>" option type
    Then Verify Customer Redirected to "<URL>" Url
    Examples:
      | Option                       | URL                                                 |
      | Health Insurance             | insurance/health-insurance-all-products             |
      | Car Insurance                | insurance/car-insurance-all-products                |
      | Two Wheeler Insurance        | insurance/two-wheeler-insurance-all-products        |
      | Pocket Insurance             | insurance/pocket-insurance-all-products             |
      | Investment Plans             | insurance/investment-plans-all-products             |
      | Appliances Extended Warranty | insurance/appliances-extended-warranty-all-products |
      | Pocket Subscription          | insurance/pocket-subscription-all-products          |



