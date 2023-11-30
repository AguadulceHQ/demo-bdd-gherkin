Feature: Insights

  Scenario: add an insight 
    Given that I am logged as an administrator
    When I want to add a new insight
    And I provide the mandatory fields
    * title
    * text
    * category
    Then it should be added to the insights database

  Scenario: view an insight
    Given that I am logged as a user
    When I access my home screen
    Then I should see one random daily insight