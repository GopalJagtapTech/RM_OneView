Feature: FD Services RHS - PreMature WithDrawal



  Scenario Outline: FD RHS - Premature Withdrawal - TO verify Customer is eligible for premature withdrawal if tenor is more than 30 month for FD
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
    And Verify Tenure is More than 30 Months
    Then verify RHS "Quick Actions" following Options: "Premature Withdrawal" are Displayed
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number |
      | 8510004929    | 19091970 | Individual    | 416421     |

  Scenario Outline: FD RHS - Premature Withdrawal - TO verify Customer is eligible for premature withdrawal if renewal is marked
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
    And Verify Renewal status should be Renewed
    Then verify RHS "Quick Actions" following Options: "Premature Withdrawal" are Displayed
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number |
      | 8510004929    | 19091970 | Individual    | 416421     |


  Scenario Outline: FD RHS - Premature Withdrawal - To verify Pop-up window is displayed for withdrawal when customer click on Premature withdrawal
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
    And Customer Click on "Premature Withdrawal" CTA in RHS
    And verify "In urgent need of money?" "Popup Header Text" is Displayed
    And verify "Tap on proceed to apply for a loan against this Fixed Deposit." "Popup Text" is Displayed
    And Verify "Withdraw Button in Pre Mature Withdraw popup" is Displayed
    And Verify "Proceed Button in Pre Mature Withdraw popup" is Displayed
    And Verify "Close Icon in Pre Mature Withdraw In urgent need of money popup" is Displayed
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number |
      | 8510004929    | 19091970 | Individual    | 496696     |

  Scenario Outline: FD RHS - Premature Withdrawal - To verify customer is redirected to apply for a loan against FD page when customer click on Proceed CTA
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
    And Customer Click on "Premature Withdrawal" CTA in RHS
    And verify "In urgent need of money?" "Popup Header Text" is Displayed
    And Clicks on "Proceed Button in Pre Mature Withdraw popup"
    And Verify Customer Redirected to "MyAccountFixedDeposit/FActa/FactaForm" Url
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number |
      | 8510004929    | 19091970 | Individual    | 496696     |

  Scenario Outline: FD RHS - Premature Withdrawal - To verify customer is redirected to apply for a loan against FD page when customer click on Proceed CTA
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
    And Customer Click on "Premature Withdrawal" CTA in RHS
    And verify "In urgent need of money?" "Popup Header Text" is Displayed
    And Clicks on "Withdraw Button in Pre Mature Withdraw popup"
    And Verify Customer Redirected to "MyAccountFixedDeposit/FActa/FactaForm" Url
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number |
      | 8510004929    | 19091970 | Individual    | 496696     |

  Scenario Outline: FD RHS - Premature Withdrawal - To verify validation message is displayed when customer having FD but not eligible for LAFD and click on proceed CTA
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
    And Customer Click on "Premature Withdrawal" CTA in RHS
    And verify "Unable to proceed" "Popup Header Text" is Displayed
    And verify "Your Fixed Deposit has been put on Lien/Hold. Please visit our Nearest Branch." "Popup Text" is Displayed
    And Verify "Got It Button in Pre Mature Withdraw popup" is Displayed
    And Verify "Close Icon in Pre Mature Withdraw In Unable to proceed popup" is Displayed
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number |
      | 8510004929    | 19091970 | Individual    | 496696     |


#  Scenario Outline: FD RHS - Premature Withdrawal - TO verify Premature Withdrawal is not available in <FD Status> Customers
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User is on Home Page
#    And Customer is able to view My Relations Section to ETB Customers
#    And Customer clicks on view all option
#    And My relations Page should be displayed
#    And click on "Deposits" tab
#    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
#    Then verify Redirection using Account number "<Acc Number>"
#    Then verify RHS "Quick Actions" following Options are Not Displayed: "Submit Premature Withdrawal"
#    Examples:
#      | Mobile Number | Date     | Customer Type | Acc Number |FD Status|
#      | 8800384932    | 19091970 | Individual    | 416421     |Pre-Matured|
#      | 9998135293    | 19091970 | Individual    | 640796     |Matured FD |


  Scenario Outline: FD RHS - Premature Withdrawal - TO verify Premature Withdrawal Redirection
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
    And Customer Click on "Submit Premature Withdrawal" CTA in RHS
    Then verify Redirection for "with SSO": "MyAccountFixedDeposit/FActa/FactaForm"
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number |
      | 8800384932    | 19091970 | Individual    | 416421     |

  Scenario Outline: FD RHS - Premature Withdrawal - TO verify Premature Withdrawal Page Fileds for Toggle "NO"
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
    And Customer Click on "Submit Premature Withdrawal" CTA in RHS
    And Verify Customer Redirected to "MyAccountFixedDeposit/FActa/FactaForm" Url
    And Click on FACTA Form "Are you a citizen or tax resident of any country other than India?" Toggle Button: "NO"
    And verify "FATCA Self-Declaration form – Individuals and HUF Customer" "Text" is Displayed
    And verify "Every depositor must submit a FATCA/CRS declaration to financial institutions, informing them about their citizenship and tax residency status. The financial institution requires the same for preparing an annual report on the financial account held directly or indirectly by a US citizen or a person with tax residency outside India." "Text" is Displayed
    And Verify "T&C CheckBox in FATCA Page" is Displayed
    And verify "I certify that the information provided above is in accordance with section 285BA of the Income Tax Act, 1961 read with Rules 114F to 114H of the Income Tax Rules, 1962. I undertake to inform BFL timely and in writing, any change in status of my citizenship, nationality or tax residence" "Text" is Displayed
    And Verify "Generate OTP Button in FATCA Page" is Displayed
    And Verify "Cancel Button in FATCA Page" is Displayed
    Then verify RHS "Need help?" following Options: "Help and Support, Document Center" are Displayed
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number |
      | 8800384932    | 19091970 | Individual    | 416421     |

  Scenario Outline: FD RHS - Premature Withdrawal - TO verify Generate OTP Button for Toggle NO Button
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
    And Customer Click on "Submit Premature Withdrawal" CTA in RHS
    And Verify Customer Redirected to "MyAccountFixedDeposit/FActa/FactaForm" Url
    And Click on FACTA Form "Are you a citizen or tax resident of any country other than India?" Toggle Button: "NO"
    And "Generate OTP Button in FATCA Page" is Disabled
    And Clicks on "T&C CheckBox in FATCA Page"
    And "Generate OTP Button in FATCA Page" is Enabled
        Examples:
      | Mobile Number | Date     | Customer Type | Acc Number |
      | 8800384932    | 19091970 | Individual    | 416421     |

  Scenario Outline: FD RHS - Premature Withdrawal - TO verify Cancel Button
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
    And Customer Click on "Submit Premature Withdrawal" CTA in RHS
    And Verify Customer Redirected to "MyAccountFixedDeposit/FActa/FactaForm" Url
    And Click on FACTA Form "Are you a citizen or tax resident of any country other than India?" Toggle Button: "NO"
    And Clicks on "Cancel Button in FATCA Page"
    And verify Redirection for "with SSO": "/MyAccountFixedDeposit/FixedDeposit/Index?"
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number |
      | 8800384932    | 19091970 | Individual    | 416421     |

  Scenario Outline: FD RHS - Premature Withdrawal - TO verify Premature Withdrawal Page Fields for Toggle "YES"
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
    And Customer Click on "Submit Premature Withdrawal" CTA in RHS
    And Verify Customer Redirected to "MyAccountFixedDeposit/FActa/FactaForm" Url
    And Click on FACTA Form "Are you a citizen or tax resident of any country other than India?" Toggle Button: "YES"
    And verify "FATCA Self-Declaration form – Individuals and HUF Customer" "Text" is Displayed
    And verify "Every depositor must submit a FATCA/CRS declaration to financial institutions, informing them about their citizenship and tax residency status. The financial institution requires the same for preparing an annual report on the financial account held directly or indirectly by a US citizen or a person with tax residency outside India." "Text" is Displayed
    And verify "Country of Citizenship" "Text Box" is Displayed
    And verify "Country of Tax Residency" "Text Box" is Displayed
    And verify "Choose Identification Type" "Drop down Label" is Displayed
    And verify "Enter Identification Number" "Text Box" is Displayed
    And verify "Address Line 1" "Text Box" is Displayed
    And verify "Address Line 2" "Text Box" is Displayed
    And verify "PIN Code" "Text Box" is Displayed
    And verify "City" "Text Box" is Displayed
    And verify "State" "Text Box" is Displayed
    And verify "Declaration:-" "Text" is Displayed
    And Verify "T&C CheckBox in FATCA Page" is Displayed
    And verify "I certify that the information provided above is in accordance with section 285BA of the Income Tax Act, 1961 read with Rules 114F to 114H of the Income Tax Rules, 1962. I undertake to inform BFL timely and in writing, any change in status of my citizenship, nationality or tax residence" "Text" is Displayed
    And Verify "Generate OTP Button in FATCA Page" is Displayed
    And Verify "Cancel Button in FATCA Page" is Displayed
    Then verify RHS "Need help?" following Options: "Help and Support, Document Center" are Displayed
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number |
      | 8800384932    | 19091970 | Individual    | 416421     |

  Scenario Outline: FD RHS - Premature Withdrawal - TO verify Premature Withdrawal Page Fields Error Message for Blank Values
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
    And Customer Click on "Submit Premature Withdrawal" CTA in RHS
    And Verify Customer Redirected to "MyAccountFixedDeposit/FActa/FactaForm" Url
    And Click on FACTA Form "Are you a citizen or tax resident of any country other than India?" Toggle Button: "YES"
    And Clicks on "T&C CheckBox in FATCA Page"
    And Clicks on "Generate OTP Button in FATCA Page"
    Then "Enter Your Country" Error Message is Displayed for "Country of Citizenship" Text Box
    Then "Enter the country of your tax residency" Error Message is Displayed for "Country of Tax Residency" Text Box
    Then "Enter Your Address Line 1" Error Message is Displayed for "Address Line 1" Text Box
    Then "Enter Your Address Line 2" Error Message is Displayed for "Address Line 2" Text Box
    Then "Enter Your Pincode" Error Message is Displayed for "PIN Code" Text Box
    Then "Enter Your City" Error Message is Displayed for "City" Text Box
    Then "Enter Your State" Error Message is Displayed for "State" Text Box
    And Verify "Please upload your file Error Message in FATCA Upload Field" is Displayed
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number |
      | 8800384932    | 19091970 | Individual    | 416421     |

  Scenario Outline: FD RHS - Premature Withdrawal - TO verify Premature Withdrawal Page Upload Document field
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
    And Customer Click on "Submit Premature Withdrawal" CTA in RHS
    And Verify Customer Redirected to "MyAccountFixedDeposit/FActa/FactaForm" Url
    And verify "Taxpayer Identification Number" "Text" is Displayed
    And verify "You may upload a file in .png, .pdf or .jpg format. Maximum file size: 1 MB" "Text" is Displayed
    And verify "Upload a copy of your TIN" "Text" is Displayed
    And Verify "Upload Icon in FATCA Page" is Displayed
    And Upload "Documents/FatcaValidDocs/Capture.JPG" File in "Upload Icon in FATCA Page"
    Then verify File Name "Capture.JPG" Displayed in "FATCA File Upload Field"
    And Verify "Delete Icon in FATCA Page" is Displayed
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number |
      | 8800384932    | 19091970 | Individual    | 416421     |

  Scenario Outline: FD RHS - Premature Withdrawal - TO validate Premature Withdrawal Page Upload Document Field with Valid Files
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
    And Customer Click on "Submit Premature Withdrawal" CTA in RHS
    And Verify Customer Redirected to "MyAccountFixedDeposit/FActa/FactaForm" Url
    And Verify "Upload Icon in FATCA Page" is Displayed
    And Upload "Documents/FatcaValidDocs/Capture.JPG" File in "Upload Icon in FATCA Page"
    Then verify File Name "Capture.JPG" Displayed in "FATCA File Upload Field"
    And Verify "Delete Icon in FATCA Page" is Displayed
    And Clicks on "Delete Icon in FATCA Page"
    And verify "Upload a copy of your TIN" "Text" is Displayed
    And Upload "Documents\FatcaValidDocs\Pdfim.pdf" File in "Upload Icon in FATCA Page"
    Then verify File Name "Capture.JPG" Displayed in "FATCA File Upload Field"
    And Verify "Delete Icon in FATCA Page" is Displayed
    And Clicks on "Delete Icon in FATCA Page"
    And verify "Upload a copy of your TIN" "Text" is Displayed
    And Upload "Documents\FatcaValidDocs\embedded28.png" File in "Upload Icon in FATCA Page"
    Then verify File Name "Capture.JPG" Displayed in "FATCA File Upload Field"
    And Verify "Delete Icon in FATCA Page" is Displayed
    And Clicks on "Delete Icon in FATCA Page"
    And verify "Upload a copy of your TIN" "Text" is Displayed
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number |
      | 8800384932    | 19091970 | Individual    | 416421     |

  Scenario Outline: FD RHS - Premature Withdrawal - TO validate Premature Withdrawal Page Upload Document Field with InValid File Size
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
    And Customer Click on "Submit Premature Withdrawal" CTA in RHS
    And Verify Customer Redirected to "MyAccountFixedDeposit/FActa/FactaForm" Url
    And Verify "Upload Icon in FATCA Page" is Displayed
    And Upload "Documents/FatcaInValidDocs/ReImaginePdfReport.pdf" File in "Upload Icon in FATCA Page"
    And Verify "Upload error. Please upload your file in .pdf, .png or .jpg format. Maximum file size: 1 MB Error Message in FATCA Upload Field" is Displayed
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number |
      | 8800384932    | 19091970 | Individual    | 416421     |

  Scenario Outline: FD RHS - Premature Withdrawal - TO validate Premature Withdrawal Page Upload Document Field with InValid File Format
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
    And Customer Click on "Submit Premature Withdrawal" CTA in RHS
    And Verify Customer Redirected to "MyAccountFixedDeposit/FActa/FactaForm" Url
    And Verify "Upload Icon in FATCA Page" is Displayed
    And Upload "Documents/FatcaInValidDocs/ReImagineSparkReport.html" File in "Upload Icon in FATCA Page"
    And Verify "Upload failed Error Message in FATCA" is Displayed
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number |
      | 8800384932    | 19091970 | Individual    | 416421     |




  Scenario Outline: FD RHS - Premature Withdrawal - TO verify Premature Withdrawal Positive Flow with Toggle "YES"
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
    And Customer Click on "Submit Premature Withdrawal" CTA in RHS
    And Verify Customer Redirected to "MyAccountFixedDeposit/FActa/FactaForm" Url
    And Click on FACTA Form "Are you a citizen or tax resident of any country other than India?" Toggle Button: "YES"
    And Type "India" in "Country of Citizenship" Text Box
    And Type "India" in "Country of Tax Residency" Text Box
    And Select "Driving License" Option in "Choose Identification Type Dropdown"
    And Type "RJ1320120123456" in "Enter Identification Number" Text Box
    And Type "No. 1" in "Address Line 1" Text Box
    And Type "TVS Nagar" in "Address Line 2" Text Box
    And Type "600097" in "PIN Code" Text Box
    And Type "Chennai" in "City" Text Box
    And Type "Tamilnadu" in "State" Text Box
    And Upload "Documents\FatcaValidDocs\embedded28.png" File in "Upload Icon in FATCA Page"
    And Clicks on "T&C CheckBox in FATCA Page"
    And Clicks on "Generate OTP Button in FATCA Page"
    And Wait 5 seconds
    And verify "OTP Verification" "Text" is Displayed
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number |
      | 8800384932    | 19091970 | Individual    | 416421     |

  Scenario Outline: FD RHS - Premature Withdrawal - TO verify Premature Withdrawal Choose Identification Type Dropdown Options
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
    And Customer Click on "Submit Premature Withdrawal" CTA in RHS
    And Verify Customer Redirected to "MyAccountFixedDeposit/FActa/FactaForm" Url
    And Click on FACTA Form "Are you a citizen or tax resident of any country other than India?" Toggle Button: "YES"
    And Verify following options in "Choose Identification Type Dropdown": "Taxpayer Identification Number, SSN, Driving License, Foreign Passport Number, Any other ID"
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number |
      | 8800384932    | 19091970 | Individual    | 416421     |
    #################### EDIT FLOW #############################

  Scenario Outline: FD RHS - Premature Withdrawal - EDIT - TO verify Premature Withdrawal Positive Flow with Toggle "YES"
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "FIXED DEPOSIT" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
    And Customer Click on "Submit Premature Withdrawal" CTA in RHS
    And Verify Customer Redirected to "MyAccountFixedDeposit/FActa/FactaForm" Url
    And Click on FACTA Form "Are you a citizen or tax resident of any country other than India?" Toggle Button: "YES"
    And Clear the value in "Country of Citizenship" Text Box
    And Clear the value in "Country of Tax Residency" Text Box
    And Clear the value in "Enter Identification Number" Text Box
    And Clear the value in "Address Line 1" Text Box
    And Clear the value in "Address Line 2" Text Box
    And Clear the value in "PIN Code" Text Box
    And Clear the value in "City" Text Box
    And Clear the value in "State" Text Box
    And Clicks on "Delete Icon in FATCA Page"
    And Type "India" in "Country of Citizenship" Text Box
    And Type "India" in "Country of Tax Residency" Text Box
    And Select "Driving License" Option in "Choose Identification Type Dropdown"
    And Type "RJ1320120123456" in "Enter Identification Number" Text Box
    And Type "No. 1" in "Address Line 1" Text Box
    And Type "TVS Nagar" in "Address Line 2" Text Box
    And Type "600097" in "PIN Code" Text Box
    And Type "Chennai" in "City" Text Box
    And Type "Tamilnadu" in "State" Text Box
    And Upload "Documents\FatcaValidDocs\embedded28.png" File in "Upload Icon in FATCA Page"
    And Clicks on "T&C CheckBox in FATCA Page"
    And Clicks on "Generate OTP Button in FATCA Page"
    And Wait 5 seconds
    And verify "OTP Verification" "Text" is Displayed
    And Enter "1" in "OTP Screen Text box 1"
    And Enter "2" in "OTP Screen Text box 2"
    And Enter "3" in "OTP Screen Text box 3"
    And Enter "4" in "OTP Screen Text box 4"
    And Enter "5" in "OTP Screen Text box 5"
    And Enter "6" in "OTP Screen Text box 6"
    And Clicks on "Submit button in FATCA OTP Popup"
    And Wait 5 seconds
    And verify "Declaration submitted successfully" "Text" is Displayed
    And verify "You FATCA declaration has been submitted." "Text" is Displayed
    And verify "FATCA Declaration Successful" "Text" is Displayed
    And verify "Every depositor must submit a FATCA/CRS declaration to the financial institutions, informing them about their citizenship and tax residency status. The financial institution requires the same for preparing an annual report on the financial account held directly or indirectly by a US citizen or a person with tax residency outside India." "Text" is Displayed
    And verify "done" "Button" is Displayed
    And click on "done" Button
    And Wait 5 seconds
    And verify Redirection using Account number "<Acc Number>"
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number |
      | 8800384932    | 19091970 | Individual    | 416421     |
