# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_09_24_133456) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "landmarks", force: :cascade do |t|
    t.string "name"
    t.json "images"
    t.string "type_of_landmark"
    t.string "country"
    t.string "visiting_price"
    t.json "coordinates"
    t.text "description"
    t.string "opening_hours"
    t.string "address"
    t.json "contact_information"
    t.text "accessibility"
    t.json "nearby_attractions"
    t.text "historical_significance"
    t.text "wildlife"
    t.json "facilities"
    t.boolean "guided_tours"
    t.json "special_events"
    t.text "local_culture"
    t.text "weather"
    t.text "entry_requirements"
    t.json "history_timeline"
    t.json "tips_for_visitors"
    t.json "parking_information"
    t.boolean "souvenir_shops"
    t.text "photography_rules"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_landmarks_on_name"
  end

  create_table "user_reviews", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "landmark_id", null: false
    t.integer "rating"
    t.text "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["landmark_id"], name: "index_user_reviews_on_landmark_id"
    t.index ["user_id"], name: "index_user_reviews_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["username"], name: "index_users_on_username"
  end

  add_foreign_key "user_reviews", "landmarks"
  add_foreign_key "user_reviews", "users"
end
