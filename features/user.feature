Feature: Discover
  Scenario: User sees sign out
    Given a user
    When I go to the homepage
    Then I should see a sign out link
  Scenario: Regular user does not see sign out
    When I go to the homepage
    Then I should not see a sign out link
  Scenario: Regular user sees sign in
    When I go to the homepage
    Then I should see a sign in link
