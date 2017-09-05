Rails.application.routes.draw do
  devise_for :users

# The users that are authenticated will be redirected to users profile after sign in, DO NOT CHANGE THE LINE OF CODE BELOW
  authenticated :user do
     root to: 'users#profile', as: :authenticated_root
  end
  # The users that are not authenticated will be redirected to home index, DO NOT CHANGE THE LINE OF CODE BELOW
  root 'home#index'

get 'users/profile'

resources :photobooths
resources :musicgenres

  resources :social
  
  get 'timeline/index'
  get 'musicgenres/index'



  # post 'musicgenres/index' => "musicgenres#index", as: :musicgenres
  # get 'musicgenres/:id' => "musicgenres#show"


end
