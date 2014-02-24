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

ActiveRecord::Schema.define(version: 20140224092324) do

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

  create_table "categories", force: true do |t|
    t.string   "title"
    t.boolean  "state",      default: true
    t.integer  "position",   default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customs", force: true do |t|
    t.integer  "developpe_couche1"
    t.string   "developpe_couchere"
    t.integer  "developpe_incline1"
    t.string   "developpe_inclinere"
    t.integer  "ecarte_couche"
    t.string   "ecarte_couchere"
    t.integer  "ecarte_incline1"
    t.string   "ecarte_inclinere"
    t.integer  "haltere_au_font1"
    t.string   "haltere_au_fontre"
    t.integer  "squat1"
    t.string   "squatre"
    t.integer  "rowing_menton1"
    t.string   "rowing_mentonre"
    t.integer  "elevations_devant1"
    t.string   "elevations_devantre"
    t.integer  "rowing_courbe1"
    t.string   "rowing_courbere"
    t.integer  "pull_up1"
    t.string   "pull_upre"
    t.integer  "deadlift1"
    t.string   "deadliftre"
    t.integer  "row1"
    t.text     "rowre"
    t.integer  "bicep_curl1"
    t.string   "bicep_curlre"
    t.integer  "hammer1"
    t.string   "hammerre"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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

  create_table "forums", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.boolean  "state",        default: true
    t.integer  "topics_count", default: 0
    t.integer  "posts_count",  default: 0
    t.integer  "position",     default: 0
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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

  create_table "posts", force: true do |t|
    t.text     "body"
    t.integer  "forum_id"
    t.integer  "topic_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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

  create_table "topics", force: true do |t|
    t.string   "title"
    t.integer  "hits",        default: 0
    t.boolean  "sticky",      default: false
    t.boolean  "locked",      default: false
    t.integer  "posts_count"
    t.integer  "forum_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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
    t.integer  "poids"
    t.integer  "topics_count",        default: 0
    t.integer  "posts_count",         default: 0
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

end
