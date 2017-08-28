Rails.application.routes.draw do

  get 'social/index'

  get 'musicgenres/index' => "musicgenres#index", as: :musicgenres

authenticated :user do
    root to: 'users#profile', as: :authenticated_root
  end

  root 'home#index'

  devise_for :users

  resources :photobooths do
    resources :musicgenres
  end

  get 'users/profiles'

  get 'musicgenres/:id' => "musicgenres#show"




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
