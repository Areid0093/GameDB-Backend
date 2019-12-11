Rails.application.routes.draw do
  resources :community_chats
  resources :messages
  resources :user_communities
  resources :communities
  resources :follows
  resources :favorites
  resources :games
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
