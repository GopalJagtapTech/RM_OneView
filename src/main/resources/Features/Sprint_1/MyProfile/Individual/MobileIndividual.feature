@MobileI
Feature: MOBILE- INDIVIDUAL

  Background:
    Given User is logged in "9968029754" "22061978" for "Individual"
    When User is on Home Page
    And Clicks on profile icon
    Then Customer should be redirected to My profile page
    When Customer is on My Profile Page
    Then Customer should be able to view below content on My profile page
    And Customer name should be non editable
    And Customer should be able to view first letter of the name on profile picture place
    And verify Last four digits are visible and rest are masked
    And Customer should be able to view mobile icon on my profile page for mobile field
    And Clicks edit,update "Mobile Number" button
    Then Customer should get below popup for Mobile-
    And Contents should be properly aligned in the Popup
    And Clicks Confirm button
    Then Customer should be redirected to Verification method page
    When  Customer is on Verification method page
    Then Customer should be  able to view below content on Verification method page
    And Contents should be properly aligned in Verification method page for Mobile Individual

#    ###DATE OF BIRTH
#  @DOB
#  Scenario Outline: To verify Mobile Individual through Date of birth
#    And On the basis of button selection "<Button>", the button selected should be enabled and clickable & the color of button should be changed to blue color
#    And Verify the DOB with different Negative values
#    And Customer enters valid details "<Birth Date>" for "<Button>" Text Box and Clicking "Proceed" button, Customer should be redirected to Update PAN Page for NSDL verification
#    And Customer should find the below content on Update Mobile Page for Mobile Individual
#    And verify that validation message displays when customer enters invalid input in mobile number field
#    Examples:
#      | Button        | Birth Date |
#      | Date of Birth | 22061978   |

######PAN
  @Pan
  Scenario Outline: To verify Mobile Individual through PAN
    And On the basis of button selection "<Button>", the button selected should be enabled and clickable & the color of button should be changed to blue color
    Then Verify the PAN with different Negative values
    Then Customer enters valid details "<PAN>" for "<Button>" Text Box and Clicking "Proceed" button, Customer should be redirected to Update Mobile Page
    And Customer should find the below content on Update Mobile Page for Mobile Individual
    And verify that validation message displays when customer enters invalid input in mobile number field
    Examples:
      | Button | PAN        |
      | PAN    | AKPHB2548D |


#EMI CARD
  @emi
  Scenario Outline: To verify Mobile Individual through EMI CARD
    Then On the basis of button selection "<Button>", the button selected should be enabled and clickable & the color of button should be changed to blue color
    Then Verify the EMI with different Negative values
    Then Customer enters valid details "<EMI Number>" for "<Button>" Text Box and Clicking "Proceed" button, Customer should be redirected to Update Mobile Page
    Then Customer should find the below content on Update Mobile Page for Mobile Individual
    Then verify that validation message displays when customer enters invalid input in mobile number field
    Examples:
      | Button         | EMI Number       |
      | Insta EMI Card | 2030400637033814 |

    #Bank Account
  @Bank
  Scenario Outline: To verify Mobile Individual through Bank Account
    Then On the basis of button selection "<Button>", the button selected should be enabled and clickable & the color of button should be changed to blue color
    Then Verify the Bank Account with different Negative values
    Then Customer enters valid details "<Bank Acc Number>" for "<Button>" Text Box and Clicking "Proceed" button, Customer should be redirected to Update Mobile Page
    Then Customer should find the below content on Update Mobile Page for Mobile Individual
    Then verify that validation message displays when customer enters invalid input in mobile number field

    Examples:
      | Button       | Bank Acc Number  |
      | Bank Account | 0161000101479349 |



