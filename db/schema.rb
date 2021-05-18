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

ActiveRecord::Schema.define(version: 2021_04_30_060223) do

  create_table "clists", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "players", force: :cascade do |t|
    t.integer "number"
    t.string "name"
    t.integer "gold"
    t.integer "good_quests_done"
    t.integer "bad_quests_done"
    t.string "quests_done_list"
    t.integer "points"
    t.string "profession"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "quests", force: :cascade do |t|
    t.integer "number"
    t.string "name"
    t.string "short_discription"
    t.string "description"
    t.string "difficulty"
    t.string "status"
    t.string "aligment"
    t.integer "quantity"
    t.text "player"
    t.string "requirements"
    t.string "reward"
    t.string "penalty"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "have_opposite"
    t.string "opposite_description"
    t.string "opposite_requirements"
    t.string "opposite_reward"
    t.string "opposite_players"
    t.string "opposite_aligment"
    t.integer "soldier"
    t.integer "missioner"
    t.integer "doctor"
    t.integer "cook"
    t.integer "seeman"
    t.integer "carpenter"
    t.integer "parlamenteer"
    t.integer "korrehidor"
    t.integer "trader"
    t.integer "maper"
    t.integer "op_soldier"
    t.integer "op_missioner"
    t.integer "op_doctor"
    t.integer "op_cook"
    t.integer "op_seeman"
    t.integer "op_carpenter"
    t.integer "op_parlamenteer"
    t.integer "op_korrehidor"
    t.integer "op_trader"
    t.integer "op_maper"
  end

end
