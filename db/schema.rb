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

ActiveRecord::Schema[7.1].define(version: 2023_11_27_120841) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "comment_id", null: false
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["comment_id"], name: "index_answers_on_comment_id"
    t.index ["user_id"], name: "index_answers_on_user_id"
  end

  create_table "comments", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "course_id", null: false
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_comments_on_course_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string "category"
    t.string "title"
    t.string "description"
    t.string "difficulty"
    t.time "duration"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "users_courses", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "course_id", null: false
    t.integer "progress"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_users_courses_on_course_id"
    t.index ["user_id"], name: "index_users_courses_on_user_id"
  end

  add_foreign_key "answers", "comments"
  add_foreign_key "answers", "users"
  add_foreign_key "comments", "courses"
  add_foreign_key "comments", "users"
  add_foreign_key "users_courses", "courses"
  add_foreign_key "users_courses", "users"
end
