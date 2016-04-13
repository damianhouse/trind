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

ActiveRecord::Schema.define(version: 20160412232835) do

  create_table "conversations", force: :cascade do |t|
    t.integer  "event_id"
    t.integer  "sender_id"
    t.integer  "recipient_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "events", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "searcher_id"
    t.text     "interests"
    t.text     "description"
    t.text     "location"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "title"
    t.boolean  "posterinterested"
    t.boolean  "searcherinterested"
  end

  create_table "messages", force: :cascade do |t|
    t.integer  "conversation_id"
    t.integer  "author"
    t.text     "body"
    t.boolean  "viewed",          default: false
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.date     "born_on"
    t.text     "summary"
    t.text     "photo_url"
    t.integer  "thumbs_up"
    t.integer  "thumbs_down"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "token"
    t.integer  "uid",             limit: 8
  end

end
