Rails.application.routes.draw do
  devise_for :users, defaults: { format: :json }
  root 'home#index'

  namespace :api, defaults: { format: :json } do
  end
end
