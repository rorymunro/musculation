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

ActiveRecord::Schema.define(version: 20140218152734) do

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

  create_table "day1s", force: true do |t|
    t.integer  "squat"
    t.integer  "souleve_de_terre"
    t.integer  "developpe_couche"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "day1s", ["user_id", "created_at"], name: "index_day1s_on_user_id_and_created_at"

  create_table "day2s", force: true do |t|
    t.integer  "pull_up"
    t.integer  "developpe_nuque"
    t.integer  "developpe_incline"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "day2s", ["user_id", "created_at"], name: "index_day2s_on_user_id_and_created_at"

  create_table "day3s", force: true do |t|
    t.integer  "squat"
    t.integer  "developpe_barre"
    t.integer  "curl_barre"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "day3s", ["user_id", "created_at"], name: "index_day3s_on_user_id_and_created_at"

  create_table "poitrines", force: true do |t|
    t.integer  "developpe_couche"
    t.integer  "developpe_incline"
    t.integer  "ecarte_couche"
    t.integer  "ecarte_incline"
    t.integer  "haltere_au_front"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "poitrines", ["user_id", "created_at"], name: "index_poitrines_on_user_id_and_created_at"

  create_table "shoulders", force: true do |t|
    t.integer  "squat"
    t.integer  "rowing_menton"
    t.integer  "elevations_devant"
    t.integer  "rowing_courbe"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "shoulders", ["user_id", "created_at"], name: "index_shoulders_on_user_id_and_created_at"

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin"
    t.integer  "poid"
    t.string   "location"
    t.integer  "age"
    t.integer  "taille"
  end

end
