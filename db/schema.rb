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

ActiveRecord::Schema[7.0].define(version: 2022_05_29_031443) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "athletes", force: :cascade do |t|
    t.string "name"
    t.string "nation"
    t.datetime "born"
    t.string "athlete_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "event_competitors", force: :cascade do |t|
    t.string "name"
    t.string "nation"
    t.string "athlete_url"
    t.datetime "birthdate"
    t.string "rank"
    t.float "bweight"
    t.string "group"
    t.string "category"
    t.float "snatch"
    t.float "jerk"
    t.float "total"
    t.integer "event_id"
    t.integer "athlete_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.datetime "event_date"
    t.string "event_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "scrapers", force: :cascade do |t|
    t.string "athlete_name"
    t.string "nation"
    t.datetime "birthdate"
    t.string "athlete_url"
    t.float "bweight"
    t.string "group"
    t.string "category"
    t.float "snatch"
    t.float "jerk"
    t.float "total"
    t.string "event_name"
    t.datetime "event_date"
    t.string "event_url"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
