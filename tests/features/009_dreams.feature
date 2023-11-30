Feature: Dream

  Background:
    Given a user named "0xlyd"
    And that I am logged in as 0xlyd
    And a dream entry exists owned by "0xlyd"

  Scenario: add a new dream entry
    When I want to add my dream
    Then I can initiate the process
    And I can provide add text that describes my dream
    And optionally select an emoji on how I felt
    And optionally type a message
    And tags that autocomplete
    Then the system should automatically add 
    * a date
    * a time
    * a location

  Scenario: add a new dream entry from home screen
    When I want to add my dream quickly from home
    Then I can initiate the process from the home screen
    And I can provide add text that describes my dream
    And optionally select an emoji on how I felt
    And optionally type a message
    And tags that autocomplete
    Then the system should automatically add 
    * a date
    * a time
    * a location

  Scenario: view all dream entries
    When I want to see all the dream entries I logged
    Then I can see all dream entries in one view 
    And ordered by most recent
    And I can access the details of one dream entry 
  
  Scenario: view single dream entry
    When I want to see one specific dream entry
    Then I can access it
    And see the text describing the dream
    * emoji if any
    * date
    * time
    * location
    * tags if any

  Scenario: edit single dream entry
    When I want to edit one specific dream entry
    Then I can access it and initiate the editing process
    And I can change the text describing the dream
    * emoji if any
    * tags if any

  Scenario: dream stats streak
    When I want to check my dream log progress
    Then I can access the stats view where I can see the number of consecutive days with entries (current streak)
    And the longest streak
    And the current week schedule with a check if an entry was filled for that day or not
