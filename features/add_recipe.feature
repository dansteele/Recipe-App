Feature: Adding Recipes

  @wip
  Scenario: A visitor adds a recipe
    Given I am on the homepage
    When I go to add a recipe
      And I complete the form
      And I submit the form
    Then a recipe should be created
      And I should see the newly created recipe
      And I should see "Recipe Created" in the flash notice