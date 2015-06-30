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

ActiveRecord::Schema.define(version: 20150629235222) do

  create_table "components", force: :cascade do |t|
    t.text     "name"
    t.integer  "task_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.text     "name"
    t.text     "email"
    t.text     "phone"
    t.integer  "vendor_id"
    t.integer  "tenant_id"
    t.integer  "sponsor_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.text     "contact_type"
  end

  create_table "credentials", force: :cascade do |t|
    t.text     "name"
    t.text     "username"
    t.text     "password"
    t.text     "basedir"
    t.integer  "transfer_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "dts", force: :cascade do |t|
    t.text     "document_name"
    t.text     "version"
    t.date     "go_live_date"
    t.integer  "transfer_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "log_records", force: :cascade do |t|
    t.text     "log_file"
    t.integer  "success_code"
    t.text     "attachment"
    t.datetime "task_start_time"
    t.datetime "task_end_time"
    t.integer  "task_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "notes", force: :cascade do |t|
    t.text     "note_text"
    t.integer  "tenant_id"
    t.integer  "vendor_id"
    t.integer  "transfer_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "sponsors", force: :cascade do |t|
    t.text     "sponsor_name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.text     "task_name"
    t.text     "command_line"
    t.integer  "tenant_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "tenants", force: :cascade do |t|
    t.text     "tenant_name"
    t.text     "protocol"
    t.integer  "sponsor_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "transfers", force: :cascade do |t|
    t.text     "name"
    t.text     "date_type"
    t.integer  "sponsor_id"
    t.integer  "vendor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
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
    t.text     "permisssion_level"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "vendors", force: :cascade do |t|
    t.text     "vendor_name"
    t.integer  "transfer_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
