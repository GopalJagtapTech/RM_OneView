Feature: Profile - PTB

  @pass
  Scenario Outline:  To verify that customer is able to view content on profile landing page

    Given User is logged in "<Mobile Number>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on profile icon
    Then Verify Customer Redirected to "MyAccountService/PTBUserProfile/ProfileUpdate" Url
    And Customer should be able to view Name, Logo, "Permanent Account Number (PAN)" , "Date of Birth" "Salaried, Self-employed, Professional, Others"

    Examples:
      | Mobile Number | Customer Type | DOB      | PAN        |
      | 9584335256    | Individual    | 22061978 | AGPPS9767P |

  @check
  Scenario Outline: To verify that Name added successfully on click of Confirm CTA

    Given User is logged in "<Mobile Number>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on profile icon
    Then Verify Customer Redirected to "MyAccountService/PTBUserProfile/ProfileUpdate" Url
    Then Customer should be able to view Add Name on profile PTB page
    And Clicks Add Name button
    Then Customer should get below popup for adding Name
    Then On entering valid "<Name>" for Name field
    And Clicks Submit button for adding Name
    Then Customer should be redirected to Profile PTB page
    And Entered name "<Name>" should be displayed in the Name Field

    Examples:
      | Mobile Number | Customer Type | DOB      | Name  |
      | 9584335256    | Individual    | 22061978 | Bajaj |

  @pass
  Scenario Outline: To verify that customer lands on profile landing page on click of cancel cta

    Given User is logged in "<Mobile Number>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on profile icon
    Then Verify Customer Redirected to "MyAccountService/PTBUserProfile/ProfileUpdate" Url
    And Customer should be able to view Add Name on profile PTB page
    And Clicks Add Name button
    Then Customer should get below popup for adding Name
    And Clicks Cancel button on add Name Popup
    Then Customer should be redirected to Profile PTB page

    Examples:
      | Mobile Number | Customer Type | DOB      |
      | 9584335256    | Individual    | 22061978 |


  Scenario Outline: To verify that DOB added successfully on click of Confirm CTA

    Given User is logged in "<Mobile Number>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on profile icon
    Then Verify Customer Redirected to "MyAccountService/PTBUserProfile/ProfileUpdate" Url
    Then Customer should be able to view Add DOB on profile PTB page
    And Customer should be able to view edit DOB button if DOB available
    Then Customer should get below popup for DOB
    Then On entering valid "<DOB>" for DOB field
    And Clicks on check box button
    And Clicks Proceed button
    Then Customer should be redirected to ckyc Page
    And Click on Cancel button
    Then Customer should be redirected to Update DOB Page
    And Clicks "Date of Birth" field
    Then On entering valid "<DOB>" for DOB field
    And On Clicking Self Attested Document Button, User should find fields- Select a Document, Upload arrow & Submit Button
    Then Customer should be able to find the List of Upload Documents Supported
    And On clicking a Document type "Aadhaar" from Select a Document
    Then verify Multiple Document Upload section is displayed
    And On clicking "SUBMIT" Button
    Then On uploading valid files for Front page Customer should get a Bin and file should be accepted
    And On uploading valid files for Back page Customer should get a Bin and file should be accepted
    And On Clicking Submit button after uploading a valid file for both Front and Back Page
    Then Customer should get a message for DOB

    Examples:
      | Mobile Number | Customer Type | DOB      |
      | 9584335256    | Individual    | 22061978 |

@check
  Scenario Outline: To verify that Proceed CTA of manual update DOB is disabled when field is empty
    Given User is logged in "<Mobile Number>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on profile icon
    Then Verify Customer Redirected to "MyAccountService/PTBUserProfile/ProfileUpdate" Url
    Then Customer should be able to view Add DOB on profile PTB page
    And Customer should be able to view Add DOB on profile PTB page
    And Clicks Add Date of Birth button on profile PTB page
    Then Customer should get below popup for DOB
    Then On entering valid "<DOB>" for DOB field
    And On entering valid "<DOB>" for Add DOB Popup
    And Clicks on check box button in Add DOB Popup
    And Clicks Proceed button in Add DOB Popup
    Then Customer should be redirected to ckyc Page - "https://emandate-staging.bajajfinserv.in/KYCPOD/KYC/Index"
    And Clicks on "Cancel" Button
    Then Verify Customer Redirected to "MyAccountService/PTBUserProfile/ManualDobEntry" Url
    And Clicks on "SUBMIT" Button

    Then Customer should get Error message "Enter Your Date of Birth"

    Examples:
      | Mobile Number | Customer Type | DOB      |
      | 9584335256    | Individual    | 22061978 |

  @pass
  Scenario Outline: To verify that Proceed CTA is disabled when any check box is unchecked

    Given User is logged in "<Mobile Number>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on profile icon
    Then Verify Customer Redirected to "MyAccountService/PTBUserProfile/ProfileUpdate" Url
    And Customer should be able to view Add DOB on profile PTB page
    And Clicks Add Date of Birth button on profile PTB page
    Then Customer should get below popup for DOB
    Then Customer should be able to view Disabled Proceed CTA when check box is unchecked

    Examples:
      | Mobile Number | Customer Type | DOB      |
      | 9584335256    | Individual    | 22061978 |

  @pass
  Scenario Outline: To verify that customer lands on profile landing page on click of cancel cta - Add DOB

    Given User is logged in "<Mobile Number>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on profile icon
    Then Verify Customer Redirected to "MyAccountService/PTBUserProfile/ProfileUpdate" Url
    And Customer should be able to view Add DOB on profile PTB page
    And Clicks Add Date of Birth button on profile PTB page
    Then Customer should get below popup for DOB
    And Clicks Cancel button in Add DOB Popup
    Then Customer should be redirected to Profile PTB page from Add DOB Popup
    Examples:
      | Mobile Number | Customer Type |
      | 9584335256    | Individual    |

  @check
  Scenario Outline: To verify that validation message is displayed when invalid input is entered in DOB  field

    Given User is logged in "<Mobile Number>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on profile icon
    Then Verify Customer Redirected to "MyAccountService/PTBUserProfile/ProfileUpdate" Url
    Then Customer should be able to view Add DOB on profile PTB page
    And Customer should be able to view Add DOB on profile PTB page
    And Clicks Add Date of Birth button on profile PTB page
    Then Customer should get below popup for DOB
    Then On entering invalid for DOB field validation message should be displayed

    Examples:
      | Mobile Number | Customer Type |
      | 9584335256    | Individual    |
  @check
  Scenario Outline: To verify that validation message is displayed when clicks on submit button without document selection

    Given User is logged in "<Mobile Number>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on profile icon
    Then Verify Customer Redirected to "MyAccountService/PTBUserProfile/ProfileUpdate" Url
    Then Customer should be able to view Add DOB on profile PTB page
    And Customer should be able to view Add DOB on profile PTB page
    And Clicks Add Date of Birth button on profile PTB page
    Then Customer should get below popup for DOB
    Then On entering valid "<DOB>" for DOB field
    And On entering valid "<DOB>" for Add DOB Popup
    And Clicks on check box button in Add DOB Popup
    And Clicks Proceed button in Add DOB Popup
    Then Customer should be redirected to ckyc Page - "https://emandate-staging.bajajfinserv.in/KYCPOD/KYC/Index"
    And Clicks on "Cancel" Button
    Then Verify Customer Redirected to "MyAccountService/PTBUserProfile/ManualDobEntry" Url
    Then On entering valid "<DOB>" for DOB field
    And On Clicking Self Attested Document Button, User should find fields- Select a Document, Upload arrow & Submit Button
    Then Customer should be able to find the List of Upload Documents Supported
    And On clicking a Document type "Aadhaar" from Select a Document
    Then verify Multiple Document Upload section is displayed
    And On clicking "SUBMIT" Button without Document selection, verify Error message is displayed
    And On uploading Invalid flies for Front page, verify Error message is displayed
    And On uploading Invalid flies for Back page, verify Error message is displayed

    Examples:
      | Mobile Number | Customer Type |
      | 9584335256    | Individual    |

    #########PAN

  Scenario Outline: To verify that PAN added successfully on click of Confirm CTA

    Given User is logged in "<Mobile Number>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on profile icon
    Then Verify Customer Redirected to "MyAccountService/PTBUserProfile/ProfileUpdate" Url
    Then Customer should be able to view Add PAN on profile PTB page
    And Customer should be able to view edit PAN button if DOB available
    And Clicks Add " PAN " button
    Then Customer should get below popup for PAN
    And Contents should be properly aligned in the Popup
    And Clicks on check box button
    And Clicks Proceed button
    Then Customer should be redirected to Update PAN Page
    And Clicks "PAN" field
    Then Customer enters valid details "<PAN>" for "<Button>" Text Box and Clicking "Proceed" button, Customer should be redirected to Update PAN Page
    Then Customer should find the below content on Update PAN Page
    Then On clicking Visit Branch & show nearby branches, Customer should be redirected to store locator page "<Locator page URL>"
    And On Clicking Self Attested Document Button, User should find fields- Select a Document, Upload arrow & Submit Button
    Then Customer should be able to find the List of Upload Documents Supported
    And On clicking a Document type "Aadhaar" from Select a Document
    Then verify Multiple Document Upload section is displayed
    And On clicking "SUBMIT" Button without Document selection, verify Error message is displayed
    Then On uploading valid files for Front page Customer should get a Bin and file should be accepted
    And On uploading valid files for Back page Customer should get a Bin and file should be accepted
    And On Clicking Submit button after uploading a valid file for both Front and Back Page
    Then Customer should get a message for PAN

    Examples:
      | Mobile Number | Customer Type |
      | 9584335256    | Individual    |


  Scenario Outline: To verify that Verify CTA is disabled when PAN field is empty

    Given User is logged in "<Mobile Number>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on profile icon
    Then Verify Customer Redirected to "MyAccountService/PTBUserProfile/ProfileUpdate" Url
    Then Customer should be able to view Add PAN on profile PTB page
#    And Customer should be able to view edit PAN button if DOB available
    And Clicks Add " PAN " button
    Then Customer should get below popup for PAN
    And Contents should be properly aligned in the Popup
    And Clicks on check box button
    And Clicks Proceed button
    Then Customer should be redirected to Update PAN Page
    And Clicks "PAN" field
    Then Customer doesn’t enters details "<PAN>" for "<Button>" Text Box and Clicking "Proceed" button, Customer should get a validation message

    Examples:
      | Mobile Number | Customer Type |
      | 9584335256    | Individual    |


  Scenario Outline: To verify that validation message is displayed when other than mentioned file type is uploaded

    Given User is logged in "<Mobile Number>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on profile icon
    Then Verify Customer Redirected to "MyAccountService/PTBUserProfile/ProfileUpdate" Url
    Then Customer should be able to view Add PAN on profile PTB page
    And Customer should be able to view edit PAN button if DOB available
    And Clicks Add " PAN " button
    Then Customer should get below popup for PAN
    And Contents should be properly aligned in the Popup
    And Clicks on check box button
    And Clicks Proceed button
    Then Customer should be redirected to Update PAN Page
    And Clicks "PAN" field
    Then Customer enters valid details "<PAN>" for "<Button>" Text Box and Clicking "Proceed" button, Customer should be redirected to Update PAN Page
    Then Customer should find the below content on Update PAN Page
    Then On clicking Visit Branch & show nearby branches, Customer should be redirected to store locator page "<Locator page URL>"
    And On Clicking Self Attested Document Button, User should find fields- Select a Document, Upload arrow & Submit Button
    Then Customer should be able to find the List of Upload Documents Supported
    And On clicking a Document type "Aadhaar" from Select a Document
    Then verify Multiple Document Upload section is displayed
    And On clicking "SUBMIT" Button without Document selection, verify Error message is displayed
    And On uploading Invalid flies for Front page, verify Error message is displayed
    And On uploading Invalid flies for Back page, verify Error message is displayed

    Examples:
      | Mobile Number | Customer Type |
      | 9584335256    | Individual    |


  Scenario Outline: To verify that customer is able to re-upload documents

    Given User is logged in "<Mobile Number>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on profile icon
    Then Verify Customer Redirected to "MyAccountService/PTBUserProfile/ProfileUpdate" Url
    Then Customer should be able to view Add PAN on profile PTB page
    And Customer should be able to view edit PAN button if DOB available
    And Clicks Add " PAN " button
    Then Customer should get below popup for PAN
    And Contents should be properly aligned in the Popup
    And Clicks on check box button
    And Clicks Proceed button
    Then Customer should be redirected to Update PAN Page
    And Clicks "PAN" field
    Then Customer enters valid details "<PAN>" for "<Button>" Text Box and Clicking "Proceed" button, Customer should be redirected to Update PAN Page
    Then Customer should find the below content on Update PAN Page
    Then On clicking Visit Branch & show nearby branches, Customer should be redirected to store locator page "<Locator page URL>"
    And On Clicking Self Attested Document Button, User should find fields- Select a Document, Upload arrow & Submit Button
    Then Customer should be able to find the List of Upload Documents Supported
    And On clicking a Document type "Aadhaar" from Select a Document
    Then verify Multiple Document Upload section is displayed
    And On clicking "SUBMIT" Button without Document selection, verify Error message is displayed
    Then On uploading valid files for Front page Customer should get a Bin and file should be accepted
    And On uploading valid files for Back page Customer should get a Bin and file should be accepted

    Examples:
      | Mobile Number | Customer Type |
      | 9584335256    | Individual    |

#  @Salaried
  @Salaried @pass
  Scenario Outline: To verify the content on salaried tab
    Given User is logged in "<Mobile Number>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on profile icon
    Then Verify Customer Redirected to "MyAccountService/PTBUserProfile/ProfileUpdate" Url
    Then Customer should be able to view "Salaried" TAB on profile PTB page
    And Clicks "Salaried" Tab on profile PTB page
    Then Customer should be able to view Labels "Company Name, Designation, Years, Months, Net Salary Range LPA(INR), Official Email ID" and Upload Documents, Checkbox "SUBMIT" CTA under Salaried Tab

    Examples:
      | Mobile Number | Customer Type |
      | 9584335256    | Individual    |

  @Salaried @pass
  Scenario Outline: To verify that asterisks are displayed for mandatory fields - Salaried
    Given User is logged in "<Mobile Number>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on profile icon
    Then Verify Customer Redirected to "MyAccountService/PTBUserProfile/ProfileUpdate" Url
    Then Customer should be able to view "Salaried" TAB on profile PTB page
    And Clicks "Salaried" Tab on profile PTB page
    Then Customer should get asterisks on below Content for Salaried "Company Name, Net Salary Range LPA(INR), Official Email ID"

    Examples:
      | Mobile Number | Customer Type |
      | 9584335256    | Individual    |

  @Salaried @pass
  Scenario Outline: To verify that validation message is displayed when more than 2MB file is uploaded in Visiting Card Upload filed - Salaried

    Given User is logged in "<Mobile Number>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on profile icon
    Then Verify Customer Redirected to "MyAccountService/PTBUserProfile/ProfileUpdate" Url
    Then Customer should be able to view "Salaried" TAB on profile PTB page
    And Clicks "Salaried" Tab on profile PTB page
    Then Customer enters valid details for Company Name "Bajaj"
    And Customer enters valid details for Designation "Manager"
    And Select for "2" option under "Years" Drop down of "Salaried" Tab
    And Select for "2" option under "Months" Drop down of "Salaried" Tab
    And Select for "300000 - 500000" option under "Net Salary Range LPA(INR)" Drop down of "Salaried" Tab
    And Customer enters valid details for Official Mail "bajaj@gmail.com"
    And On uploading Invalid flies for Front page for Salaried, verify Error message is displayed
    And On uploading Invalid flies for Back page for Salaried, verify Error message is displayed

    Examples:
      | Mobile Number | Customer Type |
      | 9584335256    | Individual    |

  @Salaried @pass
  Scenario Outline: To verify that validation message is displayed when clicks SUBMIT Button without Document selection - Salaried

    Given User is logged in "<Mobile Number>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on profile icon
    Then Verify Customer Redirected to "MyAccountService/PTBUserProfile/ProfileUpdate" Url
    Then Customer should be able to view "Salaried" TAB on profile PTB page
    And Clicks "Salaried" Tab on profile PTB page
    Then Customer enters valid details for Company Name "Bajaj"
    And Customer enters valid details for Designation "Manager"
    And Select for "2" option under "Years" Drop down of "Salaried" Tab
    And Select for "2" option under "Months" Drop down of "Salaried" Tab
    And Select for "300000 - 500000" option under "Net Salary Range LPA(INR)" Drop down of "Salaried" Tab
    And Customer enters valid details for Official Mail "bajaj@gmail.com"
    And Clicks on check box button under Salaried Tab
    And verify "SUBMIT" CTA is disabled in Profile PTB page

    Examples:
      | Mobile Number | Customer Type |
      | 9584335256    | Individual    |


  @Salaried
  Scenario Outline: To verify after clicking on Submit button when entered all the mandatory details success message is displayed- Salaried

    Given User is logged in "<Mobile Number>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on profile icon
    Then Verify Customer Redirected to "MyAccountService/PTBUserProfile/ProfileUpdate" Url
    Then Customer should be able to view "Salaried" TAB on profile PTB page
    And Clicks "Salaried" Tab on profile PTB page
    Then Customer enters valid details for Company Name "Bajaj"
    And Customer enters valid details for Designation "Manager"
    And Select for "2" option under "Years" Drop down of "Salaried" Tab
    And Select for "2" option under "Months" Drop down of "Salaried" Tab
    And Select for "300000 - 500000" option under "Net Salary Range LPA(INR)" Drop down of "Salaried" Tab
    And Customer enters valid details for Official Mail "bajaj@gmail.com"
    Then On uploading valid files for Front page for Salaried, Customer should get a Bin and file should be accepted
    And On uploading valid files for Back page for Salaried, Customer should get a Bin and file should be accepted
    And On uploading valid file for both Front and Back Page for Salaried
    And verify "SUBMIT" CTA is disabled in Profile PTB page
    And Clicks on check box button under Salaried Tab
    And verify "SUBMIT" CTA is enabled in Profile PTB page
    Then Customer should get a message for PAN

    Examples:
      | Mobile Number | Customer Type |
      | 9584335256    | Individual    |



#  @SelfEmployed
  @self @pass
  Scenario Outline: To verify the content on Self Employed tab - Self
    Given User is logged in "<Mobile Number>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on profile icon
    Then Verify Customer Redirected to "MyAccountService/PTBUserProfile/ProfileUpdate" Url
    And Customer should be able to view "Self-employed" TAB on profile PTB page
    And Clicks "Self-employed" Tab on profile PTB page
    Then Customer should be able to view "Entity Name, Business Structure, Years, Months, Business Type, GST Number, Turnover range (INR)" , Document Uploads, Checkbox, "SUBMIT" CTA under Self Employed Tab

    Examples:
      | Mobile Number | Customer Type |
      | 9584335256    | Individual    |

  @self @pass
  Scenario Outline: To verify that asterisks are displayed for mandatory fields - Self Employed
    Given User is logged in "<Mobile Number>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on profile icon
    Then Verify Customer Redirected to "MyAccountService/PTBUserProfile/ProfileUpdate" Url
    And Customer should be able to view "Self-employed" TAB on profile PTB page
    And Clicks "Self-employed" Tab on profile PTB page
    Then Customer should get asterisks on below Content for Self Employed "Entity Name, Business Structure, Business Type"
    And Customer should get asteriks for Header Options "Upload Business Registration Certificate/ GST Return"
    Examples:
      | Mobile Number | Customer Type |
      | 9584335256    | Individual    |

  @self @pass
  Scenario Outline: To verify that validation message is displayed when more than 2MB file is uploaded in Visiting Card Upload filed- Self Employed

    Given User is logged in "<Mobile Number>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on profile icon
    Then Verify Customer Redirected to "MyAccountService/PTBUserProfile/ProfileUpdate" Url
    And Customer should be able to view "Self-employed" TAB on profile PTB page
    And Clicks "Self-employed" Tab on profile PTB page
    And Enters Entity Name "Bajaj" for Self Employed
    And Select for "Proprietorship" option under "Business Structure" Drop down of "Self-employed" Tab
    And Select for "5" option under "Years" Drop down of "Self-employed" Tab
    And Select for "5" option under "Months" Drop down of "Self-employed" Tab
    And Select for "Trading" option under "Business Type" Drop down of "Self-employed" Tab
    And Select for "0 to 50 Lacs" option under "Turnover range (INR)" Drop down of "Self-employed" Tab
    And Enters GST Number "IGST" in Self Employed
    And On uploading Invalid flies for Front page for Self Employed, verify Error message is displayed
    And On uploading Invalid flies for Back page for Self Employed, verify Error message is displayed

    Examples:
      | Mobile Number | Customer Type |
      | 9584335256    | Individual    |

  @self @pass
  Scenario Outline: To verify that validation message is displayed when clicks SUBMIT Button without Document selection - Self Employed

    Given User is logged in "<Mobile Number>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on profile icon
    Then Verify Customer Redirected to "MyAccountService/PTBUserProfile/ProfileUpdate" Url
    And Customer should be able to view "Self-employed" TAB on profile PTB page
    And Clicks "Self-employed" Tab on profile PTB page
    And Enters Entity Name "Bajaj" for Self Employed
    And Select for "Proprietorship" option under "Business Structure" Drop down of "Self-employed" Tab
    And Select for "5" option under "Years" Drop down of "Self-employed" Tab
    And Select for "5" option under "Months" Drop down of "Self-employed" Tab
    And Select for "Trading" option under "Business Type" Drop down of "Self-employed" Tab
    And Select for "0 to 50 Lacs" option under "Turnover range (INR)" Drop down of "Self-employed" Tab
    And Enters GST Number "IGST" in Self Employed
    And Clicks on check box button under Self-employed Tab
    And verify "SUBMIT" CTA is disabled in Profile PTB page

    Examples:
      | Mobile Number | Customer Type |
      | 9584335256    | Individual    |


  @self
  Scenario Outline: To verify after clicking on Submit button when entered all the mandatory details success message is displayed - Self Employed

    Given User is logged in "<Mobile Number>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on profile icon
    Then Verify Customer Redirected to "MyAccountService/PTBUserProfile/ProfileUpdate" Url
    And Customer should be able to view "Self-employed" TAB on profile PTB page
    And Clicks "Self-employed" Tab on profile PTB page
    And Clicks "Self-employed" Tab on profile PTB page
    And Enters Entity Name "Bajaj" for Self Employed
    And Select for "Proprietorship" option under "Business Structure" Drop down of "Self-employed" Tab
    And Select for "5" option under "Years" Drop down of "Self-employed" Tab
    And Select for "5" option under "Months" Drop down of "Self-employed" Tab
    And Select for "Trading" option under "Business Type" Drop down of "Self-employed" Tab
    And Select for "0 to 50 Lacs" option under "Turnover range (INR)" Drop down of "Self-employed" Tab
    And Enters GST Number "IGST" in Self Employed
    Then On uploading valid files for Front page for Self Employed, Customer should get a Bin and file should be accepted
    And On uploading valid files for Back page for Self Employed, Customer should get a Bin and file should be accepted
    And On uploading valid file for both Front and Back Page for Self Employed
    And verify "SUBMIT" CTA is disabled in Profile PTB page
    And Clicks on check box button under Self-employed Tab
    And verify "SUBMIT" CTA is enabled in Profile PTB page
    Then Customer should get a message for Self Employed

    Examples:
      | Mobile Number | Customer Type |
      | 9584335256    | Individual    |



#  @Professional
  @Professional @pass
  Scenario Outline: To verify the content on Professional tab
    Given User is logged in "<Mobile Number>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on profile icon
    Then Verify Customer Redirected to "MyAccountService/PTBUserProfile/ProfileUpdate" Url
    And Customer should be able to view "Professional" TAB on profile PTB page
    And Clicks "Professional" Tab on profile PTB page
    Then Customer should be able to view "Profession, Medical Degree, Medical Specialization number, Years, Months" ,Upload Document, Checkbox "SUBMIT" CTA under Professional Tab

    Examples:
      | Mobile Number | Customer Type |
      | 9584335256    | Individual    |

  @Professional @pass
  Scenario Outline: To verify that asterisks are displayed for mandatory fields - Professional

    Given User is logged in "<Mobile Number>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on profile icon
    Then Verify Customer Redirected to "MyAccountService/PTBUserProfile/ProfileUpdate" Url
    And Customer should be able to view "Professional" TAB on profile PTB page
    And Clicks "Professional" Tab on profile PTB page
    Then Customer should get asterisks on below Content for Professional "Profession, Years, Months" and "Current work experience, Upload Degree Certificate/Visiting Card"

    Examples:
      | Mobile Number | Customer Type |
      | 9584335256    | Individual    |

  @Professional @pass
  Scenario Outline: To verify that validation message is displayed when more than 2MB file is uploaded in Visiting Card Upload filed - Invalid files - Professioanal

    Given User is logged in "<Mobile Number>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on profile icon
    Then Verify Customer Redirected to "MyAccountService/PTBUserProfile/ProfileUpdate" Url
    And Customer should be able to view "Professional" TAB on profile PTB page
    And Clicks "Professional" Tab on profile PTB page
    And Select for "Doctor" option under "Profession" Drop down of "Professional" Tab
    And Select for "B.V.Sc" option under "Medical Degree" Drop down of "Professional" Tab
    And Select for "Veterinary" option under "Medical Specialisation" Drop down of "Professional" Tab
    And Enters the Membership Number "12345" under Professional Tab
    And Select for "1" option under "Years" Drop down of "Professional" Tab
    And Select for "1" option under "Months" Drop down of "Professional" Tab
    And On uploading Invalid flies for Front page for Professional, verify Error message is displayed
    And On uploading Invalid flies for Back page for Professional, verify Error message is displayed

    Examples:
      | Mobile Number | Customer Type |
      | 9584335256    | Individual    |

  @Professional @pass
  Scenario Outline: To verify that validation message is displayed when clicks SUBMIT Button without Document selection - Professioanal

    Given User is logged in "<Mobile Number>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on profile icon
    Then Verify Customer Redirected to "MyAccountService/PTBUserProfile/ProfileUpdate" Url
    And Customer should be able to view "Professional" TAB on profile PTB page
    And Clicks "Professional" Tab on profile PTB page
    And Select for "CA" option under "Profession" Drop down of "Professional" Tab
    And Enters the Membership Number "12345" under Professional Tab
    And Select for "1" option under "Years" Drop down of "Professional" Tab
    And Select for "1" option under "Months" Drop down of "Professional" Tab
    And Clicks on check box button under Professional Tab
    And verify "SUBMIT" CTA is disabled in Profile PTB page

    Examples:
      | Mobile Number | Customer Type |
      | 9584335256    | Individual    |


  @Professional
  Scenario Outline: To verify after clicking on Submit button when entered all the mandatory details success message is displayed- Professioanal

    Given User is logged in "<Mobile Number>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on profile icon
    Then Verify Customer Redirected to "MyAccountService/PTBUserProfile/ProfileUpdate" Url
    And Customer should be able to view "Professional" TAB on profile PTB page
    And Clicks "Professional" Tab on profile PTB page
    And Select for "Doctor" option under "Profession" Drop down of "Professional" Tab
    And Select for "B.V.Sc" option under "Medical Degree" Drop down of "Professional" Tab
    And Select for "Veterinary" option under "Medical Specialisation" Drop down of "Professional" Tab
    And Enters the Membership Number "12345" under Professional Tab
    And Select for "1" option under "Years" Drop down of "Professional" Tab
    And Select for "1" option under "Months" Drop down of "Professional" Tab
    Then On uploading valid files for Front page for Professional, Customer should get a Bin and file should be accepted
    And On uploading valid files for Back page for Professional, Customer should get a Bin and file should be accepted
    And On uploading valid file for both Front and Back Page for Professional
    And verify "SUBMIT" CTA is disabled in Profile PTB page
    And Clicks on check box button under Professional Tab
    And verify "SUBMIT" CTA is enabled in Profile PTB page
    Then Customer should get a message for Professional

    Examples:
      | Mobile Number | Customer Type |
      | 9584335256    | Individual    |



#  @Others

  @Others @pass
  Scenario Outline: To verify the content on Others tab
    Given User is logged in "<Mobile Number>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on profile icon
    Then Verify Customer Redirected to "MyAccountService/PTBUserProfile/ProfileUpdate" Url
    And Customer should be able to view "Others" TAB on profile PTB page
    And Clicks "Others" Tab on profile PTB page
    Then Customer should be able to view "Share details about the nature of your work" ,Checkbox, "SUBMIT" CTA under Others Tab


    Examples:
      | Mobile Number | Customer Type |
      | 9584335256    | Individual    |


  @Others @pass
  Scenario Outline: To verify that asterisks are displayed for mandatory fields - Others
    Given User is logged in "<Mobile Number>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on profile icon
    Then Verify Customer Redirected to "MyAccountService/PTBUserProfile/ProfileUpdate" Url
    And Customer should be able to view "Others" TAB on profile PTB page
    And Clicks "Others" Tab on profile PTB page
    Then Customer should get asterisks on below Content for Description Box - "Share details about the nature of your work"

    Examples:
      | Mobile Number | Customer Type |
      | 9584335256    | Individual    |

  @Others @pass
  Scenario Outline: To verify that validation message is displayed when more than 100 characters entered - Others

    Given User is logged in "<Mobile Number>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on profile icon
    Then Verify Customer Redirected to "MyAccountService/PTBUserProfile/ProfileUpdate" Url
    And Customer should be able to view "Others" TAB on profile PTB page
    And Clicks "Others" Tab on profile PTB page
    Then Customer enters more than 125 characters for Description Box
    Then Customer should get Validation message - "Please enter a description of up to 125 characters"


    Examples:
      | Mobile Number | Customer Type |
      | 9584335256    | Individual    |


  @Others
  Scenario Outline: To verify after clicking on Submit button when entered all the mandatory details success message is displayed- Others

    Given User is logged in "<Mobile Number>" "<DOB>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on profile icon
    Then Verify Customer Redirected to "MyAccountService/PTBUserProfile/ProfileUpdate" Url
    And Customer should be able to view "Others" TAB on profile PTB page
    And Clicks "Others" Tab on profile PTB page
    And verify "SUBMIT" CTA is disabled in Profile PTB page
    Then Customer enters valid details "Bajaj" in Desciption field
    And Clicks on check box button for Others Tab
    And verify "SUBMIT" CTA is enabled in Profile PTB page
    And On Clicking "SUBMIT" button in Profile PTB page
    Then Customer should get a message for Others


    Examples:
      | Mobile Number | Customer Type |
      | 9584335256    | Individual    |

