@ensarlogin
Feature: Fidexio login feature

  User Story : As a user, I should be able to log in so that I can land on homepage.

  1-Users can log in with valid credentials (We have 5 types of users but will test only 2 user: PosManager, SalesManager)
  2-"Wrong login/password" should be displayed for invalid (valid username-invalid password and invalid username-valid password) credentials
  3- "Please fill out this field" message should be displayed if the password or username is empty
  4-User lands on the ‘reset password’ page after clicking on the "Reset password" link
  5-User should see the password in bullet signs by default
  6- Verify if the ‘Enter’ key of the keyboard is working correctly on the login page.

  Background: User should access the login page

    # Test1 : Users can log in with valid credentials (We have 5 types of users but will test only 2 user: PosManager, SalesManager)

  @FIX10-343 @wip
  Scenario Outline:
    Given User opens a browser and go to login page
    When User enters a valid SalesManager "<username>" into username box
    And User enters a valid SalesManager "<password>" into password box
    And User clicks the login button
    Then User lands on the home page ans sees "Odoo" on the title.

    Examples: login values we are going to be using in this scenario is as below
      | username                 | password     |
      | salesmanager15@info.com  | salesmanager |
      | salesmanager20@info.com  | salesmanager |
      | salesmanager25@info.com  | salesmanager |
      | salesmanager30@info.com  | salesmanager |
      | salesmanager100@info.com | salesmanager |
      | salesmanager105@info.com | salesmanager |

  @FIX10-363 @wip
  Scenario Outline:
    Given User opens a browser and go to login page
    When User enters a valid PosManager "<username>" into username box
    And User enters a valid PosManager "<password>" into password box
    And User clicks the login button
    Then User lands on the home page ans sees "Odoo" on the title.
    Examples: login values we are going to be using in this scenario is as below
      | username               | password   |
      | posmanager15@info.com  | posmanager |
      | posmanager20@info.com  | posmanager |
      | posmanager25@info.com  | posmanager |
      | posmanager30@info.com  | posmanager |
      | posmanager100@info.com | posmanager |
      | posmanager105@info.com | posmanager |

  @FIX10-359 @wip
  Scenario Outline:
    Given User opens a browser and go to login page
    When User enters a invalid  "<username>" into username box
    And User enters a invalid  "<password>" into password box
    And User clicks the login button
    Then User can see "Wrong login/password" message on the page
    Examples: login values we are going to be using in this scenario is as below
      | username                | password     |
      | info15@info.com         | info         |
      | info20@info.com         | salesmanager |
      | salesmanager25@info.com | info         |
      | info20@info.com         | posmanager   |
      | posmanager25@info.com   | info         |

  @FIX10-360 @wip
  Scenario:
    Given User opens a browser and go to login page
    When User doesn't enter "" into username box
    And User doesn't enter "" into password box
    And User clicks the login button
    Then User can see "Please fill out this field." message.


  @FIX10-362 @wip
  Scenario:
    Given User opens a browser and go to login page
    When User enters a valid PosManager "posmanager15@info.com" into username box
    And User enters a valid PosManager "posmanager" into password box
    And User hit ‘Enter’ key of the keyboard is working correctly on the login page.
    Then User lands on the home page ans sees "Odoo" on the title.