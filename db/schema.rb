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

ActiveRecord::Schema.define(version: 2020_01_24_234241) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "menu_items", force: :cascade do |t|
    t.string "name"
    t.text "link"
    t.integer "sort"
    t.bigint "menu_id", null: false
    t.bigint "submenu_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["menu_id"], name: "index_menu_items_on_menu_id"
    t.index ["submenu_id"], name: "index_menu_items_on_submenu_id"
  end

  create_table "menus", force: :cascade do |t|
    t.string "name"
    t.integer "sort"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "submenus", force: :cascade do |t|
    t.string "name"
    t.integer "sort"
    t.bigint "menu_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["menu_id"], name: "index_submenus_on_menu_id"
  end

  add_foreign_key "menu_items", "menus"
  add_foreign_key "menu_items", "submenus"
  add_foreign_key "submenus", "menus"
end
