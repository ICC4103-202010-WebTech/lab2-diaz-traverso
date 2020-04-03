# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_04_03_044748) do

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone"
    t.string "password"
    t.string "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "event_informations", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.date "start_date"
    t.integer "event_venue_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["event_venue_id"], name: "index_event_informations_on_event_venue_id"
  end

  create_table "event_venues", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.integer "capacity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "ticket_orders", force: :cascade do |t|
    t.integer "ticket_type_id", null: false
    t.integer "customer_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["customer_id"], name: "index_ticket_orders_on_customer_id"
    t.index ["ticket_type_id"], name: "index_ticket_orders_on_ticket_type_id"
  end

  create_table "ticket_types", force: :cascade do |t|
    t.string "description"
    t.decimal "price"
    t.integer "event_information_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["event_information_id"], name: "index_ticket_types_on_event_information_id"
  end

  add_foreign_key "event_informations", "event_venues"
  add_foreign_key "ticket_orders", "customers"
  add_foreign_key "ticket_orders", "ticket_types"
  add_foreign_key "ticket_types", "event_informations"
end
