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

ActiveRecord::Schema.define(version: 20170409094832) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "descriptions", force: :cascade do |t|
    t.integer  "film_id"
    t.text     "description"
    t.string   "keywords"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["film_id"], name: "index_descriptions_on_film_id", using: :btree
  end

  create_table "film_companies", force: :cascade do |t|
    t.string   "name"
    t.string   "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "films", force: :cascade do |t|
    t.string   "name"
    t.integer  "year"
    t.string   "director"
    t.integer  "film_company_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["film_company_id"], name: "index_films_on_film_company_id", using: :btree
  end

  add_foreign_key "descriptions", "films"
  add_foreign_key "films", "film_companies"
end
