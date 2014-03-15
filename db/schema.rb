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

ActiveRecord::Schema.define(version: 20140315172823) do

  create_table "courses", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "zip"
    t.string   "state"
    t.string   "description"
    t.integer  "number_of_holes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "holes", force: true do |t|
    t.integer  "course_id"
    t.string   "label"
    t.integer  "length_1"
    t.string   "par_1"
    t.integer  "length_2"
    t.integer  "par_2"
    t.integer  "length_3"
    t.integer  "par_3"
    t.integer  "length_4"
    t.integer  "par_4"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "holes", ["course_id"], name: "index_holes_on_course_id"

end
