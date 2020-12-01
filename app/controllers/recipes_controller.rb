require "pry"
class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new

  end

  def create
    # binding.pry
    @recipe = Recipe.new(recipe_params)

    if @recipe.save
      redirect_to recipe_path(@recipe)
    else
      render :new
    end
  end
  

  def recipe_params

    params.require(:recipe).permit(:title, ingredients_attributes: [:name, :quantity])
  end

end
