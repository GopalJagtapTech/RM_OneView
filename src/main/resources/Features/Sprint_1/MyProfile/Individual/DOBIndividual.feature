@DobI
Feature: DOB- INDIVIDUAL

  Background:

    Given User is logged in "9968029754" "22061978" for "Individual"
    When User is on Home Page
    And Clicks on profile icon
    Then Customer should be redirected to My profile page
    When Customer is on My Profile Page
    Then Customer should be able to view below content on My profile page
    And Customer name should be non editable
    And Customer should be able to view first letter of the name on profile picture place
    And DOB should be in DDMMYYYY format
    And verify that customer is able to view DD & MM of DOB on My Profile
    And Customer should be able to view edit DOB button if DOB available
    And Clicks edit,update "Date of Birth" button
    Then Customer should get below popup for DOB-
    And Contents should be properly aligned in the Popup
    And Clicks Confirm button
    Then Customer should be redirected to Verification method page
    When  Customer is on Verification method page
    Then Customer should be  able to view below content on Verification method page for DOB Individual

  @PAN
  Scenario Outline: To verify DOB Individual through PAN
    Then On the basis of button selection "<Button>", the button selected should be enabled and clickable & the color of button should be changed to blue color
    Then Verify the PAN with different Negative values
    Then Customer enters valid details "<PAN>" for "<Button>" Text Box and Clicking "Proceed" button, Customer should be redirected to Update DOB Page
    Then Customer should find the below content on Update DOB Page
    Then On clicking Visit Branch & show nearby branches, Customer should be redirected to store locator page "<Locator page URL>"
    Then On entering valid "<DOB>" for DOB field
    And On Clicking Self Attested Document Button, User should find fields- Select a Document, Upload arrow & Submit Button
    Then Customer should be able to find the List of Upload Documents Supported
    And On clicking a Document type "Aadhaar" from Select a Document
    Then verify Multiple Document Upload section is displayed
    And On clicking "SUBMIT" Button without Document selection, verify Error message is displayed
    And On uploading Invalid flies for Front page, verify Error message is displayed
    And On uploading Invalid flies for Back page, verify Error message is displayed
    Then On uploading valid files for Front page Customer should get a Bin and file should be accepted
    And On uploading valid files for Back page Customer should get a Bin and file should be accepted
    And On Clicking Submit button after uploading a valid file for both Front and Back Page
    Then Customer should get a message for DOB

    Examples:
      | Button | PAN        | DOB         | Locator page URL                          |
      | PAN    | AKPHB2548D | 22061978 | https://www.bajajfinserv.in/branch-locator |

  @EMI
  Scenario Outline: To verify DOB Individual through EMI Card Number
    When  Customer is on Verification method page
    Then On the basis of button selection "<Button>", the button selected should be enabled and clickable & the color of button should be changed to blue color
    Then Verify the EMI with different Negative values
    Then Customer enters valid details "<EMI Card Number>" for "<Button>" Text Box and Clicking "Proceed" button, Customer should be redirected to Update DOB Page
    Then Customer should find the below content on Update DOB Page
    Then On clicking Visit Branch & show nearby branches, Customer should be redirected to store locator page "<Locator page URL>"
    Then On entering valid "<DOB>" for DOB field
    And On Clicking Self Attested Document Button, User should find fields- Select a Document, Upload arrow & Submit Button
    Then Customer should be able to find the List of Upload Documents Supported
    And On clicking a Document type "Aadhaar" from Select a Document
    Then verify Multiple Document Upload section is displayed
    And On clicking "SUBMIT" Button without Document selection, verify Error message is displayed
    And On uploading Invalid flies for Front page, verify Error message is displayed
    And On uploading Invalid flies for Back page, verify Error message is displayed
    Then On uploading valid files for Front page Customer should get a Bin and file should be accepted
    And On uploading valid files for Back page Customer should get a Bin and file should be accepted
    And On Clicking Submit button after uploading a valid file for both Front and Back Page
    Then Customer should get a message for DOB

    Examples:
      | Button          | EMI Card Number  | DOB         | Locator page URL                          |
      | Insta EMI Card | 2030400637033814 | 22061978 | https://www.bajajfinserv.in/branch-locator |

  @Bank
  Scenario Outline: To verify DOB Individual through Bank A/C Number
    When  Customer is on Verification method page
    Then On the basis of button selection "<Button>", the button selected should be enabled and clickable & the color of button should be changed to blue color
    Then Verify the Bank Account with different Negative values
    Then Customer enters valid details "<Bank A/C Number>" for "<Button>" Text Box and Clicking "Proceed" button, Customer should be redirected to Update DOB Page
    Then Customer should find the below content on Update DOB Page
    Then On clicking Visit Branch & show nearby branches, Customer should be redirected to store locator page "<Locator page URL>"
    Then On entering valid "<DOB>" for DOB field
    And On Clicking Self Attested Document Button, User should find fields- Select a Document, Upload arrow & Submit Button
    Then Customer should be able to find the List of Upload Documents Supported
    And On clicking a Document type "Aadhaar" from Select a Document
    Then verify Multiple Document Upload section is displayed
    And On clicking "SUBMIT" Button without Document selection, verify Error message is displayed
    And On uploading Invalid flies for Front page, verify Error message is displayed
    And On uploading Invalid flies for Back page, verify Error message is displayed
    Then On uploading valid files for Front page Customer should get a Bin and file should be accepted
    And On uploading valid files for Back page Customer should get a Bin and file should be accepted
    And On Clicking Submit button after uploading a valid file for both Front and Back Page
    Then Customer should get a message for DOB

    Examples:
      | Button          | Bank A/C Number | DOB         | Locator page URL                          |
      | Bank Account | 0161000101479349     | 22061978 | https://www.bajajfinserv.in/branch-locator |

