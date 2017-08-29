Rails.application.routes.draw do

  get 'social/index'

  post 'musicgenres/index' => "musicgenres#index", as: :musicgenres

  get 'timeline/index'


  authenticated :user do

      root to: 'users#profile', as: :authenticated_root
  end

  root 'home#index'

  devise_for :users

  resources :photobooths do
  end
  resources :musicgenres, only: [:index]

  get 'users/profiles'

  get 'musicgenres/:id' => "musicgenres#show"
end
