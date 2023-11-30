Feature: Memory

  Background:
    Given a user named "0xlyd"
    And that I am logged in as 0xlyd
    And a memory "Read this article again" exists owned by "0xlyd" created on "1/11/2023" with a recurrency of "monthly"

  Scenario: add a new memory
    When I want to add a new memory
    Then I can initiate the process
    And I can provide my some text (even just a link) or one or more photos
    * recurrency (daily, weekly, monthly, yearly, random) in which I want this memory to be shown to me (by default random)
    * tags if any
    Then the system should automatically add a date
    * a time
    * a location

  Scenario: view all memories
    When I want to see all the memories I logged
    Then I can see all memories in one view 
    And ordered by most recent
    And I can access the details of one memory 
  
  Scenario: view single memory
    When I want to see one specific memory
    Then I can click it
    And see the text or photos associated with it
    * recurrency
    * date
    * time
    * location
    * tags if any

  Scenario: edit single memory
    When I want to edit one specific memory
    Then I can access it and initiate the editing process
    And I can change the text or photos 
    * recurrency
    * tags if any

  Scenario: display a memory in home
    When the date is "1/12/2023"
    Then the memory "Read this article again" should be displayed in user's "0xlyd" home screen