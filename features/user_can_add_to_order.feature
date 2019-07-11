@javascript
Feature: User can add product to cart
  As a user,
  In order to buy product from application
  I would like to be able to add products to cart

  Background:
    Given the following products exist
      | name  | description | price | category |
      | pizza | very good   | 25    | italian  |
    
    
  Scenario: Visitor can add products to cart
    When I visit the site
    And I click on "Add to cart" on "pizza"
    Then I should see "1 item"