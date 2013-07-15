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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20130715005328) do
=======
ActiveRecord::Schema.define(version: 20130714223509) do
>>>>>>> mailer

  create_table "bookings", force: true do |t|
    t.datetime "date"
    t.integer  "party"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "restaurant_id"
  end

  add_index "bookings", ["restaurant_id"], name: "index_bookings_on_restaurant_id"
  add_index "bookings", ["user_id"], name: "index_bookings_on_user_id"

  create_table "restaurants", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "neighbourhood"
    t.integer  "price_min"
    t.integer  "price_max"
    t.text     "summary"
    t.text     "menu"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "crypted_password"
    t.string   "salt"
    t.datetime "created_at"
    t.datetime "updated_at"

    t.string   "name"
    t.integer  "points",           default: 0


    t.string   "activation_state"
    t.string   "activation_token"
    t.datetime "activation_token_expires_at"

  end

  add_index "users", ["activation_token"], name: "index_users_on_activation_token"

end
