Feature: EMI Card Services 2887861, 2926340-Dynamic height – EMI and all previous Scenarios

@runthis
@FeesKP
  Scenario Outline: To verify Fees and Charges details
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on View All of My relatiom
    And Click on "<SubTab>" in View All
   And click on Tile having product code "<Policy No>"
    And Click on Fees and Charges icon under Insta EMI Card
    Then verify Fees and Charges section

  Examples:
  | Mobile Number | Date     | Customer Type |SubTab |Policy No |
  | 9654418901|02-03-1960| Individual	     | Cards | 2030-XXXX-XXXX-3870 |

  @FeesKP
  Scenario Outline: EMI Card Services-add additional charges, nomenclature and amount change in the Fees and Charges Section.
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And verify Customer is redirected to EMI Card service page when Click on EMI Card icon through header EMI Card section
    And Click on EMI Card icon under Insta EMI Card
    And  Click on View All CTA under Fees and Charges section
    Then verify Fees and Charges section in View All section

  Examples:
  | Mobile Number | Date     | Customer Type |
  | 9654418901|02-03-1960| Individual	     |



  @blockedTY
  Scenario Outline: EMI Card Services –Unblock-Content Change-Functionality
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And verify Customer is redirected to EMI Card service page when Click on EMI Card icon through header EMI Card section
    And Click on Blocked EMI Card
    And User Clicks on Unblock Card
    Then User Verifies OTP Popup message
    And verify OTP is triggered on Customer registered mobile number when click on Unblock Card option under Quick Action
    And Enter Valid OTP
    And Click on Submit Button
    Then verify Alter Pop-up with “<Message>” with GOT IT CTA is displayed
    And Click on GOT IT CTA Button
    Then Customer should stay on EMI Card services Page
    Examples:
      | Mobile Number | Date     | Customer Type |Message|
      | 8826319933| 26051982 | Individual    | We are currently unable to unblock your card as per inline policies.|




  @ResetPin
  Scenario Outline: EMI Card Services- Health EMI Card
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User lands on Home Page
    And verify Customer is redirected to EMI Card service page when Click on EMI Card icon through header EMI Card section
    Then verify customer should not able to view RESET PIN under Quick Action
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 9211368717    | 11111999 | Individual |



  @FailRegK
Scenario Outline: EMI Card Services-Redirection to RAR Page
  Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
  When User is on Home Page
  And verify Customer is redirected to EMI Card service page when Click on EMI Card icon through header EMI Card section
  Then User Verifies the "<Blocked Reason>"
  Then User Verifies  Unblocking Process "<Unblocking process>"
  Then User Verifies the unblocking Timeline "<Unblocking Timeline>"
  And User Clicks on Unblock Card
  Then User Verifies Validation  Popup message
  And Verify after clicking on close it stays on Same Page
  And User Clicks on Unblock Card
  And Verify after clicking on close icon it stays on Same Page
  #Then User Verifies it is succesfully redirected to RAR Page after clicking on Ok button
  Examples:
    | Mobile Number | Date     | Customer Type | Blocked Reason|Unblocking process |Unblocking Timeline |
    | 9768741343    | 11111999 | Individual    |   Can't Verify The Card Holder's Identity | Provide KYC Documents For Verification | Within 72 Hours Of Request Submission |


@FailRegK
  Scenario Outline: EMI Card Services-Quick Actions Blocked Card
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And verify that Customer is able to view EMI Card icon Under EMI network Card tile
    And verify Customer is redirected to EMI Card service page when Click on EMI Card icon through header EMI Card section
    Then verify Customer is able to view Red Blocked Capsule and Unblock Card button on EMI Card
    Then verify Customer is able to view Quick Actions Section
    Examples:
      | Mobile Number | Date     | Customer Type |
   #   | 9810288053    | 09111978 | Individual    |  Active Card|
      |9997502000    | 22091988  |Individual    |

  @ReRun
  Scenario Outline: EMI Card Services-Quick Actions Active Card
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And verify that Customer is able to view EMI Card icon Under EMI network Card tile
    And verify Customer is redirected to EMI Card service page when Click on EMI Card icon through header EMI Card section
   # Then verify Customer is able to view Quick Actions Section
    Then verify Customer is able to view Quick Actions  Active Section

    Examples:
      | Mobile Number | Date     | Customer Type |
      | 9211368717     | 01011980 | Individual    |

@ContentChanges
  Scenario Outline: EMI Card Services - Relationship and Fees and charges Faq and Cibil Score for Active Card
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And verify Customer is redirected to EMI Card service page when Click on EMI Card icon through header EMI Card section
    Then verify Customer is able to view Given Section under Relationship section
    Then verify Customer is able to view Given options under Where to Use Tab
    Then verify Customer is able to view Given text and button under EMI NETWORK Stores section
    Then verify Customer is redirected to store locator page with sso when  click on Locate a Store button
    Then verify Customer is able to view static Sub-text under E-Com partners section
    Then verify Customer is able to view Given text and button under Bajaj Finserv Online store-Pickup at store option
    Then verify Customer is redirected to Marketplace page with SSO when Customer click on Shop online CTA
    Then verify Customer is able to view Fees and Charges Tab under Relationship Details with Given details
    Then verify Customer is redirected to FAQ section with EMI Card section highlighted when Customer click on FAQ's
    Then verify Customer is redirected to CIBIL page with SSO when click on Know your CIBIL button

    Examples:
      | Mobile Number | Date     | Customer Type |
      | 9211368717     | 01011980 | Individual    |


  @FailRegK
  Scenario Outline: Emi Card - Shop on Bajaj Mall  Active Card
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User lands on Home Page
    And verify Customer is redirected to EMI Card service page when Click on EMI Card icon through header EMI Card section
    Then verify Customer is able to scroll to Shop  on Bajaj Mall
    When User clicks on Shop On BajajMall Offer and verifies Redirection Url
    Examples:
      | Mobile Number | Date     | Customer Type | Expected Url                                        | Section Name       | Option Name      |
      | 9211368717     | 01011980 | Individual    | https://www.bajajmall.in/emi-store/smartphones.html | Shop on Bajaj Mall | Smartphones      |


  @EMI
  Scenario Outline: EMI Card Services-Navigate thru EmiCard Horizontal Menu
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And verify that Customer is able to view EMI Card icon Under EMI network Card tile
    And verify Customer is redirected to EMI Card service page when Click on EMI Card icon through header EMI Card section

    Examples:
      | Mobile Number | Date     | Customer Type |
      | 9997502000    | 22091988 | Individual    |

@FailRun
  Scenario Outline: EMI Card Services-Navigate to Emicard Page and verifies all Fields
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And verify that Customer is able to view EMI Card icon Under EMI network Card tile
    And verify Customer is redirected to EMI Card service page when Click on EMI Card icon through header EMI Card section
    Then verify Customer is able to view details when Customer click on EMI Card icon

    Examples:
      | Mobile Number | Date     | Customer Type |
      | 9997502000    | 22091988 | Individual    |

  @temp
  Scenario Outline: EMI Card Services- UnBlock Card--Non-Receipt Of EMI On Your Loan/s
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User lands on Home Page
    And verify Customer is redirected to EMI Card service page when Click on EMI Card icon through header EMI Card section
    Then User Verifies the "<Blocked Reason>"
    Then User Verifies  Unblocking Process "<Unblocking process>"
    Then User Verifies the unblocking Timeline "<Unblocking Timeline>"
    #And User Clicks on Unblock Card
    #Then User Verifies Confirmation message and navigates sucesfully to Payment page

    Examples:
      | Mobile Number | Date     | Customer Type | Blocked Reason|Unblocking process |Unblocking Timeline |
      | 7303555577    | 17091985 | Individual    |  Non-Receipt Of EMI On Your Loan/s| Basis repayment & no future bounces | Unblocking will be done Post EMI clearance |


  @temp
  Scenario Outline: EMI Card Services- UnBlock Card--Inconsistent EMI Payment. Check Statement
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User lands on Home Page
    And verify Customer is redirected to EMI Card service page when Click on EMI Card icon through header EMI Card section
    Then User Verifies the "<Blocked Reason>"
    Then User Verifies  Unblocking Process "<Unblocking process>"
    Then User Verifies the unblocking Timeline "<Unblocking Timeline>"
   # And User Clicks on Unblock Card
   # Then User Verifies Validation message

    Examples:
      | Mobile Number | Date     | Customer Type | Blocked Reason| Unblocking process |Unblocking Timeline |
      | 9325504640    | 18051976 | Individual    |  Inconsistent EMI Payment. Check Statement | Unblock is applicable basis eligibility and adherence with BFL policies | NA |
    #  | 9210549227    | 05051947 | Individual    |  Inconsistent EMI Payment. Check Statement |
 #  | 9810288053    | 09111978 | Individual    |  Inconsistent EMI Payment. Check Statement |

  @FailK
  Scenario Outline: EMI Card Services- UnBlock Card-- Wrong OTP or PIN entered Multiple Times
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User lands on Home Page
    And verify Customer is redirected to EMI Card service page when Click on EMI Card icon through header EMI Card section
    Then User Verifies the "<Blocked Reason>"
    And User Clicks on Unblock Card
    Then User Verifies OTP Popup message
    #And verify  Validation message is displayed when Customer entered an invalid OTP  with given inputs in Enter OTP text field
    And verify Validation message is displayed when Customer entered an invalid OTP text field


    Examples:
      | Mobile Number | Date     | Customer Type | Blocked Reason|
      | 9819427072    | 26051982 | Individual    |  Wrong OTP or PIN entered Multiple Times |

  @FailK
  Scenario Outline: EMI Card Services- UnBlock Card-Can't Verify The Card Holder's Identity
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User lands on Home Page
    And verify Customer is redirected to EMI Card service page when Click on EMI Card icon through header EMI Card section
    Then User Verifies the "<Blocked Reason>"
    And User Clicks on Unblock Card
    Then User Verifies Unblock OTP Popup message

    Examples:
      | Mobile Number | Date     | Customer Type | Blocked Reason|
      | 9997502000    | 22091988 | Individual    |  Can't Verify The Card Holder's Identity |

  @FailK
  Scenario Outline: EMI Card Services- UnBlock Card--Inconsistent EMI Payments Or CIBIL Score Is Less Than 750
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User lands on Home Page
    And verify Customer is redirected to EMI Card service page when Click on EMI Card icon through header EMI Card section
    Then User Verifies the "<Blocked Reason>"
    Then User Verifies  Unblocking Process "<Unblocking process>"
    Then User Verifies the unblocking Timeline "<Unblocking Timeline>"
  #  And User Clicks on Unblock Card
  #  Then User Verifies Validation message

    Examples:
      | Mobile Number | Date     | Customer Type | Blocked Reason|Unblocking process |Unblocking Timeline |
      | 8826319933    | 20041965 | Individual    |  Inconsistent EMI Payments Or CIBIL Score Is Less Than 750 | Basis regular repayment, no future bounces & eligibility | Case may be reviewed in the Next Quarter |
     # | 9923849260    | 15071975 | Individual    |  Inconsistent EMI Payments Or CIBIL Score Is Less Than 750 |


  @FailK
  Scenario Outline: EMI Card Services- Block Card--I do not want an Insta Emi card
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User lands on Home Page
    And verify Customer is redirected to EMI Card service page when Click on EMI Card icon through header EMI Card section
    And verify Customer able to view Block Cards option Under Quick Actions Section in RHS
   # And verify Customer able to view Block Cards option Under Things you can do section in RHS
    Then verify Customer able to redirect on Block Card page when Customer click on Block Card button
    And verify Customer is able to view the Reason when Customer Clicks on the Blocking Reason drop-down
    And Verify Customer is able to clicks on Block Card button  without selecting a Reason
    And verify Customer is able to Cancel the Blocking Card process
    Then User Clicks on Block Card and enters blocked Reason
    Then verify OTP is triggered on Customer registered mobile number when click on Block Card button
    And verify  Validation message is displayed when Customer entered an invalid OTP  with given inputs in Enter OTP text field
    #Then User Clicks on Block Card and enters blocked Reason
    #Then User Verifies Sucess confirmation message
    #And User Clicks on Unblock Card
    #Then User verifies Emi Card is unblocked Sucessfully

    Examples:
      | Mobile Number | Date     | Customer Type |
      | 9211368717    | 01011980 | Individual    |


  @Navigate
  Scenario Outline: EMI Card Services-Navigate thru MyRelations cards Emi Menu
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    #Then verify Customer is redirected to EMI Card service page from My Relations
    Then verify Customer is redirected to EMI Card service page from My Relations thru "<EMI Card Number>"

    Examples:
      | Mobile Number | Date     | Customer Type |EMI Card Number|
      | 9819427072    | 26051982 | Individual    | 2030-XXXX-XXXX-8906 |

  @EMI
  Scenario Outline: EMI Card Services--Total count
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And verify Customer is redirected to EMI Card service page when Click on EMI Card icon through header EMI Card section
    Then verify Total Count of EMI Card when Customer having Multiple EMI Card
    Then verify Customer is able to view Sub-text under My EMI Cards header title

    Examples:
      | Mobile Number | Date     | Customer Type |
      | 9997502000    | 22091988 | Individual    |


  Scenario Outline: EMI Card Services--highlighted Active EMI Card and rest are Greyed out
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And verify Customer is redirected to EMI Card service page when Click on EMI Card icon through header EMI Card section
    Then verify Customer is able to view only one Card highlighted Active EMI Card and rest are Greyed out

    Examples:
      | Mobile Number | Date     | Customer Type |
      | 9997502000    | 22091988 | Individual    |

  Scenario Outline: EMI Card Services-verify click on Active Emi card  makes another Inactive State
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And verify Customer is redirected to EMI Card service page when Click on EMI Card icon through header EMI Card section
    Then verify Selected EMI Card is Highlighted when customer having multiple EMI Card and Click on any one of the Card

    Examples:
      | Mobile Number | Date     | Customer Type |
      | 9997502000    | 22091988 | Individual    |
  @FailK
  Scenario Outline: EMI Card Services-Emi Card banner Field Details
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And verify Customer is redirected to EMI Card service page when Click on EMI Card icon through header EMI Card section
    Then verify Customer is able to view the details which are displayed within the EMI Card

    Examples:
      | Mobile Number | Date     | Customer Type |
      | 9997502000    | 22091988 | Individual    |

  @mask
  Scenario Outline: EMI Card Services - VTo view card number, download the Bajaj Finserv App note should be displayed
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And verify Customer is redirected to EMI Card service page when Click on EMI Card icon through header EMI Card section
    #And verify OTP is triggered on Customer registered mobile number when click on View Number button on Card details section
    And Verify To view card number, download the Bajaj Finserv App note should be displayed
#    Then verify  Validation message is displayed when Customer entered an invalid OTP  with given inputs in Enter OTP text field(View Number Active EMI)
#    And verify OTP is triggered to customer registered mobile number when click on Resend OTP button(View Number Active EMI)
#   # Then verify Customer is able to view UnMasked Number message after submitting the Valid OTP
#    And verify Customer is able to view Card Number in 4 x 4 view with space after every 4 characters in Unmasked State
#    Then verify Card Number Get masked when Customer Refresh the Page
    Then verify Customer is able to view information  of Total Loan Limit when Customer click on info tooltip of Total Loan Limit  in Active EMI Card
    Then verify Customer is able to view information of Available Loan Limit when Customer click on info  tooltip of Available Loan Limit in Active EMI Card

    Examples:
      | Mobile Number | Date     | Customer Type |
     #   | 9997502000    | 22091988 | Individual    |
      |9997502000    | 22091988  |Individual    |
    #    | 9819427072    | 26051982 | Individual    |


@InactiveFees
  Scenario Outline: EMI Card Services - Relationship and Fees and charges Faq and Cibil Score
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And verify Customer is redirected to EMI Card service page when Click on EMI Card icon through header EMI Card section
    Then verify Customer is able to view Given Section under Relationship section
    Then verify Customer is able to view Given options under Where to Use Tab
    Then verify Customer is able to view Given text and button under EMI NETWORK Stores section
    Then verify Customer is redirected to store locator page with sso when  click on Locate a Store button
    Then verify Customer is able to view static Sub-text under E-Com partners section
    #Then verify Customer is able to Click on E-Com partners Section
    Then verify Customer is able to view Given text and button under Bajaj Finserv Online store-Pickup at store option
    Then verify Customer is redirected to Marketplace page with SSO when Customer click on Shop online CTA
    Then verify Customer is able to view Fees and Charges Tab under Relationship Details with Given details
    Then verify Customer is redirected to FAQ section with EMI Card section highlighted when Customer click on FAQ's
    Then verify Customer is redirected to CIBIL page with SSO when click on Know your CIBIL button

    Examples:
      | Mobile Number | Date     | Customer Type |
   #   | 9819427072    | 26051982 | Individual    |
      | 9211368717     | 01011980 | Individual    |

  @EMI
  Scenario Outline: EMI Card Services- Update Pin
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And verify that Customer is able to view EMI Card icon Under EMI network Card tile
    And verify Customer is redirected to EMI Card service page when Click on EMI Card icon through header EMI Card section
    And verify the options displayed under Quick Action Section in RHS when Customer is having Active EMI Card
  #  And verify the options displayed under Thing you can do Section in RHS when Customer is having Active EMI Card
    Then verify Customer is able to redirect on Update PIN page when Customer click on Reset PIN button
 #   Then verify Customer is able to redirect on Update PIN page when Customer click on Update PIN button
    And verify Customer is able to view Update PIN page when Customer clicks on Update PIN in RHS
    And verify Confirm button is disable when customer does not enter any input in New PIN and Re-enter New PIN Number
    And verify OTP is triggered on Customer registered mobile number when click on Proceed button
    Then verify Customer is able to view Validation message when Customer enter two different  pin number
   # And verify OTP is triggered on Customer registered mobile number when click on Confirm button
    And verify  Validation message is displayed when Customer entered an invalid OTP  with given inputs in Enter OTP text field(Update Pin)
    #And verify OTP is triggered to customer registered mobile number when click on Resend OTP button(Update Pin)
    Then verify Customer is able to view Validation message after submitting the Valid OTP

    Examples:
      | Mobile Number | Date     | Customer Type |
     | 9211368717     | 01011980 | Individual    |
    #  |9821466790      | 21101966 | Individual    |
     #  | 7303555577    | 17091985 | Individual    |
  @FailRegK
  Scenario Outline: Emi Card - Shop on Bajaj Mall InActive Card
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User lands on Home Page
    And verify Customer is redirected to EMI Card service page when Click on EMI Card icon through header EMI Card section
    Then verify Customer is able to scroll to Shop  on Bajaj Mall
    When User clicks on Shop On BajajMall Offer and verifies Redirection Url
#    And Clicks "<Section Name>" Section "<Option Name>" Option
#    And verify Page Redirection to "<Expected Url>" Url
    Examples:
      | Mobile Number | Date     | Customer Type | Expected Url                                        | Section Name       | Option Name      |
      | 8800384932    | 02021976 | Individual    | https://www.bajajmall.in/emi-store/smartphones.html | Shop on Bajaj Mall | Smartphones      |

  @EMI
  Scenario Outline: EMI Card Services- scroll EMI Card when  Customer having multiple EMI Card
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And verify Customer is redirected to EMI Card service page when Click on EMI Card icon through header EMI Card section
    Then verify Customer is able to scroll EMI Card when  Customer having multiple EMI Card

    Examples:
      | Mobile Number | Date     | Customer Type |
     # | 9810288053    | 09111978 | Individual    |
    #  | 9307555158    | 22091988 | Individual    |
     #   | 9819427072    | 26051982 | Individual    |
      | 8551090000    | 08081972 | Individual    |


# 9997502000  22091988
@FailRun
  Scenario Outline: EMI Card Services- Unblock card
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User lands on Home Page
    And verify Customer is redirected to EMI Card service page when Click on EMI Card icon through header EMI Card section
    And verify the options displayed under Quick Action Section in RHS when Customer is having Block Card EMI Card
    Then verify Customer is able to redirect on Unblock card page when Customer click on Unblock card button
   # Then verify Customer is able to redirect on OTP Screen when Customer click on View Number CTA
    Then verify user enter unblock invalid otp first time and validate message
    Then verify user enter unblock invalid otp Second time and validate message
    Then verify user enter unblock invalid otp third time and validate otp Exhaust message
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 9819427072    | 26051982 | Individual    |
#
#  @Duplicate Scenario above one
#  Scenario Outline: EMI Card Services- Unblock card
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User lands on Home Page
#    And verify Customer is redirected to EMI Card service page when Click on EMI Card icon through header EMI Card section
#    And verify the options displayed under Quick Action Section in RHS when Customer is having Block Card EMI Card
#    Then verify Customer is able to redirect on OTP Screen when Customer click on Unblock card button
#    And verify OTP is triggered on Customer registered mobile number when click on Confirm button
#    Then verify Validation message "You have exhausted all the attempts to confirm. Please try again after sometime." is displayed when customer invalid OTP for multiple times
#
#    Examples:
#      | Mobile Number | Date     | Customer Type |
#      | 9307555158    | 05051976 | Individual    |
#
#  @RemovedFunctionality
#  Scenario Outline: EMI Card Services- View Number
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User lands on Home Page
#    And verify Customer is redirected to EMI Card service page when Click on EMI Card icon through header EMI Card section
#    And verify the options displayed under Your Card details Section  when Customer is having View Number CTA
#    Then verify Customer is able to redirect on OTP Screen when Customer click on View Number CTA
#    Then verify user enter invalid otp first time and validate message
#    Then verify user enter invalid otp Second time and validate message
#   # And verify OTP is triggered on Customer registered mobile number when click on Confirm button
#    Then verify Validation message "<ExpectedMessage>" is displayed when customer invalid OTP for multiple times
#
#    Examples:
#      | Mobile Number | Date     | Customer Type | ExpectedMessage |
#      | 9325504640    | 18051976 | Individual    | You have exhausted all the attempts to confirm. Please try again after sometime. |
#
#@RemovedFunctionality
#  Scenario Outline: EMI Card Services –Card Number Copy Functionality
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User is on Home Page
#    And verify Customer is redirected to EMI Card service page when Click on EMI Card icon through header EMI Card section
#    And verify OTP is triggered on Customer registered mobile number when click on View Number button on Card details section
#    And verify Customer is able to view Card Number in 4 x 4 view with space after every 4 characters in Unmasked State
#    Then Verify customer is able to copy the Card number when customer click on Copy icon
#    And Verify copy to clipboard Pop-up is displayed
#    Then verify Card Number Get masked when Customer Refresh the Page
#    Examples:
#      | Mobile Number | Date     | Customer Type |
#      | 9819427072| 26051982 | Individual    |

@FailK
  Scenario Outline: EMI Card Services –Card Limited Transaction- card activation date is between 17th Feb 2021 to 11th May 2022
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And verify Customer is redirected to EMI Card service page when Click on EMI Card icon through header EMI Card section
    And verify Wellness benefits details displayed for customers whose card activation date is between 17th Feb 2021 to 11th May 2022
    And Verify Section title - Wellness Benefits
    And Verify Sub Text - Your wellness benefits are activated
    Then Verify Customer clicks on Avail Now CTA
    And verify Page Redirection to "<Expected Url>" Url
    Examples:
      | Mobile Number | Date     | Customer Type | Expected Url |
      | 8976077725| 10111978 | Individual    |  https://www.bajajfinservhealth.in/health-emi-card  |


@Limited
  Scenario Outline: EMI Card Services –Card Limited Transaction
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And verify Customer is redirected to EMI Card service page when Click on EMI Card icon through header EMI Card section
    And verify Customer is able to view Limited Transaction Nudge on Block card
    And customer is able to view Usage Limitations pop-up with Got it CTA when customer click on Limited Transaction Allowed CTA
    And Verify the 3 Points
    Then verify customer is able to view Usage Limitations tab under Relationship Details instead of Where to use tab
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 9028222947| 04071987 | Individual    |

@eiho
  Scenario Outline: EMI Card Services –Card Limited Transaction- Card activation date is from 12th May 2022-80 number of health card
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And verify Customer is redirected to EMI Card service page when Click on EMI Card icon through header EMI Card section
    And verify customer is able to view offer description when customer is having the 80 number of health card
    And Verify the first point- 10 tele Consultations with All Specialists Second Point  Free Preventive health check up update XX Test
    Then Verify Customer clicks on the Avail Now CTA button
    And verify Page Redirection to "<Expected Url>" Url

  Examples:
    | Mobile Number | Date     | Customer Type | Expected Url |
    | 9840052911| 06111980 | Individual    |  https://www.bajajfinservhealth.in/health-emi-card   |


  @FailK
  Scenario Outline: EMI Card Services –Card Limited Transaction- Card activation date is from 12th May 2022-82 number of health card
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And verify Customer is redirected to EMI Card service page when Click on EMI Card icon through header EMI Card section
    And verify customer is able to view offer description when customer is having 82 number of health card
    And Verify the first point 10 tele Consultations with All Specialists Second Point Free Preventive health check up update XX Test third Point Rs. 2,500 Lab & OPD benefit redeemable at any Hospital
    Then Verify Customer clicks on Avail Now CTA button
   And verify Page Redirection to "<Expected Url>" Url

    Examples:
      | Mobile Number | Date     | Customer Type | Expected Url |
      | 8411814259| 29051991 | Individual    |  https://www.bajajfinservhealth.in/health-emi-card   |



