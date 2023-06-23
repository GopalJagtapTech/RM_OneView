Feature: US - 2923585_Profile Changes - Same Value validation in Edit_PAN and Edit_DOB while entering the new value
@run
  Scenario Outline: To verify validation is displayed when customer enter already registered DOB

    Given User is logged in "7666995802" "01011985" for "Individual"
    When User is on Home Page
    And Clicks on profile icon
    Then Customer should be redirected to My profile page
    When Customer is on My Profile Page
    And verify that customer is able to view DD & MM of DOB on My Profile
    And Customer should be able to view edit DOB button if DOB available
    And Clicks edit,update "Date of Birth" button
    And Clicks Confirm button
    Then Customer should be redirected to Verification method page
    Then Customer enters valid details "<PAN>" for "<Button>" Text Box and Clicking "Proceed" button, Customer should be redirected to Update DOB Page
    Then Customer should find the below content on Update DOB Page
    Then On entering valid "<DOB>" for DOB field
    And On Clicking Self Attested Document Button, User should find fields- Select a Document, Upload arrow & Submit Button
    Then Customer should be able to find the List of Upload Documents Supported
    And On clicking a Document type "Aadhaar" from Select a Document
    Then verify Multiple Document Upload section is displayed
    Then On uploading valid files for Front page Customer should get a Bin and file should be accepted
    And On uploading valid files for Back page Customer should get a Bin and file should be accepted
    And On Clicking Submit button after uploading a valid file for both Front and Back Page
    Then Validation Pop-up with below list of details should be displayed

    Examples:
      | Button | PAN        | DOB      |
      | PAN    | FWMPS4421Q | 01011985 |
  @run
  Scenario Outline: To verify pop-up is closed when customer click on OK CTA - DOB
    Given User is logged in "7666995802" "01011985" for "Individual"
    When User is on Home Page
    And Clicks on profile icon
    Then Customer should be redirected to My profile page
    When Customer is on My Profile Page
    And verify that customer is able to view DD & MM of DOB on My Profile
    And Customer should be able to view edit DOB button if DOB available
    And Clicks edit,update "Date of Birth" button
    And Clicks Confirm button
    Then Customer should be redirected to Verification method page
    Then Customer enters valid details "<PAN>" for "<Button>" Text Box and Clicking "Proceed" button, Customer should be redirected to Update DOB Page
    Then Customer should find the below content on Update DOB Page
    Then On entering valid "<DOB>" for DOB field
    And On Clicking Self Attested Document Button, User should find fields- Select a Document, Upload arrow & Submit Button
    Then Customer should be able to find the List of Upload Documents Supported
    And On clicking a Document type "Aadhaar" from Select a Document
    Then verify Multiple Document Upload section is displayed
    Then On uploading valid files for Front page Customer should get a Bin and file should be accepted
    And On uploading valid files for Back page Customer should get a Bin and file should be accepted
    And On Clicking Submit button after uploading a valid file for both Front and Back Page
    And User clicks on "OK" button in Popup for Same DOB
    Then pop-up should be closed and customer should  remain on existing screen
    Examples:
      | Button | PAN        | DOB      |
      | PAN    | FWMPS4421Q | 01011985 |

  @run
  Scenario Outline: To verify pop-up is closed when customer click on Cross Button ( X ) -DOB
    Given User is logged in "7666995802" "01011985" for "Individual"
    When User is on Home Page
    And Clicks on profile icon
    Then Customer should be redirected to My profile page
    When Customer is on My Profile Page
    And verify that customer is able to view DD & MM of DOB on My Profile
    And Customer should be able to view edit DOB button if DOB available
    And Clicks edit,update "Date of Birth" button
    And Clicks Confirm button
    Then Customer should be redirected to Verification method page
    Then Customer enters valid details "<PAN>" for "<Button>" Text Box and Clicking "Proceed" button, Customer should be redirected to Update DOB Page
    Then Customer should find the below content on Update DOB Page
    Then On entering valid "<DOB>" for DOB field
    And On Clicking Self Attested Document Button, User should find fields- Select a Document, Upload arrow & Submit Button
    Then Customer should be able to find the List of Upload Documents Supported
    And On clicking a Document type "Aadhaar" from Select a Document
    Then verify Multiple Document Upload section is displayed
    Then On uploading valid files for Front page Customer should get a Bin and file should be accepted
    And On uploading valid files for Back page Customer should get a Bin and file should be accepted
    And On Clicking Submit button after uploading a valid file for both Front and Back Page
    And User clicks on Cross button in Popup for Same DOB
    Then pop-up should be closed and customer should  remain on existing screen
    Examples:
      | Button | PAN        | DOB      |
      | PAN    | FWMPS4421Q | 01011985 |
  @debug
  Scenario Outline: To verify validation is displayed when customer enter already registered PAN
    Given User is logged in "7666995802" "01011985" for "Individual"
    When User is on Home Page
    Then Customer should be redirected to Home page where Profile icon should be visible
    And Clicks on profile icon
    Then Customer should be redirected to My profile page
    When Customer does has PAN available
    Then Customer should be able to view edit PAN button
    And Clicks edit,update "PAN" button
    And Clicks Confirm button
    Then Customer should be redirected to Verification method page
    When  Customer is on Verification method page
    And Customer enters valid details "<Birth Date>" for "<Button>" Text Box and Clicking "Proceed" button, Customer should be redirected to Update PAN Page for NSDL verification
    Then Customer should find the below content on Update Pan Page
    And On entering valid "<PAN Number>" for input "<Pan Field>" and Clicking "Verify" button
    Then Popup with Below Contents should be displayed for Existing PAN entry

    Examples:
      | Button        | Birth Date | PAN Number | Pan Field              |
      | Date of Birth | 01011985   | FWMPS4421Q | Enter your Updated PAN |

  Scenario Outline: To verify pop-up is closed when customer click on OK CTA - PAN
    Given User is logged in "7666995802" "01011985" for "Individual"
    When User is on Home Page
    Then Customer should be redirected to Home page where Profile icon should be visible
    And Clicks on profile icon
    Then Customer should be redirected to My profile page
    When Customer does has PAN available
    Then Customer should be able to view edit PAN button
    And Clicks edit,update "PAN" button
    And Clicks Confirm button
    Then Customer should be redirected to Verification method page
    When  Customer is on Verification method page
    And Customer enters valid details "<Birth Date>" for "<Button>" Text Box and Clicking "Proceed" button, Customer should be redirected to Update PAN Page for NSDL verification
    Then Customer should find the below content on Update Pan Page
    And On entering valid "<PAN Number>" for input "<Pan Field>" and Clicking "Verify" button
    Then Popup with Below Contents should be displayed for Existing PAN entry
    And User clicks on "OK" button in Popup for Same PAN
    Then pop-up should be closed and customer should remain on existing screen of PAN page

    Examples:
      | Button        | Birth Date | PAN Number | Pan Field              |
      | Date of Birth | 01011985   | FWMPS4421Q | Enter your Updated PAN |

  Scenario Outline: To verify pop-up is closed when customer click on Cross Button ( X ) - PAN
    Given User is logged in "7666995802" "01011985" for "Individual"
    When User is on Home Page
    Then Customer should be redirected to Home page where Profile icon should be visible
    And Clicks on profile icon
    Then Customer should be redirected to My profile page
    When Customer does has PAN available
    Then Customer should be able to view edit PAN button
    And Clicks edit,update "PAN" button
    And Clicks Confirm button
    Then Customer should be redirected to Verification method page
    When  Customer is on Verification method page
    And Customer enters valid details "<Birth Date>" for "<Button>" Text Box and Clicking "Proceed" button, Customer should be redirected to Update PAN Page for NSDL verification
    Then Customer should find the below content on Update Pan Page
    And On entering valid "<PAN Number>" for input "<Pan Field>" and Clicking "Verify" button
    Then Popup with Below Contents should be displayed for Existing PAN entry
    And User clicks on Close(X) button in Popup for Same PAN
    Then pop-up should be closed and customer should remain on existing screen of PAN page

    Examples:
      | Button        | Birth Date | PAN Number | Pan Field              |
      | Date of Birth | 01011985   | FWMPS4421Q | Enter your Updated PAN |
