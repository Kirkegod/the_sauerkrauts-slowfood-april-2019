@javascript
Feature: User can review his order
  As a visitor,
  In order to see my full order and a total price
  I would like be able to see a list on an order details page

Background:
  Given the following products exist
    | name  | description | price | category |
    | pizza | very good   | 25    | italian  |
  And the following user exists
    |  email          | password  | name  |
    |  john@doe.com   | password1 | John  |
  When I visit the site
  And I click on "Add to cart" on "pizza"
  And I should see "1 item"
    
Scenario: Visitor can review his order
   Given I click the "Proceed to checkout" button
   And I fill the "Enter email" with "john@doe.com"
   And I fill the "Password" with "passord1"
   And I click the "Log in with password" button
   Then I should see "Order Summary"
   