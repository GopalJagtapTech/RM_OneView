Feature: ADDRESS- CORPORATE

  Background:
    Given User is logged in "7982153018" "01072017" for "Corporate"
    When User is on Home Page
    And Clicks on profile icon
    Then Customer should be redirected to My profile page
    And Customer is on My Profile Page
    And Customer should be able to view below content on My profile page for Corporate
    Then Customer name should be non editable
    Then Customer should be able to view first letter of the name on profile picture place
    And verify the masking format for Address
    Then verify that customer is able to view address icon with primary address on my profile page for address field
    And Clicks edit,update "Current Address" button
    Then Customer should get below popup for Address-
    Then Contents should be properly aligned in the Popup
    And Clicks Confirm button
    Then Customer should be redirected to Verification method page
    When  Customer is on Verification method page
    Then Customer should be  able to view below content on Verification method page for Corporate
    And Contents should be properly aligned in Verification method page for Corporate


          #####PAN
  @Pan
  Scenario Outline: To verify Address Corporate through PAN
    And On the basis of button selection "<Button>", the button selected should be enabled and clickable & the color of button should be changed to blue color
    And Verify the PAN with different Negative values
    And Customer enters valid details "<PAN>" for "<Button>" Text Box and Clicking "Proceed" button, Customer should be redirected to Update Address Page
    Then Customer should find the below content on Address Update Page
    Examples:
      | Button | PAN        |
      | PAN    | AARPS4429E |


    #Bank Account
  Scenario Outline: To verify Address Corporate through Bank Account
    And On the basis of button selection "<Button>", the button selected should be enabled and clickable & the color of button should be changed to blue color
    And Verify the Bank Account with different Negative values
    And Customer enters valid details "<Bank Acc Number>" for "<Button>" Text Box and Clicking "Proceed" button, Customer should be redirected to Update Address Page
    Then Customer should find the below content on Address Update Page

    Examples:
      | Button       | Bank Acc Number |
      | Bank Account | 1131631666      |


