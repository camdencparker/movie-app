class MovieGenresController < ApplicationController
  def create
    handshake = MovieGenre.new(genre_id: params[:genre_id], movie_id: params[:movie_id])

    render json: handshake
  end
end
