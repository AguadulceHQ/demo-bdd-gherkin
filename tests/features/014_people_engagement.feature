Feature: Engagement

  Background:
    Given a user named "0xlyd"
    And that I am logged in as 0xlyd
    And I have a contact in my network named "Davide Paoli"

  Scenario: log an activity with a person
    Given that I got in touch with "Davide Paoli"
    When I want to add details about the interaction I can do so by providing
    * date and time (prefilled)
    * type (online, offline)
    * method (call, chat, meeting etc.)
    * location
    * duration
    * notes
    Then the system should save this activity


  Scenario: view engagement breakdown
    When I want to know how my engagement is distributed
    Then I can access in one single view a breakdown of engagement by
    * people
    * type
    * method
    * location
    * importance  
  
  Scenario: order people by date of engagement
    Given that I got in touch with at least one person in my network
    When I want to know who I got in touch most or least recently
    Then I can sort contacts by date of engagement
