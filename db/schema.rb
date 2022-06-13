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

ActiveRecord::Schema.define(version: 2022_06_13_170849) do

  create_table "patientenverfuegungs", force: :cascade do |t|
    t.boolean "apallisch"
    t.boolean "krankenhaus"
    t.boolean "reanimation"
    t.boolean "lockedin"
    t.boolean "maligner"
    t.boolean "demenz"
    t.boolean "sterbeprozess"
    t.boolean "palliativ"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_patientenverfuegungs_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "birthdate"
    t.string "email"
    t.string "city"
    t.integer "plz"
    t.string "password"
    t.string "street"
    t.string "country"
    t.date "date_of_birth"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "patientenverfuegungs", "users"
end
