class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.text :title
      t.string :year
      t.string :duration
      t.text :description
      t.string :image_url
      t.string :director_id

      t.timestamps null: false
    end
  end
end
