class RecipesController < ApplicationController

  def new
    # binding.pry
    @recipe = Recipe.new
    @recipe.ingredients << Ingredient.new
  end

  def create
    binding.pry
    @recipe = Recipe.new(params_whitelist) 
    if @recipe.save
      redirect_to recipe_path(@recipe), :notice => "Recipe Created"
    elsif
      render :new
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  private
  def params_whitelist
    params.require(:recipe).permit(:title)
  end

end
