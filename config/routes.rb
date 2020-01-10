Rails.application.routes.draw do
  # resources :follows
  # resources :comments
  # resources :likes
  # resources :posts
  # resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :follows
      resources :users, only: [:create, :index, :show]
      post '/login', to: 'users#login'
      get '/current_user', to: 'users#show'
      post '/signup', to: 'users#create'
      get '/show_user/:id', to: 'users#show_user'
    end
  end
end
