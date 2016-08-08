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

ActiveRecord::Schema.define(version: 20160808172659) do

  create_table "houses", force: :cascade do |t|
    t.string   "name"
    t.integer  "house_number"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "neighborings", force: :cascade do |t|
    t.integer  "neighbor_id"
    t.integer  "neighboree_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "neighborings", ["neighbor_id", "neighboree_id"], name: "index_neighborings_on_neighbor_id_and_neighboree_id", unique: true

end
