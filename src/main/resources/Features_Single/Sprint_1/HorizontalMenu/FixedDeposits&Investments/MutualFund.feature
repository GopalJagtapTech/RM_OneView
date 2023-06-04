@regression
Feature: Fixed Deposit Mutual Funds SubMenu

  Scenario Outline: Investments To verify Mutual Funds  About The Product - Invest Now
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<Subheading>" and "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | Subheading | level 2 Sub Type |Expected Url|
      | Investments | Mutual Funds | About the product | Invest Now | https://play.google.com/store/apps/details |


  Scenario Outline: Investments To verify Mutual Funds  About The Product - SIP Calculator
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<Subheading>" and "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | Subheading | level 2 Sub Type |Expected Url|
      | Investments | Mutual Funds | About the product | SIP Calculator | https://uat-oneweb.bajajfinserv.in/investments/sip-calculator |

  Scenario Outline: Investments To verify Mutual Funds  About The Product - Overview
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<Subheading>" and "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | Subheading | level 2 Sub Type |Expected Url|
      | Investments | Mutual Funds | About the product | Overview | https://uat-oneweb.bajajfinserv.in/investments/mutual-funds |

  Scenario Outline: Investments To verify Mutual Funds  About The Product - Explore All MFs
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<Subheading>" and "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | Subheading | level 2 Sub Type |Expected Url|
      | Investments | Mutual Funds | About the product | Explore All MFs | https://uat-oneweb.bajajfinserv.in/investments/mutual-funds-listing |

  Scenario Outline: Investments To verify Mutual Funds  About The Product - How to invest
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<Subheading>" and "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | Subheading | level 2 Sub Type |Expected Url|
      | Investments | Mutual Funds | About the product | How to invest | https://uat-oneweb.bajajfinserv.in/investments/mutual-funds |

  Scenario Outline: Investments To verify Mutual Funds  About The Product - FAQs
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<Subheading>" and "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | Subheading | level 2 Sub Type |Expected Url|
      | Investments | Mutual Funds | About the product | FAQs | https://uat-oneweb.bajajfinserv.in/investments/systematic-deposit-plan-frequently-asked-questions |

  Scenario Outline: Investments To verify Mutual Funds  About The Product - Contact Us
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<Subheading>" and "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | Subheading | level 2 Sub Type |Expected Url|
      | Investments | Mutual Funds | About the product | Contact Us | https://uat-oneweb.bajajfinserv.in/reach-us |


  Scenario Outline: Investments To verify Mutual Funds  Fund Category - Debt Funds
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<Subheading>" and "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | Subheading | level 2 Sub Type |Expected Url|
      | Investments | Mutual Funds | Fund Category | Debt Funds | https://uat-oneweb.bajajfinserv.in/investments/debt-mutual-funds |


  Scenario Outline: Investments To verify Mutual Funds  Fund Category - Equity Funds
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<Subheading>" and "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | Subheading | level 2 Sub Type |Expected Url|
      | Investments | Mutual Funds | Fund Category | Equity Funds | https://uat-oneweb.bajajfinserv.in/investments/equity-mutual-funds |


  Scenario Outline: Investments To verify Mutual Funds  Fund Category - Hybrid Funds
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<Subheading>" and "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | Subheading | level 2 Sub Type |Expected Url|
      | Investments | Mutual Funds | Fund Category | Hybrid Funds | https://uat-oneweb.bajajfinserv.in/investments/hybrid-mutual-funds |


  Scenario Outline: Investments To verify Mutual Funds  Fund Category - ELSS Funds
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<Subheading>" and "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | Subheading | level 2 Sub Type |Expected Url|
      | Investments | Mutual Funds | Fund Category | ELSS Funds | https://uat-oneweb.bajajfinserv.in/investments/elss-mutual-funds |


  Scenario Outline: Investments To verify Mutual Funds  Fund Category - Thematic Funds
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<Subheading>" and "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | Subheading | level 2 Sub Type |Expected Url|
      | Investments | Mutual Funds | Fund Category | Thematic Funds | https://uat-oneweb.bajajfinserv.in/investments/thematic-mutual-funds |


  Scenario Outline: Investments To verify Mutual Funds  Funds by returns - 1 month Returns
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<Subheading>" and "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | Subheading | level 2 Sub Type |Expected Url|
      | Investments | Mutual Funds | Funds by returns | 1 month Returns | https://uat-oneweb.bajajfinserv.in/investments/mutual-funds-listing?&sort_by=returns_1_mth |

  Scenario Outline: Investments To verify Mutual Funds  Funds by returns - 3 Months Returns
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<Subheading>" and "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | Subheading | level 2 Sub Type |Expected Url|
      | Investments | Mutual Funds | Funds by returns | 3 Months Returns | https://uat-oneweb.bajajfinserv.in/investments/mutual-funds-listing?sort_by=returns_3_mth |

  Scenario Outline: Investments To verify Mutual Funds  Funds by returns - 1 Year Returns
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<Subheading>" and "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | Subheading | level 2 Sub Type |Expected Url|
      | Investments | Mutual Funds | Funds by returns | 1 Year Returns | https://uat-oneweb.bajajfinserv.in/investments/mutual-funds-listing?&sort_by=returns_1_yr |

  Scenario Outline: Investments To verify Mutual Funds  Funds by returns - 3 Years Returns
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<Subheading>" and "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | Subheading | level 2 Sub Type |Expected Url|
      | Investments | Mutual Funds | Funds by returns | 3 Years Returns | https://uat-oneweb.bajajfinserv.in/investments/mutual-funds-listing?sort_by=returns_3_yr |

  Scenario Outline: Investments To verify Mutual Funds  Funds by returns - Max Returns
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on "<Loan type>","<Subheading>" and "<level 2 Sub Type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | Subheading | level 2 Sub Type |Expected Url|
      | Investments | Mutual Funds | Funds by returns | Max Returns | https://uat-oneweb.bajajfinserv.in/investments/mutual-funds-listing?sort_by=returns_5_yr |


#  @run
#  Scenario Outline: Investments To verify Mutual Funds - Overview
#  When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
#  And clicks on "<Loan type>"& Apply Online "<level 2 Sub Type>"
#  Then Customer should be Redirected to "<Expected Url>"
#  Examples:
#  | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
#  | Investments | Mutual Funds | Overview | https://uat-oneweb.bajajfinserv.in/mutual-funds |
#
#
#  @run
#  Scenario Outline: Investments To verify Mutual Funds - FaqS
#    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
#    And clicks on "<Loan type>"& Apply Online "<level 2 Sub Type>"
#    Then Customer should be Redirected to "<Expected Url>"
#    Examples:
#      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
#      | Investments | Mutual Funds | FAQs | https://uat-oneweb.bajajfinserv.in/investments/systematic-deposit-plan-frequently-asked-questions |
#
#  @run
#  Scenario Outline: Investments To verify Mutual Funds - How to Invest
#    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
#    And clicks on "<Loan type>"& Apply Online "<level 2 Sub Type>"
#    Then Customer should be Redirected to "<Expected Url>"
#    Examples:
#      | dropDownType | Loan type | level 2 Sub Type | Expected Url                          |
#      | Investments | Mutual Funds |How to invest | https://uat-oneweb.bajajfinserv.in/investments/systematic-deposit-plan-frequently-asked-questions |
#

  Scenario Outline: HM_CC To verify Investments - Become Our Partner
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over menu "<Loan type>"
    And clicks on single "<dropDownType>" and "<Loan type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | Expected Url                      |
      | Investments | Become Our Partner | https://www.bajajfinserv.in/fixed-deposit-become-a-partner |

  @RedireK
  Scenario Outline: To verify Investments - Partner Portal
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over menu "<Loan type>"
    And clicks on single "<dropDownType>" and "<Loan type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type | Expected Url                      |
      | Investments | Partner Portal | https://business-login.bajajfinserv.in/Migrated/new/ODM/login |


