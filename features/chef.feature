Feature: Chefs
  
  @wip
  Scenario: A visitor sees recipes by a particular chef
    Given that a chef "Gordon Ramsey" exists
      And a recipe for "Gordon Ramsey" exists
    When that I am on the show page for "Gordon Ramsey"
    Then I should see his a recipe should be created

