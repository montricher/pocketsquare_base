class RemoveBirthdateFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :birthdate, :integer
  end
end
