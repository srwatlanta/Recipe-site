class User < ApplicationRecord
  has_many :recipes
  has_many :user_allergens
  has_many :ingredients, through: :user_allergens

  def allergens
    self.ingredients
  end
end
