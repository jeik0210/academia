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

ActiveRecord::Schema.define(version: 20150215195153) do

  create_table "businesses", force: true do |t|
    t.integer  "ruc"
    t.string   "name"
    t.string   "phone"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "courses", force: true do |t|
    t.date     "date_initial"
    t.date     "date_final"
    t.integer  "type_course_id"
    t.integer  "teaching_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "courses", ["teaching_id"], name: "index_courses_on_teaching_id", using: :btree
  add_index "courses", ["type_course_id"], name: "index_courses_on_type_course_id", using: :btree

  create_table "detail_courses", force: true do |t|
    t.float    "nota",       limit: 24
    t.integer  "student_id"
    t.integer  "course_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "detail_courses", ["course_id"], name: "index_detail_courses_on_course_id", using: :btree
  add_index "detail_courses", ["student_id"], name: "index_detail_courses_on_student_id", using: :btree

  create_table "employees", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "employees", ["email"], name: "index_employees_on_email", unique: true, using: :btree
  add_index "employees", ["reset_password_token"], name: "index_employees_on_reset_password_token", unique: true, using: :btree

  create_table "patients", force: true do |t|
    t.string   "name"
    t.string   "dni"
    t.string   "phone"
    t.string   "home"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", force: true do |t|
    t.integer  "dni"
    t.string   "name"
    t.string   "paternal"
    t.string   "maternal"
    t.string   "address"
    t.string   "mail"
    t.string   "phone"
    t.integer  "years"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "sex"
  end

  create_table "teachings", force: true do |t|
    t.string   "dni"
    t.string   "name"
    t.string   "paternal"
    t.string   "maternal"
    t.string   "address"
    t.integer  "phone"
    t.string   "mail"
    t.string   "range"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tests", force: true do |t|
    t.string   "history_clinic"
    t.integer  "patient_id"
    t.string   "occupational"
    t.string   "enfermedad"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tests", ["patient_id"], name: "index_tests_on_patient_id", using: :btree

  create_table "type_courses", force: true do |t|
    t.string   "duration"
    t.text     "program"
    t.string   "title"
    t.string   "code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
