Feature:Login Footer

  Scenario Outline: verify Customer is redirected to Respective page when clicked on particular "<Option>" - Services
    Given User is on Login Page
    And Closes the SignIn Popup
    When Clicks on the "<Option>" option type
    Then Verify Customer Redirected to "<URL>" Url
    Examples:
      | Option                                      | URL                                                     |
      | Sign-in to our Customer Portal - My Account | myaccountlogin                                          |
      | Manage your Profile                         | service-guides/manage-your-my-account-profile           |
      | Manage your Mandate                         | service-guides/manage-your-mandate-in-my-account        |
      | Manage your Loans                           | service-guides/manage-your-loans-in-my-account          |
      | Manage your Flexi Loans                     | service-guides/manage-your-flexi-loans-in-my-account    |
      | Manage your Insta EMI card                  | service-guides/manage-your-insta-emi-card-in-my-account |
      | Manage your Fixed Deposit                   | service-guides/manage-your-fixed-deposits-in-my-account |


