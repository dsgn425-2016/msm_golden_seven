class CreateActors < ActiveRecord::Migration
  def change
    create_table :actors do |t|
      t.string :name
      t.text :bio
      t.string :dob
      t.string :image_url

      t.timestamps

    end
  end
end
