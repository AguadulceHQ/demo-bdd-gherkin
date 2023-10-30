Feature: Onboarding

  Scenario: add a welcome screen 
    Given that I am logged as an administrator
    When I want to add a new onboarding screen
    And I provide an image
    * title
    * text
    Then it should be added to the onboarding screens as last screen

  Scenario: view onboarding screen
    Given that I am logged in
    And it's the first time I open the app
    Then I should see the onboarding screens one at a time