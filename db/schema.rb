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

ActiveRecord::Schema.define(version: 20160808173803) do

  create_table "homeowners", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "neighbors", force: :cascade do |t|
    t.integer  "neighbor_to"
    t.integer  "neighbor_of"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["neighbor_to", "neighbor_of"], name: "index_neighbors_on_neighbor_to_and_neighbor_of", unique: true
  end

end
