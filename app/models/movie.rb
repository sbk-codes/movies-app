class Movie < ApplicationRecord
	validates :title, :description, :year, :director, :actor, :filming_location, :country, presence: true
end
