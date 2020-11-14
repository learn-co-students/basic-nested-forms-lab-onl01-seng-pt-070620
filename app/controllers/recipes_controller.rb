class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    2.times{ @recipe.ingredients.build }
  end

  def create
    raise params.inspect
  end
end
