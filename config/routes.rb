Rails.application.routes.draw do
  resources :community_chats
  resources :messages
  resources :user_communities
  resources :communities
  resources :follows
  resources :favorites
  resources :games
  resources :users, only: [:create]
  post '/login', to: 'auth#create'
  # get '/logged_in', to: 'application#logged_in'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
