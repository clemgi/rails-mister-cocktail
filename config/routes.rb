Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails do

    resources :doses, only: [:new, :create, :destroy]
  end

  # namespace :admin do
  #   resources :restaurants, only: [:index]
  # end

  root to:'cocktails#index'
end
