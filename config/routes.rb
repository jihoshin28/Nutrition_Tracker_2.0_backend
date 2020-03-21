Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users
      resources :exercise_posts
      resources :food_posts
      resources :notes
      resources :weights
      post '/login', to: 'auth#create'
      get '/current_user', to: 'auth#show'
    end
  end
end
