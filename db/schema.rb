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

ActiveRecord::Schema.define(:version => 20121201220120) do

  create_table "clients", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "street_address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "cell_phone"
    t.string   "home_phone"
    t.string   "photo"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.string   "client_email"
  end

  add_index "clients", ["client_email"], :name => "index_clients_on_client_email", :unique => true

  create_table "services", :force => true do |t|
    t.string   "name"
    t.decimal  "price"
    t.integer  "stylist_id"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "stylists", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "password_digest"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "stylist_email"
  end

  add_index "stylists", ["stylist_email"], :name => "index_stylists_on_stylist_email", :unique => true

  create_table "transactions", :force => true do |t|
    t.integer  "client_id"
    t.integer  "service_id"
    t.date     "date"
    t.decimal  "sales"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
