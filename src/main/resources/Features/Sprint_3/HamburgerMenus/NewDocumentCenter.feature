@Doc
Feature: Document Center New

  @loan  @session
  Scenario Outline: Verify that Customer is redirecting to document center landing page with loan tab selected on click of back CTA of browser from loan document page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter/index" Url
    And User clicks on a Card "<Card Number>"
    And User should be redirected to specific document page "<Card Number>"
    And User navigates back
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter/index" Url
    And On Document Center Page "Loans" tab is by Default selected
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     | Card Number    |
      | 8800384932    | 01011986 | Individual    | Mandate and documents | Document Center | 401LFDGS883637 |

  @loan @Closed @new
  Scenario Outline: Verify Closed loan card is clickable & Customer is redirecting to loan document page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter/index" Url
    And Clicks on Filter in Doc Centre Page
    And Unselects a Relation Status in Filter in Doc Page-"Active"
#    And Selects a Relation Status in Filter in Doc Page-"Closed"
    And Clicks on Apply Button in Filter in Doc Page
    Then verify for Card-"Loans" and Status-"Closed", the Cards are Displayed-"Loan Account Number"
    And User clicks on a Card "<Card Number>"
    And User should be redirected to specific document page "<Card Number>"

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     | Card Number    |
      | 9443703371    | 01011986 | Corporate    | Mandate and documents | Document Center | 5550PL15072698 |

  @loan @Closed @new
  Scenario Outline: Verify that Customer is able to Download the file, Downloaded file is in pdf format(Download CTA)- Closed Loan
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter/index" Url
    And Clicks on Filter in Doc Centre Page
    And Unselects a Relation Status in Filter in Doc Page-"Active"
#    And Selects a Relation Status in Filter in Doc Page-"Closed"
    And Clicks on Apply Button in Filter in Doc Page
    And User clicks on a Card "<Card Number>"
    And User should be redirected to specific document page "<Card Number>"
    And verify Customer is able to view content on Loan Document page "<Card Number>"
    And verify User is able to Download the file and the file is in PDF Format FileName "Statement of Account" ,FileDownloadName "401BLF85202471_SOA.pdf"

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     | Card Number    |
      | 9650543332    | 01011986 | Corporate    | Mandate and documents | Document Center | 401BLF85202471 |


  @dep @new @session
  Scenario Outline: Verify that Customer is redirecting to document center landing page with deposit tab selected on click of back CTA of browser from deposit document page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter/index" Url
    And Clicks on the Document Centre Page tab "Deposits"
    And User clicks on a Card "<Card Number>"
    And User should be redirected to specific document page "<Card Number>"
    And User navigates back
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter/index" Url
    And On Document Center Page "Deposits" tab is by Default selected

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     | Card Number |
      | 8800384932    | 02021976 | Individual    | Mandate and documents | Document Center | 927673      |

  @dep @Closed @new
  Scenario Outline: Verify Closed Deposit card is clickable & Customer is redirecting to deposit document page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter/index" Url
    And Clicks on the Document Centre Page tab "Deposits"
    And Clicks on Filter in Doc Centre Page
    And Unselects a Relation Status in Filter in Doc Page-"Active"
#    And Selects a Relation Status in Filter in Doc Page-"Closed"
    And Clicks on Apply Button in Filter in Doc Page
    Then verify for Card-"Deposits" and Status-"Closed", the Cards are Displayed-"Fixed Deposit Number"
    And User clicks on a Card "<Card Number>"
    And User should be redirected to specific document page "<Card Number>"

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     | Card Number |
      | 7798716919    | 01011986 | Individual    | Mandate and documents | Document Center | 563941      |

  @dep @Closed @new
  Scenario Outline: Verify that Customer is able to Download the file, Downloaded file is in pdf format(Download CTA)-Closed deposit
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter/index" Url
    And Clicks on the Document Centre Page tab "Deposits"
    And Clicks on Filter in Doc Centre Page
    And Unselects a Relation Status in Filter in Doc Page-"Active"
#    And Selects a Relation Status in Filter in Doc Page-"Closed"
    And Clicks on Apply Button in Filter in Doc Page
    And User clicks on a Card "<Card Number>"
    And User should be redirected to specific document page "<Card Number>"
    And verify Customer is able to view content on Loan Document page "<Card Number>"
    And verify User is able to Download the file and the file is in PDF Format FileName "Statement Of Account" ,FileDownloadName "FD_SOAReport.pdf"

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     | Card Number |
      | 7798716919    | 01011986 | Individual    | Mandate and documents | Document Center | 563941      |


##########Insurance
  @Insurance_New @session
  Scenario Outline: Verify that Customer is redirecting to document center landing page with insurance tab selected on click of back CTA of browser from Insurance document page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter/index" Url
    And Clicks on the Document Centre Page tab "Insurance"
    And User clicks on a Card "<Card Number>"
    And User should be redirected to specific document page "<Card Number>"
    And User navigates back
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter/index" Url
    And On Document Center Page "Insurance" tab is by Default selected

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     | Card Number    |
      | 9582898063    | 02021976 | Individual    | Mandate and documents | Document Center | PP000208_0GB1F |


  @Closed_Insurance_New
  Scenario Outline: Verify Closed Insurance card is clickable & Customer is redirecting to insurance document page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter/index" Url
    And Clicks on the Document Centre Page tab "Insurance"
    And Clicks on Filter in Doc Centre Page
    And Unselects a Relation Status in Filter in Doc Page-"Active"
    And Unselects a Relation Status in Filter in Doc Page-"Cancelled"
    And Unselects a Relation Status in Filter in Doc Page-"Surrendered"
#    And Selects a Relation Status in Filter in Doc Page-"Closed"
    And Clicks on Apply Button in Filter in Doc Page
    And User clicks on a Card "<Card Number>"
    And User should be redirected to specific document page "<Card Number>"
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     | Card Number     |
      | 8095480845    | 17091994 | Individual    | Mandate and documents | Document Center | CP000053EN15100 |


  @Closed_Insurance-New
  Scenario Outline: Verify that Customer is able to Download the file, Downloaded file is in pdf format(Download CTA)-insurance
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter/index" Url
    And Clicks on the Document Centre Page tab "Insurance"
    And Clicks on Filter in Doc Centre Page
    And Unselects a Relation Status in Filter in Doc Page-"Active"
    And Unselects a Relation Status in Filter in Doc Page-"Cancelled"
    And Unselects a Relation Status in Filter in Doc Page-"Surrendered"
#    And Selects a Relation Status in Filter in Doc Page-"Closed"
    And Clicks on Apply Button in Filter in Doc Page
    And User clicks on a Card "<Card Number>"
    And User should be redirected to specific document page "<Card Number>"
    And verify User is able to Download the file and the file is in PDF Format FileName "Certificate of Insurance" ,FileDownloadName "CP000053EN15100_CertificateOfIns.pdf"
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     | Card Number     |
      | 8095480845    | 17091994 | Individual    | Mandate and documents | Document Center | CP000053EN15100 |

  @Cancelled_Insurance_New
  Scenario Outline: Verify Cancelled Insurance card is clickable & Customer is redirecting to insurance document page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter/index" Url
    And Clicks on the Document Centre Page tab "Insurance"
    And Clicks on Filter in Doc Centre Page
    And Unselects a Relation Status in Filter in Doc Page-"Active"
    And Unselects a Relation Status in Filter in Doc Page-"Closed"
    And Unselects a Relation Status in Filter in Doc Page-"Surrendered"
    And Clicks on Apply Button in Filter in Doc Page
    And User clicks on a Card "<Card Number>"
    And User should be redirected to specific document page "<Card Number>"
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     | Card Number |
      | 8095480845    | 17091994 | Individual    | Mandate and documents | Document Center | 5135485-5135660   |


  @Cancelled_Insurance_New
  Scenario Outline: Verify that Customer is able to Download the file, Downloaded file is in pdf format(Download CTA)-Cancelled insurance
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter/index" Url
    And Clicks on the Document Centre Page tab "Insurance"
    And Clicks on Filter in Doc Centre Page
    And Unselects a Relation Status in Filter in Doc Page-"Active"
    And Unselects a Relation Status in Filter in Doc Page-"Closed"
    And Unselects a Relation Status in Filter in Doc Page-"Surrendered"
    And Clicks on Apply Button in Filter in Doc Page
    And User clicks on a Card "<Card Number>"
    And User should be redirected to specific document page "<Card Number>"
    And verify User is able to Download the file and the file is in PDF Format FileName "Certificate of Insurance" ,FileDownloadName "5135485-5135660_CertificateOfIns.pdf"
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     | Card Number |
      | 8095480845    | 17091994 | Individual    | Mandate and documents | Document Center | 5135485-5135660   |

  @Surrendered_Insurance_New
  Scenario Outline: Verify Surrendered Insurance card is clickable & Customer is redirecting to insurance document page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter/index" Url
    And Clicks on the Document Centre Page tab "Insurance"
    And Clicks on Filter in Doc Centre Page
    And Unselects a Relation Status in Filter in Doc Page-"Active"
    And Unselects a Relation Status in Filter in Doc Page-"Closed"
    And Unselects a Relation Status in Filter in Doc Page-"Cancelled"
#    And Selects a Relation Status in Filter in Doc Page-"Surrendered"
    And Clicks on Apply Button in Filter in Doc Page
    And User clicks on a Card "<Card Number>"
    And User should be redirected to specific document page "<Card Number>"
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     | Card Number    |
      | 9582898063    | 17091994 | Individual    | Mandate and documents | Document Center | PP000208_0GB1F |


  @Surrendered_Insurance_New
  Scenario Outline: Verify that Customer is able to Download the file, Downloaded file is in pdf format(Download CTA)-Surrendered insurance
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter/index" Url
    And Clicks on the Document Centre Page tab "Insurance"
    And Clicks on Filter in Doc Centre Page
    And Unselects a Relation Status in Filter in Doc Page-"Active"
    And Unselects a Relation Status in Filter in Doc Page-"Closed"
    And Unselects a Relation Status in Filter in Doc Page-"Cancelled"
    And Clicks on Apply Button in Filter in Doc Page
    And User clicks on a Card "<Card Number>"
    And User should be redirected to specific document page "<Card Number>"
    And verify User is able to Download the file and the file is in PDF Format FileName "Certificate of Insurance" ,FileDownloadName "PP000208_0GB1F_CertificateOfIns.pdf"
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     | Card Number    |
      | 9582898063    | 17091994 | Individual    | Mandate and documents | Document Center | PP000208_0GB1F |


#########No tiles

  @Loan_New
  Scenario Outline: Verify that message is displayed when customer dont have Active loans
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter/index" Url
    And Verify that message is displayed to customer "<Message>"
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     | Message                                |
      | 9650543332    | 16101986 | Individual    | Mandate and documents | Document Center | You do not have any Active Loans with us |

  @Closed_Loan_New
  Scenario Outline: Verify that message is displayed when customer dont have Closed loans
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter/index" Url
    And Clicks on Filter in Doc Centre Page
    And Unselects a Relation Status in Filter in Doc Page-"Active"
#    And Selects a Relation Status in Filter in Doc Page-"Closed"
    And Clicks on Apply Button in Filter in Doc Page
    And Verify that message is displayed to customer "<Message>"
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     | Message                                |
      | 9594134201    | 16101986 | Individual    | Mandate and documents | Document Center | You do not have any Closed Loans with us |

  @No_Loan_New
  Scenario Outline: Verify that message is displayed when customer dont have Active or closed loans
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter/index" Url
    And Clicks on Filter in Doc Centre Page
    And Selects a Relation Status in Filter in Doc Page-"Active"
#    And Selects a Relation Status in Filter in Doc Page-"Closed"
    And Clicks on Apply Button in Filter in Doc Page
    And Verify that message is displayed to customer "<Message>"
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     | Message                                          |
      | 9594134201    | 16101986 | Individual    | Mandate and documents | Document Center | You do not have any Active or Closed Loans with us |


  @Deposit_New
  Scenario Outline: Verify that message is displayed when customer dont have Active deposits
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter/index" Url
    And Clicks on the Document Centre Page tab "Deposits"
    And Unselects a Relation Status in Filter in Doc Page-"Closed"
    And Verify that message is displayed to customer "<Message>"
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     | Message                                   |
      | 8095480845    | 16101986 | Individual    | Mandate and documents | Document Center | You do not have any Active Deposits with us |

  @Closed_Deposit_New
  Scenario Outline: Verify that message is displayed when customer dont have Closed deposit
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter/index" Url
    And Clicks on the Document Centre Page tab "Deposits"
    And Clicks on Filter in Doc Centre Page
    And Unselects a Relation Status in Filter in Doc Page-"Active"
#    And Selects a Relation Status in Filter in Doc Page-"Closed"
    And Clicks on Apply Button in Filter in Doc Page
    And Verify that message is displayed to customer "<Message>"
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     | Message                                   |
      | 9594134201    | 16101986 | Individual    | Mandate and documents | Document Center | You do not have any Closed Deposits with us |

  @No_Deposit_New
  Scenario Outline: Verify that message is displayed when customer dont have Active or closed deposit
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter/index" Url
    And Clicks on the Document Centre Page tab "Deposits"
    And Clicks on Filter in Doc Centre Page
#    And Selects a Relation Status in Filter in Doc Page-"Active"
#    And Selects a Relation Status in Filter in Doc Page-"Closed"
    And Clicks on Apply Button in Filter in Doc Page
    And Verify that message is displayed to customer "<Message>"
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     | Message                                             |
      | 9594134201    | 16101986 | Individual    | Mandate and documents | Document Center | You do not have any Active or Closed Deposits with us |


  @Insurance_New
  Scenario Outline: Verify that message is displayed when customer dont have Active Insurance
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter/index" Url
    And Clicks on the Document Centre Page tab "Insurance"
    And Unselects a Relation Status in Filter in Doc Page-"Closed"
    And Unselects a Relation Status in Filter in Doc Page-"Cancelled"
    And Unselects a Relation Status in Filter in Doc Page-"Surrendered"
    And Verify that message is displayed to customer "<Message>"
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     | Message                                    |
      | 8800384932    | 16101986 | Individual    | Mandate and documents | Document Center | You do not have any Active Insurance with us |

  @Closed_Insurance_New
  Scenario Outline: Verify that message is displayed when customer dont have Closed insurance
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter/index" Url
    And Clicks on the Document Centre Page tab "Insurance"
    And Clicks on Filter in Doc Centre Page
    And Unselects a Relation Status in Filter in Doc Page-"Active"
    And Unselects a Relation Status in Filter in Doc Page-"Cancelled"
    And Unselects a Relation Status in Filter in Doc Page-"Surrendered"
#    And Selects a Relation Status in Filter in Doc Page-"Closed"
    And Clicks on Apply Button in Filter in Doc Page
    And Verify that message is displayed to customer "<Message>"
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     | Message                                    |
      | 9594134201    | 16101986 | Individual    | Mandate and documents | Document Center | You do not have any Closed Insurance with us |

  @Cancelled_Insurance_New
  Scenario Outline: Verify that message is displayed when customer dont have Cancelled insurance
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter/index" Url
    And Clicks on the Document Centre Page tab "Insurance"
    And Clicks on Filter in Doc Centre Page
    And Unselects a Relation Status in Filter in Doc Page-"Active"
    And Unselects a Relation Status in Filter in Doc Page-"Closed"
    And Unselects a Relation Status in Filter in Doc Page-"Surrendered"
#    And Selects a Relation Status in Filter in Doc Page-"Cancelled"
    And Clicks on Apply Button in Filter in Doc Page
    And Verify that message is displayed to customer "<Message>"
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     | Message                                       |
      | 9594134201    | 16101986 | Individual    | Mandate and documents | Document Center | You do not have any Cancelled Insurance with us |

  @Surrendered_Insurance_New
  Scenario Outline: Verify that message is displayed when customer dont have Surrendered insurance
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter/index" Url
    And Clicks on the Document Centre Page tab "Insurance"
    And Clicks on Filter in Doc Centre Page
    And Unselects a Relation Status in Filter in Doc Page-"Active"
    And Unselects a Relation Status in Filter in Doc Page-"Closed"
    And Unselects a Relation Status in Filter in Doc Page-"Cancelled"
#    And Selects a Relation Status in Filter in Doc Page-"Surrendered"
    And Clicks on Apply Button in Filter in Doc Page
    And Verify that message is displayed to customer "<Message>"
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     | Message                                         |
      | 9594134201    | 16101986 | Individual    | Mandate and documents | Document Center | You do not have any Surrendered Insurance with us |


  @No_Insurance_New
  Scenario Outline: Verify that message is displayed when customer dont have Active, Closed, Cancelled or Surrendered insurance
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter/index" Url
    And Clicks on the Document Centre Page tab "Insurance"
    And Clicks on Filter in Doc Centre Page
#    And Selects a Relation Status in Filter in Doc Page-"Closed"
#    And Selects a Relation Status in Filter in Doc Page-"Cancelled"
#    And Selects a Relation Status in Filter in Doc Page-"Surrendered"
    And Clicks on Apply Button in Filter in Doc Page
    And Verify that message is displayed to customer "<Message>"
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     | Message                                                                      |
      | 9594134201    | 16101986 | Individual    | Mandate and documents | Document Center | You do not have any Active, Closed, Cancelled or Surrendered Insurance with us |



























