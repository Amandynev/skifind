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

ActiveRecord::Schema.define(version: 2020_09_01_113159) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

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
    t.boolean "geocation"
    t.string "kilometers"
    t.string "matchable_type", null: false
    t.bigint "matchable_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.float "latitude"
    t.float "longitude"
    t.index ["matchable_type", "matchable_id"], name: "index_preferences_on_matchable_type_and_matchable_id"
  end

  create_table "resorts", force: :cascade do |t|
    t.string "resort_name"
    t.string "resort_address"
    t.text "resort_description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "visitor_name"
    t.float "latitude"
    t.float "longitude"
    t.string "photo_asset"
    t.string "slopes_title"
    t.string "slopes_green"
    t.string "slopes_blue"
    t.string "slopes_red"
    t.string "slopes_black"
    t.string "altitude"
    t.string "opening_time"
    t.string "kids_garden"
    t.string "snowpark"
    t.string "free_carpark"
    t.string "mountains"
    t.string "resort_website"
    t.string "logo_asset"
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

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "activities", "resorts"
end
