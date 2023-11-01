Feature: Fiscal Resident

  Background:
    Given a user named "0xlyd" 
    And that I am logged in as 0xlyd

  Scenario: detect countries I have been to through photos metadata
    When I want to check in which countries I have been
    And I scan all the photos I have
    And I can optionally restrict the photos I want to scan (e.g. just this year)
    Then each photo should have a location extracted from its metadata

  Scenario: see breakdown of countries I have been to in number of days grouped by year
    When I want to check for each year in which country I have been
    And the consecutive days I have been in each
    Then I can scan all the photos I have
    And I should see a breakdown as a from-to list with the country name and number of days I have spent in each

  Scenario: trigger tax implications notice
    When I stayed in any country for more than 4 months consecutively 
    Then display a message to the user that informs that there may be tax implications in that country
  
  Scenario: add residency period in fiscal residency breakdown
    When I notice a country missing in the residency period breakdown
    Then I can add a country (through autocompletion) alongside the from and to date when I have been there

  Scenario: edit residency period in fiscal residency breakdown
    When I notice an error in the residency period breakdown
    And I initiate the correction process for a specific entry
    Then I can update the country (through autocompletion) alongside the from and to date when I have been there

