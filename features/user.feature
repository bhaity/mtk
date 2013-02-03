Feature: Discover
  Scenario: User sees sign out
    Given a user
    When I go to the homepage
    Then I should see a link Sign Out
  Scenario: Regular user does not see Sign Out
    When I go to the homepage
    Then I should not see a link sign out
  Scenario: Regular user sees sign in
    When I go to the homepage
    Then I should see a link Sign In
