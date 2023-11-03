Feature: Recommendation

  Background:
    Given a user named "0xlyd"
    And that I am logged in as 0xlyd

  Scenario: add a recommendation
    When I want to see add a recommendation I can do so by providing
    * product's name (autocompletes)
    * category (autocompletes from product's name)
    * link
    * if link is affiliated or not (if it is it should display a badge)
    * visibility (public / private)
    And the system should automatically add
    * date
    * time
    Then this recommendation should be added in the list of my recommendations

  Scenario: edit a recommendation
    When I want to see edit a recommendation I can do so by providing any of
    * product's name (autocompletes)
    * category (autocompletes from product's name)
    * link
    * if link is affiliated or not (if it is it should display a badge)
    * visibility (public / private)
    And the system should automatically update
    * date
    * time
    Then this recommendation will be updated with the new details

  Scenario: view all users' public recommendations
    Given that I am a logged in user
    When I want to see "0xlyd" recommendations
    Then I can access his profile and see the recommendations section that should list an archive with
    * product's name
    * category
    * link to detail view

  Scenario: view single users' public recommendations
    Given that I am a logged in user
    When I want to see a specific recommendation from "0xlyd"
    Then I can access the recommendations section and access one of those and I should see
    * product's name
    * category
    * link
    * if link is affiliated, then the related badge
    * date
    * time

  Scenario: private recommendations should not be visible to other users
    Given that I am a logged in user
    When I try to access a recommendation from someone else which is not public
    Then I should not be able to see any detail regarding the recommendation which won't in fact part of the archive