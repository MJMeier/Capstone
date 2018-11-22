Rails.application.routes.draw do
  namespace :api do
    get "/games" => "games#index"
    get "/games/:id" => "games#show"

    post "/users" => "users#create"
    post "/sessions" => "sessions#create"

    get "/user_games" => "user_games#index"

    post "/user_games" => "user_games#create"
    patch "/user_games/:id" => "user_games#update"
  end
end
