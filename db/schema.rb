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

ActiveRecord::Schema.define(version: 20141007191131) do

  create_table "instruments", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "instrument_name"
    t.integer  "musician_id_id"
  end

  add_index "instruments", ["musician_id_id"], name: "index_instruments_on_musician_id_id"

  create_table "musicians", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "firstname"
    t.string   "lastname"
    t.string   "link"
    t.date     "birthdate"
    t.string   "specialized_on"
  end

end
