# encoding: UTF-8
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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140505173834) do

  create_table "parks", force: true do |t|
    t.string   "name"
    t.string   "peak"
    t.string   "state"
    t.string   "elevation"
    t.string   "minelevation"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "parks_users", id: false, force: true do |t|
    t.integer "user_id"
    t.integer "park_id"
  end

  add_index "parks_users", ["park_id", "user_id"], name: "index_parks_users_on_park_id_and_user_id"

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "location"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
