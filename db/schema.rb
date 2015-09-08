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

ActiveRecord::Schema.define(version: 20150908000740) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "costume_variant_images", force: :cascade do |t|
    t.string   "file"
    t.string   "description"
    t.integer  "costume_variant_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "costume_variant_images", ["costume_variant_id"], name: "index_costume_variant_images_on_costume_variant_id", using: :btree

  create_table "costume_variants", force: :cascade do |t|
    t.integer  "costume_id"
    t.string   "name"
    t.string   "gender"
    t.boolean  "open"
    t.boolean  "sold_out"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "price_cents"
  end

  add_index "costume_variants", ["costume_id"], name: "index_costume_variants_on_costume_id", using: :btree

  create_table "costumes", force: :cascade do |t|
    t.integer  "section_id"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "image"
  end

  add_index "costumes", ["section_id"], name: "index_costumes_on_section_id", using: :btree

  create_table "sections", force: :cascade do |t|
    t.string   "section_name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "image"
  end

end
