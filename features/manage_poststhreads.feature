Feature: Manage poststhreads
  In order to create a thread
  A troll
  wants to post

  Scenario: Register new poststhread
    Given I am on the new poststhread page
    When I fill in "post_content" with "long cat is long"
    And I press "Create Post"
    Then I should see "long cat is long"
