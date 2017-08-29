Rails.application.routes.draw do

  get 'social/index'
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

end
