class RecipesController < ApplicationController

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(params_whitelist)
    # binding.pry
    if @recipe.save
      redirect_to recipe_path(@recipe), :notice => "Recipe Created"
    else
      render :new, :locals => {@model => @recipe}
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
