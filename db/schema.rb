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

ActiveRecord::Schema.define(version: 2020_01_29_215705) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "exercise_posts", force: :cascade do |t|
    t.string "name"
    t.float "calories"
    t.string "image"
    t.string "unit"
    t.integer "unit_number"
    t.integer "user_id"
    t.string "note"
    t.date "date"
    t.string "time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "food_posts", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.float "calories"
    t.float "fat"
    t.float "protein"
    t.float "carbs"
    t.float "potassium"
    t.float "sugar"
    t.float "sodium"
    t.float "saturated_fat"
    t.float "dietary_fiber"
    t.float "cholesterol"
    t.integer "user_id"
    t.string "note"
    t.date "date"
    t.string "time"
    t.string "meal"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "notes", force: :cascade do |t|
    t.string "subject"
    t.string "text"
    t.date "date"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "image"
    t.string "username"
    t.string "password_digest"
    t.integer "age"
    t.string "diet_type"
    t.float "weight"
    t.float "height"
    t.string "email"
    t.string "bio"
    t.integer "calorie_goal"
    t.string "gender"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
