class CreateFavorites < ActiveRecord::Migration
  def change
    # Join table for Users and Venues
    create_table :favorites do |t|
      t.integer :user_id  #foreign_key
      t.integer :venue_id  #foreign_key
      t.string :favorite_note  #notes/comments for each favorite

      t.timestamps
    end
  end
end
