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
  Scenario: Admin user sees manage resource link
    Given an admin
    When I go to the homepage
    And  I look for a manage resource href User
    Then I should see my resourced href
  Scenario: Regular user not see manage resource link
    Given a user
    When I go to the homepage
    And  I look for a manage resource href User
    Then I should not see my resourced href
