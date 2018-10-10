Feature: Create Categories
  As a blog administrator
  In order to share my thoughts with the world
  I want to be able to add categories to my blog

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully create and edit categories
    Given I am on the new categories page
    When I fill in "category_name" with "Name"
    And I fill in "category_keywords" with "Keyword"
    And I fill in "category_permalink" with "Permalink"
    And I fill in "category_description" with "Description"
    And I press "Save"
    Then I should see "Name"
    Then I should see "Keyword"
    Then I should see "Permalink"
    Then I should see "Description"
    Then I follow "Name"
    Given I am on the new categories page
    When I fill in "category_name" with "Name1"
    And I fill in "category_keywords" with "Keyword1"
    And I fill in "category_permalink" with "Permalink1"
    And I fill in "category_description" with "Description1"
    And I press "Save"
    Then I should see "Name1"
    Then I should see "Keyword1"
    Then I should see "Permalink1"
    Then I should see "Description1"
    