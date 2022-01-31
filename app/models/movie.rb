class Movie < ApplicationRecord
  has_many :actors # will return an array
  has_many :movie_genres
  has_many :genres, through: :movie_genres

end
