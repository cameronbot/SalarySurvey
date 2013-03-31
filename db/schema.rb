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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130331040030) do

  create_table "entries", :force => true do |t|
    t.string   "city"
    t.decimal  "initial_offer",           :precision => 8,  :scale => 2
    t.decimal  "negotiated_offer",        :precision => 8,  :scale => 2
    t.decimal  "signing_bonus",           :precision => 8,  :scale => 2
    t.integer  "months_since_last_round"
    t.integer  "years_experience"
    t.boolean  "equity"
    t.text     "notes"
    t.date     "date"
    t.datetime "created_at",                                             :null => false
    t.datetime "updated_at",                                             :null => false
    t.decimal  "lat",                     :precision => 10, :scale => 6
    t.decimal  "lng",                     :precision => 10, :scale => 6
  end

end
