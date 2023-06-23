@neg
Feature: My Profile- Not Available

  @not
  Scenario Outline: Verify Not Available for Options- "<Options>" Individual
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on profile icon
    Then Customer should be redirected to My profile page
    And Customer should view Not Available for fields for which his details are Not Available "<Options>"
    Examples:
      | Mobile Number | Date     | Customer Type | Options |
      | 9936296375    | 24061975 | Individual    | PAN     |

  @not
  Scenario Outline: Verify Not Available for Options- "<Options>" Individual
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on profile icon
    Then Customer should be redirected to My profile page
    And Customer should view Not Available for fields for which his details are Not Available "<Options>"
    Examples:
      | Mobile Number | Date     | Customer Type | Options  |
      | 9396881815    | 24061975 | Individual    | Email ID |

  @not
  Scenario Outline: Verify Not Available for Options- "<Options>" Individual
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on profile icon
    Then Customer should be redirected to My profile page
    And Customer should view Not Available for fields for which his details are Not Available "<Options>"
    Examples:
      | Mobile Number | Date     | Customer Type | Options          |
      | 9396881815    | 24061975 | Individual    | KIN/CKYCR Number |


  Scenario Outline: Verify Not Available for Options- "<Options>" Individual
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on profile icon
    Then Customer should be redirected to My profile page
    And Customer should view Not Available for fields for which his details are Not Available "<Options>"
    Examples:
      | Mobile Number | Date     | Customer Type | Options |
      | 9891068972    | 24061975 | Individual    | GSTIN   |

  @not
  Scenario Outline: Verify Not Available for Options- "<Options>" Individual
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on profile icon
    Then Customer should be redirected to My profile page
    And Customer should view Not Available for fields for which his details are Not Available "<Options>"
    Examples:
      | Mobile Number | Date     | Customer Type | Options         |
      | 9819602197    | 14091979 | Individual    | Current Address |

#Corporate
  @not
  Scenario Outline: Verify Not Available for Options- "<Options>" Corporate
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on profile icon
    Then Customer should be redirected to My profile page
    And Customer should view Not Available for fields for which his details are Not Available "<Options>"
    Examples:
      | Mobile Number | Date     | Customer Type  | Options |
      | 9810831168    | 31052011 | Non-Individual | PAN     |

  Scenario Outline: Verify Not Available for Options- "<Options>"
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on profile icon
    Then Customer should be redirected to My profile page
    And Customer should view Not Available for fields for which his details are Not Available "<Options>"
    Examples:
      | Mobile Number | Date     | Customer Type  | Options               |
      | 7982153018    | 01072017 | Non-Individual | Date Of Incorporation |

  @not
  Scenario Outline: Verify Not Available for Options- "<Options>"
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on profile icon
    Then Customer should be redirected to My profile page
    And Customer should view Not Available for fields for which his details are Not Available "<Options>"
    Examples:
      | Mobile Number | Date     | Customer Type  | Options |
      | 9810831168    | 01072017 | Non-Individual | GSTIN   |

  @not
  Scenario Outline: Verify Not Available for Options- "<Options>"
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on profile icon
    Then Customer should be redirected to My profile page
    And Customer should view Not Available for fields for which his details are Not Available "<Options>"
    Examples:
      | Mobile Number | Date     | Customer Type  | Options  |
      | 9810831168    | 24062006 | Non-Individual | Email ID |

  @not
  Scenario Outline: Verify Not Available for Options- "<Options>"
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And Clicks on profile icon
    Then Customer should be redirected to My profile page
    And Customer should view Not Available for fields for which his details are Not Available "<Options>"
    Examples:
      | Mobile Number | Date     | Customer Type  | Options          |
      | 9810831168    | 24062006 | Non-Individual | KIN/CKYCR Number |




