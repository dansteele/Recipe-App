Feature: Adding Recipes
  
  Background:
    Given that I am on the homepage
    When I go to add a recipe

  Scenario: A visitor adds a recipe
      And I complete the form
      And I submit the form
    Then a recipe should be created
      And I should see the newly created recipe
      And I should see "Recipe Created" in the flash notice

  # @wip
  Scenario: A visitor adds a recipe without a title
      And I complete the form without a title
      And I submit the form
    Then a recipe should not be created
      And I should see a validation error about the title
      And I should see "There was a problem" in the flash notice

  @wip
  Scenario: A visitor adds ingredients to a recipe
    When I complete the form
      And I add "Carrots" as an ingredient
      And I add "Coriander" as an ingredient
      And I add "Water" as an ingredient
      And I add "Whiskey" as an ingredient
      And I submit the form
    Then a recipe should be created
      And the recipe should have 4 ingredients
      And I should see the newly created recipe
      And I should "Recipe Created" in the flash notice