Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/first_actor" => "actors#first_actor"
  get "/second_actor" => "actors#second_actor"
  get "/findbyid/:id" => "actors#find_by_id"
  get "/findbyfirstname/:name" => "actors#find_by_first_name"
  get "/deleteactor/:name" => "actors#delete_actor"
  get "/update/:name/:description" => "actors#update_known_for"
  get "/deleteall" => "actors#delete_all"

  get "/movies" => "movies#index" 
end
