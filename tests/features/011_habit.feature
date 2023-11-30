Feature: Habit

  Background:
    Given a user named "0xlyd" 
    And that I am logged in as 0xlyd

  Scenario: add a new habit
    When I want to create a new habit
    Then I can type a habit name and the system will autocomplete it
    Then I can set the recurrency of the habit (daily, weekly, monthly)
    Then I can assign a category and the system will autocomplete it
    And save the new habit
    And the system should automatically add a date
    * a time
    * a location

  Scenario: view all habits
    And that I have at least one habit
    When I want to see all the habits I created
    Then I can see all habits' titles in one view
    And ordered alphabetically
    And I can access the details of one habit if needed by clicking on it
  
  Scenario: view single habit
    And that I have at least one habit
    When I want to see one specific habit
    Then I can click it
    And see the habit name
    * date of creation
    * time of creation
    * location I was in when it was created
    * category
    * recurrency

  Scenario: mark habit as done
    And that I have at least one habit
    When I want to mark a habit as completed
    Then I can click it
    And mark it as done
    And the habit will be marked done for the day
    And habit's stats will be updated accordingly

  Scenario: habit stats streak
    When I want to check my habit progress
    Then I can see each habit
    And see the number of consecutive days where the habit was completed (current streak)
    And the longest streak for each habit
    And the current week schedule with a check if a habit was completed for that day or not
  