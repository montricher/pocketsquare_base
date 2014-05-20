
ActiveRecord::Schema.define(version: 20140520150543) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "favorites", force: true do |t|
    t.integer  "user_id"
    t.integer  "venue_id"
    t.string   "favorite_note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "user_name"
    t.string   "user_email"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
  end

  create_table "venues", force: true do |t|
    t.string   "venue_name"
    t.integer  "venue_phone"
    t.string   "venue_address"
    t.string   "venue_twitter"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
