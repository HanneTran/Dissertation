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

ActiveRecord::Schema.define(version: 2019_03_28_153115) do

  create_table "categories", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "category", null: false
    t.text "description", null: false
  end

  create_table "features", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "patient_id", null: false
    t.decimal "pause", precision: 10, scale: 4, null: false
    t.decimal "duration", precision: 10, scale: 4, null: false
    t.decimal "no_of_topics_changed", precision: 10, scale: 4, null: false
    t.decimal "empty_words", precision: 10, scale: 4, null: false
    t.decimal "variety_of_words", precision: 10, scale: 4, null: false
    t.index ["patient_id"], name: "index_features_on_patient_id"
  end

  create_table "notes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "patient_id"
    t.index ["patient_id"], name: "index_notes_on_patient_id"
  end

  create_table "patients", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "category_id", null: false
    t.string "category", null: false
    t.index ["category_id"], name: "index_patients_on_type_id"
  end

  create_table "q10s", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "file"
    t.bigint "patient_id"
    t.bigint "question_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_q10s_on_patient_id"
    t.index ["question_id"], name: "index_q10s_on_question_id"
  end

  create_table "q11s", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "file"
    t.bigint "patient_id"
    t.bigint "question_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_q11s_on_patient_id"
    t.index ["question_id"], name: "index_q11s_on_question_id"
  end

  create_table "q12s", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "file"
    t.bigint "patient_id"
    t.bigint "question_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_q12s_on_patient_id"
    t.index ["question_id"], name: "index_q12s_on_question_id"
  end

  create_table "q1s", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "file"
    t.bigint "patient_id"
    t.bigint "question_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_q1s_on_patient_id"
    t.index ["question_id"], name: "index_q1s_on_question_id"
  end

  create_table "q2s", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "file"
    t.bigint "patient_id"
    t.bigint "question_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_q2s_on_patient_id"
    t.index ["question_id"], name: "index_q2s_on_question_id"
  end

  create_table "q3s", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "file"
    t.bigint "patient_id"
    t.bigint "question_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_q3s_on_patient_id"
    t.index ["question_id"], name: "index_q3s_on_question_id"
  end

  create_table "q4s", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "file"
    t.bigint "patient_id"
    t.bigint "question_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_q4s_on_patient_id"
    t.index ["question_id"], name: "index_q4s_on_question_id"
  end

  create_table "q5s", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "file"
    t.bigint "patient_id"
    t.bigint "question_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_q5s_on_patient_id"
    t.index ["question_id"], name: "index_q5s_on_question_id"
  end

  create_table "q6s", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "file"
    t.bigint "patient_id"
    t.bigint "question_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_q6s_on_patient_id"
    t.index ["question_id"], name: "index_q6s_on_question_id"
  end

  create_table "q7s", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "file"
    t.bigint "patient_id"
    t.bigint "question_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_q7s_on_patient_id"
    t.index ["question_id"], name: "index_q7s_on_question_id"
  end

  create_table "q8s", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "file"
    t.bigint "patient_id"
    t.bigint "question_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_q8s_on_patient_id"
    t.index ["question_id"], name: "index_q8s_on_question_id"
  end

  create_table "q9s", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "file"
    t.bigint "patient_id"
    t.bigint "question_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_q9s_on_patient_id"
    t.index ["question_id"], name: "index_q9s_on_question_id"
  end

  create_table "questions", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "description"
    t.bigint "patient_id"
    t.integer "question_no"
    t.index ["patient_id"], name: "index_questions_on_patient_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
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
    t.index ["username"], name: "index_users_on_username", unique: true
  end

  add_foreign_key "features", "patients"
  add_foreign_key "notes", "patients"
  add_foreign_key "patients", "categories"
  add_foreign_key "q10s", "patients"
  add_foreign_key "q10s", "questions"
  add_foreign_key "q11s", "patients"
  add_foreign_key "q11s", "questions"
  add_foreign_key "q12s", "patients"
  add_foreign_key "q12s", "questions"
  add_foreign_key "q1s", "patients"
  add_foreign_key "q1s", "questions"
  add_foreign_key "q2s", "patients"
  add_foreign_key "q2s", "questions"
  add_foreign_key "q3s", "patients"
  add_foreign_key "q3s", "questions"
  add_foreign_key "q4s", "patients"
  add_foreign_key "q4s", "questions"
  add_foreign_key "q5s", "patients"
  add_foreign_key "q5s", "questions"
  add_foreign_key "q6s", "patients"
  add_foreign_key "q6s", "questions"
  add_foreign_key "q7s", "patients"
  add_foreign_key "q7s", "questions"
  add_foreign_key "q8s", "patients"
  add_foreign_key "q8s", "questions"
  add_foreign_key "q9s", "patients"
  add_foreign_key "q9s", "questions"
  add_foreign_key "questions", "patients"
end
