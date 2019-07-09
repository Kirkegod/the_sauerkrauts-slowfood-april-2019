Feature: See menu on landing page
  As a visitor,
  When I visit the landing page of the application
  I would like to see a list of all dishes on menu

  Scenario: View list of dishes on the landing page
    When I visit the site
    Then I should see "Menu"
   