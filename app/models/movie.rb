class Movie < ApplicationRecord
  has_many :reviews
  validates :title, :description, :year, :director, :actors, :filming_location, :country, presence: true

  def update_average_rating
    average_rating = reviews.average(:stars) || 0
    update!(average_rating: average_rating)
  end
end
