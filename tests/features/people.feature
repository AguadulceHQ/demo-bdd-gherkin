Feature: People

  Background:
    Given a user named "0xlyd"
    And that I am logged in as 0xlyd

  Scenario: add a new person in my network
    When I want to add a new person to my network
    And I initiate the process by providing
    * first name
    * last name
    * birthday
    * gender
    * relationship with me
    * type of relationship
    * one or more locations (autocompletes)
    * known since date
    * industry (autocompletes)
    * profession (autocompletes)
    * importance score
    Then the system should insert this new record and automatically add
    * date
    * time

  Scenario: view all people
    When I want to see all the people in my network
    Then I can see all people in one view
    And ordered alphabetically by full name
    And I can access the details of one person 
  
  Scenario: view single person
    When I want to see one specific person
    Then I can click it
    And see the following details in one view
      * first name
      * last name
      * birthday
      * gender
      * relationship with me
      * type of relationship
      * locations
      * known since date
      * industry
      * profession
      * importance score
      * last engagement

  Scenario: view network breakdown
    When I want to know how my network is distributed
    Then I can access in one single view a breakdown of contacts by
    * gender
    * location
    * industry
    * profession
    * importance

  Scenario: display today's birthdays in home
    Given that I want to know when it's the birthday of someone in my network
    Then a widget should display all today's birthdays in my home screen
    And I should be able to access that person's details

  Scenario: import people from csv
    Given that I have a csv file formatted as per the system's requirement
    When I upload it, provided it's a valid file
    Then the system should show me a list of people I am about to add to my network
    And I can select/deselect people
    And finally confirm and proceed with the import