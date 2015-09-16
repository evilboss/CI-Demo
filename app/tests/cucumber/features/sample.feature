Feature: Create a Landing Page

  As an technical author
  I want to create a landing page
  So that I can entice visitors to purchase my content

  # The background will be run for every scenario
  Background:
    Given I am a new user

  # This scenario will run as part of the Meteor dev cycle because it has the @dev tag
  @dev
  Scenario: This scenario will run on both dev and CI
    When I navigate to "/"
    Then I should see the title "app"
  # This scenario will not run as part of the Meteor dev cycle because it does not have the @dev tag
  # But it will run on CI if you use `meteor --test` for instance

 # Scenario: This scenario will not run on dev but does run on CI
 #   When I navigate to "/"
 #  Then I should see the title "another intentional failure"

  # The @ignore tag is a convenience tag included by meteor-cucumber. See the docs for more on tags
  @ignore
  Scenario: This scenario will not run anywhere
    When I navigate to "/"
    Then I should see the title "it really doesn't matter"
