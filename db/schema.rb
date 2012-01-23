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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120123192328) do

  create_table "job_to_users", :force => true do |t|
    t.integer  "job_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "jobs", :force => true do |t|
    t.string   "job_name"
    t.string   "description"
    t.decimal  "quote",         :precision => 10, :scale => 0
    t.decimal  "running_total", :precision => 10, :scale => 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "phones", :force => true do |t|
    t.integer  "profile_id"
    t.integer  "phone_number"
    t.integer  "phone_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "profiles", :force => true do |t|
    t.integer  "user_id"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "address"
    t.string   "city"
    t.string   "country"
    t.string   "postal_code"
    t.string   "profile_pic"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "quote_audits", :force => true do |t|
    t.integer  "job_id"
    t.decimal  "old_quote",  :precision => 10, :scale => 0
    t.decimal  "new_quote",  :precision => 10, :scale => 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tasks", :force => true do |t|
    t.integer  "job_id"
    t.string   "task_name"
    t.string   "task_description"
    t.date     "task_completed"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "salt"
    t.string   "user_type"
    t.boolean  "first_log_on"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password"
  end

end
