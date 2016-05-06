class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.string :year
      t.integer :duration
      t.text :description
      t.string :image_url

      t.timestamps
    end
  end
end
