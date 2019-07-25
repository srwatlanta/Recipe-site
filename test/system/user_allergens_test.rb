require "application_system_test_case"

class UserAllergensTest < ApplicationSystemTestCase
  setup do
    @user_allergen = user_allergens(:one)
  end

  test "visiting the index" do
    visit user_allergens_url
    assert_selector "h1", text: "User Allergens"
  end

  test "creating a User allergen" do
    visit user_allergens_url
    click_on "New User Allergen"

    click_on "Create User allergen"

    assert_text "User allergen was successfully created"
    click_on "Back"
  end

  test "updating a User allergen" do
    visit user_allergens_url
    click_on "Edit", match: :first

    click_on "Update User allergen"

    assert_text "User allergen was successfully updated"
    click_on "Back"
  end

  test "destroying a User allergen" do
    visit user_allergens_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User allergen was successfully destroyed"
  end
end
