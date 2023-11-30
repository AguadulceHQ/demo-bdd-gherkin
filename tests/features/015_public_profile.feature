Feature: Public Profile

  Scenario: view the public profile of another user
    Given that I am a logged in user
    When I want to see another user's public information
    And I access their public profile page through link I should be able to see
    * first name if any
    * last name if any
    * photo if any
    * list of recommendations

  Scenario: view all public profiles
    Given that I am a logged in user
    When I want to explore all public profiles part of the community
    Then I can just see the paginated archive with the following information
    * first name if any
    * last name if any
    * photo if any
    * link to the single public profile

  Scenario: claim a profile
    Given that I am a guest and I see my public profile on the platform
    And I want to claim it
    When I submit a form with the following details
    * my full name
    * my email address
    Then the administrator will receive a notification
    And get back to me to verify my profile offline

  Scenario: approval of a claimed profile
    Given that a guest has claimed a public profile on the platform
    When their profile is verified
    Then the administrator can assign the public profile to the email address provided when claiming
    And from now onwards the user can login and manage the information through that email address