@regression

Feature: Bills & Recharges

  Scenario Outline: HM_CC To verify Bills & Recharges - Pay Now
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on SubMenu"<Loan type>"
    And clicks on "<Button>" Button
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type         | Button  | Expected Url                                                       |
      | Payments     | Bills & Recharges | Pay Now | https://uat-oneweb.bajajfinserv.in/bbps-bharat-bill-payment-system |


  Scenario Outline: HM_CC To verify Bills & Recharges - Mobile Recharge
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on SubMenu"<Loan type>"
    And clicks on SubOptionType"<level 2 Sub Type>" under SubMenu"<Loan type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type         | level 2 Sub Type | Expected Url                                               |
      | Payments     | Bills & Recharges | Mobile Recharge  | https://uat-oneweb.bajajfinserv.in/prepaid-mobile-recharge |

  Scenario Outline: HM_CC To verify Bills & Recharges - Electricity Bill
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on SubMenu"<Loan type>"
    And clicks on SubOptionType"<level 2 Sub Type>" under SubMenu"<Loan type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type         | level 2 Sub Type | Expected Url                                                                                  |
      | Payments     | Bills & Recharges | Electricity Bill | https://uat-oneweb.bajajfinserv.in/bbps-bills-and-payments-bill-category?category=electricity |

  Scenario Outline: HM_CC To verify Bills & Recharges - Loan Repayment
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on SubMenu"<Loan type>"
    And clicks on SubOptionType"<level 2 Sub Type>" under SubMenu"<Loan type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type         | level 2 Sub Type | Expected Url                                                                           |
      | Payments     | Bills & Recharges | Loan Repayment   | https://uat-oneweb.bajajfinserv.in/bbps-bills-and-payments-bill-category?category=loan |

  Scenario Outline: HM_CC To verify Bills & Recharges - FASTag Recharge
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on SubMenu"<Loan type>"
    And clicks on SubOptionType"<level 2 Sub Type>" under SubMenu"<Loan type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type         | level 2 Sub Type | Expected Url                                       |
      | Payments     | Bills & Recharges | FASTag Recharge  | https://uat-oneweb.bajajfinserv.in/fastag-recharge |

  Scenario Outline: HM_CC To verify Bills & Recharges - DTH Recharge
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on SubMenu"<Loan type>"
    And clicks on SubOptionType"<level 2 Sub Type>" under SubMenu"<Loan type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type         | level 2 Sub Type | Expected Url                                                                          |
      | Payments     | Bills & Recharges | DTH Recharge     | https://uat-oneweb.bajajfinserv.in/bbps-bills-and-payments-bill-category?category=dth |

  Scenario Outline: HM_CC To verify Bills & Recharges - View More
    When Customer Clicks on "<dropDownType>" Drop-down & Hover over "<Loan type>"
    And clicks on SubMenu"<Loan type>"
    And clicks on SubOptionType"<level 2 Sub Type>" under SubMenu"<Loan type>"
    Then Customer should be Redirected to "<Expected Url>"
    Examples:
      | dropDownType | Loan type         | level 2 Sub Type | Expected Url                                                       |
      | Payments     | Bills & Recharges | View More        | https://uat-oneweb.bajajfinserv.in/bbps-bharat-bill-payment-system |


