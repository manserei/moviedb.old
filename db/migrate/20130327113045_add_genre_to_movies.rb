class AddGenreToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :genre_id, :integer
  end
end
