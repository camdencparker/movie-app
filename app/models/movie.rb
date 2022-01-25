class Movie < ApplicationRecord
  has_many :actors # will return an array
end
