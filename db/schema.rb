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

ActiveRecord::Schema.define(version: 20140506201126) do

  create_table "park_users", force: true do |t|
    t.integer "user_id"
    t.integer "park_id"
  end

  add_index "park_users", ["park_id"], name: "index_park_users_on_park_id"
  add_index "park_users", ["user_id"], name: "index_park_users_on_user_id"

  create_table "parks", force: true do |t|
    t.string   "name"
    t.string   "peak"
    t.string   "state"
    t.string   "elevation"
    t.string   "minelevation"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "location"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
