class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :venue_name
      t.integer :venue_phone
      t.string :venue_address
      t.integer :venue_zip
      t.string :venue_twitter

      t.timestamps
    end
  end
end
