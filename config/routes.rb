Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :landmarks, only: %i[index show] do
    resources :user_reviews, only: %i[index create destroy]
  end

  resources :users, only: %i[index]
end
