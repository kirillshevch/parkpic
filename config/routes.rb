Rails.application.routes.draw do
  devise_for :users, defaults: { format: :json }, controllers: { sessions: "api/users/sessions" }
  root 'home#index'
  get :sign_in, to: "home#index"
  get :sign_up, to: "home#index"
  get :settings, to: "home#index"

  namespace :api, defaults: { format: :json } do
    resources :users
    resources :comments
    resources :photos
  end
end
