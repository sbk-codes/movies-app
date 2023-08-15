class Movie < ApplicationRecord
  has_many :reviews
  validates :title, :description, :year, :director, :actor, :filming_location, :country, presence: true
end
