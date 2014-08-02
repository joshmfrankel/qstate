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

ActiveRecord::Schema.define(version: 20140802161546) do

  create_table "proposals", force: true do |t|
    t.string   "lead_presenter"
    t.string   "co_presenter"
    t.string   "email",                  limit: 75
    t.string   "school"
    t.string   "credentials"
    t.string   "presentation_type"
    t.string   "title"
    t.text     "summary"
    t.text     "abstract"
    t.text     "additional_information"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "registrations", force: true do |t|
    t.string   "name",                    limit: 50
    t.string   "email",                   limit: 75
    t.string   "school"
    t.boolean  "presenter"
    t.string   "allergies"
    t.string   "days_attending"
    t.boolean  "housing_needed"
    t.string   "animal_allergies"
    t.boolean  "smoking"
    t.string   "housing_residents"
    t.string   "housing_sleep_situation"
    t.text     "additional_information"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

end
