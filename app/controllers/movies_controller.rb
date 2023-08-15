class MoviesController < ApplicationController
  def index
    @movies = Movie.all.order(average_rating: :desc)
  end
end
