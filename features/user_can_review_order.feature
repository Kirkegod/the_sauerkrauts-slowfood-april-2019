@javascript
Feature: User can review his order
  As a visitor,
  In order to see my full order and a total price
  I would like be able to see a list on an order details page

Background:
  Given the following products exist
    | name  | description | price | category |
    | pizza | very good   | 25    | italian  |
  When I visit the site
  And I click on "Add to cart" on "pizza"
  Then I should see "1 item"
    
Scenario: Visitor can review his order
   