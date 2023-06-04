@EmailI
Feature: EMAIL- INDIVIDUAL

  Background:
    Given User is logged in "9968029754" "22061978" for "Individual"
    When User is on Home Page
    And Clicks on profile icon
    Then Customer should be redirected to My profile page
    When Customer is on My Profile Page
    Then Customer should be able to view below content on My profile page
    And Customer name should be non editable
    And Customer should be able to view first letter of the name on profile picture place
    And Customer should find Email Centre part in the Masked format except First and Last two letters
    And Clicks edit,update "Email ID" button
    And Customer should get below popup for Email Individual-
    And Contents should be properly aligned in the Popup
    And Clicks Confirm button
    Then Customer should be redirected to Verification method page
    When  Customer is on Verification method page
    Then Customer should be  able to view below content on Verification method page
    Then Contents should be properly aligned in Verification method page for Email Individual


    #####PAN
  @Pan
  Scenario Outline: To verify Email Individual through PAN
    And On the basis of button selection "<Button>", the button selected should be enabled and clickable & the color of button should be changed to blue color
    Then Verify the PAN with different Negative values
    Then Customer enters valid details "<PAN>" for "<Button>" Text Box and Clicking "Proceed" button, Customer should be redirected to Update Email Page
    Then Customer should find the below content on Update Email Page for Email Individual
    Examples:
      | Button | PAN        |
      | PAN    | AKPHB2548D |



#EMI CARD
  @emi
  Scenario Outline: To verify Email Individual through EMI CARD
    Then On the basis of button selection "<Button>", the button selected should be enabled and clickable & the color of button should be changed to blue color
    Then Verify the EMI with different Negative values
    Then Customer enters valid details "<EMI Number>" for "<Button>" Text Box and Clicking "Proceed" button, Customer should be redirected to Update Email Page
    Then Customer should find the below content on Update Email Page for Email Individual
    Examples:
      | Button          | EMI Number       |
      | Insta EMI Card | 2030400637033814 |

    #Bank Account
  Scenario Outline: To verify Email Individual through Bank Account
    Then On the basis of button selection "<Button>", the button selected should be enabled and clickable & the color of button should be changed to blue color
    Then Verify the Bank Account with different Negative values
    Then Customer enters valid details "<Bank Acc Number>" for "<Button>" Text Box and Clicking "Proceed" button, Customer should be redirected to Update Email Page
    Then Customer should find the below content on Update Email Page for Email Individual
    Examples:
      | Button          | Bank Acc Number |
      | Bank Account | 0161000101479349  |


