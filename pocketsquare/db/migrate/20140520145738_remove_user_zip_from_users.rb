class RemoveUserZipFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :user_zip, :integer
  end
end
