Feature: Registration

  Background:
    Given that I am not registered on the platform

  Scenario: a guest wants to register
    And I want to register
    When I provide an email and a password
    Then I should receive a confirmation link
    When I validate the confirmation step
    Then I should be logged in the platform with my new account

  Scenario: a guest wants to register through their Google account
    And I want to register through Google
    When I initiate the registration through Google
    Then I should go through Google's authentication flow
    When I complete the authentication successfully
    Then I should be logged in the platform with my new account

  Scenario: a guest wants to register through their Apple ID
    And I want to register through Apple ID
    When I initiate the registration through Apple ID
    Then I should go through Apple ID's authentication flow
    When I complete the authentication successfully
    Then I should be logged in the platform with my new account