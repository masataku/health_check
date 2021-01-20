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

ActiveRecord::Schema.define(version: 2021_01_20_062034) do

  create_table "check_symptoms", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "check_id", null: false
    t.bigint "symptom_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["check_id"], name: "index_check_symptoms_on_check_id"
    t.index ["symptom_id"], name: "index_check_symptoms_on_symptom_id"
  end

  create_table "checks", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.date "date", null: false
    t.integer "condition_id", null: false
    t.integer "symptoms_id"
    t.text "opinion"
    t.boolean "attend", default: true, null: false
    t.boolean "check", default: false, null: false
    t.boolean "breakfast", default: true, null: false
    t.integer "bed_time_id", null: false
    t.boolean "leave_early", default: false, null: false
    t.boolean "late", default: false, null: false
    t.bigint "student_id", null: false
    t.bigint "sheet_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["sheet_id"], name: "index_checks_on_sheet_id"
    t.index ["student_id"], name: "index_checks_on_student_id"
  end

  create_table "schools", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", null: false
    t.string "password_digest", null: false
    t.string "school_name", null: false
    t.string "teacher_password", null: false
    t.string "student_password", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sheets", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "grade", null: false
    t.integer "my_class", null: false
    t.integer "year", null: false
    t.bigint "school_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.date "date"
    t.index ["school_id"], name: "index_sheets_on_school_id"
  end

  create_table "students", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "student_password", null: false
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "first_name_kana", null: false
    t.string "last_name_kana", null: false
    t.integer "grade", null: false
    t.integer "my_class", null: false
    t.integer "number", null: false
    t.bigint "school_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "year", null: false
    t.index ["school_id"], name: "index_students_on_school_id"
  end

  create_table "symptoms", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "teachers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.integer "grade", null: false
    t.integer "my_class", null: false
    t.bigint "school_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "teacher_password"
    t.integer "year", null: false
    t.index ["school_id"], name: "index_teachers_on_school_id"
  end

  add_foreign_key "check_symptoms", "checks"
  add_foreign_key "check_symptoms", "symptoms"
  add_foreign_key "checks", "sheets"
  add_foreign_key "checks", "students"
  add_foreign_key "sheets", "schools"
  add_foreign_key "students", "schools"
  add_foreign_key "teachers", "schools"
end
