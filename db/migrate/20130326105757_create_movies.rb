class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.string :language
      t.integer :length
      t.integer :year

      t.timestamps
    end
  end
end
