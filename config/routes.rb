Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  namespace :api do
    namespace :v1 do
      resources :trips, only: [:create, :index, :show, :update, :destroy]
      resources :follows, only: [:create, :index, :show, :update]
      resources :posts, only: [:create, :index, :show, :destroy]
      resources :likes, only: [:create, :index, :show]
      resources :comments, only: [:create, :index, :show, :destroy]
      resources :users, only: [:create, :index, :show, :edit, :update, :destroy]
      post '/login', to: 'users#login'
      get '/current_user', to: 'users#show'
      post '/signup', to: 'users#create'
      get '/show_user/:id', to: 'users#show_user'
      patch '/show_user/:id', to: 'users#update'
      put '/show_user/:id', to: 'users#update'
      delete '/show_user/:id', to: 'users#destroy'
      delete '/follows/:followee_id/:follower_id', to: 'follows#destroy_follow'
      get 'users/:id/user_followees', to: 'users#user_followees'
      delete '/likes/:user_id/:post_id', to: 'likes#destroy_like'
    end
  end
end
