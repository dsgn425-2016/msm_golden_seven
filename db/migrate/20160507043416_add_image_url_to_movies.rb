class AddImageUrlToMovies < ActiveRecord::Migration
  def change

  add_column :movies, :image_url, :string
  remove_column :movies, :imagie_url
end
  
end
