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

ActiveRecord::Schema[7.1].define(version: 2024_04_21_165505) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.date "checkin"
    t.date "checkout"
    t.bigint "user_id", null: false
    t.bigint "experience_id", null: false
    t.text "welcome_message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["experience_id"], name: "index_bookings_on_experience_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "experiences", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "host_id"
    t.index ["host_id"], name: "index_experiences_on_host_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "role", default: "traveller"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "andytutton2@gmail.com", null: false
    t.string "encrypted_password", default: "poiupoiu", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bookings", "experiences"
  add_foreign_key "bookings", "users"
  add_foreign_key "experiences", "users", column: "host_id"
end
