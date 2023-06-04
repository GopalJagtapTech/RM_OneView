Feature: PAN- CORPORATE

  Background:
    Given User is logged in "7982153018" "01072017" for "Corporate"
    When User is on Home Page
    Then Customer should be redirected to Home page where Profile icon should be visible
    And Clicks on profile icon
    Then Customer should be redirected to My profile page
    And Customer is on My Profile Page
    Then Customer should be able to view below content on My profile page for Corporate
    And Customer name should be non editable
    And Customer should be able to view first letter of the name on profile picture place
#    And verify that customer is able to view last TWO letters of PAN on My Profile
    And verify that customer is able to view First Two and Last Two letters of PAN on My Profile
    Then Customer should be able to view PAN icon on my profile page for PAN field
    When Customer does has PAN available
    Then Customer should be able to view edit PAN button
    And Clicks edit,update "PAN" button
    Then Customer should get below popup-
    And Contents should be properly aligned in the Popup
    When Customer is on confirmation popup of My Profile Page for Pan Corporate
    And Clicks Confirm button
    Then Customer should be redirected to Verification method page
    When  Customer is on Verification method page
    Then Customer should be  able to view below content on Verification method page for PAN Corporate

  @bank1
    #########Bank Account
  Scenario Outline: To verify Pan Corporate through Bank Account with NSDL PAN flow
    When  Customer is on Verification method page
    Then On the basis of button selection "<Button>", the button selected should be enabled and clickable & the color of button should be changed to blue color
    Then Verify the Bank Account with different Negative values
    And Customer enters valid details "<Bank Acc Number>" for "<Button>" Text Box and Clicking "Proceed" button, Customer should be redirected to Update PAN Page for NSDL verification
    Then Customer should find the below content on Update Pan Page
    Then Verify Invalid Pan is not accepted
    Then On entering valid "<PAN Number>" for input "<Pan Field>" and Clicking "Verify" button, Customer should get a Success message

    Examples:
      | Button          | Bank Acc Number | PAN Number | Pan Field               |
      | Bank Account | 1131631666 | AARPS4429E | Enter your updated PAN |

  @bank2
  Scenario Outline:  To verify PAN Corporate through Bank Account on unsuccessful NSDL response
    When  Customer is on Verification method page
    Then On the basis of button selection "<Button>", the button selected should be enabled and clickable & the color of button should be changed to blue color
    And Customer enters valid details "<Bank Acc Number>" for "<Button>" Text Box and Clicking "Proceed" button, Customer should be redirected to Update PAN Page for NSDL verification
    Then On entering valid "<PAN Number>" for input "<Pan Field>" and Clicking "Verify" button, Select Verification Mode should be displayed
    Then On clicking Visit Branch & show nearby branches, Customer should be redirected to store locator page "<Locator page URL>"
    Then On Clicking Self Attested Pan Card Button, User should find fields- Upload Pan Card, Upload arrow & Submit Button
    Then On uploading Invalid files, Customer should get- Invalid file message
    Then On Uploading valid files, Customer should get a bin , tick mark and a message
    Then On Clicking Submit button after uploading a valid file, Customer should get a message


    Examples:
      | Button          | Bank Acc Number | PAN Number | Pan Field               | Locator page URL                          |
      | Bank Account | 1131631666 | ABCDE1234F | Enter your Updated PAN | https://www.bajajfinserv.in/branch-locator |

#########DATE OF INCORPORATION

  @DOI1
  Scenario Outline: To verify Pan Corporate through Date of Incorporation with NSDL PAN flow
    When  Customer is on Verification method page
    Then On the basis of button selection "<Button>", the button selected should be enabled and clickable & the color of button should be changed to blue color
    Then Verify the DOI with different Negative values
    And Customer enters valid details "<Date of Incorporation>" for "<Button>" Text Box and Clicking "Proceed" button, Customer should be redirected to Update PAN Page for NSDL verification
    Then Customer should find the below content on Update Pan Page
    Then Verify Invalid Pan is not accepted
    Then On entering valid "<PAN Number>" for input "<Pan Field>" and Clicking "Verify" button, Customer should get a Success message

    Examples:
      | Button                | Date of Incorporation | PAN Number | Pan Field               |
      | Date Of Incorporation | 01072017            | AARPS4429E | Enter your Updated PAN |

  @DOI2
  Scenario Outline:  To verify PAN Corporate through Date of Incorporation on unsuccessful NSDL response
    And On the basis of button selection "<Button>", the button selected should be enabled and clickable & the color of button should be changed to blue color
    And Verify the DOI with different Negative values
    And Customer enters valid details "<Date of Incorporation>" for "<Button>" Text Box and Clicking "Proceed" button, Customer should be redirected to Update PAN Page for NSDL verification
    And On entering valid "<PAN Number>" for input "<Pan Field>" and Clicking "Verify" button, Select Verification Mode should be displayed
    And On clicking Visit Branch & show nearby branches, Customer should be redirected to store locator page "<Locator page URL>"
    And On Clicking Self Attested Pan Card Button, User should find fields- Upload Pan Card, Upload arrow & Submit Button
    And On uploading Invalid files, Customer should get- Invalid file message
    And On Uploading valid files, Customer should get a bin , tick mark and a message
    And On Clicking Submit button after uploading a valid file, Customer should get a message

    Examples:
      | Button                | Date of Incorporation | PAN Number | Pan Field               | Locator page URL                          |
      | Date Of Incorporation | 01072017            | DMOCM3223B | Enter your Updated PAN | https://www.bajajfinserv.in/branch-locator |




