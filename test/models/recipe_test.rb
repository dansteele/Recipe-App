require 'test_helper'

class RecipeTest < ActiveSupport::TestCase
  test "A recipe should have ingredients" do
    @recipe = Recipe.new
    @recipe.recipe_ingredients.build
    assert_equal 1, @recipe.recipe_ingredients.length
  end
end
