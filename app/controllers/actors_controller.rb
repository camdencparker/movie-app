class ActorsController < ApplicationController
  def first_actor
    first = Actor.first
    render json: first.as_json
  end
  
  def second_actor
    second = Actor.second
    render json: second.as_json
  end

  def find_by_id
    actor_arr = Actor.all
    id = params[:id].to_i
    desired_actor = actor_arr[id - 1]
    render json: desired_actor.as_json
  end

  def find_by_first_name
    name = params[:name]
    wanted_actor = Actor.find_by(first_name: name)
    render json: wanted_actor.as_json
  end

  def delete_actor
    name = params[:name]
    wanted_actor = Actor.find_by(first_name: name)
    wanted_actor.destroy
  end

  def update_known_for
    name = params[:name]
    description = params[:description]
    wanted_actor = Actor.find_by(first_name: name)
    wanted_actor.update(known_for: description)
  end

  def delete_all
    all = Actor.all
    all.destroy_all
  end

  def 
    
  end

end
