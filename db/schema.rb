# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2023_10_29_195343) do
  create_table "exercice_attribute_values", force: :cascade do |t|
    t.integer "exercice_attribute_id", null: false
    t.string "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["exercice_attribute_id"], name: "index_exercice_attribute_values_on_exercice_attribute_id"
  end

  create_table "exercice_attributes", force: :cascade do |t|
    t.string "description"
    t.boolean "visible"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "exercice_link_attributes", force: :cascade do |t|
    t.integer "exercice_id", null: false
    t.integer "exercice_attribute_id", null: false
    t.integer "exercice_attribute_value_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["exercice_attribute_id"], name: "index_exercice_link_attributes_on_exercice_attribute_id"
    t.index ["exercice_attribute_value_id"], name: "index_exercice_link_attributes_on_exercice_attribute_value_id"
    t.index ["exercice_id"], name: "index_exercice_link_attributes_on_exercice_id"
  end

  create_table "exercice_types", force: :cascade do |t|
    t.string "name"
    t.string "instruction"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "exercices", force: :cascade do |t|
    t.integer "exercice_type_id", null: false
    t.string "name"
    t.string "prompt"
    t.string "distractor_1"
    t.string "distractor_2"
    t.string "distractor_3"
    t.string "answer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["exercice_type_id"], name: "index_exercices_on_exercice_type_id"
  end

  add_foreign_key "exercice_attribute_values", "exercice_attributes"
  add_foreign_key "exercice_link_attributes", "exercice_attribute_values"
  add_foreign_key "exercice_link_attributes", "exercice_attributes"
  add_foreign_key "exercice_link_attributes", "exercices"
  add_foreign_key "exercices", "exercice_types"
end
