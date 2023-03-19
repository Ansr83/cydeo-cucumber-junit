@ensarlogout
Feature: User should be able to logout

  User Story : As a user, I should be able to log out.

  Acceptance Criterias:
  1- User can log out and ends up in login page.
  2- The user can not go to the home page again by clicking the step back button after successfully logged out


  # ---- AC1: 1- User can log out and ends up in login page. -----

  @FIX10-364 #@wip
  Scenario Outline: user should be able to log out and end up in login page
    Given User is already logged in as "<userType>"
    When user should able to see profile name on right top of the page and click it
    And user should see the Log out button
    And click on Log out button
    Then navigates to login page
    Examples:
      | userType     |
      | posmanager   |
      | salesmanager |


   # ---- AC2: 2- The user can not go to the home page again by clicking the step back button after successfully logged out -----

  @FIX10-365 #@wip
  Scenario Outline: user an not go to the home page again by clicking the step back button after logged out
    Given User is already logged in as "<userType>"
    When user should able to see profile name on right top of the page and click it
    And user should see the Log out button
    And click on Log out button
    Then click on navigate back button
    And user should see error message
    Then user should not have the access to homepage components
    Examples:
      | userType     |
      | posmanager   |
      | salesmanager |
