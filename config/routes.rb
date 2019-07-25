Rails.application.routes.draw do
  resources :recipe_ingredients
  resources :users
  resources :user_allergens
  resources :recipes
  resources :ingredients
  get "/home", to: "static#home", as: "home"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
