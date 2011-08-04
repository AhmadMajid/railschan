Feature: Manage posts
  In order to fill the internet with useless junk
  Anonymous
  wants to troll

  Scenario: Register new post
    Given I am on the new post page
    When I fill in "Author" with "author 1"
    And I fill in "Content" with "content 1"
    And I press "Create"
    Then I should see "author 1"
    And I should see "content 1"

  Scenario: Delete post
    Given the following posts:
      |author|content|
      |author 1|content 1|
      |author 2|content 2|
      |author 3|content 3|
      |author 4|content 4|
    When I delete the 3rd post
    Then I should see the following posts:
      |Author|Content|
      |author 1|content 1|
      |author 2|content 2|
      |author 4|content 4|
