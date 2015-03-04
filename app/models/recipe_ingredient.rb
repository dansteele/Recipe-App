class RecipeIngredient < ActiveRecord::Base
  self.table_name = "ingredients_recipes"
  belongs_to :recipe
  belongs_to :ingredient
end
