Feature: Manage news
  In order to display a news website
  Editor wants to create and edit stories
  
  Scenario: Home page has a new story link
    Given I am on the home page
    Then I should see "New Story"

  Scenario: Create Story
    Given I am on the home page
    And I follow "New Story"
    And I fill in "Title" with "Headline News"
    And I fill in "Content" with "great story"
    And I press "Create"
    Then I should be on the home page
    And I should see "Headline News"
    And I should not see "great story"
 
 Scenario: Home page displays stories
    Given the following stories exist:
      | title | content         |
      | Flood | Lots of water   |
      | Fire  | House on fire   |
    And I am on the home page
    Then I should see "Flood"
    And I should see "Fire"
    And I should not see "House"
