class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user_name
      t.date :birthdate
      t.string :user_email
      t.integer :user_zip
      t.string :password

      t.timestamps
    end
  end
end
