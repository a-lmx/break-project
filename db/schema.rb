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

ActiveRecord::Schema.define(version: 20150914031449) do

  create_table "languages", force: :cascade do |t|
    t.string   "name"
    t.string   "label"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "zipcodes", force: :cascade do |t|
    t.string   "zipcode"
    t.integer  "total"
    t.integer  "english"
    t.integer  "spanish"
    t.integer  "french"
    t.integer  "french_creole"
    t.integer  "italian"
    t.integer  "portuguese"
    t.integer  "german"
    t.integer  "yiddish"
    t.integer  "other_west_germanic"
    t.integer  "scandinavian"
    t.integer  "greek"
    t.integer  "russian"
    t.integer  "polish"
    t.integer  "serbo_croatian"
    t.integer  "other_slavic"
    t.integer  "armenian"
    t.integer  "persian"
    t.integer  "gujarati"
    t.integer  "hindi"
    t.integer  "urdu"
    t.integer  "other_indic"
    t.integer  "other_indo_european"
    t.integer  "chinese"
    t.integer  "japanese"
    t.integer  "korean"
    t.integer  "mon_khmer_cambodian"
    t.integer  "hmong"
    t.integer  "thai"
    t.integer  "laotian"
    t.integer  "vietnamese"
    t.integer  "other_asian"
    t.integer  "tagalog"
    t.integer  "other_pacific_island"
    t.integer  "navajo"
    t.integer  "other_native_north_american"
    t.integer  "hungarian"
    t.integer  "arabic"
    t.integer  "hebrew"
    t.integer  "african"
    t.integer  "other_and_unspecified"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

end
