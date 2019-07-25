class UserAllergensController < ApplicationController
  before_action :set_user_allergen, only: [:show, :edit, :update, :destroy]

  # GET /user_allergens
  # GET /user_allergens.json
  def index
    @user_allergens = UserAllergen.all
  end

  # GET /user_allergens/1
  # GET /user_allergens/1.json
  def show
  end

  # GET /user_allergens/new
  def new
    @user_allergen = UserAllergen.new
  end

  # GET /user_allergens/1/edit
  def edit
  end

  # POST /user_allergens
  # POST /user_allergens.json
  def create
    @user_allergen = UserAllergen.new(user_allergen_params)
  end

  # PATCH/PUT /user_allergens/1
  # PATCH/PUT /user_allergens/1.json
  def update
    @user_allergen.update(user_allergen_params)
  end

  # DELETE /user_allergens/1
  # DELETE /user_allergens/1.json
  def destroy
    @user_allergen.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_user_allergen
    @user_allergen = UserAllergen.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def user_allergen_params
    params.fetch(:user_allergen, {})
  end
end
