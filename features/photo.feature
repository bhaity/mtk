Feature: Discover
  Scenario: User sees sign out
    Given a user
    When I add two photos
    And I go to my user photo page
    Then I should see all my photos
  Scenario: Regular user not see manage resource link
    Given a user
    When I add two photos
    When I go to another user photo page
    Then I should only see his visible photos
