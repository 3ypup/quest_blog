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

ActiveRecord::Schema.define(version: 2021_05_25_084300) do

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
    t.string "op_prf"
  end

  create_table "units", force: :cascade do |t|
    t.text "name"
    t.integer "number"
    t.string "player"
    t.integer "quest_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "u_aligment"
    t.index ["quest_id"], name: "index_units_on_quest_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.integer "level", default: 1, null: false
    t.string "aligment", default: "grey", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
