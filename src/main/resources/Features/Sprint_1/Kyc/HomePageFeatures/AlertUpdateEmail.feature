Feature: Alerts section - update email ID

  Scenario Outline: Verify ETB  customer is able to view Aleart section with bell icon on header section of Homepage
     Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And verify Alert bell icon in header
    Then ETB Customer should be able to View Alert section on header of Homepage
    Examples:
      |Mobile Number| Date|Customer Type|
      |9527443732 | 08.04.1986 |Individual|

  Scenario Outline: Verify customer is able to click on alert section
     Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And verify Alert bell icon in header
    And Click on Alert bell icon
    Then Customer should be able to click on Alert option and offers should be displayed
    Examples:
      |Mobile Number| Date|Customer Type|
      |9527443732 | 08.04.1986 | Individual|

  Scenario Outline: Verify that customer is able to view  Check/update email ID  card
     Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And verify Alert bell icon in header
    And Click on Alert bell icon
    And Verify Check or update email ID card option
    Then Customer should be able to Check update email ID  with Update CTA and subtext "<CTA>" and "<Subtext>"
    Examples:
      |Mobile Number| Date|Customer Type|CTA | Subtext |
      |  9527443732 |08.04.1986| Individual |  Check/update email ID |Update your email ID in few clicks.|

@Caps
  Scenario Outline: Verify that Upadate CTA displayed in caps format on Check/update email ID  card
     Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And verify Alert bell icon in header
    And Click on Alert bell icon
   # And Verify CTA in caps on card option "<CTA>"
    Then Update CTA should be displayed in caps format
    Examples:
      |Mobile Number| Date|Customer Type|CTA |
      |9527443732 | 08.04.1986 | Individual|Update |


  @Caps
  Scenario Outline: Verify that when Click on Update CTA of Check/update email ID   card
     Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User is on Home Page
    And verify Alert bell icon in header
    And Click on Alert bell icon
    And Click on Update "<CTA>"
    Then Customer should be redirected to My Profile page
    Examples:
      |Mobile Number| Date|Customer Type|CTA |URL |
      |9527443732 | 08.04.1986 | Individual|Upadate|https://www.bajajmall.in/emi-store |
	 
