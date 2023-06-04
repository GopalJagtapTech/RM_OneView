
Feature: New Home Page - Carousal

  Scenario Outline: Carousal - <Product Name>
    And Get Data for "<Product Name>" under "<Section Name>"
    And verify "<Product Name>" Title is Displayed for Carousal
    And verify "<Product Name>" Description Text is Displayed for Carousal
    And verify "<Product Name>" Logo is Displayed for Carousal
    And verify "<Product Name>" CTA Button is Displayed for Carousal
    And Click on "<Product Name>" CTA Button in Carousal Section
    And verify "<Product Name>" Redirection for "<Section Name>" "with SSO":""
    Examples:
      |Section Name| Product Name |
      |Carousal| Check your CIBIL Score         |

Scenario Outline: Carousal - <Product Name>
    And Get Data for "<Product Name>" under "<Section Name>"
    And verify "<Product Name>" Title is Displayed for Carousal
    And verify "<Product Name>" Description Text is Displayed for Carousal
    And verify "<Product Name>" Logo is Displayed for Carousal
    And verify "<Product Name>" CTA Button is Displayed for Carousal
    And Click on "<Product Name>" CTA Button in Carousal Section
  And verify "<Product Name>" Redirection for "<Section Name>" "with New Tab":""
    Examples:
      |Section Name| Product Name |
      |Carousal| Book an FD at up to 8.10% p.a.         |

Scenario Outline: Carousal - <Product Name>
    And Get Data for "<Product Name>" under "<Section Name>"
    And verify "<Product Name>" Title is Displayed for Carousal
    And verify "<Product Name>" Description Text is Displayed for Carousal
    And verify "<Product Name>" Logo is Displayed for Carousal
    And verify "<Product Name>" CTA Button is Displayed for Carousal
    And Click on "<Product Name>" CTA Button in Carousal Section
  And verify "<Product Name>" Redirection for "<Section Name>" "with SSO":"/MyAccountService/HelpAndSupport/Index?"
    Examples:
      |Section Name| Product Name |
      |Carousal| Help and Support         |

