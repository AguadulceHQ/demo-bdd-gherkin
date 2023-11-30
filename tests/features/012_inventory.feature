Feature: Inventory

  Background:
    Given a user named "0xlyd"
    And that I am logged in as 0xlyd

  Scenario: add object
    When I want to add a new object to my inventory I can do so by providing
    * product's name (autocompletes)
    * category (autocompletes from product's name)
    * price (autocomplets from product)
    * location
    * city
    * photo
    * date of purchase
    * price paid
    * color (autocompletes)
    * purpose (various categories e.g. work)
    * list of accessories (e.g. iPhone cover)
    And the system should automatically add
    * date
    * time
    Then this object should be added in my inventory only visible to me

  Scenario: edit an object
    * product's name (autocompletes)
    * category (autocompletes from product's name)
    * price (autocomplets from product)
    * location
    * city
    * photo
    * date of purchase
    * price paid
    * color (autocompletes)
    * purpose (various categories e.g. work)
    * list of accessories (e.g. iPhone cover)
    And the system should automatically update
    * date
    * time
    Then this object details should be updated

  Scenario: view inventory
    When I want to see my inventory
    Then I can access my profile and see a preview of all objects ordered by most recent added containing
    * product's name
    * category
    * photo if any
    * link to detail view

  Scenario: view single object in inventory
    When I want to see a specific object in my inventory
    Then I can access it from the archive list and I should see
    * product's name
    * category
    * price
    * location
    * city
    * photo
    * date of purchase
    * price paid
    * color
    * purpose (various categories e.g. work)
    * list of accessories (e.g. iPhone cover)
    * date of creation
    * time of creation

  Scenario: get total number and worth of items in inventory
    When I access my inventory
    Then I should see the total number of items alongside the overall worth

  Scenario: filter objects in inventory
    When I want to find specific items in my inventory
    Then I should be able to filter them by
    * category
    * location
    * city
    * range of prices