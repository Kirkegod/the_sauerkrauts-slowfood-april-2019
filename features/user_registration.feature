Feature: User registration
  As a user,
  In order to have be able to finalise an order
  I would like to be able to register an account

  Background:
    Given I visit the site
    And I click the "Login" button

  Scenario: Visitor can create an account to become a registered user
    And I click the "Sign up" button
    # Then I fill the "Name" with "John"
    And I fill the "Email" with "john@doe.com"
    And I fill the "Password" with "password1"
    And I fill the "Password confirmation" with "password1"
    And I click the "Sign up" button
    Then I should see "Hello, John"