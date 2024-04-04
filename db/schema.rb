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

ActiveRecord::Schema[7.0].define(version: 2024_04_04_083408) do
  create_table "boxes", charset: "utf8", force: :cascade do |t|
    t.string "box_name", null: false
    t.date "birth_day"
    t.text "memo"
    t.string "favorite_color"
    t.date "anniversary_day"
    t.text "anniversary_memo"
    t.string "occupation"
    t.string "hobbies"
    t.string "likes"
    t.string "dislikes"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_boxes_on_user_id"
  end

  create_table "presents", charset: "utf8", force: :cascade do |t|
    t.string "title", null: false
    t.string "present_name", null: false
    t.text "text"
    t.string "shop"
    t.integer "price"
    t.text "memo"
    t.string "url"
    t.integer "box_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", charset: "utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "boxes", "users"
end
