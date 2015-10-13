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

ActiveRecord::Schema.define(version: 20151013014815) do

  create_table "settings", force: :cascade do |t|
    t.string  "name",  limit: 255
    t.integer "key",   limit: 4
    t.string  "value", limit: 255
  end

  add_index "settings", ["name"], name: "index_settings_on_name", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "user_name",    limit: 255
    t.string   "phone_number", limit: 255
    t.string   "password",     limit: 255
    t.integer  "career",       limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["phone_number"], name: "index_users_on_phone_number", using: :btree
  add_index "users", ["user_name"], name: "index_users_on_user_name", using: :btree

end
