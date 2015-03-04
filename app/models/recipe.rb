class Recipe < ActiveRecord::Base
  # has_many :categorisations
  # has_many :recipes, :through => :categorisations
  has_many :recipe_ingredients, :class_name => "RecipeIngredient"
  has_many :ingredients, :through => :recipe_ingredients
  validates :title, presence: true
end