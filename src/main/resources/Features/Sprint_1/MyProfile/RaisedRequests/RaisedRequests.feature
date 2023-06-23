@neg
Feature: RAISED REQUESTS- My Profile

#####Individual
  Scenario: Individual - Raised Request- PAN
    Given User is logged in "9968029754" "22061978" for "Individual"
    When User is on Home Page
    Then Customer should be redirected to Home page where Profile icon should be visible
    And Clicks on profile icon
    Then Customer should be redirected to My profile page
    When Customer is on My Profile Page
    And Clicks edit,update "PAN" button
    Then Customer should get below popup for "PAN." if request is already raised

  Scenario:Individual - Raised Request- Mobile Number
    Given User is logged in "9968029754" "22061978" for "Individual"
    When User is on Home Page
    And Clicks on profile icon
    Then Customer should be redirected to My profile page
    When Customer is on My Profile Page
    And Customer should be able to view mobile icon on my profile page for mobile field
    And Clicks edit,update "Mobile Number" button
    Then Customer should get below popup for "" if request is already raised

  Scenario:Individual - Raised Request- Email ID
    Given User is logged in "9968029754" "22061978" for "Individual"
    When User is on Home Page
    And Clicks on profile icon
    Then Customer should be redirected to My profile page
    When Customer is on My Profile Page
    And Clicks edit,update "Email ID" button
    Then Customer should get below popup for "" if request is already raised

  Scenario:Individual - Raised Request- Date of Birth
    Given User is logged in "9968029754" "22061978" for "Individual"
    When User is on Home Page
    And Clicks on profile icon
    Then Customer should be redirected to My profile page
    When Customer is on My Profile Page
    And Clicks edit,update "Date of Birth" button
    Then Customer should get below popup for "" if request is already raised

  Scenario:Individual - Raised Request- Current Address
    Given User is logged in "9968029754" "22061978" for "Individual"
    When User is on Home Page
    And Clicks on profile icon
    Then Customer should be redirected to My profile page
    When Customer is on My Profile Page
    And Clicks edit,update "Current Address" button
    Then Customer should get below popup for "" if request is already raised

#######Corporate

  Scenario:Corporate - Raised Request- PAN
    Given User is logged in "7982153018" "01072017" for "Corporate"
    When User is on Home Page
    And Clicks on profile icon
    Then Customer should be redirected to My profile page
    When Customer is on My Profile Page
    And Clicks edit,update "PAN" button
    Then Customer should get below popup for "PAN." if request is already raised

  Scenario:Corporate - Raised Request- Email ID
    Given User is logged in "7982153018" "01072017" for "Corporate"
    When User is on Home Page
    And Clicks on profile icon
    Then Customer should be redirected to My profile page
    When Customer is on My Profile Page
    And Clicks edit,update "Email ID" button
    Then Customer should get below popup for "" if request is already raised

  Scenario:Corporate - Raised Request- Date of Birth
    Given User is logged in "7982153018" "01072017" for "Corporate"
    When User is on Home Page
    And Clicks on profile icon
    Then Customer should be redirected to My profile page
    When Customer is on My Profile Page
    And Clicks edit,update "Date Of Incorporation" button
    Then Customer should get below popup for "" if request is already raised

  Scenario:Corporate - Raised Request- Current Address
    Given User is logged in "7982153018" "01072017" for "Corporate"
    When User is on Home Page
    And Clicks on profile icon
    Then Customer should be redirected to My profile page
    When Customer is on My Profile Page
    And Clicks edit,update "Current Address" button
    Then Customer should get below popup for "" if request is already raised

