@Doc
Feature: Document Centre

  @loan
  Scenario Outline: Hamburger- Verify Mandate and documents- Document Center
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter" Url
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     |
      | 8800384932    | 26051982 | Individual    | Mandate and documents | Document Center |

  @loan
  Scenario Outline: Verify that customer is able to view product name tabs on Document center page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter" Url
    And verify that following Tabs "<Tabnames>" are Displayed in Document Centre Page

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     | Tabnames                 |
      | 8800384932    | 26051982 | Individual    | Mandate and documents | Document Center | Loans,Insurance,Deposits |

  @loan
  Scenario Outline: Verify that Loan product tab by default is selected on Document center page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter" Url
    And verify that Loan product tab by default is selected on Document center page

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     |
      | 8800384932    | 26051982 | Individual    | Mandate and documents | Document Center |

  @loan @Azure
  Scenario Outline: Verify that customer is able to view all active LAN with loan cards
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter" Url
    And verify All Loan cards are Displayed in Document Center Page-"Loan Cards","Loan Account Number"
    Then verify RHS "Quick Actions" following Options: "Help and Support, Passbook" are Displayed
    And verify Middle section is displayed fetched from AEM

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     |
      | 8800384932    | 26051982 | Individual    | Mandate and documents | Document Center |

  @loan
  Scenario Outline: Verify that customer is able to view fields on loan card
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter" Url
    And verify Details on the Loan Cards in Document Center Page- "Loans" "Loan Account Number"

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     |
      | 8800384932    | 01011986 | Individual    | Mandate and documents | Document Center |

  @loan
  Scenario Outline: Verify loan card is clickable & Customer is redirecting to loan document page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter" Url
    And User clicks on a Card "<Card Number>"
    And User should be redirected to specific document page "<Card Number>"
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     | Card Number    |
      | 8800384932    | 01011986 | Individual    | Mandate and documents | Document Center | 401LFDGS883637 |

  @loan
  Scenario Outline: Verify that Customer is able to view content on Loan Document page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter" Url
    And User clicks on a Card "<Card Number>"
    And User should be redirected to specific document page "<Card Number>"
    And verify Customer is able to view content on Loan Document page "<Card Number>"
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     | Card Number    |
      | 8800384932    | 01011986 | Individual    | Mandate and documents | Document Center | 401LFDGS883637 |

  @loan
  Scenario Outline: Verify that Customer is able to Download the file, Downloaded file is in pdf format(Download CTA)-Loan
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter" Url
    And User clicks on a Card "<Card Number>"
    And User should be redirected to specific document page "<Card Number>"
    And verify User is able to Download the file and the file is in PDF Format FileName "Statement of Account" ,FileDownloadName "401LFDGS883637_SOA.pdf"
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     | Card Number    |
      | 8800384932    | 01011986 | Individual    | Mandate and documents | Document Center | 401LFDGS883637 |

  @loan
  Scenario Outline: Verify that Customer is able to Download the file, Downloaded file is in pdf format(When Clicked on Doc)-Loan
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter" Url
    And User clicks on a Card "<Card Number>"
    And User should be redirected to specific document page "<Card Number>"
    And verify User is able to Download the file when customer clicks on document FileName "Statement of Account" ,FileDownloadName "401LFDGS883637_SOA.pdf"
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     | Card Number    |
      | 8800384932    | 01011986 | Individual    | Mandate and documents | Document Center | 401LFDGS883637 |

###################DEPOSITS#######################
  @dep
  Scenario Outline: Verify that Fixed Deposits product tab is visible & the Cards displayed when customer clicks on Fixed Deposits tab
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter" Url
    And Clicks on the Document Centre Page tab "Deposits"
    And verify All cards are Displayed in Document Center Page-"Deposit Cards","Fixed Deposit Number"
    Then verify RHS "Quick Actions" following Options: "Help and Support, Passbook" are Displayed
    And verify Middle section is displayed fetched from AEM

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     |
      | 8800384932    | 02021976 | Individual    | Mandate and documents | Document Center |

  @dep
  Scenario Outline: Verify that customer is able to view fields on FDs and SDPs card
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter" Url
    And Clicks on the Document Centre Page tab "Deposits"
    And verify Details on the Cards in Document Center Page- "Deposits" "Fixed Deposit Number"

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     |
      | 8800384932    | 02021976 | Individual    | Mandate and documents | Document Center |

  @dep
  Scenario Outline: Verify Deposit card is clickable & Customer is redirecting to respective document page -SDP
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter" Url
    And Clicks on the Document Centre Page tab "Deposits"
    And User clicks on a Card "<Card Number>"
    And User should be redirected to specific document page "<Card Number>"

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     | Card Number |
      | 8800384932    | 02021976 | Individual    | Mandate and documents | Document Center | 927673      |

  @dep
  Scenario Outline: Verify Deposit card is clickable & Customer is redirecting to respective document page -SDP
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter" Url
    And Clicks on the Document Centre Page tab "Deposits"
    And User clicks on a Card "<Card Number>"
    And User should be redirected to specific document page "<Card Number>"
    Then verify the following Documents are displayed in Doc page "<Docs>"

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     | Card Number | Docs                                                                                                            |
      | 8800384932    | 02021976 | Individual    | Mandate and documents | Document Center | 927673      | Prefilled- Form 15G/15H#Statement Of Account#Interest Certificate#Fixed Deposit Receipt#Provisional Certificate |

  @dep
  Scenario Outline: Verify Deposit card is clickable & Customer is redirecting to respective document page -FD
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter" Url
    And Clicks on the Document Centre Page tab "Deposits"
    And User clicks on a Card "<Card Number>"
    And User should be redirected to specific document page "<Card Number>"
    Then verify the following Documents are displayed in Doc page "<Docs>"

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     | Card Number | Docs                                                                                                            |
      | 8800384932    | 02021976 | Individual    | Mandate and documents | Document Center | 514729      | Prefilled- Form 15G/15H#Statement Of Account#Interest Certificate#Fixed Deposit Receipt#Provisional Certificate |

  @dep
  Scenario Outline: Verify that Customer is able to view content on FDs and SDPs Document page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter" Url
    And Clicks on the Document Centre Page tab "Deposits"
    And User clicks on a Card "<Card Number>"
    And User should be redirected to specific document page "<Card Number>"
    And verify that Customer is able to view content on FDs and SDPs Document page "<Card Number>"


    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     | Card Number |
      | 8800384932    | 02021976 | Individual    | Mandate and documents | Document Center | 927673      |

  @dep
  Scenario Outline: Verify that Customer is able to Download the file, Downloaded file is in pdf format(Download CTA)-SDP
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter" Url
    And Clicks on the Document Centre Page tab "Deposits"
    And User clicks on a Card "<Card Number>"
    And User should be redirected to specific document page "<Card Number>"
    And verify User is able to Download the file and the file is in PDF Format FileName "Statement Of Account" ,FileDownloadName "FD_SOAReport.pdf"

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     | Card Number |
      | 8800384932    | 02021976 | Individual    | Mandate and documents | Document Center | 927673      |

  @dep
  Scenario Outline: Verify that document is downloading in PDF format when customer clicks on document-SDP
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter" Url
    And Clicks on the Document Centre Page tab "Deposits"
    And User clicks on a Card "<Card Number>"
    And User should be redirected to specific document page "<Card Number>"
    And verify User is able to Download the file when customer clicks on document FileName "Fixed Deposit Receipt" ,FileDownloadName "FD_Reciept.pdf"

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     | Card Number |
      | 8800384932    | 02021976 | Individual    | Mandate and documents | Document Center | 927673      |

#INSURANCE
  @Insur
  Scenario Outline: verify that Insurance product tab is visible when customer clicks on Insurance tab & view all active insurance
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter" Url
    And verify that following Tab "Insurance" is Displayed in Document Centre Page
    And Clicks on the Document Centre Page tab "Insurance"
    And verify All cards are Displayed in Document Center Page-"All Insurance","Policy Number"
    Then verify RHS "Quick Actions" following Options: "Help and Support, Passbook" are Displayed
    And verify Middle section is displayed fetched from AEM

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     |
      | 9582898063    | 02021976 | Individual    | Mandate and documents | Document Center |

  @Insur
  Scenario Outline: Verify that customer is able to view fields on Insurance cards
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter" Url
    And Clicks on the Document Centre Page tab "Insurance"
    And verify Details on the Cards in Document Center Page- "Insurance" "Policy Number"

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     |
      | 9582898063    | 02021976 | Individual    | Mandate and documents | Document Center |

  @Insur
  Scenario Outline: Verify Insurance card is clickable & Customer is redirecting to respective document page -Insurance
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter" Url
    And Clicks on the Document Centre Page tab "Insurance"
    And User clicks on a Card "<Card Number>"
    And User should be redirected to specific document page "<Card Number>"

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     | Card Number    |
      | 9582898063    | 02021976 | Individual    | Mandate and documents | Document Center | PP000208_0GB1F |

  @Insur
  Scenario Outline: Verify that Customer is able to view content on Insurance Document page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter" Url
    And Clicks on the Document Centre Page tab "Insurance"
    And User clicks on a Card "<Card Number>"
    And User should be redirected to specific document page "<Card Number>"
    And verify that Customer is able to view content on Insurance Document page "<Card Number>"

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     | Card Number    |
      | 9582898063    | 02021976 | Individual    | Mandate and documents | Document Center | PP000208_0GB1F |

  @Insur
  Scenario Outline: Verify that Customer is able to view list of documents for insurance
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter" Url
    And Clicks on the Document Centre Page tab "Insurance"
    And User clicks on a Card "<Card Number>"
    And User should be redirected to specific document page "<Card Number>"
    And verify that Customer is able to view list of documents for insurance "Certificate of Insurance"

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     | Card Number    |
      | 9582898063    | 02021976 | Individual    | Mandate and documents | Document Center | PP000208_0GB1F |


  @Insur
  Scenario Outline: Verify that Customer is able to Download the file, Downloaded file is in pdf format(Download CTA)-Insurance
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter" Url
    And Clicks on the Document Centre Page tab "Insurance"
    And User clicks on a Card "<Card Number>"
    And User should be redirected to specific document page "<Card Number>"
    And verify User is able to Download the file and the file is in PDF Format FileName "Certificate of Insurance" ,FileDownloadName "PP000208_0GB1F_CertificateOfIns.pdf"

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     | Card Number    |
      | 9582898063    | 02021976 | Individual    | Mandate and documents | Document Center | PP000208_0GB1F |

  @Insur
  Scenario Outline: Verify that document is downloading in PDF format when customer clicks on document-Insurance
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter" Url
    And Clicks on the Document Centre Page tab "Insurance"
    And User clicks on a Card "<Card Number>"
    And User should be redirected to specific document page "<Card Number>"
    And verify User is able to Download the file when customer clicks on document FileName "Certificate of Insurance" ,FileDownloadName "PP000208_0GB1F_CertificateOfIns.pdf"

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     | Card Number    |
      | 9582898063    | 02021976 | Individual    | Mandate and documents | Document Center | PP000208_0GB1F |

#RHS
  @rhs
  Scenario Outline: Verify that Customer is redirecting to Help and support page when they click on Help and support from Document Page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter" Url
    And Customer clicks on "Help and Support" option in RHS
    And Verify Customer Redirected to "MyAccountService//HelpAndSupport/Index" Url
#    Then verify Customer redirected to the respect page"<Header Text>"

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     | Header Text        |
      | 8800384932    | 02021976 | Individual    | Mandate and documents | Document Center | My Raised Requests |

  @rhs
  Scenario Outline: Verify that Customer is redirecting to Passbook page when they click on passbook from Document Page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter" Url
    And Customer clicks on "Passbook" option in RHS
    And Verify Customer Redirected to "MyAccountPayments/passbook/PassbookBBPS" Url
#    Then verify Customer redirected to the Passbook page"<Header Text>"
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     | Header Text        |
      | 8800384932    | 02021976 | Individual    | Mandate and documents | Document Center | Bills and Recharge |


##############FILTER#############################
##Loan
  @filter
  Scenario Outline: Doc Centre- Filter Loan Tab
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter" Url
    And Clicks on the Document Centre Page tab "Loans"
    And Clicks on Filter in Doc Centre Page
    Then verify Contents in Doc Page Filter Text Options: "Filters, Filter the documents using the below parameters, Relation Status" and Status options: "Active, Closed"
    And User clicks on close Button in Doc Page Filter
    Then verify Filter is closed in Doc centre Page
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     |
      | 8800384932    | 02021976 | Individual    | Mandate and documents | Document Center |

  @filter
  Scenario Outline: Doc Centre- Filter Deposits Tab
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter" Url
    And Clicks on the Document Centre Page tab "Deposits"
    And Clicks on Filter in Doc Centre Page
    Then verify Contents in Doc Page Filter Text Options: "Filters, Filter the documents using the below parameters, Relation Status" and Status options: "Active, Closed"
    And User clicks on close Button in Doc Page Filter
    Then verify Filter is closed in Doc centre Page

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     |
      | 8800384932    | 02021976 | Individual    | Mandate and documents | Document Center |

  @filter
  Scenario Outline: Doc Centre- Filter Insurance Tab
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter" Url
    And Clicks on the Document Centre Page tab "Insurance"
    And Clicks on Filter in Doc Centre Page
    Then verify Contents in Doc Page Filter Text Options: "Filters, Filter the documents using the below parameters, Relation Status" and Status options: "Active, Closed, Cancelled, Surrendered"
    And User clicks on close Button in Doc Page Filter
    Then verify Filter is closed in Doc centre Page

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     |
      | 8800384932    | 02021976 | Individual    | Mandate and documents | Document Center |

  @filter
  Scenario Outline: Doc Centre- Filter Loan Tab- Active
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter" Url
    And Clicks on the Document Centre Page tab "Loans"
    And Clicks on Filter in Doc Centre Page
    And Unselects a Relation Status in Filter in Doc Page-"Closed"
    And Clicks on Apply Button in Filter in Doc Page
    Then verify for Card-"Loans" and Status-"Active", the Cards are Displayed-"Loan Account Number"
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     |
      | 8800384932    | 02021976 | Individual    | Mandate and documents | Document Center |

  @filter
  Scenario Outline: Doc Centre- Filter Loan Tab- Closed
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter" Url
    And Clicks on the Document Centre Page tab "Loans"
    And Clicks on Filter in Doc Centre Page
    And Unselects a Relation Status in Filter in Doc Page-"Active"
#    And Selects a Relation Status in Filter in Doc Page-"Closed"
    And Clicks on Apply Button in Filter in Doc Page
    Then verify for Card-"Loans" and Status-"Closed", the Cards are Displayed-"Loan Account Number"
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     |
      | 8800384932    | 02021976 | Individual    | Mandate and documents | Document Center |

  @filter
  Scenario Outline: Doc Centre- Filter Loan Tab- ClearAll
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter" Url
    And Clicks on the Document Centre Page tab "Loans"
    And Clicks on Filter in Doc Centre Page
#    And Selects a Relation Status in Filter in Doc Page-"Active"
#    And Selects a Relation Status in Filter in Doc Page-"Closed"
    And Clicks on Apply Button in Filter in Doc Page
    Then verify for Card-"Loans" and Status-"All", the Cards are Displayed-"Loan Account Number"
    And Clicks on Filter in Doc Centre Page
    And clicks on Clear All Button in filter
    Then verify for Card-"Loans" and Status-"All", the Cards are Displayed-"Loan Account Number"

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     |
      | 8800384932    | 02021976 | Individual    | Mandate and documents | Document Center |

  @filter
  Scenario Outline: Doc Centre- Filter Deposits Tab- Active
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter" Url
    And Clicks on the Document Centre Page tab "Deposits"
    And Clicks on Filter in Doc Centre Page
    And Unselects a Relation Status in Filter in Doc Page-"Closed"
    And Clicks on Apply Button in Filter in Doc Page
    Then verify for Card-"Deposits" and Status-"Active", the Cards are Displayed-"Fixed Deposit Number"
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     |
      | 8800384932    | 02021976 | Individual    | Mandate and documents | Document Center |

  @filter
  Scenario Outline: Doc Centre- Filter Deposits Tab- Closed
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter" Url
    And Clicks on the Document Centre Page tab "Deposits"
    And Clicks on Filter in Doc Centre Page
    And Unselects a Relation Status in Filter in Doc Page-"Active"
#    And Selects a Relation Status in Filter in Doc Page-"Closed"
    And Clicks on Apply Button in Filter in Doc Page
    Then verify for Card-"Deposits" and Status-"Closed", the Cards are Displayed-"Fixed Deposit Number"
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     |
      | 8800384932    | 02021976 | Individual    | Mandate and documents | Document Center |

  @filter
  Scenario Outline: Doc Centre- Filter Insurance Tab- Active
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter" Url
    And Clicks on the Document Centre Page tab "Insurance"
    And Clicks on Filter in Doc Centre Page
    And Unselects a Relation Status in Filter in Doc Page-"Closed"
    And Unselects a Relation Status in Filter in Doc Page-"Cancelled"
    And Unselects a Relation Status in Filter in Doc Page-"Surrendered"
    And Clicks on Apply Button in Filter in Doc Page
    Then verify for Card-"Insurance" and Status-"Active", the Cards are Displayed-"Policy Number"
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     |
      | 8095480845    | 02021976 | Individual    | Mandate and documents | Document Center |

  @filter
  Scenario Outline: Doc Centre- Filter Insurance Tab- Closed
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter" Url
    And Clicks on the Document Centre Page tab "Insurance"
    And Clicks on Filter in Doc Centre Page
    And Unselects a Relation Status in Filter in Doc Page-"Active"
    And Unselects a Relation Status in Filter in Doc Page-"Cancelled"
    And Unselects a Relation Status in Filter in Doc Page-"Surrendered"
    And Clicks on Apply Button in Filter in Doc Page
    Then verify for Card-"Insurance" and Status-"Closed", the Cards are Displayed-"Policy Number"
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     |
      | 8095480845    | 02021976 | Individual    | Mandate and documents | Document Center |

  @filter
  Scenario Outline: Doc Centre- Filter Insurance Tab- Cancelled
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter" Url
    And Clicks on the Document Centre Page tab "Insurance"
    And Clicks on Filter in Doc Centre Page
    And Unselects a Relation Status in Filter in Doc Page-"Active"
    And Unselects a Relation Status in Filter in Doc Page-"Closed"
    And Unselects a Relation Status in Filter in Doc Page-"Surrendered"
    And Clicks on Apply Button in Filter in Doc Page
    Then verify for Card-"Insurance" and Status-"Cancelled", the Cards are Displayed-"Policy Number"
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     |
      | 8095480845    | 02021976 | Individual    | Mandate and documents | Document Center |

  @filter
  Scenario Outline: Doc Centre- Filter Insurance Tab- Surrendered
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter" Url
    And Clicks on the Document Centre Page tab "Insurance"
    And Clicks on Filter in Doc Centre Page
    And Unselects a Relation Status in Filter in Doc Page-"Active"
    And Unselects a Relation Status in Filter in Doc Page-"Closed"
    And Unselects a Relation Status in Filter in Doc Page-"Cancelled"
    And Clicks on Apply Button in Filter in Doc Page
    Then verify for Card-"Insurance" and Status-"Surrendered", the Cards are Displayed-"Policy Number"
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     |
      | 8095480845    | 02021976 | Individual    | Mandate and documents | Document Center |


##################My Relations Journey
  @loan @myrel
  Scenario Outline: Verify that Customer is able to view the Options in My Relations
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    Then verify options"<Options>" available under "Quick Actions" on RHS

    Examples:
      | Mobile Number | Date     | Customer Type | Options         |
      | 8800384932    | 02021976 | Individual    | Document Center |

  @loan @myrel
  Scenario Outline: Verify that Customer is able to redirect to Document Centre on clicking it from My Relations
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And Customer Click on "Document Center" CTA in RHS
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter" Url
    And verify that following Tabs "<Tabnames>" are Displayed in Document Centre Page
    Then verify RHS "Quick Actions" following Options: "Help and Support, Passbook" are Displayed
    And verify Middle section is displayed fetched from AEM

    Examples:
      | Mobile Number | Date     | Customer Type | Tabnames                 |
      | 8800384932    | 02021976 | Individual    | Loans,Insurance,Deposits |

###Doc Section
  @loan @myrel
  Scenario Outline: Verify that customer is able to view all active LAN with loan cards - My Relation
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And Customer Click on "Document Center" CTA in RHS
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter" Url
    And verify All Loan cards are Displayed in Document Center Page-"Loan Cards","Loan Account Number"
    Then verify RHS "Quick Actions" following Options: "Help and Support, Passbook" are Displayed
    And verify Middle section is displayed fetched from AEM

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     |
      | 8800384932    | 26051982 | Individual    | Mandate and documents | Document Center |

  @loan @myrel
  Scenario Outline: Verify that customer is able to view fields on loan card - My Relation
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And Customer Click on "Document Center" CTA in RHS
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter" Url
    And verify Details on the Loan Cards in Document Center Page- "Loans" "Loan Account Number"

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     |
      | 8800384932    | 01011986 | Individual    | Mandate and documents | Document Center |

  @loan @myrel
  Scenario Outline: Verify loan card is clickable & Customer is redirecting to loan document page - My Relation
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And Customer Click on "Document Center" CTA in RHS
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter" Url

    And User clicks on a Card "<Card Number>"
    And User should be redirected to specific document page "<Card Number>"
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     | Card Number    |
      | 8800384932    | 01011986 | Individual    | Mandate and documents | Document Center | 401LFDGS883637 |

  @loan @myrel
  Scenario Outline: Verify that Customer is able to view content on Loan Document page - My Relation
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And Customer Click on "Document Center" CTA in RHS
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter" Url
    And User clicks on a Card "<Card Number>"
    And User should be redirected to specific document page "<Card Number>"
    And verify Customer is able to view content on Loan Document page "<Card Number>"
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     | Card Number    |
      | 8800384932    | 01011986 | Individual    | Mandate and documents | Document Center | 401LFDGS883637 |

  @loan @myrel
  Scenario Outline: Verify that Customer is able to Download the file, Downloaded file is in pdf format(Download CTA)-Loan - My Relation
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And Customer Click on "Document Center" CTA in RHS
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter" Url
    And User clicks on a Card "<Card Number>"
    And User should be redirected to specific document page "<Card Number>"
    And verify User is able to Download the file and the file is in PDF Format FileName "Statement of Account" ,FileDownloadName "401LFDGS883637_SOA.pdf"
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     | Card Number    |
      | 8800384932    | 01011986 | Individual    | Mandate and documents | Document Center | 401LFDGS883637 |

  @loan @myrel
  Scenario Outline: Verify that Customer is able to Download the file, Downloaded file is in pdf format(When Clicked on Doc)-Loan - My Relation
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And Customer Click on "Document Center" CTA in RHS
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter" Url
    And User clicks on a Card "<Card Number>"
    And User should be redirected to specific document page "<Card Number>"
    And verify User is able to Download the file when customer clicks on document FileName "Statement of Account" ,FileDownloadName "401LFDGS883637_SOA.pdf"
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     | Card Number    |
      | 8800384932    | 01011986 | Individual    | Mandate and documents | Document Center | 401LFDGS883637 |

  @dep @myrel
  Scenario Outline: Verify that Fixed Deposits product tab is visible & the Cards displayed when customer clicks on Fixed Deposits tab - My Relation
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And Customer Click on "Document Center" CTA in RHS
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter" Url
    And Clicks on the Document Centre Page tab "Deposits"
    And verify All cards are Displayed in Document Center Page-"Deposit Cards","Fixed Deposit Number"
    Then verify RHS "Quick Actions" following Options: "Help and Support, Passbook" are Displayed
    And verify Middle section is displayed fetched from AEM

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     |
      | 8800384932    | 02021976 | Individual    | Mandate and documents | Document Center |

  @dep @myrel
  Scenario Outline: Verify that customer is able to view fields on FDs and SDPs card - My Relation
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And Customer Click on "Document Center" CTA in RHS
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter" Url
    And Clicks on the Document Centre Page tab "Deposits"
    And verify Details on the Cards in Document Center Page- "Deposits" "Fixed Deposit Number"

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     |
      | 8800384932    | 02021976 | Individual    | Mandate and documents | Document Center |

  @dep @myrel
  Scenario Outline: Verify Deposit card is clickable & Customer is redirecting to respective document page -SDP - My Relation
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And Customer Click on "Document Center" CTA in RHS
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter" Url
    And Clicks on the Document Centre Page tab "Deposits"
    And User clicks on a Card "<Card Number>"
    And User should be redirected to specific document page "<Card Number>"

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     | Card Number |
      | 8800384932    | 02021976 | Individual    | Mandate and documents | Document Center | 927673      |

  @dep @myrel
  Scenario Outline: Verify Deposit card is clickable & Customer is redirecting to respective document page -SDP - My Relation
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And Customer Click on "Document Center" CTA in RHS
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter" Url
    And Clicks on the Document Centre Page tab "Deposits"
    And User clicks on a Card "<Card Number>"
    And User should be redirected to specific document page "<Card Number>"
    Then verify the following Documents are displayed in Doc page "<Docs>"

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     | Card Number | Docs                                                                                                            |
      | 8800384932    | 02021976 | Individual    | Mandate and documents | Document Center | 927673      | Prefilled- Form 15G/15H#Statement Of Account#Interest Certificate#Fixed Deposit Receipt#Provisional Certificate |

  @dep @myrel
  Scenario Outline: Verify Deposit card is clickable & Customer is redirecting to respective document page -FD - My Relation
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And Customer Click on "Document Center" CTA in RHS
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter" Url
    And Clicks on the Document Centre Page tab "Deposits"
    And User clicks on a Card "<Card Number>"
    And User should be redirected to specific document page "<Card Number>"
    Then verify the following Documents are displayed in Doc page "<Docs>"

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     | Card Number | Docs                                                                                                            |
      | 8800384932    | 02021976 | Individual    | Mandate and documents | Document Center | 514729      | Prefilled- Form 15G/15H#Statement Of Account#Interest Certificate#Fixed Deposit Receipt#Provisional Certificate |

  @dep @myrel
  Scenario Outline: Verify that Customer is able to view content on FDs and SDPs Document page - My Relation
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And Customer Click on "Document Center" CTA in RHS
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter" Url
    And Clicks on the Document Centre Page tab "Deposits"
    And User clicks on a Card "<Card Number>"
    And User should be redirected to specific document page "<Card Number>"
    And verify that Customer is able to view content on FDs and SDPs Document page "<Card Number>"


    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     | Card Number |
      | 8800384932    | 02021976 | Individual    | Mandate and documents | Document Center | 927673      |

  @dep @myrel
  Scenario Outline: Verify that Customer is able to Download the file, Downloaded file is in pdf format(Download CTA)-SDP - My Relation
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And Customer Click on "Document Center" CTA in RHS
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter" Url
    And Clicks on the Document Centre Page tab "Deposits"
    And User clicks on a Card "<Card Number>"
    And User should be redirected to specific document page "<Card Number>"
    And verify User is able to Download the file and the file is in PDF Format FileName "Statement Of Account" ,FileDownloadName "FD_SOAReport.pdf"

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     | Card Number |
      | 8800384932    | 02021976 | Individual    | Mandate and documents | Document Center | 927673      |

  @dep @myrel
  Scenario Outline: Verify that document is downloading in PDF format when customer clicks on document-SDP - My Relation
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And Customer Click on "Document Center" CTA in RHS
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter" Url
    And Clicks on the Document Centre Page tab "Deposits"
    And User clicks on a Card "<Card Number>"
    And User should be redirected to specific document page "<Card Number>"
    And verify User is able to Download the file when customer clicks on document FileName "Fixed Deposit Receipt" ,FileDownloadName "FD_Reciept.pdf"

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     | Card Number |
      | 8800384932    | 02021976 | Individual    | Mandate and documents | Document Center | 927673      |

    #####Insurance
  @Insur @myrel
  Scenario Outline: verify that Insurance product tab is visible when customer clicks on Insurance tab & view all active insurance - My Relation
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And Customer Click on "Document Center" CTA in RHS
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter" Url
    And verify that following Tab "Insurance" is Displayed in Document Centre Page
    And Clicks on the Document Centre Page tab "Insurance"
    And verify All cards are Displayed in Document Center Page-"Active Insurance","Policy Number"
    Then verify RHS "Quick Actions" following Options: "Help and Support, Passbook" are Displayed
    And verify Middle section is displayed fetched from AEM

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     |
      | 9582898063    | 02021976 | Individual    | Mandate and documents | Document Center |

  @Insur @myrel
  Scenario Outline: Verify that customer is able to view fields on Insurance cards - My Relation
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And Customer Click on "Document Center" CTA in RHS
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter" Url
    And Clicks on the Document Centre Page tab "Insurance"
    And verify Details on the Cards in Document Center Page- "Insurance" "Policy Number"

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     |
      | 9582898063    | 02021976 | Individual    | Mandate and documents | Document Center |

  @Insur @myrel
  Scenario Outline: Verify Insurance card is clickable & Customer is redirecting to respective document page -Insurance - My Relation
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And Customer Click on "Document Center" CTA in RHS
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter" Url
    And Clicks on the Document Centre Page tab "Insurance"
    And User clicks on a Card "<Card Number>"
    And User should be redirected to specific document page "<Card Number>"

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     | Card Number    |
      | 9582898063    | 02021976 | Individual    | Mandate and documents | Document Center | PP000208_0GB1F |

  @Insur @myrel
  Scenario Outline: Verify that Customer is able to view content on Insurance Document page - My Relation
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And Customer Click on "Document Center" CTA in RHS
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter" Url
    And Clicks on the Document Centre Page tab "Insurance"
    And User clicks on a Card "<Card Number>"
    And User should be redirected to specific document page "<Card Number>"
    And verify that Customer is able to view content on Insurance Document page "<Card Number>"

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     | Card Number    |
      | 9582898063    | 02021976 | Individual    | Mandate and documents | Document Center | PP000208_0GB1F |

  @Insur @myrel
  Scenario Outline: Verify that Customer is able to view list of documents for insurance - My Relation
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And Customer Click on "Document Center" CTA in RHS
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter" Url
    And Clicks on the Document Centre Page tab "Insurance"
    And User clicks on a Card "<Card Number>"
    And User should be redirected to specific document page "<Card Number>"
    And verify that Customer is able to view list of documents for insurance "Certificate of Insurance"

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     | Card Number    |
      | 9582898063    | 02021976 | Individual    | Mandate and documents | Document Center | PP000208_0GB1F |

  @Insur @myrel
  Scenario Outline: Verify that Customer is able to Download the file, Downloaded file is in pdf format(Download CTA)-Insurance - My Relation
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And Customer Click on "Document Center" CTA in RHS
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter" Url
    And Clicks on the Document Centre Page tab "Insurance"
    And User clicks on a Card "<Card Number>"
    And User should be redirected to specific document page "<Card Number>"
    And verify User is able to Download the file and the file is in PDF Format FileName "Certificate of Insurance" ,FileDownloadName "PP000208_0GB1F_CertificateOfIns.pdf"

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     | Card Number    |
      | 9582898063    | 02021976 | Individual    | Mandate and documents | Document Center | PP000208_0GB1F |

  @Insur @myrel
  Scenario Outline: Verify that document is downloading in PDF format when customer clicks on document-Insurance - My Relation
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Customer is able to view My Relations Section to ETB Customers
    And Customer clicks on view all option
    And My relations Page should be displayed
    And Customer Click on "Document Center" CTA in RHS
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter" Url
    And Clicks on the Document Centre Page tab "Insurance"
    And User clicks on a Card "<Card Number>"
    And User should be redirected to specific document page "<Card Number>"
    And verify User is able to Download the file when customer clicks on document FileName "Certificate of Insurance" ,FileDownloadName "PP000208_0GB1F_CertificateOfIns.pdf"

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     | Card Number    |
      | 9582898063    | 02021976 | Individual    | Mandate and documents | Document Center | PP000208_0GB1F |

    #########Docs########
  @Docs
  Scenario Outline: Verify the respective Documents are displayed - Gold Loan
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter" Url
    And User clicks on a Card "<Card Number>"
    And User should be redirected to specific document page "<Card Number>"
    Then verify the following Documents are displayed in Doc page "<Docs>"

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     | Card Number    | Docs                                                               |
      | 9970192192    | 13041985 | Individual    | Mandate and documents | Document Center | P573GOL2966297 | Statement of Account#Repayment Schedule#Gold Deposit Receipt (GDR) |

  @Docs
  Scenario Outline: Verify the respective Documents are displayed - Flexi Loan
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter" Url
    And User clicks on a Card "<Card Number>"
    And User should be redirected to specific document page "<Card Number>"
    Then verify the following Documents are displayed in Doc page "<Docs>"

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     | Card Number    | Docs                                                                         |
      | 9145474127    | 27121993 | Individual    | Mandate and documents | Document Center | 402SPF73838164 | Statement of Account#Repayment Schedule#Application Form#Loan Agreement/MITC |

  @Docs
  Scenario Outline: Verify the respective Documents are displayed - Consumer Durable Loan
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter" Url
    And User clicks on a Card "<Card Number>"
    And User should be redirected to specific document page "<Card Number>"
    Then verify the following Documents are displayed in Doc page "<Docs>"

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     | Card Number    | Docs                                    |
      | 8097927579    | 16111984 | Individual    | Mandate and documents | Document Center | 4020CDIG919002 | Statement of Account#Repayment Schedule |


    ################ADDED SCENARIOS########
  @rhs @loan
  Scenario Outline: Verify that Customer is redirected to Loans Help and Support Page on clicking it from Loan Docs Page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter" Url
    And User clicks on a Card "<Card Number>"
    And User should be redirected to specific document page "<Card Number>"
    And Customer clicks on "Help and Support" option in RHS
    And Verify Customer Redirected to "MyAccountService//HelpAndSupport/RARFAQCategory?source=Loans" Url

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     | Card Number    |
      | 8800384932    | 01011986 | Individual    | Mandate and documents | Document Center | 401LFDGS883637 |

  @rhs @loan
  Scenario Outline: Verify that Customer is redirected to PassBook Page on clicking it from Loan Docs Page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter" Url
    And User clicks on a Card "<Card Number>"
    And User should be redirected to specific document page "<Card Number>"
    And Customer clicks on "Passbook" option in RHS
    And Verify Customer Redirected to "MyAccountPayments/passbook/PassbookBBPS" Url

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     | Card Number    |
      | 8800384932    | 01011986 | Individual    | Mandate and documents | Document Center | 401LFDGS883637 |

  @rhs @dep
  Scenario Outline: Verify Customer is redirected to Deposits Help and Support Page on clicking it from Deposits Docs Page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter" Url
    And Clicks on the Document Centre Page tab "Deposits"
    And User clicks on a Card "<Card Number>"
    And User should be redirected to specific document page "<Card Number>"
    And Customer clicks on "Help and Support" option in RHS
    And Verify Customer Redirected to "MyAccountService//HelpAndSupport/RARFAQCategory?source=Deposits" Url

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     | Card Number |
      | 8800384932    | 02021976 | Individual    | Mandate and documents | Document Center | 927673      |


  @Insur @rhs
  Scenario Outline: Verify Customer is redirected to Insurance Help and Support Page on clicking it from Insurance Docs Page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on SubListmenu "<SubListMenu>"
    Then Verify Customer Redirected to "MyAccountDocumentCenter/DocumentCenter" Url
    And Clicks on the Document Centre Page tab "Insurance"
    And User clicks on a Card "<Card Number>"
    And User should be redirected to specific document page "<Card Number>"
    And Customer clicks on "Help and Support" option in RHS
    And Verify Customer Redirected to "MyAccountService//HelpAndSupport/RARFAQCategory?source=Insurance" Url

    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     | Card Number    |
      | 9582898063    | 02021976 | Individual    | Mandate and documents | Document Center | PP000208_0GB1F |