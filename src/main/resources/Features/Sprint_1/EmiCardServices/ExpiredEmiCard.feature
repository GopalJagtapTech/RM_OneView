Feature:  Expired EMI Card Services

  Scenario Outline: EMI Card Services-Navigation
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User lands on Home Page
    And verify that Customer is able to view EMI Card icon Under EMI network Card tile
    Then verify Customer is redirected to EMI Card service page when Click on EMI Card icon through header EMI Card section
    #When User logouts application
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 9819427072     | 05051976 | Individual    |

    @GreyedOut
  Scenario Outline: EMI Card Services--Greyed out
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User lands on Home Page
    And verify Customer is redirected to EMI Card service page when Click on EMI Card icon through header EMI Card section
    Then Expired card should be Greyed out
     # When User logouts application
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 9819427072     | 05051976 | Individual    |
@FailK
  Scenario Outline: EMI Card Services----Red Expired Capsule
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User lands on Home Page
    And verify Customer is redirected to EMI Card service page when Click on EMI Card icon through header EMI Card section
    Then verify Customer is able to view Red Expired Capsule
    #When User logouts application
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 9769095480     | 05051976 | Individual    |
   #9769095480
#  Scenario Outline: EMI Card Services --Red Expired Capsule
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User lands on Home Page
#    And verify Customer is redirected to EMI Card service page when Click on EMI Card icon through header EMI Card section
#    Then verify Customer is able to view Red Expired Capsule
#    When User logouts application
#    Examples:
#      | Mobile Number | Date     | Customer Type |
#      | 9819427072     | 05051976 | Individual    |
@FailRegK
  Scenario Outline: EMI Card Services--View Statements
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User lands on Home Page
    And verify Customer is redirected to EMI Card service page when Click on EMI Card icon through header EMI Card section
    And Click on View Statements option under Quick Action
    Then Customer should be redirected to respective "<Expected Url>"
    #When User logouts application
    Examples:
      | Mobile Number | Date     | Customer Type | Expected Url |
      | 9819427072     | 05051976 | Individual   | https://uat-oneweb.bajajfinserv.in/MyAccountDocumentCenter/DocumentCenter |
@HomeK
  Scenario Outline: EMI Card Services- Health EMI Network Card
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User lands on Home Page
    And verify Customer is redirected to EMI Card service page when Click on EMI Card icon through header EMI Card section
    And Click on Get Health EMI Network Card option under Quick Action
    Then Customer should be redirected to respective "<Expected Url>"
  Then User navigated back to homePage
    #When User logouts application
    Examples:
      | Mobile Number | Date     | Customer Type | Expected Url |
      | 9819427072     | 05051976 | Individual   | https://www.bajajfinserv.in/health-emi-network-card |

  @back
  Scenario Outline: EMI Card Services--Locate Stores
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User lands on Home Page
    And verify Customer is redirected to EMI Card service page when Click on EMI Card icon through header EMI Card section
    And Click on Locate Stores option under Quick Action
    Then Customer should be redirected to respective "<Expected Url>"
    Then User navigated back to homePage
    #When User logouts application
    Examples:
      | Mobile Number | Date     | Customer Type | Expected Url |
      | 9819427072     | 05051976 | Individual   | https://www.bajajfinserv.in/locator|

  Scenario Outline: EMI Card Services--Shop Online
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User lands on Home Page
    And verify Customer is redirected to EMI Card service page when Click on EMI Card icon through header EMI Card section
    And Click on Shop Online option under Quick Action
    Then Customer should be Redirected to new tab "<Expected Url>"
    #When User logouts application
    Examples:
      | Mobile Number | Date     | Customer Type | Expected Url |
      | 9819427072     | 05051976 | Individual   | https://www.bajajmall.in/emi-store |

  Scenario Outline: EMI Card Services--partner stores
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User lands on Home Page
    And verify Customer is redirected to EMI Card service page when Click on EMI Card icon through header EMI Card section
    And Click on To apply for a new loan visit our partner stores
    Then Customer should be Redirected to new tab "<Expected Url>"
    #When User logouts application
    Examples:
      | Mobile Number | Date     | Customer Type | Expected Url |
      | 9819427072     | 05051976 | Individual   | https://www.bajajfinserv.in/bajaj-mall-store-locator |
  Scenario Outline: EMI Card Services-- Faq
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User lands on Home Page
    And verify Customer is redirected to EMI Card service page when Click on EMI Card icon through header EMI Card section
    Then verify Customer is redirected to FAQ section with EMI Card section highlighted when Customer click on FAQ's
    #When User logouts application
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 9819427072     | 05051976 | Individual    |

  Scenario Outline: EMI Card Services--Cibil Score
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User lands on Home Page
    And verify Customer is redirected to EMI Card service page when Click on EMI Card icon through header EMI Card section
    Then verify Customer is redirected to CIBIL page with SSO when click on Know your CIBIL button
    #When User logouts application
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 9819427072     | 05051976 | Individual    |


