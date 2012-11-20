# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121113070452) do

  create_table "address_catalogs", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "address_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "addresses", :force => true do |t|
    t.string   "address"
    t.integer  "address_type_id"
    t.integer  "address_catalog_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "name"
  end

  create_table "addresses_families", :force => true do |t|
    t.integer "address_id"
    t.integer "family_id"
  end

  create_table "adults", :force => true do |t|
    t.integer  "family_id"
    t.boolean  "drive"
    t.string   "driver_license"
    t.integer  "seats"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "adults_families", :id => false, :force => true do |t|
    t.integer "adult_id"
    t.integer "address_id"
  end

  create_table "families", :force => true do |t|
    t.integer  "address_id"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
    t.string   "last_name",  :limit => 32
  end

  create_table "families_kids", :id => false, :force => true do |t|
    t.integer "family_id"
    t.integer "kid_id"
  end

  create_table "family_adults", :force => true do |t|
    t.integer  "family_id"
    t.integer  "adult_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "family_kids", :force => true do |t|
    t.integer  "family_id"
    t.integer  "kid_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "kids", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "family_id"
    t.date     "birthday"
    t.integer  "school_id"
  end

  create_table "trip_states", :force => true do |t|
    t.string   "state"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "trips", :force => true do |t|
    t.integer  "extra_seats"
    t.integer  "matched"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "kid_id"
    t.integer  "trip_state_id"
    t.integer  "start_id"
    t.datetime "arrive_time"
    t.integer  "destination_id"
  end

end
