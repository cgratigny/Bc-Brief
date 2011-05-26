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

ActiveRecord::Schema.define(:version => 20110525041719) do

  create_table "cache_updates", :force => true do |t|
    t.string   "username"
    t.datetime "updated"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "companies", :force => true do |t|
    t.string   "name"
    t.integer  "project_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "milestones", :force => true do |t|
    t.string   "completed"
    t.string   "title"
    t.datetime "deadline"
    t.string   "responsible_party_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "project_id"
  end

  create_table "projects", :force => true do |t|
    t.string   "name"
    t.text     "overview"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "bc_id"
    t.text     "announcement"
  end

  create_table "updates", :force => true do |t|
    t.string   "table"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
