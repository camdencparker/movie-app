class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :year, :plot, :director 

  has_many :genres
end
