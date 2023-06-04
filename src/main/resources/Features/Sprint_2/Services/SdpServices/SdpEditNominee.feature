@Run02022023
Feature: SDP Services Edit Nominee

  @Pass
  Scenario Outline: Edit Nominee - To verify Values Fetched from the Nominee Details in SDP Page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "SYSTEMATIC DEPOSIT PLAN- MMS" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
    And verify below Labels of "Nominee Details" in "SYSTEMATIC DEPOSIT PLAN" Relationship Details: "<Label Names>"
    And click on "Edit Nominee" Button
    And Verify Customer Redirected to "<Edit Nominee Url>" Url
    And Customer Redirected to "Edit Nominee" Page
    Then Verify "Name" in "SDP Nominee Name Text Box" is Fetched from Nominee Details
    And Verify "Relation" in "SDP Nominee Relationship Dropdown" is Fetched from Nominee Details
    And Verify "Date Of Birth" in "SDP Nominee Date of Birth Text Box" is Fetched from Nominee Details
    And Verify "Nominee Address" in "SDP Nominee Address Details" is Fetched from Nominee Details
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number | Edit Nominee Url                           | Label Names                                    |
      | 7709899876    | 19091970 | Individual    | 490364     | MyAccountFixedDeposit/FixedDeposit/Nominee | Name, Relation, Date Of Birth, Nominee Address |

  @Pass
  Scenario Outline: SDP - Edit Nominee - To verify Cancel Button
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "SYSTEMATIC DEPOSIT PLAN- MMS" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
    And click on "Edit Nominee" Button
    And Verify Customer Redirected to "<Edit Nominee Url>" Url
    And Customer Redirected to "Edit Nominee" Page
    And click on "Cancel" Button
    And Verify Customer Redirected to "<Sdp Page Url>" Url
    And "Edit Nominee" Button is Enabled
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number | Edit Nominee Url                           | Sdp Page Url                                |
      | 7709899876    | 19091970 | Individual    | 490364     | MyAccountFixedDeposit/FixedDeposit/Nominee | MyAccountFixedDeposit/SDPDetails/SDPDetails |

  @Pass
  Scenario Outline: SDP - Edit Nominee - To verify RHS
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "SYSTEMATIC DEPOSIT PLAN- MMS" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
    And click on "Edit Nominee" Button
    And Verify Customer Redirected to "<Edit Nominee Url>" Url
    And Customer Redirected to "Edit Nominee" Page
    Then verify RHS for "SDP Edit Nominee" Page
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number | Edit Nominee Url                           |
      | 7709899876    | 19091970 | Individual    | 490364     | MyAccountFixedDeposit/FixedDeposit/Nominee |

  @Pass
  Scenario Outline: SDP - Edit Nominee - To validate Nominee PINCODE Field
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "SYSTEMATIC DEPOSIT PLAN- MMS" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
    And click on "Edit Nominee" Button
    And Verify Customer Redirected to "<Edit Nominee Url>" Url
    And Customer Redirected to "Edit Nominee" Page
    And click on "NO" Toggle button for "Address Details"
    Then verify "SDP Nominee PIN Code Text Box" is Not Accepted for following values: "000000, !, $, %, ^, &, *, (, ), A, a"
    And verify "SDP Nominee PIN Code Text Box" is Accepted following values: "123456, 234567, 345678, 456789, 567890, 678901, 789012, 890123, 901234"
    And Verify "SDP Pincode error Message" for following values: "6, 60, 600, 6000, 60009, 10000" in "SDP Nominee PIN Code Text Box"
    And Verify Not Showing "SDP Pincode error Message" for following values: "600097, 110001, 515001, 282225, 380001, 431701, 700010" in "SDP Nominee PIN Code Text Box"
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number | Edit Nominee Url                           |
      | 7709899876    | 19091970 | Individual    | 490364     | MyAccountFixedDeposit/FixedDeposit/Nominee |

  @Pass
  Scenario Outline: SDP - Edit Nominee - To validate Guardian PINCODE Field
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "SYSTEMATIC DEPOSIT PLAN- MMS" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
    And click on "Edit Nominee" Button
    And Verify Customer Redirected to "<Edit Nominee Url>" Url
    And Customer Redirected to "Edit Nominee" Page
    And Enter "Minor DOB" in "SDP Nominee Date of Birth Text Box"
    And Click on inside the page
    And click on "NO" Toggle button for "Guardian Details"
    Then verify "SDP Guardian PIN Code Text Box" is Not Accepted for following values: "000000, !, $, %, ^, &, *, (, ), A, a"
    And verify "SDP Guardian PIN Code Text Box" is Accepted following values: "123456, 234567, 345678, 456789, 567890, 678901, 789012, 890123, 901234"
    And Verify "SDP Pincode error Message" for following values: "6, 60, 600, 6000, 60009, 10000" in "SDP Guardian PIN Code Text Box"
    And Verify Not Showing "SDP Pincode error Message" for following values: "600097, 110001, 515001, 282225, 380001, 431701, 700010" in "SDP Guardian PIN Code Text Box"
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number | Edit Nominee Url                           |
      | 7709899876    | 19091970 | Individual    | 490364     | MyAccountFixedDeposit/FixedDeposit/Nominee |

  @Pass
  Scenario Outline: SDP - Edit Nominee - To verify Nominee Details Components
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "SYSTEMATIC DEPOSIT PLAN- MMS" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
    And click on "Edit Nominee" Button
    And Verify Customer Redirected to "<Edit Nominee Url>" Url
    And Customer Redirected to "Edit Nominee" Page
    Then Customer able to view "Neither the nominee and joint A/C holders can be the same nor they can be the primary A/C holders" text
    And verify following labels
      | Nominee Name                                               |
      | Date of Birth                                              |
      | Select your relationship                                   |
      | Address Details                                            |
      | Is this address the same as that of the FD account holder? |
      | Address                                                    |
    And verify hint Message "Name should be as per their government IDs" for "Nominee Name"
    And verify hint Message "In case of minors, mention guardian details" for "Date of Birth"
    And verify hint Message "Mention their relation with you" for "Select your relationship"
    And verify "Cancel" "Button" is Displayed
    And verify "Generate OTP" "Button" is Displayed
    # And "Generate OTP" Button is Disabled
    And "YES" button should be default for "Is this address the same as that of the FD account holder?"
    And verify "Address Details" YES Toggle Button
    And verify "SDP Guardian Details Title in Nominee Page" is Not Displayed
    And click on "NO" Toggle button for "Address Details"
    And verify following labels
      | Provide Nominee Address |
      | Address Line 1          |
      | Address Line 2          |
      | PIN Code                |
      | City                    |
      | State                   |
    And verify "Cancel" "Button" is Displayed
    And verify "Generate OTP" "Button" is Displayed
    # And "Generate OTP" Button is Disabled
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number | Edit Nominee Url                           |
      | 7709899876    | 19091970 | Individual    | 490364     | MyAccountFixedDeposit/FixedDeposit/Nominee |

  @Pass
  Scenario Outline: SDP - Edit Nominee - To verify Nominee Full Name Text Box
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "SYSTEMATIC DEPOSIT PLAN- MMS" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
    And click on "Edit Nominee" Button
    And Verify Customer Redirected to "<Edit Nominee Url>" Url
    And Customer Redirected to "Edit Nominee" Page
    Then verify "SDP Nominee Name Text Box" is Not Accepted for following values: "123456789, !@$%^&*(), 123abc, ABC123, A1a2, a!B@"
    And verify "SDP Nominee Name Text Box" is Accepted following values: "Jai, Jai R, R Jai, JaiR, jai R"
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number | Edit Nominee Url                           |
      | 7709899876    | 19091970 | Individual    | 490364     | MyAccountFixedDeposit/FixedDeposit/Nominee |

  @Pass
  Scenario Outline: SDP - Edit Nominee - To verify Nominee Date Of Birth
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "SYSTEMATIC DEPOSIT PLAN- MMS" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
    And click on "Edit Nominee" Button
    And Verify Customer Redirected to "<Edit Nominee Url>" Url
    And Customer Redirected to "Edit Nominee" Page
    Then verify "SDP Nominee DOB Enter Valid date" error message for "SDP Nominee Date of Birth Text Box" Negative Values
    And Verify Not Showing "SDP Nominee DOB Enter Valid date" for following values: "Valid Dates for Minor" in "SDP Nominee Date of Birth Text Box"
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number | Edit Nominee Url                           |
      | 7709899876    | 19091970 | Individual    | 490364     | MyAccountFixedDeposit/FixedDeposit/Nominee |

  @Pass
  Scenario Outline: SDP - Edit Nominee - To verify Nominee Relationship dropdown
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "SYSTEMATIC DEPOSIT PLAN- MMS" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
    And click on "Edit Nominee" Button
    And Verify Customer Redirected to "<Edit Nominee Url>" Url
    And Customer Redirected to "Edit Nominee" Page
    Then verify "Relationship" Dropdown following values: "Father, Mother, Son, Daughter, Brother, Sister, Spouse, Aunt, Brother-in-law, Business partner, Cousin, Daughter-in-law, Father-in-law, Sister-in-law, Friend, Grand Daughter, Grand Son, Grand Father, Grand Mother, Mother-in-law, Nephew, Niece, Relative, Servant, Son-in-law, Uncle"
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number | Edit Nominee Url                           |
      | 7709899876    | 19091970 | Individual    | 490364     | MyAccountFixedDeposit/FixedDeposit/Nominee |

  @Pass
  Scenario Outline: SDP - Edit Nominee - Nominee Address 'City & State' Fields are Non-Editable and Auto populated
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "SYSTEMATIC DEPOSIT PLAN- MMS" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
    And click on "Edit Nominee" Button
    And Verify Customer Redirected to "<Edit Nominee Url>" Url
    And Customer Redirected to "Edit Nominee" Page
    And click on "NO" Toggle button for "Address Details"
    Then Verify "SDP Nominee City Text Box" is Non Editable
    And Verify "SDP Nominee State Text Box" is Non Editable
    And Enter "600097" in "SDP Nominee PIN Code Text Box"
    And Wait 3 seconds
    And verify "CHENGALPATTU" is Auto Populated in "City" Text Box for Nominee "Address Details"
    And verify "TAMILNADU" is Auto Populated in "State" Text Box for Nominee "Address Details"
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number | Edit Nominee Url                           |
      | 7709899876    | 19091970 | Individual    | 490364     | MyAccountFixedDeposit/FixedDeposit/Nominee |

  @Pass
  Scenario Outline: SDP - Edit Nominee - Guardian Details Components
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "SYSTEMATIC DEPOSIT PLAN- MMS" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
    And click on "Edit Nominee" Button
    And Verify Customer Redirected to "<Edit Nominee Url>" Url
    And Customer Redirected to "Edit Nominee" Page
    And Enter "Minor DOB" in "SDP Nominee Date of Birth Text Box"
    And Click on inside the page
    Then Customer able to view "Guardian Details" text
    And Customer able to view "Since your nominee is a minor, please provide details of the guardian" text
    And Verify "SDP Guardian Name Text Box" is Displayed
    And verify "Enter the full name as it appears on the PAN" "text" is Displayed
    And Verify "SDP Guardian Date of Birth Text Box" is Displayed
    And "YES" button should be default for "Is this address the same as that of the nominee?"
    And verify "Guardian Details" YES Toggle Button
    And verify "Cancel" "Button" is Displayed
    And verify "Generate OTP" "Button" is Displayed
    # And "Generate OTP" Button is Disabled
    And click on "NO" Toggle button for "Guardian Details"
    And Verify "SDP Guardian Address Line 1 Text Box" is Displayed
    And Verify "SDP Guardian Address Line 2 Text Box" is Displayed
    And Verify "SDP Guardian PIN Code Text Box" is Displayed
    And Verify "SDP Guardian City Text Box" is Displayed
    And Verify "SDP Guardian State Text Box" is Displayed
    And verify "Cancel" "Button" is Displayed
    And verify "Generate OTP" "Button" is Displayed
    # And "Generate OTP" Button is Disabled
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number | Edit Nominee Url                           |
      | 7709899876    | 19091970 | Individual    | 490364     | MyAccountFixedDeposit/FixedDeposit/Nominee |

  @Pass
  Scenario Outline: SDP - Edit Nominee - To verify Guardian Name Text Box
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "SYSTEMATIC DEPOSIT PLAN- MMS" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
    And click on "Edit Nominee" Button
    And Verify Customer Redirected to "<Edit Nominee Url>" Url
    And Customer Redirected to "Edit Nominee" Page
    And Enter "Minor DOB" in "SDP Nominee Date of Birth Text Box"
    And Click on inside the page
    And Verify "SDP Guardian Name Text Box" is Displayed
    Then verify "SDP Guardian Name Text Box" is Not Accepted for following values: "123456789, !@$%^&*(), 123abc, ABC123, A1a2, a!B@"
    And verify "SDP Guardian Name Text Box" is Accepted following values: "Jai, Jai R, R Jai, JaiR, jai R"
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number | Edit Nominee Url                           |
      | 7709899876    | 19091970 | Individual    | 490364     | MyAccountFixedDeposit/FixedDeposit/Nominee |

  @Pass
  Scenario Outline: SDP - Edit Nominee - To verify Error Message for Same Name in Nominee Full Name & Guardian Name Text Box
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "SYSTEMATIC DEPOSIT PLAN- MMS" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
    And click on "Edit Nominee" Button
    And Verify Customer Redirected to "<Edit Nominee Url>" Url
    And Customer Redirected to "Edit Nominee" Page
    And Enter "Jai" in "SDP Nominee Name Text Box"
    And Enter "Minor DOB" in "SDP Nominee Date of Birth Text Box"
    And Click on inside the page
    And Enter "jai" in "SDP Guardian Name Text Box"
    Then verify "Guardian name and Nominee name cannot be same" Error Message
#    Then verify "SDP Guardian and Nominee Name not same" error message for "SDP Guardian Date of Birth Text Box" Negative Values
    When Enter "JAI" in "SDP Guardian Name Text Box"
    Then verify "Guardian name and Nominee name cannot be same" Error Message
#    Then verify "SDP Guardian and Nominee Name not same" error message for "SDP Guardian Date of Birth Text Box" Negative Values
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number | Edit Nominee Url                           |
      | 7709899876    | 19091970 | Individual    | 490364     | MyAccountFixedDeposit/FixedDeposit/Nominee |

  @Pass
  Scenario Outline: SDP - Edit Nominee - To verify Guardian Date Of Birth
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "SYSTEMATIC DEPOSIT PLAN- MMS" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
    And click on "Edit Nominee" Button
    And Verify Customer Redirected to "<Edit Nominee Url>" Url
    And Customer Redirected to "Edit Nominee" Page
    And Enter "Minor DOB" in "SDP Nominee Date of Birth Text Box"
    And Click on inside the page
    Then verify "SDP Guardian DOB Enter Valid date" error message for "SDP Guardian Date of Birth Text Box" Negative Values
    And verify "SDP Guardian DOB Minimum 18 Years" error message for "SDP Guardian Date of Birth Text Box" Negative Values
    And Verify Not Showing "SDP DOB error Message" for following values: "Valid Dates for Major" in "SDP Guardian Date of Birth Text Box"
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number | Edit Nominee Url                           |
      | 7709899876    | 19091970 | Individual    | 490364     | MyAccountFixedDeposit/FixedDeposit/Nominee |

  @Pass
  Scenario Outline: SDP - Edit Nominee - Guardian Address 'City & State' Fields are Non-Editable and Auto populated
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "SYSTEMATIC DEPOSIT PLAN- MMS" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
    And click on "Edit Nominee" Button
    And Verify Customer Redirected to "<Edit Nominee Url>" Url
    And Customer Redirected to "Edit Nominee" Page
    And Enter "Minor DOB" in "SDP Nominee Date of Birth Text Box"
    And Click on inside the page
    And click on "NO" Toggle button for "Guardian Details"
    Then Verify "SDP Guardian City Text Box" is Non Editable
    And Verify "SDP Guardian State Text Box" is Non Editable
    And Enter "600097" in "SDP Guardian PIN Code Text Box"
    And Wait 3 seconds
    And verify "CHENGALPATTU" is Auto Populated in "City" Text Box for Nominee "Guardian Details"
    And verify "TAMILNADU" is Auto Populated in "State" Text Box for Nominee "Guardian Details"
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number | Edit Nominee Url                           |
      | 7709899876    | 19091970 | Individual    | 490364     | MyAccountFixedDeposit/FixedDeposit/Nominee |


  @run
  Scenario Outline: SDP - Verify Edit Nominee Page OTP Screen Components
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "SYSTEMATIC DEPOSIT PLAN- MMS" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
    And click on "Edit Nominee" Button
    And Verify Customer Redirected to "<Edit Nominee Url>" Url
    And Customer Redirected to "Edit Nominee" Page
    And Enter "Jai" in "SDP Nominee Name Text Box"
    And Enter "Major DOB" in "SDP Nominee Date of Birth Text Box"
    And Select Relationship Dropdown as "Brother"
    And Select "Brother" Option in "SDP Nominee Relationship Dropdown"
    And "Generate OTP" Button is Enabled
    And Clicks on "SDP Nominee Generate OTP Button"
    Then OTP Verification title Displayed
    And Verify "OTP Sent Your Mob Number Message" is Displayed
    And verify "Enter One Time Password" "text" is Displayed
    And Verify "Resend OTP Button" is Displayed
#    And Verify "Disable Resend OTP Button" is Displayed
    And Verify "OTP Screen Text box 1" is Displayed
    And Verify "OTP Screen Text box 2" is Displayed
    And Verify "OTP Screen Text box 3" is Displayed
    And Verify "OTP Screen Text box 4" is Displayed
    And Verify "OTP Screen Text box 5" is Displayed
    And Verify "OTP Screen Text box 6" is Displayed
    And Verify "Submit Button in OTP Screen" is Displayed
    And "Submit Button in OTP Screen" is Disabled
    And Clicks on "OTP Screen Close Button"
    And Verify Customer Redirected to "<Edit Nominee Url>" Url
    And Customer Redirected to "Edit Nominee" Page
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number | Edit Nominee Url                           |
      | 7709899876    | 19091970 | Individual    | 490364     | MyAccountFixedDeposit/FixedDeposit/Nominee |

@Pass@2112
  Scenario Outline: SDP - Verify Edit Nominee Page OTP Timing & Resend Button
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "SYSTEMATIC DEPOSIT PLAN- MMS" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
    And click on "Edit Nominee" Button
    And Verify Customer Redirected to "<Edit Nominee Url>" Url
    And Customer Redirected to "Edit Nominee" Page
    And Enter "Jai" in "SDP Nominee Name Text Box"
    And Enter "Major DOB" in "SDP Nominee Date of Birth Text Box"
    And Select Relationship Dropdown as "Brother"
    And Select "Brother" Option in "SDP Nominee Relationship Dropdown"
    And "Generate OTP" Button is Enabled
    And Clicks on "SDP Nominee Generate OTP Button"
    And OTP Verification title Displayed
    Then verify Resend OTP button and Timing in Reverse Order
    And Wait 60 seconds for "Enable Resend OTP Button"
    And Verify "Enable Resend OTP Button" is Displayed
    And Clicks on "Enable Resend OTP Button"
    And verify Resend OTP button and Timing in Reverse Order
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number | Edit Nominee Url                           |
      | 9689890586    | 19051999 | Individual    | 452875     | MyAccountFixedDeposit/FixedDeposit/Nominee |

  @Pass@2112
  Scenario Outline: SDP - Verify Edit Nominee Page OTP Validations
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "SYSTEMATIC DEPOSIT PLAN- MMS" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
    And click on "Edit Nominee" Button
    And Verify Customer Redirected to "<Edit Nominee Url>" Url
    And Customer Redirected to "Edit Nominee" Page
    And Enter "Jai" in "SDP Nominee Name Text Box"
    And Enter "Major DOB" in "SDP Nominee Date of Birth Text Box"
    And Select Relationship Dropdown as "Brother"
    And Select "Brother" Option in "SDP Nominee Relationship Dropdown"
    And "Generate OTP" Button is Enabled
    And Clicks on "SDP Nominee Generate OTP Button"
    And OTP Verification title Displayed
    Then Enter "0" in "OTP Screen Text box 1"
    And "OTP Screen Text box 1" Bottom Line Color Changed into "Green" After Enter "Valid" Value
    And "Submit Button in OTP Screen" is Disabled
    And Enter "2" in "OTP Screen Text box 2"
    And "OTP Screen Text box 2" Bottom Line Color Changed into "Green" After Enter "Valid" Value
    And "Submit Button in OTP Screen" is Disabled
    And Enter "3" in "OTP Screen Text box 3"
    And "OTP Screen Text box 3" Bottom Line Color Changed into "Green" After Enter "Valid" Value
    And "Submit Button in OTP Screen" is Disabled
    And Enter "4" in "OTP Screen Text box 4"
    And "OTP Screen Text box 4" Bottom Line Color Changed into "Green" After Enter "Valid" Value
    And "Submit Button in OTP Screen" is Disabled
    And Enter "5" in "OTP Screen Text box 5"
    And "OTP Screen Text box 5" Bottom Line Color Changed into "Green" After Enter "Valid" Value
    And "Submit Button in OTP Screen" is Disabled
    And Enter "6" in "OTP Screen Text box 6"
    And "OTP Screen Text box 6" Bottom Line Color Changed into "Green" After Enter "Valid" Value
    And "Submit Button in OTP Screen" is Enabled
    And Clicks on "Submit Button in OTP Screen"
    And Verify "Invalid OTP Error Message" is Displayed
    And "Submit Button in OTP Screen" is Disabled
    And verify "OTP Screen Text box 1" is Not Accepted for following values: "a, A, !, @, $, %, ^, &, *, (, ., ),  "
    And verify "OTP Screen Text box 2" is Not Accepted for following values: "a, A, !, @, $, %, ^, &, *, (, ., ),  "
    And verify "OTP Screen Text box 3" is Not Accepted for following values: "a, A, !, @, $, %, ^, &, *, (, ., ),  "
    And verify "OTP Screen Text box 4" is Not Accepted for following values: "a, A, !, @, $, %, ^, &, *, (, ., ),  "
    And verify "OTP Screen Text box 5" is Not Accepted for following values: "a, A, !, @, $, %, ^, &, *, (, ., ),  "
    And verify "OTP Screen Text box 6" is Not Accepted for following values: "a, A, !, @, $, %, ^, &, *, (, ., ),  "
    And Wait 60 seconds
    And Enter "1" in "OTP Screen Text box 1"
    And Enter "2" in "OTP Screen Text box 2"
    And Enter "3" in "OTP Screen Text box 3"
    And Enter "4" in "OTP Screen Text box 4"
    And Enter "5" in "OTP Screen Text box 5"
    And Enter "6" in "OTP Screen Text box 6"
    And "Submit Button in OTP Screen" is Enabled
    And Clicks on "Submit Button in OTP Screen"
    And Verify "OTP Expired Error Message" is Displayed
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number | Edit Nominee Url                           |
      | 8087615787    | 19051999 | Individual    | 625438     | MyAccountFixedDeposit/FixedDeposit/Nominee |

  @Pass@2112
  Scenario Outline: SDP - Edit Nominee - Major DOB with Toggle YES button
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "SYSTEMATIC DEPOSIT PLAN- MMS" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
    And click on "Edit Nominee" Button
    And Verify Customer Redirected to "<Edit Nominee Url>" Url
    And Customer Redirected to "Edit Nominee" Page
    And Enter "Jai" in "SDP Nominee Name Text Box"
    And Enter "Major DOB" in "SDP Nominee Date of Birth Text Box"
    And Select Relationship Dropdown as "Brother"
    And Select "Brother" Option in "SDP Nominee Relationship Dropdown"
    And "Generate OTP" Button is Enabled
    And Clicks on "SDP Nominee Generate OTP Button"
    Then OTP Verification title Displayed
    #    And Enter "1" in "OTP Screen Text box 1"
#    And Enter "2" in "OTP Screen Text box 2"
#    And Enter "3" in "OTP Screen Text box 3"
#    And Enter "4" in "OTP Screen Text box 4"
#    And Enter "5" in "OTP Screen Text box 5"
#    And Enter "6" in "OTP Screen Text box 6"
#    And Clicks on "Submit Button in OTP Screen"
#    And verify Success Screen
#    And verify Nominee Details in Success Page "<Acc Number>"
#    And click on "done" Button
#    And Customer Redirected to "Fixed Deposit" Page
#    And "Edit Nominee" Button is Disabled
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number | Edit Nominee Url                           |
      | 9031955491    | 19051999 | Individual    | 458798     | MyAccountFixedDeposit/FixedDeposit/Nominee |

  @Pass@2112
  Scenario Outline: SDP - Edit Nominee - Major DOB with Toggle NO button
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "SYSTEMATIC DEPOSIT PLAN- MMS" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
    And click on "Edit Nominee" Button
    And Verify Customer Redirected to "<Edit Nominee Url>" Url
    And Customer Redirected to "Edit Nominee" Page
    And Enter "Jai" in "SDP Nominee Name Text Box"
    And Enter "Major DOB" in "SDP Nominee Date of Birth Text Box"
    And Select "Brother" Option in "SDP Nominee Relationship Dropdown"
    And click on "NO" Toggle button for "Address Details"
    And Enter "no.19" in "SDP Nominee Address Line 1 Text Box"
    And Enter "Anand Nagar" in "SDP Nominee Address Line 2 Text Box"
    And Enter "600097" in "SDP Nominee PIN Code Text Box"
    And Wait 3 seconds
    And verify "CHENGALPATTU" is Auto Populated in "City" Text Box for Nominee "Address Details"
    And verify "TAMILNADU" is Auto Populated in "State" Text Box for Nominee "Address Details"
    And "Generate OTP" Button is Enabled
    And Clicks on "SDP Nominee Generate OTP Button"
    Then OTP Verification title Displayed
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number | Edit Nominee Url                           |
      | 8446807062    | 19091970 | Individual    | 844877     | MyAccountFixedDeposit/FixedDeposit/Nominee |

  @Pass@2112
  Scenario Outline: SDP - Edit Nominee - Minor DOB with Nominee Toggle YES button & Guardian Toggle YES button
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "SYSTEMATIC DEPOSIT PLAN- MMS" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
    And click on "Edit Nominee" Button
    And Verify Customer Redirected to "<Edit Nominee Url>" Url
    And Customer Redirected to "Edit Nominee" Page
    And Enter "Jai" in "SDP Nominee Name Text Box"
    And Enter "Minor DOB" in "SDP Nominee Date of Birth Text Box"
    And Click on inside the page
    And Select "Brother" Option in "SDP Nominee Relationship Dropdown"
    And Enter "Guru" in "SDP Guardian Name Text Box"
    And Enter "Major DOB" in "SDP Guardian Date of Birth Text Box"
    And "Generate OTP" Button is Enabled
    And Clicks on "SDP Nominee Generate OTP Button"
    Then OTP Verification title Displayed
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number | Edit Nominee Url                           |
      | 8446807062    | 19091970 | Individual    | 844877     | MyAccountFixedDeposit/FixedDeposit/Nominee |


  @run
  Scenario Outline: SDP - Edit Nominee - Minor DOB with Nominee Toggle NO button & Guardian Toggle NO button
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "SYSTEMATIC DEPOSIT PLAN- MMS" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
    And click on "Edit Nominee" Button
    And Verify Customer Redirected to "<Edit Nominee Url>" Url
    And Customer Redirected to "Edit Nominee" Page
    And Enter "Jai" in "SDP Nominee Name Text Box"
    And Enter "Minor DOB" in "SDP Nominee Date of Birth Text Box"
    And Click on inside the page
    And Select "Brother" Option in "SDP Nominee Relationship Dropdown"
    And click on "NO" Toggle button for "Address Details"
    And Enter "no.19" in "SDP Nominee Address Line 1 Text Box"
    And Enter "Anand Nagar" in "SDP Nominee Address Line 2 Text Box"
    And Enter "600097" in "SDP Nominee PIN Code Text Box"
    And verify "CHENGALPATTU" is Auto Populated in "City" Text Box for Nominee "Address Details"
    And verify "TAMILNADU" is Auto Populated in "State" Text Box for Nominee "Address Details"
    And Enter "Guru" in "SDP Guardian Name Text Box"
    And Enter "Major DOB" in "SDP Guardian Date of Birth Text Box"
    And click on "NO" Toggle button for "Guardian Details"
    And Enter "no.19" in "SDP Guardian Address Line 1 Text Box"
    And Enter "Anand Nagar" in "SDP Guardian Address Line 2 Text Box"
    And Enter "600097" in "SDP Guardian PIN Code Text Box"
    And Wait 3 seconds
    And verify "CHENGALPATTU" is Auto Populated in "City" Text Box for Nominee "Guardian Details"
    And verify "TAMILNADU" is Auto Populated in "State" Text Box for Nominee "Guardian Details"
    And "Generate OTP" Button is Enabled
    And Clicks on "SDP Nominee Generate OTP Button"
    Then OTP Verification title Displayed
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number | Edit Nominee Url                           |
      | 9650979427    | 19091970 | Individual    | 470466     | MyAccountFixedDeposit/FixedDeposit/Nominee |

  @run
  Scenario Outline: SDP - Edit Nominee - Minor DOB with Nominee Toggle YES button & Guardian Toggle NO button
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "SYSTEMATIC DEPOSIT PLAN- MMS" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
    And click on "Edit Nominee" Button
    And Verify Customer Redirected to "<Edit Nominee Url>" Url
    And Customer Redirected to "Edit Nominee" Page
    And Enter "Jai" in "SDP Nominee Name Text Box"
    And Enter "Minor DOB" in "SDP Nominee Date of Birth Text Box"
    And Click on inside the page
    And Select "Brother" Option in "SDP Nominee Relationship Dropdown"
    And Enter "Guru" in "SDP Guardian Name Text Box"
    And Enter "Major DOB" in "SDP Guardian Date of Birth Text Box"
    And click on "NO" Toggle button for "Guardian Details"
    And Enter "no.19" in "SDP Guardian Address Line 1 Text Box"
    And Enter "Anand Nagar" in "SDP Guardian Address Line 2 Text Box"
    And Enter "600097" in "SDP Guardian PIN Code Text Box"
    And Wait 3 seconds
    And verify "CHENGALPATTU" is Auto Populated in "City" Text Box for Nominee "Guardian Details"
    And verify "TAMILNADU" is Auto Populated in "State" Text Box for Nominee "Guardian Details"
    And "Generate OTP" Button is Enabled
    And Clicks on "SDP Nominee Generate OTP Button"
    Then OTP Verification title Displayed
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number | Edit Nominee Url                           |
      | 9650979427    | 19091970 | Individual    | 470466     | MyAccountFixedDeposit/FixedDeposit/Nominee |

  @run
  Scenario Outline: SDP - Edit Nominee - Minor DOB with Nominee Toggle NO button & Guardian Toggle YES button
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And click on "Deposits" tab
    And click on "SYSTEMATIC DEPOSIT PLAN- MMS" Tile of Account number "<Acc Number>"
    And verify Redirection using Account number "<Acc Number>"
    And click on "Edit Nominee" Button
    And Verify Customer Redirected to "<Edit Nominee Url>" Url
    And Customer Redirected to "Edit Nominee" Page
    And Enter "Jai" in "SDP Nominee Name Text Box"
    And Enter "Minor DOB" in "SDP Nominee Date of Birth Text Box"
    And Click on inside the page
    And Select "Brother" Option in "SDP Nominee Relationship Dropdown"
    And click on "NO" Toggle button for "Address Details"
    And Enter "no.19" in "SDP Nominee Address Line 1 Text Box"
    And Enter "Anand Nagar" in "SDP Nominee Address Line 2 Text Box"
    And Enter "600097" in "SDP Nominee PIN Code Text Box"
    And Wait 3 seconds
    And verify "CHENGALPATTU" is Auto Populated in "City" Text Box for Nominee "Address Details"
    And verify "TAMILNADU" is Auto Populated in "State" Text Box for Nominee "Address Details"
    And Enter "Guru" in "SDP Guardian Name Text Box"
    And Enter "Major DOB" in "SDP Guardian Date of Birth Text Box"
    And "Generate OTP" Button is Enabled
    And Clicks on "SDP Nominee Generate OTP Button"
    Then OTP Verification title Displayed
    Examples:
      | Mobile Number | Date     | Customer Type | Acc Number | Edit Nominee Url                           |
      | 8588855329    | 19091970 | Individual    | 469236     | MyAccountFixedDeposit/FixedDeposit/Nominee |


  
    ##########################################################################################################################################################