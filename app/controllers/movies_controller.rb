class MoviesController < ApplicationController
  def index
    @movies = Movie.all
    @movies = @movies.where("? = ANY(actors)", params[:actors]) if params[:actorss]
    @movies = @movies.order(average_rating: :desc)
  end
end
