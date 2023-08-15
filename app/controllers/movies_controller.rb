class MoviesController < ApplicationController
  def index
    @params = params
    @movies = Movie.all
    @movies = @movies.search(params[:actor]) if params[:actor] # added after 20 minutes
    @movies = @movies.order(average_rating: :desc)
  end
end
