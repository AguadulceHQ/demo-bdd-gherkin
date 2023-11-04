Feature: Travel

  Background:
    Given a user named "0xlyd"
    And that I am logged in as 0xlyd

  Scenario: add passport(s) to profile
    When I want to know more about my travel access
    Then I can do so by adding in my profile the passports I hold
    And the system should autocomplete with suggestions as I type

  Scenario: countries accessible with my passports
    When I want to know which countries I can access with my passports
    Then I can view the list in my profile and it will mention
    * country name
    * types of visas available
    * duration for each type of visa
    * through which passport I can access it

  Scenario: search for a country in list of accessible countries
    When I want for a specific country in the countries I can access with my passport
    Then I can type a specific country's name (autocompletes)
    But if a country is not accessible to me I should be informed
  
  Scenario: filter accessible countries by access type
    When I want look for countries I can access with a specific visa type (e.g. visa free)
    Then I can select the appropriate filter 
    And the system should show me only the matching countries

  Scenario: filter accessible countries by destination type
    When I want look for countries I can access that are a specific destination type (e.g. beach)
    Then I can select the appropriate filter 
    And the system should show me only the matching countries

  Scenario: filter accessible countries by weather
    When I want look for countries I can access that have a specific weather when I am searching (e.g. cold)
    Then I can select the appropriate filter 
    And the system should show me only the matching countries
  
  Scenario: check visa details
    When I want to know more about a specific visa for a country I can access
    Then I should see an external link from a relevant Consulate/Embassy that provides me with the information
  
  Scenario: check visa application checklist
    Given that the country's visa checklist is available for the passport(s) I hold
    When I want to know more about the documents and steps required to apply for a visa of a country I can access
    Then I should be able to see a checklist with all the steps required for my visa application

  Scenario: unsupported visa application checklist
    Given that the country's visa checklist is not available in the system
    When I try to access more information
    Then the system should inform me that it's not available
    And I should be able to express my interest in making it available