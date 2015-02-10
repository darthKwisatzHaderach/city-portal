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

ActiveRecord::Schema.define(version: 20150202082929) do

  create_table "about_city_articles", force: true do |t|
    t.string  "title"
    t.string  "alias"
    t.text    "intro_text"
    t.text    "full_text"
    t.integer "group_id"
    t.string  "image"
    t.string  "author"
    t.boolean "published"
  end

  create_table "about_city_groups", force: true do |t|
    t.string "name"
  end

  create_table "galleries", force: true do |t|
    t.integer "group"
    t.string  "file"
    t.string  "author"
  end

  create_table "news", force: true do |t|
    t.string   "title"
    t.string   "alias"
    t.text     "intro_text"
    t.text     "full_text"
    t.string   "image"
    t.string   "author"
    t.boolean  "published"
    t.datetime "created"
  end

  create_table "panoramas", force: true do |t|
    t.string  "path",     null: false
    t.integer "year"
    t.string  "img_path", null: false
    t.string  "name"
  end

end
