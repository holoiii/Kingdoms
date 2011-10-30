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

ActiveRecord::Schema.define(:version => 20111030011532) do

  create_table "buildings", :force => true do |t|
    t.integer  "amount"
    t.integer  "build_time"
    t.integer  "rate"
    t.string   "name"
    t.integer  "gold_cost"
    t.integer  "stone_cost"
    t.integer  "wood_cost"
    t.integer  "wheat_cost"
    t.integer  "gem_cost"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "kingdom_id"
  end

  create_table "constructions", :force => true do |t|
    t.datetime "finish_time"
    t.integer  "amount"
    t.integer  "building_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "kingdoms", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "resources", :force => true do |t|
    t.string   "name"
    t.integer  "amount"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "kingdom_id"
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "crypted_password"
    t.string   "password_salt"
    t.string   "persistence_token"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
