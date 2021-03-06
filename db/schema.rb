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

ActiveRecord::Schema.define(version: 2018_10_25_012938) do

  create_table "assignments", force: :cascade do |t|
    t.string "operation_code"
    t.integer "soldier_id"
    t.integer "planet_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["planet_id"], name: "index_assignments_on_planet_id"
    t.index ["soldier_id"], name: "index_assignments_on_soldier_id"
  end

  create_table "planets", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "soldiers", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.integer "squadron_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["squadron_id"], name: "index_soldiers_on_squadron_id"
  end

  create_table "squadrons", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
