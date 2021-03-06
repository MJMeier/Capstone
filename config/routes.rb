Rails.application.routes.draw do
  namespace :api do

    get "/users" => "users#index"

    get "/games" => "games#index"
    get "/games/:id" => "games#show"
    
    get "/user_games" => "user_games#index"
    get "/allpicks" => "user_games#all_picks"
    post "/user_games" => "user_games#create"
    patch "/user_games/:id" => "user_games#update"

    post "/users" => "users#create"
    
    post "/sessions" => "sessions#create"

    get "/messages" => "messages#index"
    post "/messages" => "messages#create"
    get "/messages/:id" => "messages#show"



  end
end
