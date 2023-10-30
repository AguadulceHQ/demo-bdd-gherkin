Feature: Quote

  Scenario: add a quote 
    Given that I am logged as an administrator
    When I want to add a new quote
    And I provide the mandatory fields
    * text
    * author
    * category
    Then it should be added to the quotes database

  Scenario: view a quote
    Given that I am logged as a user
    When I access my home screen
    Then I should see one random daily quote its text and author
    And its category