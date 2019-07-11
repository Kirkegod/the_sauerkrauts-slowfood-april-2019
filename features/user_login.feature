  Feature: User Log in
    As a user,
    In order to make an order
    I would like to be able to log in

  Background:
    Given the following user exist
      |  Email          | Password  | Name  |
      |  john@doe.com   | password1 | John  |
    And I visit the site
    And I click the "Log in" button

  Scenario: Visitor can log in to application[Hapy path]
    When I fill the "Email" with "john@doe.com"
    And I fill the "Password" with "password1"
    And I click the "Log in" button
    Then I should see "Signed in successfully"
    And I should see "Hello, John"
    
  Scenario: Visitor can't log in whit invalid credentials[Sad path]
    When I fill the "Email" with ""
    And I fill the "Password" with ""
    And I click the "Log in" button
    Then I should see "Invalid Email or password"