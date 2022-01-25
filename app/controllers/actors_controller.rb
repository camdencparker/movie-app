class ActorsController < ApplicationController
  def index
    list = Actor.all
    list = Actor.order(age: :desc)
    render json: list
  end

  def create
    actor = Actor.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      known_for: params[:known_for],
      gender: params[:gender],
      age: params[:age],
      movie_id: params[:movie_id]
    )
    if actor.save
      render json: actor
    else
      render json: {errors: actor.errors.full_messages}
    end
  end
  
  def show
    id = params[:id]
    actor = Actor.find_by(id: id)
    render json: actor
  end
  
  def update
    actor = Actor.find(params[:id])
    actor.first_name = params[:first_name] || actor.first_name
    actor.last_name = params[:last_name] || actor.last_name
    actor.known_for = params[:known_for] || actor.known_for
    actor.gender = params[:gender] || actor.gender
    actor.movie_id = params[:movie_id] || actor.movie_id
    actor.age = params[:age] || actor.age
    if actor.save
      render json: actor
    else
      render json: {errors: actor.errors.full_messages}
    end
  end

  def delete
    actor = Actor.find(params[:id])
    actor.destroy
    render json: {message: "Desired actor has been deleted from the database"}
  end
end
