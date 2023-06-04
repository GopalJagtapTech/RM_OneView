@AddressI
Feature: ADDRESS- INDIVIDUAL

  Background:
    Given User is logged in "9968029754" "22061978" for "Individual"
    When User is on Home Page
    And Clicks on profile icon
    Then Customer should be redirected to My profile page
    When Customer is on My Profile Page
    Then Customer should be able to view below content on My profile page
    And Customer name should be non editable
    And Customer should be able to view first letter of the name on profile picture place
    And verify the masking format for Address
    And verify that customer is able to view address icon with primary address on my profile page for address field
    And Clicks edit,update "Current Address" button
    Then Customer should get below popup for Address-
    And Contents should be properly aligned in the Popup
    And Clicks Confirm button
    Then Customer should be redirected to Verification method page
    When  Customer is on Verification method page
    Then Customer should be  able to view below content on Verification method page for Individual Address
    And Contents should be properly aligned in Verification method page for Individual Address


        #####PAN
  @Pan
  Scenario Outline: To verify Address Individual through PAN
    And On the basis of button selection "<Button>", the button selected should be enabled and clickable & the color of button should be changed to blue color
    Then Verify the PAN with different Negative values
    Then Customer enters valid details "<PAN>" for "<Button>" Text Box and Clicking "Proceed" button, Customer should be redirected to Update Address Page
    Then Customer should find the below content on Address Update Page
    Examples:
      | Button | PAN        |
      | PAN    | AKPHB2548D |



#EMI CARD
  Scenario Outline: To verify Address Individual through EMI CARD
    Then On the basis of button selection "<Button>", the button selected should be enabled and clickable & the color of button should be changed to blue color
    Then Verify the EMI with different Negative values
    Then Customer enters valid details "<EMI Number>" for "<Button>" Text Box and Clicking "Proceed" button, Customer should be redirected to Update Address Page
    Then Customer should find the below content on Address Update Page
    Examples:
      | Button         | EMI Number       |
      | Insta EMI Card | 2030400637033814 |

    #Bank Account
  Scenario Outline: To verify Address Individual through Bank Account
    Then On the basis of button selection "<Button>", the button selected should be enabled and clickable & the color of button should be changed to blue color
    Then Verify the Bank Account with different Negative values
    Then Customer enters valid details "<Bank Acc Number>" for "<Button>" Text Box and Clicking "Proceed" button, Customer should be redirected to Update Address Page
    Then Customer should find the below content on Address Update Page
    Examples:
      | Button       | Bank Acc Number  |
      | Bank Account | 0161000101479349 |


