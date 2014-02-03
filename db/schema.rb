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

ActiveRecord::Schema.define(version: 20140202180536) do

  create_table "backs", force: true do |t|
    t.integer  "pull_up"
    t.integer  "deadlift"
    t.integer  "row"
    t.integer  "bicep_curl"
    t.integer  "hammer"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "backs", ["user_id", "created_at"], name: "index_backs_on_user_id_and_created_at"

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.decimal  "weight"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin",           default: false
  end

  create_table "weights", primary_key: "user_id", force: true do |t|
    t.integer  "bench"
    t.integer  "incline_bench"
    t.integer  "pec_flight"
    t.integer  "incline_pec"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
