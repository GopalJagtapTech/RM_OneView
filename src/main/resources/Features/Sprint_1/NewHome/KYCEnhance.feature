Feature: KYC Enhancement

  @Work
  Scenario Outline: Verify customer is able to view re kyc popup when re KYC flag Y and KYC renewal date already passed
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And  verify re KYC popup
    Then verify the following buttons "<CTA>" are displayed in the KYC Buttons
    Examples:
      | Mobile Number | Date       | Customer Type | CTA                          |
      | 9768741343    | 11111999 | Individual    | This is correct#Complete KYC |

  @Work
  Scenario Outline: Verify customer is able to view given field on re kyc popup
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And  verify re KYC popup
    Then verify the field "Name :" in the KYC Popup
    Then verify the field "Address :" in the KYC Popup
    Then verify the field "Permanent Account Number :" in the KYC Popup

    Examples:
      | Mobile Number | Date       | Customer Type | Field            | CTA                              |
      | 9768741343    | 11111999 | Individual    | Name Address PAN | This is correct and Complete KYC |

  @Work
  Scenario Outline: Verify customer is able to click on two CTA from re kyc popup
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And  verify re KYC popup
    And  Click on two "<CTA>" button
    Then it should be Redirected to "<Expected Url>"
   # Then Customer should  be able to click on two CTA from re KYC popup on homepage and It should be redirected to respective page
    Examples:
      | Mobile Number | Date       | Customer Type | CTA                                 | Expected Url |
      |    9768741343 | 11111999 | Individual    | This is correct |   https://uat-oneweb.bajajfinserv.in/MyAccountCustomer/Home/Index      |
      |    9768741343 | 11111999 | Individual    | Complete KYC |      https://uat-oneweb.bajajfinserv.in/MyAccountService/UpdateDetails/UserProfileDetails                                 |

  @Work
  Scenario Outline:Verify customer is able to view re kyc popup when In demographic API re KYC flag N and KYC renewal date already passed
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And  verify re KYC popup
    Then Customer should be able to view re KYC popup on homepage
    Examples:
      | Mobile Number | Date       | Customer Type |
      |    9004190960  | 11111999 | Individual    |

  @Work
  Scenario Outline: Verify customer is able to view re kyc popup when In demographic API, re KYC flag Y and KYC renewal date is current date
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And verify re KYC popup
    Then Customer should be able to view re KYC popup on homepage
    Examples:
      | Mobile Number | Date       | Customer Type |
      | 7505755893    | 08.04.1986 | Individual|
  @NotWorkCuSTID
  Scenario Outline: Verify customer is able to view re kyc popup when In demographic API, re KYC flag N and KYC renewal date is current date
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And  verify re KYC popup
    Then Customer should be able to view re KYC popup on homepage
    Examples:
      | Mobile Number | Date       | Customer Type |
      | 9470931846   | 08.04.1986 | Individual|

@NewK
  Scenario Outline: Verify customer is able to view re kyc popup when In demographic API, re KYC flag Y and KYC renewal date is Future date
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on the Home Page
   # And  verify re KYC popup
    Then Customer should not be able to view re KYC popup on homepage
    Examples:
      | Mobile Number | Date       | Customer Type |
      |  9819171772  | 08.04.1986 | Individual|
@NewK
  Scenario Outline: Verify customer is able to view re kyc popup when In demographic API, re KYC flag N and KYC renewal date is Future date
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User lands on Home Page
    And  verify re KYC popup
    Then Customer should be able to view re KYC popup on homepage
    Examples:
      | Mobile Number | Date       | Customer Type |
      |  9210067348   | 08.04.1986 | Individual|
#NotWorking Cust ID
#@NewKK
#  Scenario Outline: Verify customer is able to view re kyc popup In demographic API, re KYC flag Y and reason is null and CKYC number not available
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User is on Home Page
#    And  verify re KYC popup
#    Then Customer should  be able to view re KYC popup on homepage with Two CTA This is correct and Complete KYC should be displayed
#    Examples:
#      | Mobile Number | Date       | Customer Type |
#      | 9894315803            | 08.04.1986 | Individual|
#
#  @NewKK
#  Scenario Outline: Verify customer is able to view re kyc popup In demographic API, re KYC flag Y and reason is not null and CKYC number not available
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User is on Home Page
#    And  verify re KYC popup
#    Then Customer should  be able to view re KYC popup on homepage with Two CTA This is correct and Complete KYC should be displayed
#    Examples:
#      | Mobile Number | Date       | Customer Type |
#      |   9818259832          | 08.04.1986 | Individual|
#@NewKK
#  Scenario Outline: Verify customer is able to view re kyc popup In demographic API, re KYC flag Y and reason is not null and CKYC number is available
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User is on Home Page
#    And  verify re KYC popup
#    Then Customer should not be able to view re KYC popup on homepage
#    Examples:
#      | Mobile Number | Date       | Customer Type |
#      |   8289017067          | 08.04.1986 | Individual|
#@NewKK
#  Scenario Outline: Verify customer is able to view re kyc popup In demographic API, re KYC flag N and reason is not null and CKYC number is available
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User is on Home Page
#    And  verify re KYC popup
#    Then Customer should not be able to view re KYC popup on homepage
#    Examples:
#      | Mobile Number | Date       | Customer Type |
#      | 8289017067            | 08.04.1986 | Individual|
#@NewKK
#  Scenario Outline: Verify customer is able to view re kyc popup In demographic API, re KYC flag N and reason is not null and CKYC number not available
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User is on Home Page
#    And  verify re KYC popup
#    Then Customer should be able to view re KYC popup on homepage
#    Examples:
#      | Mobile Number | Date       | Customer Type |
#      |   9810194606          | 08.04.1986 | Individual|
#@Complete
#  Scenario Outline: Verify customer is able to view re kyc popup In demographic API, re KYC flag is Y and   KYC renewal date is already passed & reckyc reason OVD document not available in DMS
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User is on Home Page
#    And  verify re KYC popup
#    Then Customer should  be able to view re KYC popup on homepage with Two CTA This is correct and Complete KYC should be displayed
##    And Verify Complete KYC <CTA>
##    Then Customer should be able to view re KYC popup on homepage with CTA Complete KYC
#    Examples:
#      | Mobile Number | Date       | Customer Type |
#      | 9848502405 | 08.04.1986 | Individual |
#  @KYC
#  Scenario Outline: Verify customer is able to view re kyc popup In demographic API, KYC Flag (rekycflag) is Y and KYC Renewal date (kycrenewaldate) is already passed & rekyc reason is except null i.e reckyc reason other than OVD document
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User is on Home Page
#    And  verify re KYC popup
#    Then Customer should be able to view re KYC popup on homepage
#    Examples:
#      | Mobile Number | Date       | Customer Type |
#      |  9827895504           | 08.04.1986 | Individual|
#  @KYC
#  Scenario Outline: Verify customer is able to view re kyc popup In demographic API, Re KYC flag N and renewal date in next 90 days from today
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User is on Home Page
#    And  verify re KYC popup
#    Then Customer should  be able to view re KYC popup on homepage with Two CTA This is correct and Complete KYC should be displayed
#    Examples:
#      | Mobile Number | Date       | Customer Type |
#      | 9827895504             | 08.04.1986 | Individual|
#  @KYC
#  Scenario Outline: Verify customer is able to view re kyc popup In demographic API, Re KYC flag N and renewal date is more than 90 days from today
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User is on Home Page
#    And  verify re KYC popup
#    Then Customer should not be able to view re KYC popup on homepage
#    Examples:
#      | Mobile Number | Date       | Customer Type |
#      | 9819171772            | 08.04.1986 | Individual|
#  @KYC
#  Scenario Outline: Verify customer is able to view re kyc popup In demographic API, Re KYC flag N and renewal date is less than 90 days from today
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User is on Home Page
#    And  verify re KYC popup
#    Then Customer should be able to view re KYC popup on homepage
#    Examples:
#      | Mobile Number | Date       | Customer Type |
#      |  9588655157           | 08.04.1986 | Individual|
#@KYC
#  Scenario Outline: Verify customer is able to view re kyc popup In demographic API, Re KYC flag Y and renewal date is less than 90 days from today
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User is on Home Page
#    And  verify re KYC popup
#    Then Customer should not be able to view re KYC popup on homepage
#    Examples:
#      | Mobile Number | Date       | Customer Type |
#      |  9890078651           | 08.04.1986 | Individual|
#
#@Clarification
#  Scenario Outline: Verify customer is able to view re kyc popup In demographic API,Re KYC flag is N & Rekyc is unsuccessful
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User is on Home Page
#    And  verify re KYC popup
#    Then Customer should be able to view re KYC popup on homepage after 3 days of KYC unsuccessful
#    Examples:
#      | Mobile Number | Date       | Customer Type |
#      | 8948227722    | 08.04.1986 | Individual|
#
