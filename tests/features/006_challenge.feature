Feature: Challenges

  Scenario: add a challenge 
    Given that I am logged as an administrator
    When I want to add a new challenge
    And I provide the mandatory fields
    * title
    * text
    * category
    Then it should be added to the challenges database

  Scenario: view a challenge
    Given that I am logged as a user
    When I access my home screen
    Then I should see one random daily challenge