# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.


ActiveRecord::Schema.define(version: 2020_08_26_093941) do


  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.string "activity_name"
    t.string "activity_description"
    t.bigint "resort_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["resort_id"], name: "index_activities_on_resort_id"
  end

  create_table "preferences", force: :cascade do |t|
    t.string "visitor_name"
    t.string "roommate"
    t.string "budget"
    t.string "day_activities"
    t.string "biological_clock"
    t.string "accommodation"
    t.string "spot"
    t.string "night_activities"
    t.string "expectations"
    t.string "geocation"
    t.string "kilometers"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id", null: false
    t.index ["user_id"], name: "index_preferences_on_user_id"
  end

  create_table "resorts", force: :cascade do |t|
    t.string "resort_name"
    t.string "resort_address"
    t.text "resort_description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "visitor_name"
    t.string "roommate"
    t.string "budget"
    t.string "day_activities"
    t.string "biological_clock"
    t.string "accommodation"
    t.string "spot"
    t.string "night_activities"
    t.string "expectations"
    t.string "geocation"
    t.string "kilometers"
    t.float "latitude"
    t.float "longitude"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "activities", "resorts"
  add_foreign_key "preferences", "users"
end
