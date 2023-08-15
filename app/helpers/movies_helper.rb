module MoviesHelper
  def calculate_average_rating(movie)
    average_rating = movie.reviews.average(:stars)
    average_rating ? '%.2f' % average_rating : 'N/A'
  end
end
