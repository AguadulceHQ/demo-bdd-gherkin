Feature: Mood

  Background:
    Given a user named "0xlyd"
    And that I am logged in as 0xlyd
    And a mood entry exists owned by "0xlyd"

  Scenario: add a new mood entry
    When I want to add my mood
    Then I can initiate the process
    And I can provide my mood with one of the five emojis displayed
    And optionally type a message
    And tags that autocomplete
    Then the system should automatically add a date
    * a time
    * a location

  Scenario: add a new mood entry from home screen
    When I want to add my mood quickly from home
    Then I can initiate the process from the home screen
    And I can provide my mood with one of the five emojis displayed
    And optionally type a message
    And tags that autocomplete
    Then the system should automatically add a date
    * a time
    * a location

  Scenario: view all mood entries
    When I want to see all the mood entries I logged
    Then I can see all mood entries in one view 
    And ordered by most recent
    And I can access the details of one mood entry 
  
  Scenario: view single mood entry
    When I want to see one specific mood entry
    Then I can click it
    And see the emoji representing the mood
    * message if any
    * date
    * time
    * location
    * tags if any

  Scenario: edit single mood entry
    When I want to edit one specific mood entry
    Then I can access it and initiate the editing process
    And I can change the emoji chosen
    * message if any
    * tags if any

  Scenario: mood stats streak
    When I want to check my mood log progress
    Then I can access the stats view where I can see the number of consecutive days with entries (current streak)
    And the longest streak
    And the current week schedule with a check if an entry was filled for that day or not
