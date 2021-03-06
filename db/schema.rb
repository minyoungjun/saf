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

ActiveRecord::Schema.define(version: 20141218141414) do

  create_table "promotions", force: true do |t|
    t.string   "title"
    t.text     "content"
    t.string   "token"
    t.string   "post_url"
    t.string   "img_url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "start_time"
    t.datetime "end_time"
  end

  create_table "users", force: true do |t|
    t.integer  "promotion_id"
    t.string   "name"
    t.string   "phone"
    t.string   "email"
    t.string   "provider"
    t.string   "ip_address"
    t.string   "post_number"
    t.string   "address"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "birth"
    t.boolean  "seconddate",   default: false
    t.boolean  "firstdate",    default: false
  end

  create_table "wrongs", force: true do |t|
    t.string   "ip_address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
