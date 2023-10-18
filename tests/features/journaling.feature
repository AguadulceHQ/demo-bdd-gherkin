Feature: Journaling

  Scenario: add a new entry
    Given that I am logged in
    When I want to write a journal entry
    Then I can type a brief message
    And save the journal entry
    And the system should automatically add a date
    * a time
    * a location

  Scenario: edit an entry
    Given that I am logged in
    And that I have at least one journal entry
    When I want to edit a journal entry
    Then I can open the journal entry I want to edit
    And I can update the message
    And I can update tags
    And save the journal entry
    And the system should automatically update the date
    * the time