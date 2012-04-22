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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120422002830) do

  create_table "connections", :force => true do |t|
    t.integer  "user_a_id"
    t.integer  "user_b_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.integer  "facebook_id"
    t.string   "f_name"
    t.string   "m_name"
    t.string   "l_name"
    t.string   "gender"
    t.string   "link"
    t.string   "hometown"
    t.string   "bio"
    t.integer  "birth_day"
    t.integer  "birth_month"
    t.integer  "birth_year"
    t.string   "email"
    t.string   "timezone"
    t.string   "location"
    t.string   "political"
    t.string   "quotes"
    t.string   "relationship_status"
    t.string   "religion"
    t.string   "website"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
