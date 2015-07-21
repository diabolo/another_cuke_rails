Feature: Sign in
  As a user
  I want to sign in to the application
  So I can get my personal content


  Scenario: Sign in
    Given I am registered
    When I sign in
    Then I should be signed in
