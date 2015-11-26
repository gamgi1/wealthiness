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

ActiveRecord::Schema.define(version: 20151124222526) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: :cascade do |t|
    t.integer  "age",                  null: false
    t.integer  "income",               null: false
    t.integer  "calories",             null: false
    t.boolean  "gamble",               null: false
    t.integer  "aerobic_hours",        null: false
    t.boolean  "audio_books",          null: false
    t.boolean  "to_do_list",           null: false
    t.boolean  "non_fiction_books",    null: false
    t.boolean  "service",              null: false
    t.boolean  "happy_birthday_calls", null: false
    t.boolean  "write_down_goals",     null: false
    t.integer  "daily_read",           null: false
    t.boolean  "speak_mind",           null: false
    t.integer  "network",              null: false
    t.boolean  "goal",                 null: false
    t.integer  "tv_hours",             null: false
    t.boolean  "reality_tv",           null: false
    t.integer  "hours_before_work",    null: false
    t.boolean  "teach_success",        null: false
    t.boolean  "opportunity",          null: false
    t.boolean  "detriment",            null: false
    t.boolean  "self_improve",         null: false
    t.boolean  "love_to_read",         null: false
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

end
