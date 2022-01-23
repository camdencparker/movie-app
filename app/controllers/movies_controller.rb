class MoviesController < ApplicationController
  # validates :director, presence: true
  #validates :year, numericality: {greater_than: 1800}
  #validates :title, uniqueness: true
  #validates :plot, presence: true

  def index
    movies = Movie.all
    english = []
    movies.each do |movie|
      if movie.english == true;
        english.push(movie)
      end
    end
    render json: english
  end

  def create
    movie = Movie.new(
      title: params[:title],
      year: params[:year],
      plot: params[:plot],
      director: params[:director],
      english: params[:english]
    )
    if movie.save
      render json: movie
    else
      render json: {errors: movie.errors.full_messages}
    end
  end

  def show
    movie = Movie.find(params[:id])
    render json: movie
  end

  def update
    movie = Movie.find(params[:id])
    movie.title = params[:title] || movie.title,
    movie.year =  params[:year] || movie.year,
    movie.plot = params[:plot] || movie.plot
    movie.director = params[:director] || movie.director
    movie.english = params[:english] || movie.english
    if movie.save
      render json: movie
    else
      render json: {errors: movie.errors.full_messages}
    end
  end

  def delete
    movie = Movie.find(params[:id])
    movie.destroy
    render json: {message: "Desired film has been deleted from the database"}
  end

  
end
