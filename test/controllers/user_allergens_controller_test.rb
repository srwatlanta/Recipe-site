require 'test_helper'

class UserAllergensControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_allergen = user_allergens(:one)
  end

  test "should get index" do
    get user_allergens_url
    assert_response :success
  end

  test "should get new" do
    get new_user_allergen_url
    assert_response :success
  end

  test "should create user_allergen" do
    assert_difference('UserAllergen.count') do
      post user_allergens_url, params: { user_allergen: {  } }
    end

    assert_redirected_to user_allergen_url(UserAllergen.last)
  end

  test "should show user_allergen" do
    get user_allergen_url(@user_allergen)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_allergen_url(@user_allergen)
    assert_response :success
  end

  test "should update user_allergen" do
    patch user_allergen_url(@user_allergen), params: { user_allergen: {  } }
    assert_redirected_to user_allergen_url(@user_allergen)
  end

  test "should destroy user_allergen" do
    assert_difference('UserAllergen.count', -1) do
      delete user_allergen_url(@user_allergen)
    end

    assert_redirected_to user_allergens_url
  end
end
