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

ActiveRecord::Schema[7.2].define(version: 2026_03_04_143250) do
  create_table "ensembles", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name", null: false
    t.string "website"
    t.string "email"
  end

  create_table "player_ensembles", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "player_id", null: false
    t.integer "ensemble_id", null: false
    t.text "note"
    t.index ["ensemble_id"], name: "index_player_ensembles_on_ensemble_id"
    t.index ["player_id"], name: "index_player_ensembles_on_player_id"
  end

  create_table "player_projects", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "player_id", null: false
    t.integer "project_id", null: false
    t.text "note"
    t.index ["player_id"], name: "index_player_projects_on_player_id"
    t.index ["project_id"], name: "index_player_projects_on_project_id"
  end

  create_table "players", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name", null: false
    t.string "main_instrument"
    t.string "email"
  end

  create_table "projects", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name", null: false
    t.integer "ensemble_id", null: false
    t.date "date", null: false
    t.string "place"
    t.index ["ensemble_id"], name: "index_projects_on_ensemble_id"
  end

  add_foreign_key "player_ensembles", "ensembles"
  add_foreign_key "player_ensembles", "players"
  add_foreign_key "player_projects", "players"
  add_foreign_key "player_projects", "projects"
  add_foreign_key "projects", "ensembles"
end
