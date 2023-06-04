@PanI
Feature: PAN- INDIVIDUAL

  Background:
    Given User is logged in "9968029754" "22061978" for "Individual"
    When User is on Home Page
    Then Customer should be redirected to Home page where Profile icon should be visible
    And Clicks on profile icon
    Then Customer should be redirected to My profile page
    When Customer is on My Profile Page
    Then Customer should be able to view below content on My profile page
    And Customer name should be non editable
    And Customer should be able to view first letter of the name on profile picture place
#    And verify that customer is able to view last TWO letters of PAN on My Profile
    And verify that customer is able to view First Two and Last Two letters of PAN on My Profile
    And Customer should be able to view PAN icon on my profile page for PAN field
    When Customer does has PAN available
    Then Customer should be able to view edit PAN button
    And Clicks edit,update "PAN" button
    And Customer should get below popup-
    And Contents should be properly aligned in the Popup
    And Clicks Confirm button
    Then Customer should be redirected to Verification method page
    When  Customer is on Verification method page
    Then Customer should be  able to view below content on Verification method page
    And Contents should be properly aligned in Verification method page for PanIndividual

  @emi1
##########EMI CARD
  Scenario Outline: To verify Pan Individual through EMI Card with NSDL PAN flow
    When  Customer is on Verification method page
    Then On the basis of button selection "<Button>", the button selected should be enabled and clickable & the color of button should be changed to blue color
    Then Verify the EMI with different Negative values
    Then Customer enters valid details "<EMI Number>" for "<Button>" Text Box and Clicking "Proceed" button, Customer should be redirected to Update PAN Page for NSDL verification
    Then Customer should find the below content on Update Pan Page
    Then Verify Invalid Pan is not accepted
    Then On entering valid "<PAN Number>" for input "<Pan Field>" and Clicking "Verify" button, Customer should get a Success message

    Examples:
      | Button         | EMI Number       | PAN Number | Pan Field               |
#      | Insta EMI Card | 2030400637033814 | AKPHB2548D | Enter your Updated PAN |
      | Insta EMI Card | 2030400637033814 | DDGPM3008A | Enter your Updated PAN |

  @emi2
  Scenario Outline:  To verify PAN Individual through EMI Card on unsuccessful NSDL response
    When  Customer is on Verification method page
    Then On the basis of button selection "<Button>", the button selected should be enabled and clickable & the color of button should be changed to blue color
    Then Customer enters valid details "<EMI Number>" for "<Button>" Text Box and Clicking "Proceed" button, Customer should be redirected to Update PAN Page for NSDL verification
    Then On entering valid "<PAN Number>" for input "<Pan Field>" and Clicking "Verify" button, Select Verification Mode should be displayed
    Then On clicking Visit Branch & show nearby branches, Customer should be redirected to store locator page "<Locator page URL>"
    Then On Clicking Self Attested Pan Card Button, User should find fields- Upload Pan Card, Upload arrow & Submit Button
    Then On uploading Invalid files, Customer should get- Invalid file message
    Then On Uploading valid files, Customer should get a bin , tick mark and a message
    Then On Clicking Submit button after uploading a valid file, Customer should get a message

    Examples:
      | Button         | EMI Number       | PAN Number | Pan Field               | Locator page URL                          |
      | Insta EMI Card | 2030400637033814 | DDGPL0091G | Enter your Updated PAN | https://www.bajajfinserv.in/branch-locator |
#      | Insta EMI Card | 2030400637033814 | DDGPM3008A | Enter your Updated PAN | https://www.bajajfinserv.in/branch-locator |

  @bank1
########BANK ACCOUNT NUMBER
  Scenario Outline: To verify Pan Individual through Bank Account with NSDL PAN flow
    When  Customer is on Verification method page
    Then On the basis of button selection "<Button>", the button selected should be enabled and clickable & the color of button should be changed to blue color
    Then Verify the Bank Account with different Negative values
    Then Customer enters valid details "<Bank Acc Number>" for "<Button>" Text Box and Clicking "Proceed" button, Customer should be redirected to Update PAN Page for NSDL verification
    Then Customer should find the below content on Update Pan Page
    Then Verify Invalid Pan is not accepted
    Then On entering valid "<PAN Number>" for input "<Pan Field>" and Clicking "Verify" button, Customer should get a Success message

    Examples:
      | Button       | Bank Acc Number | PAN Number | Pan Field               |
#      | Bank Account | 0161000101479349     | AKPHB2548D | Enter your Updated PAN |
      | Bank Account | 0161000101479349     | DDGPM3008A | Enter your Updated PAN |

  @bank2
  Scenario Outline:  To verify PAN Individual through Bank Account on unsuccessful NSDL response
    When  Customer is on Verification method page
    Then On the basis of button selection "<Button>", the button selected should be enabled and clickable & the color of button should be changed to blue color
    Then Customer enters valid details "<Bank Acc Number>" for "<Button>" Text Box and Clicking "Proceed" button, Customer should be redirected to Update PAN Page for NSDL verification
    Then On entering valid "<PAN Number>" for input "<Pan Field>" and Clicking "Verify" button, Select Verification Mode should be displayed
    Then On clicking Visit Branch & show nearby branches, Customer should be redirected to store locator page "<Locator page URL>"
    Then On Clicking Self Attested Pan Card Button, User should find fields- Upload Pan Card, Upload arrow & Submit Button
    Then On uploading Invalid files, Customer should get- Invalid file message
    Then On Uploading valid files, Customer should get a bin , tick mark and a message
    Then On Clicking Submit button after uploading a valid file, Customer should get a message


    Examples:
      | Button       | Bank Acc Number | PAN Number | Pan Field               | Locator page URL                          |
      | Bank Account | 0161000101479349     | DDGPL0091G | Enter your Updated PAN | https://www.bajajfinserv.in/branch-locator |
#      | Bank Account | 0161000101479349     | DDGPM3008A | Enter your Updated PAN | https://www.bajajfinserv.in/branch-locator |

  @dob1
##########DATE OF BIRTH

  Scenario Outline: To verify Pan Individual through Date of Birth with NSDL PAN flow
    When  Customer is on Verification method page
    Then On the basis of button selection "<Button>", the button selected should be enabled and clickable & the color of button should be changed to blue color
    Then Verify the DOB with different Negative values
    And Customer enters valid details "<Birth Date>" for "<Button>" Text Box and Clicking "Proceed" button, Customer should be redirected to Update PAN Page for NSDL verification
    Then Customer should find the below content on Update Pan Page
    Then Verify Invalid Pan is not accepted
    Then On entering valid "<PAN Number>" for input "<Pan Field>" and Clicking "Verify" button, Customer should get a Success message

    Examples:
      | Button        | Birth Date | PAN Number | Pan Field               |
#      | Date of Birth | 22061978 | AKPHB2548D | Enter your Updated PAN |
      | Date of Birth | 22061978 | DDGPM3008A | Enter your Updated PAN |

  @dob2
  Scenario Outline:  To verify PAN Individual through Date of Birth on unsuccessful NSDL response
    When  Customer is on Verification method page
    Then On the basis of button selection "<Button>", the button selected should be enabled and clickable & the color of button should be changed to blue color
    And Verify the DOB with different Negative values
    And Customer enters valid details "<Birth Date>" for "<Button>" Text Box and Clicking "Proceed" button, Customer should be redirected to Update PAN Page for NSDL verification
    And Verify Invalid Pan is not accepted
    And On entering valid "<PAN Number>" for input "<Pan Field>" and Clicking "Verify" button, Select Verification Mode should be displayed
    And On clicking Visit Branch & show nearby branches, Customer should be redirected to store locator page "<Locator page URL>"
    And On Clicking Self Attested Pan Card Button, User should find fields- Upload Pan Card, Upload arrow & Submit Button
    And On uploading Invalid files, Customer should get- Invalid file message
    And On Uploading valid files, Customer should get a bin , tick mark and a message
    And On Clicking Submit button after uploading a valid file, Customer should get a message

    Examples:
      | Button        | Birth Date | PAN Number | Pan Field               | Locator page URL                          |
      | Date of Birth | 22061978   | DMOPM3561N | Enter your Updated PAN | https://www.bajajfinserv.in/branch-locator |