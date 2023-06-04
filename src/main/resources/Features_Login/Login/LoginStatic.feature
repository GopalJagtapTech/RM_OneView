Feature: Login Static Page


  @FailRegK
  Scenario:To verify Customer is able to view Given Section under Login page [ ETB PTB NTB ]
    Given User is on Login Page
    Then Customer should be able to view all options are Present

  @stat
  Scenario Outline: To verify Customer is able to view three Masthead Cards [ ETB PTB NTB ]
    When User is on Login Page
    Then Customer should be able to view Masthead Card Section "<Apply for Loans>" "<Shop on EMIs>" "<Co-branded credit Card>"

    Examples:
      | Apply for Loans | Shop on EMIs | Co-branded credit Card |
      | Apply for loans | Shop on EMIs | Co-branded Credit card |

  @ConceptS
  Scenario Outline: To verify Customer is able to view 4 icons under Apply for Loans, Masthead Cards [ ETB PTB NTB ]
    When User is on Login Page
    Then Customer should be able to view below 4 icon under Apply for Loan card  "<IconImageLabelNames>"
    Examples:
      | IconImageLabelNames  |
      | personal#business#doctors|

  @stat
  Scenario Outline: To verify Customer is redirected to respective page when customer click on Apply for loans  Personal Business Doctor Gold options [ETB PTB NTB]
    Given User is on Login Page
    When User clicks on "<OptionName>" of masthead card
    Then it should be Redirected to "<Expected Url>"
    Examples:
      | OptionName  |Expected Url|
      |  Personal   |   https://uat-oneweb.bajajfinserv.in/personal-loan         |
      |  Business   |    https://www.bajajfinserv.in/business-loan        |
      |  Doctor     |    https://www.bajajfinserv.in/apply-for-doctor-loan        |
      |  Gold       |    https://www.bajajfinserv.in/gold-loan-application-form      |

  @stat
  Scenario Outline: verify Customer is able to view 4 icons under Shop on EMIs
    When User is on Login Page
    Then Customer should be able to view below 4 icon under Shop on EMIs "<IconImageLabelNames>"
    Examples:
      | IconImageLabelNames  |
      | bajaj-mall#emi-card#partner#emi-offers|

  @stat
  Scenario Outline: To verify Customer is redirected to respective page when customer click on 4 icons under Shop on EMIs
    Given User is on Login Page
    When User clicks on "<OptionName>" of masthead card
    Then it should be Redirected to newTab "<Expected Url>"
    Examples:
      | OptionName  |Expected Url|
      |  Bajaj Mall   |   https://www.bajajmall.in/emi-store        |


  @stat
  Scenario Outline: To verify Customer is redirected to respective page when customer click on 4 icons under Shop on EMIs
    Given User is on Login Page
    When User clicks on "<OptionName>" of masthead card
    Then it should be Redirected to "<Expected Url>"
    Examples:
      | OptionName  |Expected Url|
      |  Partners     |    https://www.bajajfinserv.in/locator        |

  @SkipCancel
  Scenario Outline: To verify Customer is redirected to respective page when customer click on 4 icons under Shop on EMIs
    Given User is on Login Page
    When User clicks on "<OptionName>" of masthead card
    Then verify Login Popup should be displayed
    And Enters Mobile Number and Date of Birth "<Mob>" "<DOB>"
    And Click on Get OTP
    And Enters "<OTP>"
    And Click on Submit
    Then it should be Redirected to "<Expected Url>"
     #Then Customer should be redirected to home page
    When User logouts application
    Examples:
      | OptionName    |Mob|DOB|OTP| Expected Url|
      |  EMI Card     | 9820372335 |11111999   |123456| https://uat-oneweb.bajajfinserv.in/MyAccountLoanServices/MyRelation/Index|
    #  |  Offers       | 9820372335  | 11111999  |123456| https://www.bajajfinserv.in/offers-and-promotions|

  @SkipCancel
  Scenario Outline:verify Customer is redirected to My  Relation page when customer click on EMI Card icon
    Given User is on Login Page
    When Customer click on EMI Card Icon
    And Enters Mobile Number and Date of Birth "<Mob>" "<DOB>"
    And Click on Get OTP
    And Enters "<OTP>"
    And Click on Submit
    Then Customer should be redirected to My Relation page after successfully logged in and card should be highlighted from cockpit "<Emi Card Number>"
    When User logouts application
    Examples:
      | Mob       | DOB     |Emi Card Number| OTP|
      |9820372335 |14-01-1985| 2030-XXXX-XXXX-7117 | 123456|

  @emilites
  Scenario Outline:verify Customer is redirected to My  Relation page when customer click on EMI Card icon
    Given User is on Login Page
    When Customer click on EMI Card Icon
    And Enters Mobile Number and Date of Birth "<Mob>" "<DOB>"
    And Click on Get OTP
    And Enters "<OTP>"
    And Click on Submit
    Then Customer should be redirected to home page
   # When User logouts application
    Examples:
      | Mob       | DOB     |OTP|
      |9970534770|02-01-1999|123456|
    #  |8605337783|08-04-1989|123456|


#  @emilites--NA Ignore Consites Url
#  Scenario Outline: To verify Customer is redirected to respective page when customer click on 4 icons under Shop on EMIs
#    Given User is on Login Page
#    When User clicks on "<OptionName>" of masthead card
#    Then verify Login Popup should be displayed
#    And Enters Mobile Number and Date of Birth "<Mob>" "<DOB>"
#    And Click on Get OTP
#    And Enters "<OTP>"
#    And Click on Submit
#    Then it should be Redirected to "<Expected Url>"
#   # Then Customer should be redirected to home page
#   # When User logouts application
#    Examples:
#      | OptionName    |Mob|DOB|OTP| Expected Url|
#      |  Offers       | 9820372335  | 11111999  |123456| https://www.bajajfinserv.in/offers-and-promotions|



  @RegRun
  Scenario Outline:verify Customer is able to view pop-up of customer having Credit card but No EMI Card and customer click on EMI Card icon
    Given User is on Login Page
    When Customer click on EMI Card Icon
    And Enters Mobile Number and Date of Birth "<Mob>" "<DOB>"
    And Click on Get OTP
    And Enters "<OTP>"
    And Click on Submit
    Then Customer should be able to view pop-up with Apply CTA and Cross icon after successfully logged in "<PopUpMessage>"
    Examples:
      | Mob       | DOB     | PopUpMessage |OTP|
      #|9820282089|01-01-1999| There is no Card details available for you |123456|
      | 9157838819 |14041991| There is no Card details available for you |   123456   |


  @stat
  Scenario Outline: To verify the options available under Co-branded Credit Card tile
    Given User is on Login Page
    Then Customer should be able to view below 4 icon under Co-branded credit card "<IconImageLabelNames>"
    Examples:
      | IconImageLabelNames  |
      | rbl-card#dbs-card#eligibility#cc-offers|

  @stat
  Scenario Outline: To verify Customer is redirected to respective page when customer click on Co-branded Credit Card tile
    Given User is on Login Page
    When User clicks on "<OptionName>" of masthead card
    Then it should be Redirected to "<Expected Url>"
    Examples:
      | OptionName  |Expected Url|
      |  Eligibility   |   https://www.bajajfinserv.in/credit-card-eligibility-and-documents  |


  @stat
  Scenario Outline: To verify Customer is redirected to respective page when customer click on Co-branded Credit Card Offers tile
    Given User is on Login Page
    When User clicks on Offers Co-branded credit card
    Then it should be Redirected to "<Expected Url>"
    Examples:
      |Expected Url|
      |    https://www.bajajfinserv.in/credit-card-offers        |

  @emilite
  Scenario Outline: To verify Customer is redirected to respective page when customer click on 4 icons under Co branded credit card
    Given User is on Login Page
    When User clicks on "<OptionName>" of masthead card
    Then verify Login Popup should be displayed
    And Enters Mobile Number and Date of Birth "<Mob>" "<DOB>"
    And Click on Get OTP
    And Enters "<OTP>"
    And Click on Submit
    Then Customer should be redirected to home page
    #When User logouts application
    Examples:
      | OptionName    |Mob           |DOB       |OTP|
      |  RBL Bank     | 9711391408   | 14011985 |123456|


  @emilite
  Scenario Outline: To verify Customer is redirected to respective page when customer click on 4 icons under Co branded credit card
    Given User is on Login Page
    When User clicks on "<OptionName>" of masthead card
    Then verify Login Popup should be displayed
    And Enters Mobile Number and Date of Birth "<Mob>" "<DOB>"
    And Click on Get OTP
    And Enters "<OTP>"
    And Click on Submit
    Then Customer should be redirected to home page
    #When User logouts application
    Examples:
      | OptionName    |Mob|DOB|OTP|
      |  DBS Bank     | 9711391408   | 14011985 |123456|


  @NotInScope
  Scenario Outline:verify Customer is able to view pop-up of customer not having Credit card and customer click on RBL Bank/DBS Bank icon
    Given User is on Login Page
    When User clicks on "<OptionName>" of masthead card
    Then verify Login Popup should be displayed
    And Enters Mobile Number and Date of Birth "<Mob>" "<DOB>"
    And Click on Get OTP
    And Enters "<OTP>"
    And Click on Submit
   # Then Customer should be able to view pop-up with Apply CTA and Cross icon after successfully logged in "<PopUpMessage>"
    When User logouts application
    Examples:
      | Mob       | DOB     | PopUpMessage |OTP|OptionName |
      | 9157838819 | 14041991 | There is no Card details available for you |123456|RBL Bank |


  @ConceptS
  Scenario Outline:verify Customer is able to view pop-up of customer not having Credit card and customer click on RBL Bank/DBS Bank icon
    Given User is on Login Page
    When User clicks on "<OptionName>" of masthead card
    Then verify Login Popup should be displayed
    And Enters Mobile Number and Date of Birth "<Mob>" "<DOB>"
    And Click on Get OTP
    And Enters "<OTP>"
    And Click on Submit
    Then Customer should be able to view pop-up with Apply CTA and Cross icon after successfully logged in "<PopUpMessage>"
    When User logouts application
    Examples:
      | Mob       | DOB     | PopUpMessage |OTP|OptionName |
      |9820282089|01-01-1999| There is no Card details available for you |123456|DBS Bank|


    #  | 9970534770 |02011999  |123456|
    #  | 8605337783 |08041989  |123456|



  @SPB
  Scenario:Verify that  Shop on Bajaj Mall offer label & section is visible to the customer[ETB PTB NTB]
    Given User is on Login Page
    Then Shop on Bajaj Mall offer label & section should visible to the customer
  @Update
  Scenario Outline:Verify that customer is able to view content on product tiles [ETB PTB NTB]
    Given User is on Login Page
    Then Customer should be able to view below content on product tiles "<Product Image>" and "<Product Name>"

    Examples:
      |Product Image|Product Name|
      | Air Conditioners#Stores Near Me#Smartphones#Refrigerators#Air Coolers#LED TVs#Washing machines#Smartwatches  | Air Conditioners#Stores Near Me#Smartphones#Refrigerators#Air Coolers#LED TVs#Washing machines#Smartwatches |
  @Update
  Scenario Outline:Verify that Each product tile is clickable [ETB PTB NTB]
    Given User is on Login Page
    When Clicks on any product tile "<Product Tile>"
    Then verify Login Popup should be displayed
    And Enters Mobile Number and Date of Birth "<Mob>" "<DOB>"
    And Click on Get OTP
    And Enters "<OTP>"
    And Click on Submit
    Then verify Shop on bajaj mall offers are redirected to "<Expected Url>"
    When User logouts application
    Examples:
      | Mob       | DOB     |OTP | Product Tile |Expected Url |
      |9540678876|02011999|123456| Smartphones  |  https://www.bajajmall.in/emi-store/smartphones.html           |
      |9540678876|02011999|123456|   LED TVs    |     https://www.bajajmall.in/emi-store/led-tv.html        |
      |9540678876|02011999|123456| Washing machines  |   https://www.bajajmall.in/emi-store/washing-machines.html          |
      |9540678876|02011999|123456| Refrigerators  |   https://www.bajajmall.in/emi-store/refrigerators.html          |
      |9540678876|02011999|123456| Smartwatches  |  https://www.bajajmall.in/emi-store/smart-watches.html           |
      |9540678876|02011999|123456| Air Conditioners  |   https://www.bajajmall.in/emi-store/air-conditioners.html          |
      |9540678876|02011999|123456| Air Coolers  |  https://www.bajajmall.in/emi-store/air-cooler.html?           |
      |9540678876|02011999|123456| Stores Near Me  |   https://www.bajajfinserv.in/bajaj-mall-store-locator          |


  @Rerun
  Scenario Outline:Verify all three cards are moving with timer of three sec under coursal section
    Given User is on Login Page
    Then Card should  be in auto carousal with timer of 3 secs
    Examples:
      | Mob        | DOB      |
      | 9970534770 |02011999  |
  @coursal
  Scenario Outline:Verify customer when customer clicks on Check Now CTA of Know Your CIBIL score card [ETB PTB NTB]
    Given User is on Login Page
    When Clicks on Check Now CTA
    Then verify Login Popup should be displayed
    And Enters Mobile Number and Date of Birth "<Mob>" "<DOB>"
    And Click on Get OTP
    And Enters "<OTP>"
    And Click on Submit
    Then it should be Redirected to "<Expected Url>"
    #Then Customer should be Redirected to https://www.bajajfinserv.in/check-free-cibil-score

    Examples:
      | Mob       | DOB     |OTP   | Expected Url |
      |9540678876|02-01-1999|123456|    https://www.bajajfinserv.in/check-free-cibil-score   |
      |9970534770|02-01-1999|123456|      https://www.bajajfinserv.in/check-free-cibil-score |

  @Update
  Scenario Outline:Verify customer when customer clicks on Open FD CTA of Invest in a Fixed Deposit card [ETB PTB NTB]
    Given User is on Login Page
    When Clicks on Open FD CTA
    Then verify Login Popup should be displayed
    And Enters Mobile Number and Date of Birth "<Mob>" "<DOB>"
    And Click on Get OTP
    And Enters "<OTP>"
    And Click on Submit
    Then Customer should be redirected to respective brand page "<Expected Url>"
    Examples:
      | Mob       | DOB     |OTP   | Expected Url |
      |9540678876|02011999|123456|     https://www.bajajfinserv.in/fixed-deposit-application-form?ProductName=FD |
      |9970534770|02011999|123456|     https://www.bajajfinserv.in/fixed-deposit-application-form?ProductName=FD |


  @Update
  Scenario Outline:Verify customer when customer clicks on Sign-in CTA of Sign-in to My Account card [ETB PTB NTB]
    Given User is on Login Page
    When Clicks on Sign- in CTA
    Then verify Login Popup should be displayed
    And Enters Mobile Number and Date of Birth "<Mob>" "<DOB>"
    And Click on Get OTP
    And Enters "<OTP>"
    And Click on Submit
    Then Customer should be redirected to home page
    Examples:
      | Mob       | DOB     |OTP  |
      |9540678876|02011999|123456|

  @SPLS
  Scenario:verify that  Our best selling product label & section is visible [ETB PTB NTB]
    Given User is on Login Page
    Then Our best selling product offer label & section should visible

  @FailRe
  Scenario Outline:Verify that when click on  other offers after that asked for authentication [ETB PTB NTB]
    Given User is on Login Page
    When Click on Apply Online/Open FD CTA of best selling product "<Selling Product>"
    Then Customer should be able to view Login  pop-up
    Examples:
      | Selling Product |
      |   Fixed Deposit |
      |   Insta EMI Card |
      |  Demat and Trading  |
      |  Two-wheeler Loan |

  @FailRegK
  Scenario Outline:Verify that when click on  other offers after that asked for authentication [ETB PTB NTB]
    Given User is on Login Page
    When Click on Apply Online/Open FD CTA of best selling product "<Selling Product>"
    Then Customer should be redirected to respective "<Expected Url>"
    Examples:
      | Selling Product | Expected Url |
      |   Personal Loan |          https://www.bajajfinserv.in/personal-loan     |
      |   Credit Card |           https://www.bajajfinserv.in/dbs-bank-credit-card    |
      |   Business Loan |         https://www.bajajfinserv.in/business-loan-form     |
      |   Gold Loan     |            https://www.bajajfinserv.in/gold-loan-application-form  |
      |   Doctor Loan |           https://www.bajajfinserv.in/apply-for-doctor-loan |
      |   Home Loan |         https://www.bajajfinserv.in/home-loan-form     |
      |   Pocket Insurance | https://www.bajajfinserv.in/insurance/pocket-insurance-all-products?utm_source=bfl_xsell&utm_medium=xsell_hp_ourbestselling&utm_campaign=hp_ourbestselling |
      |   EMI Network Card |           https://www.bajajfinserv.in/insta-emi-network-card-apply-online   |
      |   Loan Against Property |          https://www.bajajfinserv.in/loan-against-property    |
      |   Health Insurance |      https://www.bajajfinserv.in/marketplace/insurance/health-insurance/health-insurance-premium-calculator/getGoingNow        |
      |   Car Insurance |          https://www.bajajfinserv.in/marketplace/insurance/car-insurance/car-insurance-premium-calculator/vehicleRegistration |
      |   Bike Insurance |          https://www.bajajfinserv.in/marketplace/insurance/two-wheeler-insurance/bike-insurance-premium-calculator/vehicleRegistration    |

  @Update
  Scenario Outline: Verify that Customer redirect on Respective brand page When they clicks on partner brand logo [ETB PTB NTB]
    Given User is on Login Page
    And Click on partner brand "<Brand Logo>"
    Then verify Login Popup should be displayed
    And Enters Mobile Number and Date of Birth "<Mob>" "<DOB>"
    And Click on Get OTP
    And Enters "<OTP>"
    And Click on Submit
    Then Customer should be redirected to respective brand page "<Expected Url>"
    When User logouts application
   # Then After successful authentication Customer should able to redirect on Respective brand page
    Examples:
      | Mob       | DOB     |OTP  |Brand Logo|Expected Url|
      |8096962175|02011999|123456|   vivo-icon  |      https://www.bajajmall.in/emi-store/vivo-mobile-phones-brand-store.html   |
      |8096962175|02011999|123456|   oppo-icon |        https://www.bajajmall.in/emi-store/oppo-mobile-phones-brand-store.html  |
      |8096962175|02011999|123456|   oneplus-icon  |    https://www.bajajmall.in/emi-store/oneplus-mobile-phones-brand-store.html  |
      |8096962175|02011999|123456|   sleepyhead-icon  |   https://www.bajajmall.in/emi-store/sleepyhead-brand-store.html |
      |8096962175|02011999|123456|   sony-icon  |       https://www.bajajmall.in/emi-store/sony-brand-store.html  |
      |8096962175|02011999|123456|   lg-icon  |        https://www.bajajmall.in/emi-store/lg-brand-store.html   |
      |8096962175|02011999|123456|   croma-icon  |    https://www.bajajmall.in/emi-store/croma-store.html  |
      |8096962175|02011999|123456|   samsung-icon  |    https://www.bajajmall.in/emi-store/samsung-mobile-phones-brand-store.html  |
      |8096962175|02011999|123456|   havells  |     https://www.bajajmall.in/emi-store/havells-appliances.html  |
      |8096962175|02011999|123456|   panasonic  |   https://www.bajajmall.in/emi-store/panasonic-brand-store.html  |


  @Locate
  Scenario:Verify that LOCATE US label & section is visible to the customer [ETB PTB NTB]
    Given User is on Login Page
    Then Locate Us label & section should be visible to the customer

  @Locate
  Scenario Outline:Verify that when clicks Locate Us section [ETB PTB NTB]
    Given User is on Login Page
    And Click on Locate Us
    Then Customer should be redirected to respective "<Expected Url>"
    #Then After successful authentication Customer should able to redirect on Respective brand page
    Examples:
      |Expected Url|
      |      https://www.bajajfinserv.in/branch-locator   |

#  @NotInSCopeRemoved
#  Scenario:Verify that Har time EMI on time label & section is visible to the customer  [ETB PTB NTB]
#    Given User is on Login Page
#    Then Har time EMI on time BANNER label & section should be visible to the customer
#
#  @FailRegK
#  Scenario Outline:verify that when clicks Har time on EMI on time  BANNER section   [ETB PTB NTB]
#    Given User is on Login Page
#    And Click on Har time on EMI in time
#    Then Customer should be redirected to respective "<Expected Url>"
#    Examples:
#      |Expected Url|
#      |    https://www.bajajfinserv.in/newsroom/latest-from-us/bajaj-finance-launches-financial-education-initiative-har-time-emi-on-time-to-spread-awareness-on-the-benefits-of-timely-loan-repayments   |
#

  @Insurance
  Scenario:verify that Insurance  label & section is visible to the customer  [ETB PTB NTB]
    Given User is on Login Page
    Then Insurance  label & section should be visible to the customer

  @ConceptS
  Scenario Outline:Verify that when clicks on any  offers tile under  Insurance section[ETB PTB NTB]
    Given User is on Login Page
    And Click on Insurance tile "<Insurance Offer>"
    Then Customer should be redirected to respective brand page "<Expected Url>"
    Examples:
      |Insurance Offer |Expected Url|
      |    Bike            | https://www.bajajfinserv.in/insurance/two-wheeler-insurance-all-products |
      |    Car            |   https://www.bajajfinserv.in/insurance/car-insurance-all-products  |
      |    Health            |   https://www.bajajfinserv.in/insurance/health-insurance-all-products    |
      |    Wallet Care            |  https://www.bajajfinserv.in/insurance/wallet-care |
      |    Personal Accident Insurance            |      https://www.bajajfinserv.in/marketplace/pocketInsurance/?product=PersonalAccidentCover&product_code=PACI     |

  @FailRegK
  Scenario:Verify that Investment  offer label & section is visible to the customer  [ETB PTB NTB]
    Given User is on Login Page
    Then Investment  label & section should be visible to the customer

         #PTB 9970534770|02-01-1999|

  @ConceptS
  Scenario Outline: Verify when clicks on any  offers tile under  Investment section[ETB PTB NTB]
    Given User is on Login Page
    And Click on Investment tile "<Investment Offer>"
    Then verify Login Popup should be displayed
    And Enters Mobile Number and Date of Birth "<Mob>" "<DOB>"
    And Click on Get OTP
    And Enters "<OTP>"
    And Click on Submit
    Then Customer should be redirected to home page
   # Then Customer should be redirected to respective URL or page of Investment offer with authentication
    Examples:
      |Investment Offer|Mob|DOB|OTP|
      |   Fixed Deposit | 9540678876  | 02011999  |  123456 |
      |   Systematic Deposit Plan | 9540678876  | 02011999  |  123456 |
      |   Senior Citizen FD | 9540678876  | 02011999  |  123456 |
      |   Mutual Funds | 9540678876  | 02011999  |  123456 |
      |   Online Trading | 9540678876  | 02011999  |  123456 |
      |   Fixed Deposit | 9970534770  | 02011999  |  123456 |
      |   Systematic Deposit Plan | 9970534770  | 02011999  |  123456 |
      |   Senior Citizen FD | 9970534770  | 02011999  |  123456 |
      |   Mutual Funds | 9970534770  | 02011999  |  123456 |
      |   Online Trading | 9970534770  | 02011999  |  123456 |


  @InvestmentIndi
  Scenario Outline: Verify when customer clicks on Fixed Deposit offer tile under  Investment section[ETB PTB NTB]
    Given User is on Login Page
    And Click on Investment tile "<Investment Offer>"
    Then verify Login Popup should be displayed
    And Enters Mobile Number and Date of Birth "<Mob>" "<DOB>"
    And Click on Get OTP
    And Enters "<OTP>"
    And Click on Submit
    Then Customer should be redirected to respective URL or page of Fixed deposit offer with authentication and SSO "<Expected Url>"
    When User logouts application
    Examples:
      | Investment Offer |Mob|DOB|OTP| Expected Url |
      | Fixed Deposit | 9910955211  | 11111999  | 123456 | https://www.bajajfinserv.in/fixed-deposit-application-form |

  @InvestmentIndi
  Scenario Outline: Verify when customer clicks on Fixed Deposit offer tile under  Investment section[ETB PTB NTB]
    Given User is on Login Page
    And Click on Investment tile "<Investment Offer>"
    Then verify Login Popup should be displayed
    And Clicks on Corporate/Business tab
    And Enters Mobile Number and Date of Incorporation "<Mob>" "<DOI>"
    And Click on Get OTP
    And Enters "<OTP>"
    And Click on Submit
    Then Customer should be redirected to respective URL or page of Fixed deposit offer with authentication and SSO "<Expected Url>"
    When User logouts application
    Examples:
      | Investment Offer |Mob|DOI |OTP| Expected Url |
      | Fixed Deposit | 9650543332  | 30/05/2001 | 123456 | https://www.bajajfinserv.in/fixed-deposit-application-form |



  @InvestmentIndi
  Scenario Outline: Verify when customer clicks on Fixed Deposit offer tile under  Investment section[ETB PTB NTB]
    Given User is on Login Page
    And Click on Investment tile "<Investment Offer>"
    Then verify Login Popup should be displayed
    And Clicks on NRI tab
    And Enters NRI  Mobile Number and Date of Birth "<Mob>" "<DOB>"
    And Click on Get OTP
    And Enters "<OTP>"
    And Click on Submit
    Then Customer should be redirected to respective URL or page of Fixed deposit offer with authentication and SSO "<Expected Url>"
    When User logouts application
    Examples:
      | Investment Offer |Mob|DOB |OTP| Expected Url |
      | Fixed Deposit | 8826595511  | 03071973 | 123456 | https://www.bajajfinserv.in/fixed-deposit-application-form |




  @LifeStore
  Scenario:verify that Lifesyle Store offer label & section is visible to the customer  [ETB PTB NTB]
    Given User is on Login Page
    Then Lifesyle Store offer label & section should be visible  to the customer

  @LifeStoreRerun
  Scenario Outline: Verify that when clicks on any  offers tile under Lifesyle Store section[ETB PTB NTB]
    Given User is on Login Page
    And Click on Product tile "<LifeStyle product>"
    Then verify Login Popup should be displayed
    And Enters Mobile Number and Date of Birth "<Mob>" "<DOB>"
    And Click on Get OTP
    And Enters "<OTP>"
    And Click on Submit
    Then Customer should be redirected to respective brand page "<Expected Url>"
    When User logouts application
    Examples:
      | Mob       | DOB     |OTP  |LifeStyle product|Expected Url|
      |9540678876|02011999|123456|   Mattresses  |      https://www.bajajmall.in/emi-store/mattress.html   |
      |9540678876|02011999|123456|   Smartwatches |       https://www.bajajmall.in/emi-store/smart-watches.html  |
      |9540678876|02011999|123456|   Cycles  |    https://www.bajajmall.in/emi-store/cycles.htm  |
      |9540678876|02011999|123456|   Cameras  |   https://www.bajajmall.in/emi-store/all-camera-and-accessories.html |
      |9540678876|02011999|123456|   Furnitures  |       https://www.bajajmall.in/emi-store/home-and-furnitures.html  |
      |9540678876|02011999|123456|   Fitness Equipments  |        https://www.bajajmall.in/emi-store/fitness-theme-store.html   |
      |9540678876|02011999|123456|   Music & Audio Devices  |    https://www.bajajmall.in/emi-store/music-and-audio-system.htm  |
      |9540678876|02011999|123456|   Water Purifiers |    https://www.bajajmall.in/emi-store/water-purifier.html  |
      |9540678876|02011999|123456|   Watches  |     https://www.bajajmall.in/emi-store/watches.html  |
      |9540678876|02011999|123456|   Treadmills  |   https://www.bajajmall.in/emi-store/treadmills.html  |
      |9540678876|02011999|123456|   Chimneys  |   https://www.bajajmall.in/emi-store/hobs-and-chimney.html  |
   #   |9540678876|02011999|123456|   Gas Stoves  |   https://www.bajajmall.in/emi-store/gas-stove.html  |


  @LifeStores
  Scenario Outline: Verify that when clicks on any  offers tile under Lifesyle Store section[ETB PTB NTB]
    Given User is on Login Page
    And Click on Product tile "<LifeStyle product>"
    Then verify Login Popup should be displayed
    And Enters Mobile Number and Date of Birth "<Mob>" "<DOB>"
    And Click on Get OTP
    And Enters "<OTP>"
    And Click on Submit
    Then Customer should be redirected to respective brand page "<Expected Url>"
    When User logouts application
    Examples:
      | Mob       | DOB     |OTP  |LifeStyle product|Expected Url|
      |9970534770|02011999|123456|   Mattresses  | https://www.bajajmall.in/emi-store/ |
      |9970534770|02011999|123456|   Smartwatches | https://www.bajajmall.in/emi-store/ |
      |9970534770|02011999|123456|   Cycles  | https://www.bajajmall.in/emi-store/ |
      |9970534770|02011999|123456|   Cameras  | https://www.bajajmall.in/emi-store/ |
      |9970534770|02011999|123456| Furnitures | https://www.bajajmall.in/emi-store/ |
      |9970534770|02011999|123456|   Fitness Equipments  | https://www.bajajmall.in/emi-store/ |
      |9970534770|02011999|123456|   Music & Audio Devices  | https://www.bajajmall.in/emi-store/ |
      |9970534770|02011999|123456|   Water Purifiers | https://www.bajajmall.in/emi-store/ |
      |9970534770|02011999|123456|   Watches  | https://www.bajajmall.in/emi-store/ |
      |9970534770|02011999|123456|   Treadmills  | https://www.bajajmall.in/emi-store/ |
      |9970534770|02011999|123456|   Chimneys  | https://www.bajajmall.in/emi-store/ |
      #|9970534770|02011999|123456|   Gas Stoves  | https://www.bajajmall.in/emi-store/ |

  @TwoWheeler
  Scenario:verify that Two-wheeler world label & section is visible to the customer  [ETB PTB NTB]
    Given User is on Login Page
    Then Two-wheeler world label & section should be visible  to the customer

  @TwoWheelerRegRunK
  Scenario Outline: Verify that Customer is redirected to respective page when Customer click on Two Wheeler tile[ETB PTB NTB]
    Given User is on Login Page
    And Click on TwoWheeler tile "<TwoWheeler product>"
    Then verify Login Popup should be displayed
    And Enters Mobile Number and Date of Birth "<Mob>" "<DOB>"
    And Click on Get OTP
    And Enters "<OTP>"
    And Click on Submit
    Then Customer should be redirected to respective brand page "<Expected Url>"
    When User logouts application
    Examples:
      | Mob       | DOB     |OTP  |TwoWheeler product|Expected Url|
      |9540678876|02011999|123456|   Scooters  |      https://www.bajajmall.in/emi-store/scooters.html   |
      |9540678876|02011999|123456|   Electric Scooters |        https://www.bajajmall.in/emi-store/electric-scooters.html  |
      |9540678876|02011999|123456|   Best Mileage Bikes  |   https://www.bajajmall.in/emi-store/best-mileage-bikes.html   |
      |9540678876|02011999|123456|   Popular Brands  |   https://www.bajajmall.in/emi-store/popular-brands.html |
      |9540678876|02011999|123456|   Sports Bikes  |       https://www.bajajmall.in/emi-store/sports-bikes.html  |
      |9540678876|02011999|123456|   Adventure Bikes  |    https://www.bajajmall.in/emi-store/adventure-bikes.html  |
      |9540678876|02011999|123456|   Bikes  | https://www.bajajmall.in/emi-store/bikes.html |
      |9540678876|02011999|123456|   Top Sellers  | https://www.bajajmall.in/emi-store/top-selling-bikes.html |

  @RegRunQWE
  Scenario Outline: Verify that Customer is redirected to respective page when Customer click on Two Wheeler tile[ETB PTB NTB]
    Given User is on Login Page
    And Click on TwoWheeler tile "<TwoWheeler product>"
    Then verify Login Popup should be displayed
    And Enters Mobile Number and Date of Birth "<Mob>" "<DOB>"
    And Click on Get OTP
    And Enters "<OTP>"
    And Click on Submit
    Then Customer should be redirected to respective brand page "<Expected Url>"
    When User logouts application
    Examples:
      | Mob       | DOB     |OTP |TwoWheeler product |Expected Url|
      |9970534770|02011999|123456|   Scooters  | https://www.bajajmall.in/emi-store/ |
      |9970534770|02011999|123456|   Electric Scooters | https://www.bajajmall.in/emi-store/ |
      |9970534770|02011999|123456|   Best Mileage Bikes  | https://www.bajajmall.in/emi-store/ |
      |9970534770|02011999|123456|   Popular Brands  | https://www.bajajmall.in/emi-store/ |
      |9970534770|02011999|123456|   Sports Bikes  | https://www.bajajmall.in/emi-store/ |
      |9970534770|02011999|123456|   Adventure Bikes  | https://www.bajajmall.in/emi-store/ |
      |9970534770|02011999|123456|   Bikes  | https://www.bajajmall.in/emi-store/ |
      |9970534770|02011999|123456|   Top Sellers  | https://www.bajajmall.in/emi-store/ |

  @ConceptS
  Scenario Outline:Verify that when clicks on any Products for You
    Given User is on Login Page
    And Click on Products for You tile "<Product Offer>"
    Then Customer should be redirected to respective "<Expected Url>"
    Examples:
      | Product Offer   |Expected Url|
      |    Personal Loan            |    https://www.bajajfinserv.in/personal-loan                   |
      |    Co-Branded Credit Card    |  https://www.bajajfinserv.in/apply-for-credit-card-online     |
      |    Fixed Deposit            |     https://www.bajajfinserv.in/fixed-deposit-online?ProductName=FD       |
      |    Gold Loan            |       https://www.bajajfinserv.in/gold-loan-application-form     |
      |    Health Insurance            |       https://www.bajajfinserv.in/marketplace/insurance/health-insurance/health-insurance-premium-calculator/getGoingNow     |
      |    Car Insurance            |       https://www.bajajfinserv.in/marketplace/insurance/car-insurance/car-insurance-premium-calculator/vehicleRegistration    |
      |    Bike Insurance            |      https://www.bajajfinserv.in/marketplace/insurance/two-wheeler-insurance/bike-insurance-premium-calculator/vehicleRegistration     |
      |    Business Loan            |       https://www.bajajfinserv.in/business-loan-form     |


#  @ProductsNA
#  Scenario Outline:Verify that when clicks on any Products for You
#    Given User is on Login Page
#    And Click on Products for You tile "<Product Offer>"
#    Then Customer should be redirected to respective brand page "<Expected Url>"
#    Examples:
#      | Product Offer   |Expected Url|
#      |    Bajaj Mall   | https://www.bajajmall.in/emi-store |



  @ProdFD
  Scenario Outline: Verify when customer clicks on Fixed Deposit offer tile under  Investment section[ETB PTB NTB]
    Given User is on Login Page
    And Click on Products for You tile "<Product Offer>"
    Then verify Login Popup should be displayed
    And Enters Mobile Number and Date of Birth "<Mob>" "<DOB>"
    And Click on Get OTP
    And Enters "<OTP>"
    And Click on Submit
    Then Customer should be redirected to respective URL or page of Fixed deposit offer with authentication and SSO "<Expected Url>"
    When User logouts application
    Examples:
      | Product Offer |Mob|DOB|OTP| Expected Url |
      | Fixed Deposit | 9910955211 | 11111999  | 123456 | https://www.bajajfinserv.in/fixed-deposit-application-form |

  @ProdFD
  Scenario Outline: Verify when customer clicks on Fixed Deposit offer tile under  Investment section[ETB PTB NTB]
    Given User is on Login Page
    And Click on Products for You tile "<Product Offer>"
    Then verify Login Popup should be displayed
    And Clicks on Corporate/Business tab
    And Enters Mobile Number and Date of Incorporation "<Mob>" "<DOI>"
    And Click on Get OTP
    And Enters "<OTP>"
    And Click on Submit
    Then Customer should be redirected to respective URL or page of Fixed deposit offer with authentication and SSO "<Expected Url>"
    When User logouts application
    Examples:
      | Product Offer |Mob|DOI|OTP| Expected Url |
      | Fixed Deposit | 9650543332  | 11111999  | 123456 | https://www.bajajfinserv.in/fixed-deposit-application-form |


  @ProdFD
  Scenario Outline: Verify when customer clicks on Fixed Deposit offer tile under  Investment section[ETB PTB NTB]
    Given User is on Login Page
    And Click on Products for You tile "<Product Offer>"
    Then verify Login Popup should be displayed
    And Clicks on NRI tab
    And Enters NRI  Mobile Number and Date of Birth "<Mob>" "<DOB>"
    And Click on Get OTP
    And Enters "<OTP>"
    And Click on Submit
    Then Customer should be redirected to respective URL or page of Fixed deposit offer with authentication and SSO "<Expected Url>"
    When User logouts application
    Examples:
      | Product Offer |Mob|DOB|OTP| Expected Url |
      | Fixed Deposit | 8826595511  | 11111999  | 123456 | https://www.bajajfinserv.in/fixed-deposit-application-form |





  @RHS
  Scenario:Verify customer is able to view Bajaj Mall on the RHS [ETB PTB NTB]
    Given User is on Login Page
    Then Bajaj Mall  should be visible on the RHS

  @RHS
  Scenario Outline: Verify that Customer  When clicks on any  hyperlink under RHS  [ETB PTB NTB]
    Given User is on Login Page
    And Click on RHS tile "<RHS Offer>"
    Then verify Login Popup should be displayed
    And Enters Mobile Number and Date of Birth "<Mob>" "<DOB>"
    And Click on Get OTP
    And Enters "<OTP>"
    And Click on Submit
    Then Customer should be redirected to respective "<Expected Url>"
   # When User logouts application
    Examples:
      | RHS Offer |Mob|DOB|OTP|Expected Url|
     # |   Investments | 9910955211  | 11111999  |  123456 | https://www.bajajfinserv.in/investment|
      |   Securities | 8055932902  | 11111999  |  123456 | https://www.bajajfinservsecurities.in |



  @RHSs
  Scenario Outline: Verify that Customer  When clicks on any  hyperlink under RHS  [ETB PTB NTB]
    Given User is on Login Page
    And Click on RHS tile "<RHS Offer>"
    Then verify Login Popup should be displayed
    And Enters Mobile Number and Date of Birth "<Mob>" "<DOB>"
    And Click on Get OTP
    And Enters "<OTP>"
    And Click on Submit
    Then Customer should be redirected to respective brand page "<Expected Url>"
    When User logouts application
    Examples:
      | RHS Offer |Mob|DOB|OTP|Expected Url|
      |   Bajaj Mall | 9540678876  | 11111999  |  123456 |https://www.bajajmall.in/emi-store|
      #|  Securities  | 9540678876  | 11111999  |  123456 |https://www.bajajfinservsecurities.in/|

  @ConceptS
  Scenario Outline:Verify that when clicks on any Products for You
    Given User is on Login Page
    And Click on RHS tile "<RHS Offer>"
    Then Customer should be redirected to respective "<Expected Url>"
    Examples:
      | RHS Offer  |Expected Url|
      |    Insurance Mall        |     https://www.bajajfinserv.in/insurance       |

  @Update
  Scenario Outline:Verify that when clicks on any  offers tile under  Online Stores section[ETB PTB NTB]
    Given User is on Login Page
    And Click on Online Store tile "<OnlineStore Offer>"
    Then Customer should be redirected to respective "<Expected Url>"
    Examples:
      | OnlineStore Offer |Expected Url|
      | Bajaj Finserv Health |     https://www.bajajfinserv.in/online-stores-bajajfinservhealth  |
      | Paymatrix|     https://www.bajajfinserv.in/online-stores-paymatrix  |
      |       Vedantu               |   https://www.bajajfinserv.in/online-stores-vedantu                                                                |
      |        Inshorts              |     https://www.bajajfinserv.in/online-stores-inshorts                                                              |
      |        CarDekho              |       https://www.bajajfinserv.in/online-stores-car-dekho                                                            |
      |         The Man Company             |     https://www.bajajfinserv.in/online-stores-the-man-company                                                              |
      |          True Elements            |       https://www.bajajfinserv.in/online-stores-true-elements                                                            |


  @Update
  Scenario Outline:Verify that when clicks on any  offers tile under  Explore section[ETB PTB NTB]
    Given User is on Login Page
    And Click on Explore Store tile "<OnlineStore Offer>"
    Then Customer should be redirected to respective "<Expected Url>"
    Examples:
      | OnlineStore Offer |Expected Url|
      | Personal Loan calculator |     https://www.bajajfinserv.in/personal-loan-emi-calculator  |
      | Fixed Deposit Calculator |      https://www.bajajfinserv.in/investments/fixed-deposit-calculator  |
      |        Health Insurance              | https://www.bajajfinserv.in/marketplace/insurance/health-insurance/health-insurance-premium-calculator/getGoingNow |
      |        Pocket Subscription              |     https://www.bajajfinserv.in/insurance/pocket-subscription-all-products                                                              |
      |        Car Insurance              |      https://www.bajajfinserv.in/marketplace/insurance/car-insurance                                                           |
      |         Home Loan Calculator             |     https://www.bajajfinserv.in/home-loan-emi-calculator                                                             |
      |          Business Loan Calculator            |      https://www.bajajfinserv.in/business-loan-emi-calculator                                                            |
      |          Gold Loan Calculator            |       https://www.bajajfinserv.in/gold-loan-calculator                                                            |
      |          GST Calculator            |       https://www.bajajfinserv.in/gst-calculator                                                            |
      |          Blogs & Articles            |       https://www.bajajfinserv.in/insights                                                            |


  @ExploreTile
  Scenario Outline:Verify that when clicks on any  offers tile under  Explore section[ETB PTB NTB]
    Given User is on Login Page
    And Click on Explore Store tile "<OnlineStore Offer>"
    Then verify Login Popup should be displayed
    Examples:
      | OnlineStore Offer |Expected Url|
      |       CIBIL Score               |   Login                                                             |


  @ReRun
  Scenario Outline:verify that Partners Offers label & section is visible to the customer  [ETB PTB NTB]
    Given User is on Login Page
    Then Partners Offers label & section should be visible to the customer
    And Click on Partners tile "<Partner Image Offer>"
    Then Customer should be redirected to respective "<Expected Url>"
    Examples:
      | Partner Image Offer |Expected Url|
      | partner-offers-vedantu |     https://www.bajajfinserv.in/online-stores-vedantu  |
      | partner-offers-ease-my-trip |     https://www.bajajfinserv.in/online-stores-ease-my-trip  |
      | partner-offers-the-man-company |    https://www.bajajfinserv.in/online-stores-the-man-company  |
      | partner-offers-true-elements |     https://www.bajajfinserv.in/online-stores-true-elements  |




  @Hamburger
  Scenario Outline: Verify Customer is able to view Menu when customer click on Hamburger menu icon(Login Page)
    Given User is on Login Page
    And Clicks on Hamburger Menu
    Then verify All Submenu is Displayed in Login Page Hamburger "<Hamburger Options>"

    Examples:
      | Hamburger Options |
      | Menu#Help and support#Payments#Check Pre approved offers#Take A Tour#Download our apps        |

  @Hamburger
  Scenario Outline: Verify Customer is able to view Sub-Menu when customer click on Help and Support menu
    Given User is on Login Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then Verify Customer is able to view "<SubListMenus>" for Help and Support menu

    Examples:
      | SubMenu| SubListMenus|
      | Help and support| Contact us#Store locator#Raise A request#FAQ’s |

  @SkipCancel
  Scenario Outline: Verify Customer is redirected to respective page when customer click on Contact Us Menu
    Given User is on Login Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on "<SubListMenu>" of "<SubMenu>"
    Then Customer should be redirected to respective "<Expected Url>"

    Examples:
      | SubMenu          | SubListMenu | Expected Url                         |
      | Help and support | Contact us  | https://www.bajajfinserv.in/reach-us |
      | Help and support | Store locator  | https://www.bajajfinserv.in/branch-locator |

  @Hamburger
  Scenario Outline: Verify Customer is redirected to respective page when customer click on Contact Us Menu
    Given User is on Login Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on "<SubListMenu>" of "<SubMenu>"
    Then verify Login Popup should be displayed
    And Enters Mobile Number and Date of Birth "<Mob>" "<DOB>"
    And Click on Get OTP
    And Enters "<OTP>"
    And Click on Submit
    Then Customer should be redirected to home page
    Examples:
      |Mob|DOB|OTP| SubMenu          | SubListMenu |
      |  9970534770 |  11111999  |123456 | Help and support | Raise A request |
      |  9970534770 |  11111999  |123456 | Help and support | FAQ’s  |


  @Hamburger
  Scenario Outline: Verify Customer is able to view Sub-Menu when customer click on Payments menu
    Given User is on Login Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then Verify Customer is able to view "<SubListMenus>" for Help and Support menu

    Examples:
      | SubMenu| SubListMenus|
      | Payments | Overdue#Other Payments|



  @Hamburger
  Scenario Outline: Verify Customer is redirected to respective page when customer click on Contact Us Menu
    Given User is on Login Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on "<SubListMenu>" of "<SubMenu>"
    Then verify Login Popup should be displayed
    And Enters Mobile Number and Date of Birth "<Mob>" "<DOB>"
    And Click on Get OTP
    And Enters "<OTP>"
    And Click on Submit
    Then Customer should be redirected to home page
    Examples:
      |Mob|DOB |OTP| SubMenu  | SubListMenu |
      |  9970534770 |  11111999  |123456 | Payments | Overdue |
      |   9970534770| 11111999   |  123456 | Payments | Other Payments |
      |  8605337783 |  11111999  |123456 | Payments | Overdue |
      |   8605337783| 11111999   |  123456 | Payments | Other Payments |


  @Hamburgerk
  Scenario Outline: Verify Customer is redirected to respective page when customer click on Contact Us Menu
    Given User is on Login Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And Clicks on "<SubListMenu>" of "<SubMenu>"
    Then verify Login Popup should be displayed
    And Enters Mobile Number and Date of Birth "<Mob>" "<DOB>"
    And Click on Get OTP
    And Enters "<OTP>"
    And Click on Submit
    Then Customer should be redirected to respective "<Expected Url>"
    When User logouts application
    Examples:
      |Mob|DOB | SubMenu  | SubListMenu |Expected Url| OTP|
      | 9822021252  |11111999| Payments | Overdue |       https://uat-oneweb.bajajfinserv.in/MyAccountPayments/LoanPay/ActiveLoanOverduePay         |123456|
      |9822021252   |11111999| Payments | Other Payments | https://uat-oneweb.bajajfinserv.in/MyAccountPayments/LoanPay/ActiveLoanPay |123456|




  @Hamburgerk
  Scenario Outline: Verify Customer is redirected to Offer World page when customer click on Check Pre-approved offers menu
    Given User is on Login Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then verify Login Popup should be displayed
    And Enters Mobile Number and Date of Birth "<Mob>" "<DOB>"
    And Click on Get OTP
    And Enters "<OTP>"
    And Click on Submit
    Then Customer should be redirected to respective "<Expected Url>"
   # When User logouts application
    Examples:
      |     Mob     |   DOB  | SubMenu   |Expected Url    | OTP |
      | 9822021252  |11111999| Check Pre approved offers   | https://www.bajajfinserv.in/offers-and-promotion | 123456|
      | 9970534770   |11111999| Check Pre approved offers  | https://www.bajajfinserv.in/offers-and-promotion | 123456|
      | 8605337783   |11111999| Check Pre approved offers  | https://www.bajajfinserv.in/offers-and-promotion | 123456|


  @Hamburger
  Scenario Outline: Verify Customer is redirected to respective page When customer click on Download our apps Menu
    Given User is on Login Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then Customer should be redirected to respective brand page "<Expected Url>"

    Examples:
      | SubMenu  |Expected Url|
      |    Download our apps      |     https://play.google.com/store/apps/details       |


  @Hamburgerk
  Scenario Outline: Verify Customer is redirected to respective page When customer click on Take a Tour Menu
    Given User is on Login Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    Then Customer should be redirected to take a tour Page.

    Examples:
      | SubMenu  |Expected Url|
      | Take A Tour |     https://play.google.com/store/apps/details       |

#New CR




