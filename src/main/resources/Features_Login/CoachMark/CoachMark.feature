Feature:Coach Mark
@browserK
  Scenario Outline: To verify coach mark is displayed for hamburger menu with next and skip CTA
    Given User enters the URL "<URL>"
    When User is on login page
    And Clicks on Hamburger Menu clocing loginPopup
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then Coach mark with next and skip CTA under hamburger should be displayed
    When User closes the browser
    Examples:
      |URL|SubMenu|
      | https://uat-oneweb.bajajfinserv.in/MyAccountLogin |Take A Tour |

  @browserKK
  Scenario Outline: To verify coach mark for search is displayed
    Given User enters the URL "<URL>"
    When User is on login page
    And Clicks on Hamburger Menu clocing loginPopup
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Click on next CTA of hamburger coach mark
    Then Coach mark of search with next and skip CTA should be displayed
    When User closes the browser
    Examples:
      |URL|SubMenu|
      | https://uat-oneweb.bajajfinserv.in/MyAccountLogin |Take A Tour |

@@browserKKK
  Scenario Outline: To verify coach mark under my profile is displayed
    Given User enters the URL "<URL>"
    When User is on login page
  And Clicks on Hamburger Menu clocing loginPopup
  And Selects an SubMenu from Hamburger "<SubMenu>"
    And Click on next CTA of hamburger coach mark
    And Click on next CTA of search coach mark
    Then Coach mark under my profile icon must be displayed with next and skip CTA
    When User closes the browser
    Examples:
      |URL|SubMenu|
      | https://uat-oneweb.bajajfinserv.in/MyAccountLogin |Take A Tour |

  @browserKKKK
  Scenario Outline: To verify coach mark on product tile is displayed with GOT IT CTA
    Given User enters the URL "<URL>"
    When User is on login page
   And Clicks on Hamburger Menu clocing loginPopup
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Click on next CTA of hamburger coach mark
    And Click on next CTA of search coach mark
    And Click on next CTA of my profile coach mark
    Then Coach mark under product tile must be displayed with GOT IT CTA
    When User closes the browser

    Examples:
      | URL | SubMenu |
      | https://uat-oneweb.bajajfinserv.in/MyAccountLogin |Take A Tour |

  Scenario Outline: To verify coach mark is  closed and login screen is visible after clicking got it CTA of coach mark under product tile.
    Given User enters the URL "<URL>"
    When User is on login page
    And Click on next CTA of hamburger coach mark
    And Click on next CTA of search coach mark
    And Click on next CTA of my profile coach mark
    And Click on got it CTA of product tile coach mark
    Then coach mark should be closed and login screen is visible after clicking got it CTA of coach mark under product tile.
    When User closes the browser
    Examples:
      |URL|
      | https://uat-oneweb.bajajfinserv.in/MyAccountLogin |



  Scenario Outline: To verify coach mark is closed on clicking skip CTA of hamburger coach mark
    Given User enters the URL "<URL>"
    When User is on login page
    And Click on skip CTA
    Then Coach Mark should be closed
    When User closes the browser
    Examples:
      |URL|
      | https://uat-oneweb.bajajfinserv.in/MyAccountLogin |

  @Coach
  Scenario Outline: To verify coach mark is closed on clicking skip CTA of search coach mark
    Given User enters the URL "<URL>"
    When User is on login page
    And Click on next CTA of hamburger coach mark
    And Click on skip CTA of search coach mark
    Then Coach Mark should be closed
    When User closes the browser
    Examples:
      |URL|
      | https://uat-oneweb.bajajfinserv.in/MyAccountLogin |
  @Coach
  Scenario Outline: To verify coach mark is closed on clicking skip CTA of my profile coach mark
    Given User enters the URL "<URL>"
    When User is on login page
    And Click on next CTA of hamburger coach mark
    And Click on next CTA of search coach mark
    And Click on skip CTA of my profile coach mark
    Then Coach Mark should be closed
    When User closes the browser
    Examples:
      |URL|
      | https://uat-oneweb.bajajfinserv.in/MyAccountLogin |


  @Cloxk
  Scenario Outline: To verify coach mark under individual type of login page is displayed
    Given User enters the URL "<URL>"
    When User is on login page
#    And Clicks on Hamburger Menu clocing loginPopup
#    And Selects an SubMenu from Hamburger "<SubMenu>"
#    And Click on next CTA of hamburger coach mark
#    And Click on next CTA of search coach mark
#    And Click on next CTA of my profile coach mark
#    And Click on got it CTA of product tile coach mark
#    And Click on my profile icon
#    And Click on sign in CTA
    Then Coach Mark with next and skip CTA under individual type on login page must be displayed
    When User closes the browser
    Examples:
      |URL|SubMenu|
      | https://uat-oneweb.bajajfinserv.in/MyAccountLogin |Take A Tour |



  Scenario Outline: To verify coach mark is displayed under corporate /business on login page
    Given User enters the URL "<URL>"
    When User is on login page
   # And Clicks on Hamburger Menu clocing loginPopup
   # And Selects an SubMenu from Hamburger "<SubMenu>"
   # And Click on next CTA of hamburger coach mark
   # And Click on next CTA of search coach mark
   # And Click on next CTA of my profile coach mark
   # And Click on got it CTA of product tile coach mark
   # And Click on my profile icon
   # And Click on sign in CTA
    And Click on next CTA of individual coach mark
    Then Coach Mark with skip and next CTA under corporate and business on login page should be displayed
    When User closes the browser
    Examples:
      |URL|SubMenu|
      | https://uat-oneweb.bajajfinserv.in/MyAccountLogin |Take A Tour |


  Scenario Outline: To verify coach mark is displayed under NRI on login page
    Given User enters the URL "<URL>"
    When User is on login page
#    And Clicks on Hamburger Menu clocing loginPopup
#    And Selects an SubMenu from Hamburger "<SubMenu>"
#    And Click on next CTA of hamburger coach mark
#    And Click on next CTA of search coach mark
#    And Click on next CTA of my profile coach mark
#    And Click on got it CTA of product tile coach mark
#    And Click on my profile icon
#    And Click on sign in CTA
    And Click on next CTA of individual coach mark
    And Click on next CTA of corporate and business coach mark
    Then Coach Mark with got it CTA must be displayed under NRI on login page
    When User closes the browser
    Examples:
      |URL|SubMenu|
      | https://uat-oneweb.bajajfinserv.in/MyAccountLogin |Take A Tour |


  Scenario Outline: To verify coach mark is closed on clicking skip CTA of individual coach mark
  Given User enters the URL "<URL>"
  When User is on login page
    And Click on next CTA of hamburger coach mark
    And Click on next CTA of search coach mark
    And Click on next CTA of my profile coach mark
    And Click on got it CTA of product tile coach mark
    And Click on my profile icon
    And Click on sign in CTA
    And Click on skip CTA of individual coach mark on login page
    Then Coach Mark should be closed
  When User closes the browser
    Examples:
      |URL|
      | https://uat-oneweb.bajajfinserv.in/MyAccountLogin |

  Scenario Outline: To verify coach mark is closed on clicking skip CTA of corporate business coach mark
    Given User enters the URL "<URL>"
    When User is on login page
    And Click on next CTA of hamburger coach mark
    And Click on next CTA of search coach mark
    And Click on next CTA of my profile coach mark
    And Click on got it CTA of product tile coach mark
    And Click on my profile icon
    And Click on sign in CTA
    And Click on next CTA of individual coach mark on login page
    And Click on skip CTA of corporate and business coach mark on login page
    Then Coach Mark should be closed
    When User closes the browser
    Examples:
      |URL|
      | https://uat-oneweb.bajajfinserv.in/MyAccountLogin |


  Scenario Outline: To verify coach mark is closed on clicking skip CTA of NRI under login page
    Given User enters the URL "<URL>"
    When User is on login page
    And Click on next CTA of hamburger coach mark
    And Click on next CTA of search coach mark
    And Click on next CTA of my profile coach mark
    And Click on got it CTA of product tile coach mark
    And Click on my profile icon
    And Click on sign in CTA
    And Click on next CTA of individual coach mark on login page
    And Click on next CTA of corporate and business coach mark on login page
    And Click on skip CTA of NRI coach mark
    Then Coach Mark should be closed
    When User closes the browser
    Examples:
      |URL|
      | https://uat-oneweb.bajajfinserv.in/MyAccountLogin |

  @TestK
  Scenario Outline: To verify coach mark is displayed for hamburger menu on home page
  Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on the Home Page
    Then Coach Mark should be displayed with next and skip CTA for hamburger
    When User logouts application
    When User closes the browser
    Examples:
      |Mobile Number | Date | Customer Type |
      |7827553033| 08041986 | Individual |


  @TestK
  Scenario Outline: To verify coach mark is displayed for my profile on home page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on the Home Page
    And Click on next CTA of hamburger coach mark
    Then My profile coach mark with next and skip CTA should be displayed
    When User logouts application
    When User closes the browser
    Examples:
      |Mobile Number | Date | Customer Type |
      |7827553033| 08041986 | Individual |

  @RegRunK
  Scenario Outline: To verify coach mark is displayed for explore your products on home page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on the Home Page
    And Click on next CTA of hamburger coach mark
    And Click on next CTA of profile coach mark
    Then Coach Mark with next and skip CTA should be displayed for explore your products
    When User logouts application
    When User closes the browser

  Examples:
    |Mobile Number | Date | Customer Type |
    |7827553033| 08041986 | Individual |


  @RegRunK
  Scenario Outline: To verify coach mark is displayed for Insta Emi card on product tile after user is logged in
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on the Home Page
    And Click on next CTA of hamburger coach mark
    And Click on next CTA of profile coach mark
    And Click on next CTA of explore your products coach mark
    Then Coach Mark with next and skip CTA under insta Emi card should be displayed
    When User logouts application
    When User closes the browser
    Examples:
      |Mobile Number | Date | Customer Type |
      |7827553033| 08041986 | Individual |

  @RegRunKK
  Scenario Outline: To verify coach mark is displayed for Get Pre approved offers after user is logged in
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on the Home Page
    And Click on next CTA of hamburger coach mark
    And Click on next CTA of profile coach mark
    And Click on next CTA of explore your products coach mark
    And Click on next CTA of insta Emi card coach bar
    Then Coach Mark under get Pre approved offers should be displayed with got it CTA
    When User logouts application
    When User closes the browser
    Examples:
      |Mobile Number | Date | Customer Type |
      |7827553033| 08041986 | Individual |

@SkipC
  Scenario Outline: To verify coach mark is closed on clicking skip CTA of hamburger coach mark after user is logged in
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on the Home Page
    And Click on skip CTA of hamburger coach mark
    Then Coach Mark should be closed
    When User logouts application
    When User closes the browser
    Examples:
      |Mobile Number | Date | Customer Type |
      |7827553033| 08041986 | Individual |


@SkipC
  Scenario Outline: To verify coach mark is closed on clicking skip CTA of my profile coach mark when user is logged in
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on the Home Page
    And Click on next CTA of hamburger coach mark
    And Click on skip CTA of my profile coach mark
  Then Coach Mark should be closed
  When User logouts application
  When User closes the browser
    Examples:
      |Mobile Number | Date | Customer Type |
      |7827553033| 08041986 | Individual |
  @SkipC
  Scenario Outline: To verify coach mark is closed on clicking skip CTA of explore your products coach bar when user is logged in
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on the Home Page
    And Click on next CTA of hamburger coach mark
    And Click on next CTA of my profile coach mark
    And Click on skip CTA of explore you products coach mark
    Then Coach Mark should be closed
    When User logouts application
    When User closes the browser
    Examples:
      |Mobile Number | Date | Customer Type |
      |7827553033| 08041986 | Individual |

  @SkipC
  Scenario Outline: To verify coach mark is closed on clicking skip CTA of insta Emi card coach mark when user is logged in
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on the Home Page
    And Click on next CTA of hamburger coach mark
    And Click on next CTA of my profile coach mark
    And Click on next CTA of explore your products coach mark
    And Click on skip CTA of insta Emi card coach mark
    Then Coach Mark should be closed
    When User logouts application
    When User closes the browser
    Examples:
      |Mobile Number | Date | Customer Type |
      |7827553033| 08041986 | Individual |
  @SkipC
  Scenario Outline: To verify coach mark is closed on clicking got it CTA of get preapproved offers after user is logged in
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on the Home Page
    And Click on next CTA of hamburger coach mark
    And Click on next CTA of my profile coach mark
    And Click on next CTA of explore you products coach mark
    And Click on next CTA of insta Emi card coach mark
    And Click on got it CTA of get approved offers CTA
    Then Coach Mark should be closed
    When User logouts application
    When User closes the browser
    Examples:
      |Mobile Number | Date | Customer Type |
      |7827553033| 08041986 | Individual |

@RegRunKKK
  Scenario Outline: To verify coach mark is displayed for homepage hamburger menu when clicked on GOT IT CTA of NRI coach mark
    Given User enters the URL "<URL>"
    When User is on login page
    And click on skip CTA login page hamburger coach mark
   # And Click on my profile icon
   # And Click on sign in CTA
    And Click on next CTA of individual coach mark on login page
    And Click on next CTA of corporate and business coach mark on login page
    And click on got it CTA of NRI coach mark
    And Enters Mobile Number and Date of Birth "<Mob>" "<DOB>"
    And Click on Get OTP
    And Enters "<OTP>"
    And Click on Submit
    Then coach mark should be displayed for homepage hamburger menu with next and skip CTA
    When User logouts application
    When User closes the browser
    Examples:
      |URL| Mob | DOB | OTP |
      |https://uat-oneweb.bajajfinserv.in/MyAccountLogin| 7827553033 | 08041986 | 123456 |

  @NriKs
  Scenario Outline: To verify coach mark is closed after clicking skip CTA of hamburger under home page
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on the Home Page
    And click on skip CTA of coach mark for hamburger
    Then Coach Mark should be closed
    When User logouts application
    When User closes the browser
    Examples:
      |Mobile Number | Date | Customer Type |
      |7827553033| 08041986 | Individual |


@RetK
  Scenario Outline: To verify coach mark is not displayed once we go through the coach mark for second time login
    Given User enters the URL "<URL>"
    When User is on login page
    And Click on skip CTA
    Then Coach Mark should be closed
    Given User enters the URL "<URL>"
    Then coach mark should not be displayed
    When User closes the browser
    Examples:
      |URL|
      |https://uat-oneweb.bajajfinserv.in/MyAccountLogin |






