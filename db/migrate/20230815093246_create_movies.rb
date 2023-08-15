class CreateMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.text :description
      t.integer :year
      t.string :director
      t.jsonb :actors, default: []
      t.string :filming_location
      t.string :country
      t.float :average_rating, default: 0.0

      t.timestamps
    end
  end
end
