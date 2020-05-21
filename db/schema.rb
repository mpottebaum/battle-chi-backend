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

ActiveRecord::Schema.define(version: 2020_05_21_204941) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "battle_fronts", force: :cascade do |t|
    t.integer "battle_id"
    t.integer "player_id"
    t.integer "result"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "battles", force: :cascade do |t|
    t.integer "attack_neighborhood_id"
    t.integer "attack_militia"
    t.integer "defense_neighborhood_id"
    t.integer "defense_militia"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "attack_player_id"
    t.integer "defense_player_id"
    t.integer "game_id"
    t.boolean "active", default: true
  end

  create_table "borders", force: :cascade do |t|
    t.integer "neighborhood_id"
    t.integer "adjacent_neighborhood_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "cards", force: :cascade do |t|
    t.integer "neighborhood_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "fighter_type"
  end

  create_table "games", force: :cascade do |t|
    t.integer "num_players"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "turn_num", default: 1
    t.integer "turn_stage", default: 0
    t.integer "turn_order_num", default: 1
    t.boolean "setup", default: true
    t.integer "card_sets", default: 0
  end

  create_table "militia", force: :cascade do |t|
    t.integer "player_id"
    t.integer "neighborhood_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "neighborhoods", force: :cascade do |t|
    t.integer "zone_id"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "place_militia", force: :cascade do |t|
    t.integer "player_id"
    t.integer "num_militia"
    t.integer "militia_placed"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "player_cards", force: :cascade do |t|
    t.integer "player_id"
    t.integer "card_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "traded", default: false
  end

  create_table "players", force: :cascade do |t|
    t.integer "game_id"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "turn_order_num"
    t.boolean "draw_card", default: false
  end

  create_table "zones", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "num_militia"
  end

end
