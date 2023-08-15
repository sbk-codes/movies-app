class MoviesController < ApplicationController
  def index
    @movies = Movie.left_joins(:reviews).group(:id).order('AVG(reviews.stars) DESC NULLS LAST')
  end
end
