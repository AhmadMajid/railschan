Feature: Manage posts
  In order to fill the internet with useless junk
  Anonymous
  wants to troll

  Scenario: Register new post
    Given I am on the new post page
    When I fill in "post_author" with "author 1"
    And I fill in "post_author_email" with "test@example.com"
    And I fill in "post_subject" with "trololol"
    And I fill in "post_content" with "content 1"
    And I press "Create Post"
    Then I should see "author 1"
    And I should see "test@example.com"
    And I should see "trololol"
    And I should see "content 1"
