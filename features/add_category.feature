Feature: Add Category
  As a blog administrator
  In order to categories my posts
  I should be able to add categories to my blog

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully add category
    Given I am on the categories page
    When I fill in "category_name" with "Foobar Category Name"
    And I fill in "category_keywords" with "Lorem Ipsum Keyword"
    And I fill in "category_description" with "Lorem Ipsum Description"
    And I press "Save"
    Then I should be on the admin content page
    When I go to the home page
    Then I should see "Foobar Category Name"
    When I follow "Foobar Category Name"
    Then I should see "Lorem Ipsum Keyword"