Feature: Login

  Background:
    Given that I am registered to the platform

  Scenario: a guest wants to login
    And I want to login
    When I provide my email and my password
    Then if credentials are valid
    Then I should be logged in the platform with my account

  Scenario: a guest wants to login through their Google account
    And I want to login through my Google account
    When I initiate the login through Google
    Then I should go through Google's authentication flow
    When I complete the authentication successfully
    Then I should be logged in the platform with my account

  Scenario: a guest wants to login through their Apple ID
    And I want to login through Apple ID
    When I initiate the login through Apple ID
    Then I should go through Apple ID's authentication flow
    When I complete the authentication successfully
    Then I should be logged in the platform with my account