@commons.wikimedia.beta.wmflabs.org @test2.wikipedia.org
Feature: Log in

  Background:
    Given I am at Log in page

  Scenario: Go to Log in page
    Then Log in page should open
      And Username element should be there
      And Password element should be there
      And Log in element should be there

  Scenario: Log in without entering credentials
    When I log in without entering credentials
    Then Log in page should open
      And feedback should be You have not specified a valid user name.

  Scenario: Log in without entering password
    When I log in without entering password
    Then Log in page should open
      And feedback should be The password field was empty. Please try again.

  Scenario: Log in with incorrect username
    When I log in with incorrect username
    Then Log in page should open
    And feedback should be There is no user by the name "incorrect username". Check your spelling, or go to Wikipedia's signup page to create a new user account.

  Scenario: Log in with incorrect password
    When I log in with incorrect password
    Then Log in page should open
      And feedback should be Incorrect password entered. Please try again.

  @login
  Scenario: Log in with valid credentials
    When Log in as Selenium_user
    Then there should be text Selenium user
 
 Scenario: Login should work fine with username with maximum charaters allowed
 When Enter a username with maximum characters allowed and enter password
 Then user should be able to login fine
 And no error message is displayed

 Scenario: Login should work fine with username having password with maximum charaters allowed
 When Enter a username for which password is maximum characters allowed and enter password
 Then user should be able to login fine
 And no error message is displayed


 
