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

ActiveRecord::Schema.define(version: 20150611022309) do

  create_table "comments", force: :cascade do |t|
    t.text     "content"
    t.integer  "category_id"
    t.integer  "school_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "name"
    t.string   "email"
    t.string   "attendedgrade"
    t.integer  "startgrade"
    t.string   "englishfirst"
    t.string   "attitudejap"
    t.string   "attitudeclass"
    t.string   "attitude"
    t.string   "teacherliked"
    t.string   "teachersupport"
    t.string   "teaching"
    t.string   "teacherjap"
    t.integer  "attendedyears"
    t.text     "userdetail"
  end

  add_index "comments", ["school_id"], name: "index_comments_on_school_id"

  create_table "school_users", force: :cascade do |t|
    t.integer  "school_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "schools", force: :cascade do |t|
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.text     "name"
    t.text     "location"
    t.boolean  "kindergarten"
    t.boolean  "primary"
    t.boolean  "middle"
    t.boolean  "high"
    t.boolean  "program"
    t.boolean  "boarding"
    t.text     "educationalprogram"
    t.text     "eng_name"
    t.string   "eng_location"
    t.text     "eng_program"
    t.text     "hp"
    t.boolean  "japan"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",             null: false
    t.string   "crypted_password"
    t.string   "salt"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "school_id_id"
    t.string   "name"
    t.string   "screen_name"
    t.string   "residence_country"
    t.string   "region"
    t.string   "school"
    t.string   "school2"
    t.text     "program"
    t.text     "bio"
    t.string   "schoolname"
    t.integer  "childage"
    t.text     "schoolinfo"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["school_id_id"], name: "index_users_on_school_id_id"

end
