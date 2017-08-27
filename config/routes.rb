Rails.application.routes.draw do

  get 'users/profile'

  root 'home#index'

  devise_for :users
  resources :photobooths
	
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
