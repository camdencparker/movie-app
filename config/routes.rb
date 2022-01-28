Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # get "/first_actor" => "actors#first_actor"
  # get "/second_actor" => "actors#second_actor"
  # get "/findbyid/:id" => "actors#find_by_id"
  # get "/findbyfirstname" => "actors#query"
  # get "/findbyfirstname/:name" => "actors#show"
  # get "/deleteactor/:name" => "actors#delete_actor"
  # get "/update/:name/:description" => "actors#update_known_for"
  # get "/deleteall" => "actors#delete_all"

  

  get "/movies" => "movies#index" 

  post "/movies" => "movies#create"

  get "/movies/:id" => "movies#show"

  patch "/movies/:id" => "movies#update"

  delete "/movies/:id" => "movies#delete"


  get "/actors" => "actors#index"

  post "/actors" => "actors#create"

  get "/actors/:id" => "actors#show"

  patch "/actors/:id" => "actors#update"

  delete "actors/:id" => "actors#delete"

  
  post "/users" => "users#create"

  post "/sessions" => "sessions#create"





  
end
