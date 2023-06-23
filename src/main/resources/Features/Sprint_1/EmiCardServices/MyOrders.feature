Feature: My Order


  @PreApproved
  Scenario Outline: To Verify PreApproved Offers under Current Order page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User lands on Home Page
    And Clicks on Hamburger Menu
    And Click on My Order
    And My Order Page should be displayed
    Then verify tiles visible to customer under Pre-Approved offer section of CurrentOrder
    Examples:
      | Mobile Number | Date    | Customer Type |
      |9041005113|03092000|Individual|

  @PreApproved
  Scenario Outline: To Verify  PreApproved Offers  while having previous order history
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User lands on Home Page
    And Clicks on Hamburger Menu
    And Click on My Order
    And My Order Page should be displayed
    And Click on Previous Order Tab under My Order Page
    Then verify tiles visible to customer under Pre-Approved offer section of CurrentOrder
    Examples:
      | Mobile Number | Date    | Customer Type |
      |9041005113|03092000|Individual|


  Scenario Outline: To verify My order option is displayed under hamburger menu
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User lands on Home Page
    And Clicks on Hamburger Menu
    Then My Order option under hamburger menu should be displayed
    Examples:
      | Mobile Number | Date    | Customer Type |
      |9041005113|03092000|Individual|

  @FailRunKC
  Scenario Outline: To Verify My Order Page after click on My Order from my Hamburger
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User lands on Home Page
    And Clicks on Hamburger Menu
    And Click on My Order
    Then My Order Page should be displayed
    Examples:
      | Mobile Number | Date     | Customer Type |
      |9041005113|03092000|Individual|

  @FailRunK
  Scenario Outline: To Verify Current Order & Previous Order Tabs are displayed under My Order page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User lands on Home Page
    And Clicks on Hamburger Menu
    And Click on My Order
    And My Order Page should be displayed
    Then Customer should be able to view Current tab and previous Tab under My Order Page
    Examples:
      | Mobile Number | Date    | Customer Type |
      |9041005113|03092000|Individual|


  @FailVM
  Scenario Outline: To Verify Validation message is visible If no orders are available under Both tabs under My Order
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User lands on Home Page
    And Clicks on Hamburger Menu
    And Click on My Order
    And My Order Page should be displayed
    Then Customer should be able to view You dont have any orders on Current order
    Then Click on Previous Tab and verify You dont have any orders is displayed
    Examples:
      | Mobile Number | Date    | Customer Type |
      |9041005113|03092000|Individual|

  @FailRunk
  Scenario Outline: To Verify Validation message is visible If no orders are available under Current Order page while having previous order history
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User lands on Home Page
    And Clicks on Hamburger Menu
    And Click on My Order
    And My Order Page should be displayed
    Then Customer should be able to view You dont have any Current order
    Examples:
      | Mobile Number | Date    | Customer Type |
      |9041005113|03092000|Individual|

  @FailRunK
  Scenario Outline: To Verify Validation message is visible If no orders are available under Previous Order page while having Current order History
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User lands on Home Page
    And Clicks on Hamburger Menu
    And Click on My Order
    And My Order Page should be displayed
    Then Customer should be able to view You dont have any Previous order
    Examples:
      | Mobile Number | Date    | Customer Type |
      |9041005113 |12121999|Individual|


  #Current Order:

  @StoreOrder
  Scenario Outline: To Verify Store Order,Currentorder Popup details under Current Order Page is visible
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User lands on Home Page
    And Clicks on Hamburger Menu
    And Click on My Order
    And My Order Page should be displayed
 # Then Customer should be able to view Order ID Date Product Image,Product name,Loan Amount,Status three dot menu will show only FAQs and Cancel CTA Store Name Contact Store CTA Locate Store CTA Track Order CTA under my Current Order Page
    Then Verify Current Order details popup
    Examples:
      | Mobile Number | Date     | Customer Type |
    #  | 8082703855    | 12121999 | Individual |
      | 7773961914    | 12121999 | Individual |


  Scenario Outline: To Verify details under Current Order Page is visible
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User lands on Home Page
    And Clicks on Hamburger Menu
    And Click on My Order
    And My Order Page should be displayed
    Then Customer should be able to view Order ID Date Product Image,Product name,Loan Amount,Status three dot menu will show only FAQs and Cancel CTA Store Name Contact Store CTA Locate Store CTA Track Order CTA under my Current Order Page
    Examples:
      | Mobile Number | Date     | Customer Type |
    #  | 8082703855    | 12121999 | Individual |
      | 7773961914    | 12121999 | Individual |

  @FailVM
  Scenario Outline: To Verify FAQ CTA & Cancel CTA is visible after clicking on 3 Dots menu
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User lands on Home Page
    And Clicks on Hamburger Menu
    And Click on My Order
    And My Order Page should be displayed
    And Click on Three Dot Menu
    Then Customer should be able to view FAQ & Cancel CTA  under my Current Order Page
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 7773961914    | 12121999 | Individual |

  @FailVM
  Scenario Outline: To Verify Loan Category Page will be displayed after clicking on FAQ CTA
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User lands on Home Page
    And Clicks on Hamburger Menu
    And Click on My Order
    And My Order Page should be displayed
    And Click on Three Dot Menu
    And Click on FAQ CTA
    Then Customer should be able to view Loan Category Page
    Examples:
      | Mobile Number | Date     | Customer Type |
      |7773961914|03092000|Individual|

  @FailRunK
  Scenario Outline: To verify Contact Store CTA is visible under Current Order Page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User lands on Home Page
    And Clicks on Hamburger Menu
    And Click on My Order
    And Click on Current Order Tab under My Order Page
    Then Contact Store CTA should be displayed
    Examples:
      | Mobile Number | Date | Customer Type |
      |7773961914|03092000|Individual|
  #    |8082703855     |03092000  |Individual|

  @FailRunK
  Scenario Outline: To verify Contact number of dealer is visible after clicking Contact Store CTA
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User lands on Home Page
    And Clicks on Hamburger Menu
    And Click on My Order
    And Click on Current Order Tab under My Order Page
    And Click on Contact Store CTA
    Then Contact Number Of the Dealer should be displayed
    Examples:
      | Mobile Number | Date     | Customer Type |
      |7773961914|03092000|Individual|
     # |8082703855     |03092000  |Individual|

  @FailRunK
  Scenario Outline:   To verify Locate Store CTA is visible under Current Order Page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User lands on Home Page
    And Clicks on Hamburger Menu
    And Click on My Order
    And Click on Current Order Tab under My Order Page
    Then Locate Store CTA should be displayed
    Examples:
      | Mobile Number | Date     | Customer Type |
      |7773961914|03092000|Individual|
      #|8082703855|03092000|Individual|

  @FailRunK
  Scenario Outline:   To verify Tabs is visible after clicking on Locate Store CTA
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User lands on Home Page
    And Clicks on Hamburger Menu
    And Click on My Order
    And Click on Current Order Tab under My Order Page
    And Click on Locate Store CTA
    Then Customer should be able to view Locate store tabs
   # Then Customer should be able to view tabs "<Back Button>" "<Header Name>" "<Store Name>" "<Store Image>" "<Store Category>" "<Working Hours>" "<Directions>" "<Save Icon>" "<Share Icon>" "<Other Stores Near you>"
    Examples:
      | Mobile Number | Date | Customer Type |
      |7773961914|03092000|Individual|

#      | Mobile Number | Date     | Customer Type |Contact Store CTA |Back Button|Header Name|Store Name|Store Image|<Store Category|Working Hours|Direction|ave Icon|Share Icon| Other Stores Near you|
#      |8484862764|03092000|Individual|


  @LocateK
  Scenario Outline: To Verify Map of the store is visible after clicking on Locate Store CTA
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User lands on Home Page
    And Clicks on Hamburger Menu
    And Click on My Order
    And Click on Current Order Tab under My Order Page
    And Click on Locate Store CTA
    Then map of the store should be displayed
    Examples:
      | Mobile Number | Date | Customer Type |
      |7773961914|03092000|Individual|


  @DirectionK
  Scenario Outline: To Verify direction icon is visible after click Locator Store CTA
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User lands on Home Page
    And Clicks on Hamburger Menu
    And Click on My Order
    And Click on Current Order Tab under My Order Page
    And Click on Locate Store CTA
    Then Directions icon should be displayed under locator page
    Examples:
      | Mobile Number | Date | Customer Type |
      |7773961914|03092000|Individual|


  @LocateK
  Scenario Outline: To Verify map of store is visible after clicking on direction icon
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User lands on Home Page
    And Clicks on Hamburger Menu
    And Click on My Order
    And Click on Current Order Tab under My Order Page
    And Click on Locate Store CTA
    And Locator page should be displayed
    And Click on Directions
    Then Customer should be able to view direction on maps of the store
    Examples:
      | Mobile Number | Date | Customer Type |
      |7773961914|03092000|Individual|



  @LocateK
  Scenario Outline: To Verify save icon is visible after click on Locator store CTA
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User lands on Home Page
    And Clicks on Hamburger Menu
    And Click on My Order
    And Click on Current Order Tab under My Order Page
    And Click on Locate Store CTA
    Then Save icon should be displayed
    Examples:
      | Mobile Number | Date | Customer Type |
      | 7773961914 | 12121999 |  Individual |



  @LocateK
  Scenario Outline: To Verify customer is able to save the direction after click on Save Icon
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User lands on Home Page
    And Clicks on Hamburger Menu
    And Click on My Order
    And Click on Current Order Tab under My Order Page
    And Click on Locate Store CTA
    And Click on Save
    Then Customer should be able to save direction on google maps of the store
    Examples:
      | Mobile Number | Date | Customer Type |
      | 7773961914 | 12121999 |  Individual |

  @LocateK
  Scenario Outline: To Verify Current Order Page is visible after click on Back Button
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User lands on Home Page
    And Clicks on Hamburger Menu
    And Click on My Order
    And Click on Current Order Tab under My Order Page
    And Click on Locate Store CTA
    And  map of the store should be displayed
    And Click on Back Button
   # Then Current Order Page should be displayed
    Examples:
      | Mobile Number | Date | Customer Type |
      | 7773961914 | 12121999 |  Individual |
#
#  @ShareOptionNotAvaialble
#  Scenario Outline: To Verify share direction icon is visible after clicking on Locator Store CTA
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User lands on Home Page
#    And Clicks on Hamburger Menu
#    And Click on My Order
#    And Click on Current Order Tab under My Order Page
#    And Click on Locate Store CTA
#    Then Share Direction should be displayed
#    Examples:
#      | Mobile Number | Date | Customer Type |
#      | 7773961914 | 12121999 |  Individual |
#
#  @ShareOptionNotAvaialble
#  Scenario Outline: To Verify customer is able to share direction of the store after click on Share Icon
#    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
#    When User lands on Home Page
#    And Clicks on Hamburger Menu
#    And Click on My Order
#    And Click on Current Order Tab under My Order Page
#    And Click on Locate Store CTA
#    And Click on Share Direction
#    Then Customer should be able to Share direction of maps of the store
#
#    Examples:
#      | Mobile Number | Date | Customer Type |
#      | 7773961914 | 12121999 |  Individual |
#


  @FailRunK
  Scenario Outline: To Verify Track Order CTA is visible under Current Order Tab

    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User lands on Home Page
    And Clicks on Hamburger Menu
    And Click on My Order
    And Click on Current Order Tab under My Order Page
    Then Track Order CTA should be displayed
    Examples:
      | Mobile Number | Date | Customer Type |
      |7773961914|03092000|Individual|
     # | 8082703855 | 12121999 |  Individual |




  @Track
  Scenario Outline: To Verify status of Order is visible after clicking on Track Order CTA
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User lands on Home Page
    And Clicks on Hamburger Menu
    And Click on My Order
    And Click on Current Order Tab under My Order Page
    #And Click on Track Order CTA
    Then Customer should be able to view Status of Order
    Examples:
      | Mobile Number | Date | Customer Type |
      | 7773961914 | 12121999 |  Individual |





  @Track
  Scenario Outline: To Verify Tracking details of the Order after clicking Track Order CTA for Outfor Delivery
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User lands on Home Page
    And Clicks on Hamburger Menu
    And Click on My Order
    And Click on Current Order Tab under My Order Page
    #And Click on Track Order CTA
    Then Customer should be able to view Tracking Details
    #"<My Tracker>" " <Delivery Time>" "<Order Placed>" "<Order Confirmed>" "<Rider Assigned>" "<Out for Delivery>" "<Product Delivered>"
    Examples:
      | Mobile Number | Date | Customer Type |
      | 7773961914 | 12121999 |  Individual |



  @Track
  Scenario Outline: To Verify Delivery Agents name, number & calling CTA is visible after status is Out For Delivery
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User lands on Home Page
    And Clicks on Hamburger Menu
    And Click on My Order
    And Click on Current Order Tab under My Order Page
    And Click on Track Order CTA
    Then Delivery Agents name, number & calling CTA should be displayed
    Examples:
      | Mobile Number | Date | Customer Type |
      | 7773961914 | 12121999 |  Individual |


  @Track
  Scenario Outline: To Verify Contact number on a pop up is visible after clicking on calling CTA in Desktop web
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User lands on Home Page
    And Clicks on Hamburger Menu
    And Click on My Order
    And Click on Current Order Tab under My Order Page
    And Click on Track Order CTA
   # And Click on Calling CTA
    Then Contact number of the dealer on Pop Up should be displayed
    Examples:
      | Mobile Number | Date | Customer Type |
      | 7773961914 | 12121999 |  Individual |






#  PREVIOUS ORDER :

  @FailVM
  Scenario Outline: To Verify details is visible under Previous Order Page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User lands on Home Page
    And Clicks on Hamburger Menu
    And Click on My Order
    And Click on Previous Order Tab under My Order Page
    Then Customer should be able to view Previous Order details
   # Then  Customer should be able to view  " "<Page Header>" "<Product Image  name>" "<Loan Amount>" "<Status>" "<3 dot menu will show only FAQs>" "<Online / Store Order>" "<Store Name>" "<View Loan details Icon>" "<Share Feedback  Icon>" under my previous Order Page
    Examples:
      | Mobile Number | Date | Customer Type |
      | 7773961914 | 12121999 |  Individual |

  @prevK
  Scenario Outline:  To verify Feedback  Icon is visible under Previous  Order Page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User lands on Home Page
    And Clicks on Hamburger Menu
    And Click on My Order
    And Click on Previous Order Tab under My Order Page
    Then Share Feedback Icon Should be displayed
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 7773961914 | 12121999 |  Individual |


  @prevK
  Scenario Outline:  To verify Feedback page after is visible after clicking on Share Feedback  Icon
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User lands on Home Page
    And Clicks on Hamburger Menu
    And Click on My Order
    And Click on Previous Order Tab under My Order Page
    And clicks on Share Feedback  Icon
    Then  Feedback page should be displayed
    When user Switches to default Content
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 7773961914 | 12121999 |  Individual |

  @prevK
  Scenario Outline: To Verify Rating Option in pop is enable after click on Share Feedback  Icon
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User lands on Home Page
    And Clicks on Hamburger Menu
    And Click on My Order
    And Click on Previous Order Tab under My Order Page
    And clicks on Share Feedback  Icon
    Then Customer should be able to view Please rate us on your store visit experience with us Rating option under Feedback page
    When user Switches to default Content
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 7773961914 | 12121999 |  Individual |


  @prevK
  Scenario Outline: To Verify feedback options is enable after selecting ratings
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User lands on Home Page
    And Clicks on Hamburger Menu
    And Click on My Order
    And Click on Previous Order Tab under My Order Page
    And clicks on Share Feedback  Icon
    And Customer selects three stars on Rating Option
    Then Customer should be able to view Please rate us on your store visit experience with us Feedback option Choose one or more of the options below under Feedback page
    When user Switches to default Content
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 7773961914 | 12121999 |  Individual |


  @prevK
  Scenario Outline: To Verify submit button is  enable after selecting feedback options
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User lands on Home Page
    And Clicks on Hamburger Menu
    And Click on My Order
    And Click on Previous Order Tab under My Order Page
    And clicks on Share Feedback  Icon
    And Customer selects three stars on Rating Option
    And Customer selects Feedback option
    Then Submit button should be enabled
    When user Switches to default Content
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 7773961914 | 12121999 |  Individual |


  @prevK
  Scenario Outline: To Verify Thank You Pop Up is visible after clicking on submit button
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User lands on Home Page
    And Clicks on Hamburger Menu
    And Click on My Order
    And Click on Previous Order Tab under My Order Page
    And clicks on Share Feedback  Icon
    And Customer selects three stars on Rating Option
    And Customer selects Feedback option
    And Clicks on submit button
    Then Thank You Pop Up should be displayed
    When user Switches to default Content

    Examples:
      | Mobile Number | Date     | Customer Type |
      | 7773961914 | 12121999 |  Individual |


  @DirectionK
  Scenario Outline: To Verify Inline message will Pop Up after clicking on submit button without entering Ratings
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User lands on Home Page
    And Clicks on Hamburger Menu
    And Click on My Order
    And Click on Previous Order Tab under My Order Page
    And clicks on Share Feedback  Icon
    Then  Feedback page should be displayed
    #And Customer selects 0 stars on Rating Option
    And Clicks on submit button
    Then Inline message should be displayed
    Examples:
      | Mobile Number | Date     | Customer Type |
      | 7773961914 | 12121999 |  Individual |

  @prevK
  Scenario Outline: To Verify Loan Details icon is visible under Previous Order
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User lands on Home Page
    And Clicks on Hamburger Menu
    And Click on My Order
    And Click on Previous Order Tab under My Order Page
    Then Loan Details Icon should be displayed
    Examples:
      | Mobile Number | Date | Customer Type |
      | 7773961914 | 12121999 |  Individual |

  @FailVM
  Scenario Outline: To Verify Loan Details screen is visible after clicking on View Loan Details Icon
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User lands on Home Page
    And Clicks on Hamburger Menu
    And Click on My Order
    And Click on Previous Order Tab under My Order Page
    And clicks on Loan Details Icon
    Then Loan Details screen should be displayed

    Examples:
      | Mobile Number | Date | Customer Type |
      | 7773961914 | 12121999 |  Individual |

