class ActorsController < ApplicationController
  def index
    list = Actor.all
    render json: list
  end

  def create
    actor = Actor.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      known_for: params[:known_for]
    )
    actor.save
    render json: actor
  end
  
  def show
    id = params[:id]
    actor = Actor.find_by(id: id)
    render json: actor
  end
  
  def update
    actor = Actor.find(params[:id])
    actor.first_name = params[:first_name]
    actor.last_name = params[:last_name]
    actor.known_for = params[:known_for]
    actor.save
    render json: actor
  end

  def delete
    actor = Actor.find(params[:id])
    actor.destroy
    render json: {message: "Desired actor has been deleted from the database"}
  end
end
