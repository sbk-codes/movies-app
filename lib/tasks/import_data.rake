require 'csv'

namespace :import do
  desc 'Import movies and reviews from CSV files'
  task csv_data: :environment do
    import_csv_data('movies.csv', method(:import_movie))
    import_csv_data('reviews.csv', method(:import_review))
  end
end

def import_csv_data(file_name, import_method)
  csv_path = Rails.root.join('public', file_name)

  CSV.foreach(csv_path, headers: true) do |row|
    begin
      import_method.call(row)
    rescue StandardError => e
      handle_error(row, e)
    end
  end
end

def import_movie(row)
  Movie.create!(
    title: row['Movie'],
    description: row['Description'],
    year: row['Year'],
    director: row['Director'],
    actor: row['Actor'],
    filming_location: row['Filming location'],
    country: row['Country']
  )
end

def import_review(row)
  movie = Movie.find_by(title: row['Movie'])
  Review.create!(
    movie: movie,
    user: row['User'],
    stars: row['Stars'],
    review: row['Review']
  )
end

def handle_error(row, e)
  puts "Error importing row: #{row.inspect}"
  puts "Error message: #{e.message}\n\n"
end
