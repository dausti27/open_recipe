class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new
    @recipe.recipe_name = params[:recipe_name]
    @recipe.protein_id = params[:protein_id]
    @recipe.chef_id = params[:chef_id]
    @recipe.cuisine_id = params[:cuisine_id]
    @recipe.ingredient_list = params[:ingredient_list]
    @recipe.directions = params[:directions]
    @recipe.image_url = params[:image_url]

    if @recipe.save
      redirect_to "/recipes", :notice => "Recipe created successfully."
    else
      render 'new'
    end
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:id])

    @recipe.recipe_name = params[:recipe_name]
    @recipe.protein_id = params[:protein_id]
    @recipe.chef_id = params[:chef_id]
    @recipe.cuisine_id = params[:cuisine_id]
    @recipe.ingredient_list = params[:ingredient_list]
    @recipe.directions = params[:directions]
    @recipe.image_url = params[:image_url]

    if @recipe.save
      redirect_to "/recipes", :notice => "Recipe updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @recipe = Recipe.find(params[:id])

    @recipe.destroy

    redirect_to "/recipes", :notice => "Recipe deleted."
  end
end
