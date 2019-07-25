class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :edit, :update, :destroy]

  # GET /recipes
  # GET /recipes.json
  def index
    @recipes = Recipe.all
  end

  # GET /recipes/1
  # GET /recipes/1.json
  def show
  end

  # GET /recipes/new
  def new
    @recipe = Recipe.new
    @users = User.all
    @ingredients = Ingredient.all
  end

  # GET /recipes/1/edit
  def edit
    @users = User.all
    @ingredients = Ingredient.all
  end

  # POST /recipes
  # POST /recipes.json
  def create
    @recipe = Recipe.create(recipe_params)
    params[:recipe][:ingredients].each do |ingredient_id|
      RecipeIngredient.create(ingredient_id: ingredient_id, recipe_id: @recipe.id)
    end
    redirect_to @recipe
  end

  # PATCH/PUT /recipes/1
  # PATCH/PUT /recipes/1.json
  def update
    @recipe.update(recipe_params)
    params[:recipe][:ingredients].each do |ingredient_id|
      RecipeIngredient.create(ingredient_id: ingredient_id, recipe_id: @recipe.id)
    end
    redirect_to @recipe
  end

  # DELETE /recipes/1
  # DELETE /recipes/1.json
  def destroy
    @recipe.destroy
    respond_to do |format|
      format.html { redirect_to recipes_url, notice: "Recipe was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_recipe
    @recipe = Recipe.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def recipe_params
    params.require(:recipe).permit(:name, :user_id, :ingredients, :quantity)
  end
end
