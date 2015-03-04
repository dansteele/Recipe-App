class RecipesController < ApplicationController

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.create(params_whitelist)
    redirect_to recipe_path(@recipe), :notice => "Recipe Created"
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  private
  def params_whitelist
    params.require(:recipe).permit(:title)
  end

end
