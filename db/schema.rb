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

ActiveRecord::Schema.define(version: 2019_02_16_211404) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "blocks", force: :cascade do |t|
    t.integer "area", default: 0, null: false
    t.integer "floor", default: 0, null: false
    t.bigint "buildings_id"
    t.index ["buildings_id"], name: "index_blocks_on_buildings_id"
  end

  create_table "buildings", force: :cascade do |t|
    t.string "class", null: false
    t.string "street", null: false
    t.string "house_number", null: false
    t.integer "floors", default: 0, null: false
  end

  create_table "offers", force: :cascade do |t|
    t.string "offer_type", default: "sale", null: false
    t.bigint "blocks_id"
    t.index ["blocks_id"], name: "index_offers_on_blocks_id"
  end

  create_table "prices", force: :cascade do |t|
    t.bigint "value", default: 0, null: false
    t.integer "currency", default: 0, null: false
    t.bigint "offers_id"
    t.index ["offers_id"], name: "index_prices_on_offers_id"
  end

end
