class MoviesController < ApplicationController
  def index
    movies = Movie.all
    render json: movies.as_json
  end

  def create
    film = Movie.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      known_for: params[:known_for],
      director: params[:director],
      english: params[:english]
    )
    film.save
    render json: film
  end
  
  def show
    id = params[:id]
    film = Movie.find_by(id: id)
    render json: film
  end
  
  def update
    film = Movie.find(params[:id])
    film.first_name = params[:first_name] || film.first_name
    film.last_name = params[:last_name] || film.last_name
    film.known_for = params[:known_for] || film.known_for
    film.director = params[:director] || film.director
    film.english = params[:english] || film.english 
    film.save
    render json: film
  end

  def delete
    film = Movie.find(params[:id])
    film.destroy
    render json: {message: "Desired film has been deleted from the database"}
  end

  
end
