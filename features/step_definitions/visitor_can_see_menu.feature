
Feature: Visitor can see a menu
    As a visitor,
    In order to get an overview of the restaurant products
    I would like to be able to see a menu

    Scenario: View list of dishes
        Given the following dishes exist
            | name   | description | price | category |
            | nachos | mexican     | 160   | starter  |
        When I visit the site
        Then I should see "nachos"
        And I should see "mexican"
        And I should see "160"