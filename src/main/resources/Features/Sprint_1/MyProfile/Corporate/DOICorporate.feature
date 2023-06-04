Feature: DOI- CORPORATE

  Background:
    Given User is logged in "7982153018" "01072017" for "Corporate"
    When User is on Home Page
    Then Customer should be redirected to Home page where Profile icon should be visible
    And Clicks on profile icon
    Then Customer should be redirected to My profile page
    When Customer is on My Profile Page
    And Customer should be able to view below content on My profile page for Corporate
    Then Customer name should be non editable
    Then Customer should be able to view first letter of the name on profile picture place
    Then DOI should be in DDMMYYYY format
    And verify that customer is able to view DD & MM of DOI on My Profile
    Then Customer should be able to view edit DOI button if DOI available
    And Clicks edit,update "Date Of Incorporation" button
    Then Customer should get below popup for DOI-
    Then Contents should be properly aligned in the Popup
    And Clicks Confirm button
    Then Customer should be redirected to Verification method page
    When  Customer is on Verification method page
    Then Customer should be  able to view below content on Verification method page for DOI Corporate

####New

  @PANNEW
  Scenario Outline: To verify DOI Corporate through PAN
    Then On the basis of button selection "<Button>", the button selected should be enabled and clickable & the color of button should be changed to blue color
    And Verify the PAN with different Negative values
    And Customer enters valid details "<PAN>" for "<Button>" Text Box and Clicking "Proceed" button, Customer should be redirected to Update DOI Page
    And Customer should find the below content on Update DOI Page
    Then On clicking Visit Branch & show nearby branches, Customer should be redirected to store locator page "<Locator page URL>"
    And On entering valid "<DOI>" for DOI field
    And On Clicking Self Attested Document Button, User should find fields- Select a Document, Upload arrow & Submit Button
    Then Customer should be able to find the List of Upload Documents Supported
    And On clicking a Document type "Aadhaar" from Select a Document
    Then verify Multiple Document Upload section is displayed
    And On clicking info icon, message for Doc Upload should be displayed
    And On clicking "SUBMIT" Button without Document selection, verify Error message is displayed
    And On uploading Invalid flies for Front page, verify Error message is displayed
    And On uploading Invalid flies for Back page, verify Error message is displayed
    Then On uploading valid files for Front page Customer should get a Bin and file should be accepted
    And On uploading valid files for Back page Customer should get a Bin and file should be accepted
    And On Clicking Submit button after uploading a valid file for both Front and Back Page
    Then Customer should get a message for DOI

    Examples:
      | Button | PAN        | DOI      | Locator page URL                           |
      | PAN    | AARPS4429E | 01072017 | https://www.bajajfinserv.in/branch-locator |


######Bank new
  @BANK
  Scenario Outline: To verify DOI Corporate through Bank A/C Number
    When  Customer is on Verification method page
    Then On the basis of button selection "<Button>", the button selected should be enabled and clickable & the color of button should be changed to blue color
    And Customer enters valid details "<Bank A/C Number>" for "<Button>" Text Box and Clicking "Proceed" button, Customer should be redirected to Update PAN Page for NSDL verification
    Then Customer should find the below content on Update DOI Page
    And On clicking Visit Branch & show nearby branches, Customer should be redirected to store locator page "<Locator page URL>"
    And On entering valid "<DOI>" for DOI field
    And On Clicking Self Attested Document Button, User should find fields- Select a Document, Upload arrow & Submit Button
    Then Customer should be able to find the List of Upload Documents Supported
    And On clicking a Document type "Aadhaar" from Select a Document
    Then verify Multiple Document Upload section is displayed
    And On clicking info icon, message for Doc Upload should be displayed
    And On clicking "SUBMIT" Button without Document selection, verify Error message is displayed
    And On uploading Invalid flies for Front page, verify Error message is displayed
    And On uploading Invalid flies for Back page, verify Error message is displayed
    Then On uploading valid files for Front page Customer should get a Bin and file should be accepted
    And On uploading valid files for Back page Customer should get a Bin and file should be accepted
    And On Clicking Submit button after uploading a valid file for both Front and Back Page
    Then Customer should get a message for DOI

    Examples:
      | Button       | Bank A/C Number | DOI      | Locator page URL                           |
      | Bank Account | 1131631666      | 01072017 | https://www.bajajfinserv.in/branch-locator |

