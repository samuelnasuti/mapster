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

ActiveRecord::Schema.define(:version => 20140105230538) do

  create_table "users", :force => true do |t|
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.text     "comment"
    t.float    "nearesttb"
    t.integer  "priority"
    t.string   "yum_id"
    t.integer  "sales_volume"
    t.string   "street"
    t.string   "city"
    t.string   "zip"
    t.string   "sales_year"
    t.string   "state"
    t.float    "closest_tb"
    t.string   "brand"
    t.string   "address"
    t.string   "franchisee"
    t.string   "store_number"
    t.string   "franchise_exp"
    t.string   "lease_exp_final"
    t.string   "lease_exp_next"
    t.string   "name"
    t.string   "re_owner"
  end

end
