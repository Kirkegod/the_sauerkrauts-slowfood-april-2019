Feature: Visitor can see a menu
    As a visitor,
    In order to get an overview of the restaurant products
    I would like to be able to see a menu

Background:
    Given the following products exist
        | name      | description | price | category |
        | nachos    | mexican     | 160   | starter  |
        | hamburger | american    | 100   | main     |
        | helado    | chilean     | 45    | desert     |

Scenario: View list of products on the landing page        
    When I visit the site
    Then I should see "nachos"
    And I should see "mexican"
    And I should see "160"
    And I should see "starter"

    Then I should see "hamburger"
    And I should see "american"
    And I should see "100"
    And I should see "main"

    Then I should see "helado"
    And I should see "chilean"
    And I should see "45"
    And I should see "desert"