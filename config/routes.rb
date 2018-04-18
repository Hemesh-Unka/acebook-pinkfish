Rails.application.routes.draw do
  root 'home#index'

  devise_for :users, controllers: { registrations: "registrations" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :posts do
    resources :comments
    resources :likes
  end

  resources :comments
end
