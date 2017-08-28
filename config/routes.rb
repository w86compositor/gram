Rails.application.routes.draw do
 
authenticated :user do
    root to: 'users#profile', as: :authenticated_root
  end

  root 'home#index'

  devise_for :users
  resources :photobooths

  get 'users/profile'

 

  
	
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
