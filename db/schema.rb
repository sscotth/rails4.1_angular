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

ActiveRecord::Schema.define(version: 20140302214244) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "fillups", force: true do |t|
    t.decimal  "odometer",   precision: 8, scale: 1,                                 null: false
    t.decimal  "price",      precision: 5, scale: 3,                                 null: false
    t.decimal  "volume",     precision: 5, scale: 3,                                 null: false
    t.datetime "date",                               default: '2014-03-03 23:39:26', null: false
    t.boolean  "missed",                             default: false
    t.boolean  "partial",                            default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "fillups", ["odometer"], name: "index_fillups_on_odometer", unique: true, using: :btree

end
