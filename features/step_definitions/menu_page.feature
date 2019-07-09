Feature: Visitor can see different products on a restaurants menu 
    As a visitor
    In order to get an overview of the restaurant's products
    I would like to be able to see a menu

    Scenario: Visitor can see a list of products
    Given I visit the site
    And I click "Menu"
    Then I should be on the "menu page"