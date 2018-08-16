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

ActiveRecord::Schema.define(version: 20180816184243) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "arrows", force: :cascade do |t|
    t.string "autothought"
    t.string "distortion"
    t.string "response"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_arrows_on_user_id"
  end

  create_table "colum_methods", force: :cascade do |t|
    t.string "event"
    t.string "emotion"
    t.string "autothought"
    t.string "distortion"
    t.string "response"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_colum_methods_on_user_id"
  end

  create_table "downward_arrows", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "autothought1"
    t.string "distortion1"
    t.string "response1"
    t.string "autothought2"
    t.string "distortion2"
    t.string "response2"
    t.string "autothought3"
    t.string "distortion3"
    t.string "response3"
    t.string "autothought4"
    t.string "distortion4"
    t.string "response4"
    t.string "autothought5"
    t.string "distortion5"
    t.string "response5"
    t.string "autothought6"
    t.string "distortion6"
    t.string "response6"
    t.string "autothought7"
    t.string "distortion7"
    t.string "response7"
    t.string "autothought8"
    t.string "distortion8"
    t.string "response8"
    t.string "autothought9"
    t.string "distortion9"
    t.string "response9"
    t.string "autothought10"
    t.string "distortion10"
    t.string "response10"
    t.string "autothought11"
    t.string "distortion11"
    t.string "response11"
    t.string "autothought12"
    t.string "distortion12"
    t.string "response12"
    t.string "autothought13"
    t.string "distortion13"
    t.string "response13"
    t.string "autothought14"
    t.string "distortion14"
    t.string "response14"
    t.string "autothought15"
    t.string "distortion15"
    t.string "response15"
    t.string "autothought16"
    t.string "distortion16"
    t.string "response16"
    t.string "autothought17"
    t.string "distortion17"
    t.string "response17"
    t.string "autothought18"
    t.string "distortion18"
    t.string "response18"
    t.string "autothought19"
    t.string "distortion19"
    t.string "response19"
    t.string "autothought20"
    t.string "distortion20"
    t.string "response20"
    t.index ["user_id"], name: "index_downward_arrows_on_user_id"
  end

  create_table "examples", force: :cascade do |t|
    t.text "text", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_examples_on_user_id"
  end

  create_table "exposures", force: :cascade do |t|
    t.string "action"
    t.float "prediction"
    t.float "actual"
    t.float "satisfaction"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_exposures_on_user_id"
  end

  create_table "journal_entries", force: :cascade do |t|
    t.string "title"
    t.string "content"
    t.boolean "starred"
    t.date "dateCreated"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "token", null: false
    t.string "password_digest", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["token"], name: "index_users_on_token", unique: true
  end

  add_foreign_key "arrows", "users"
  add_foreign_key "colum_methods", "users"
  add_foreign_key "downward_arrows", "users"
  add_foreign_key "examples", "users"
  add_foreign_key "exposures", "users"
end
