class RemoveVenueZipFromVenues < ActiveRecord::Migration
  def change
    remove_column :venues, :venue_zip, :integer
  end
end
