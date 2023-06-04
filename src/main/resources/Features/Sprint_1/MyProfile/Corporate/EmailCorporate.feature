Feature: EMAIL- CORPORATE

  Background:
    Given User is logged in "7982153018" "01072017" for "Corporate"
    When User is on Home Page
    Then Customer should be redirected to Home page where Profile icon should be visible
    And Clicks on profile icon
    Then Customer should be redirected to My profile page
    And Customer is on My Profile Page
    And Customer should be able to view below content on My profile page for Corporate
    And Customer name should be non editable
    And Customer should be able to view first letter of the name on profile picture place
    And Customer should find Email Centre part in the Masked format except First and Last two letters
    And Clicks edit,update "Email ID" button
    Then Customer should get below popup for Email Corporate-
    And Contents should be properly aligned in the Popup
    When Customer is on confirmation popup of My Profile Page for Email Corporate
    And Clicks Confirm button
    Then Customer should be redirected to Verification method page
    When  Customer is on Verification method page
    Then Customer should be  able to view below content on Verification method page for Corporate
    And Contents should be properly aligned in Verification method page for Corporate

          #####PAN
  @Pan
  Scenario Outline: To verify Email Corporate through PAN
    And On the basis of button selection "<Button>", the button selected should be enabled and clickable & the color of button should be changed to blue color
    And Verify the PAN with different Negative values
    Then Customer enters valid details "<PAN>" for "<Button>" Text Box and Clicking "Proceed" button, Customer should be redirected to Update Email Page
    Then Customer should find the below content on Update Email Page for Email Corporate
    Examples:
      | Button | PAN        |
      | PAN    | AARPS4429E |


    #BANK ACC Number
  Scenario Outline: To verify Email Corporate through Bank Acc Number
    Then On the basis of button selection "<Button>", the button selected should be enabled and clickable & the color of button should be changed to blue color
    Then Verify the Bank Account with different Negative values
    Then Customer enters valid details "<Bank Acc Number>" for "<Button>" Text Box and Clicking "Proceed" button, Customer should be redirected to Update Email Page
    Then Customer should find the below content on Update Email Page for Email Corporate
    Examples:
      | Button       | Bank Acc Number |
      | Bank Account | 1131631666      |

