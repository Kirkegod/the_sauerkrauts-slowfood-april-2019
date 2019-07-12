@javascript
Feature: User can review his order
  As a visitor,
  In order to see my full order and a total price
  I would like be able to see a list on an order details page

  Background:
    Given the following products exist
      | name  | description | price | category |
      | pizza | very good   | 10    | main course  |
      | kebab | amazing     | 8     | main course  |
    And the following user exists
      |  email          | password  | name  |
      |  john@doe.com   | password1 | John  |
    When I visit the site
    And I click on "Add to cart" on "pizza"
    And I should see "1 item"
    And I click on "Add to cart" on "kebab"
    And I should see "2 items"
      
  Scenario: Visitor can review his order
    Given I am logged in as "John"
    And I click the "Proceed to checkout" button
    Then I should see "Order Summary"
    And I should see "pizza"
    And I should see "Price €10.00"
    And I should see "Quantity 1"
    And I should see "kebab"
    And I should see "Price €8.00"
    And I should see "Quantity 1"
    And I should see "Order Total: €18.00"
    