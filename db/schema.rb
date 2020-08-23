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

ActiveRecord::Schema.define(version: 2020_08_23_144207) do

  create_table "insureds", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.integer "insured_number"
    t.integer "insured_key"
    t.integer "delivery_date"
    t.integer "expiration_date"
    t.string "burden"
    t.integer "insurer_number"
    t.bigint "userprofile_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["userprofile_id"], name: "index_insureds_on_userprofile_id"
  end

  create_table "userprofiles", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "name1", null: false
    t.string "name2", null: false
    t.integer "age"
    t.string "gender"
    t.string "blood_type"
    t.date "birthday"
    t.string "prefecture1"
    t.string "prefecture2"
    t.string "address1"
    t.string "address2"
    t.integer "phonenumber1"
    t.integer "phonenumber2"
    t.integer "phonenumber3"
    t.integer "phonenumber4"
    t.string "mail"
    t.string "business"
    t.integer "insured_id"
    t.text "remarks"
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_userprofiles_on_user_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["name"], name: "index_users_on_name", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "insureds", "userprofiles"
  add_foreign_key "userprofiles", "users"
end
