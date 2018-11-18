Rails.application.routes.draw do
  namespace :api do
    get "/games" => "games#index"
    get "/games/:id" => "games#show"
  end
end
