class ActorsController < ApplicationController
  def show
    id = params[:id]
    actor = Actor.find_by(id: id)
    render json: actor
  end
end
