Rails.application.routes.draw do
  namespace :api do
    get "/games" => "games#index"
    get "/games/:id" => "games#show"

    post "/users" => "users#create"
    post "/sessions" => "sessions#create"
  end
end
