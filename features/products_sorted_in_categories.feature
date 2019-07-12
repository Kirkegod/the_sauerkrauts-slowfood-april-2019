Feature: Visitor can see products sorted in categories
    As a visitor,
    In order to navigate the products
    I would like to see the products sorted in categories

Background:
    Given the following products exist
        | name      | description | price | category |
        | nachos    | mexican     | 160   | starter  |
        | hamburger | american    | 100   | main     |
        | helado    | chilean     | 45    | dessert  |
    And I visit the site

Scenario: View the products sorted in categories
    Then I should see "nachos" in the "starter" category
    And I should see "hamburger" in the "main" category
    And I should see "helado" in the "dessert" category