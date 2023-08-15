class Movie < ApplicationRecord
  include PgSearch::Model
  has_many :reviews
  validates :title, :description, :year, :director, :actors, :filming_location, :country, presence: true

  pg_search_scope :search, against: {
    actors: 'A',
  }, using: {
    tsearch: { prefix: true }
  }

  def update_average_rating
    average_rating = reviews.average(:stars) || 0
    update!(average_rating: average_rating)
  end
end
