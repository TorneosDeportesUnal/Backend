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

ActiveRecord::Schema.define(version: 20170324095726) do

  create_table "availavilities", force: :cascade do |t|
    t.string   "day_of_week"
    t.string   "begin_hour"
    t.string   "end_hour"
    t.integer  "team_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["team_id"], name: "index_availavilities_on_team_id"
  end

  create_table "gamefields", force: :cascade do |t|
    t.string   "location"
    t.string   "discipline"
    t.integer  "match_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["match_id"], name: "index_gamefields_on_match_id"
  end

  create_table "group_teams", force: :cascade do |t|
    t.integer  "position_in_group"
    t.integer  "wins"
    t.integer  "loses"
    t.integer  "group_id"
    t.integer  "team_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["group_id"], name: "index_group_teams_on_group_id"
    t.index ["team_id"], name: "index_group_teams_on_team_id"
  end

  create_table "groups", force: :cascade do |t|
    t.integer  "tournament_phase_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["tournament_phase_id"], name: "index_groups_on_tournament_phase_id"
  end

  create_table "match_teams", force: :cascade do |t|
    t.integer  "match_id"
    t.integer  "team_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["match_id"], name: "index_match_teams_on_match_id"
    t.index ["team_id"], name: "index_match_teams_on_team_id"
  end

  create_table "matches", force: :cascade do |t|
    t.string   "date"
    t.integer  "result"
    t.integer  "id_team_winner"
    t.integer  "group_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["group_id"], name: "index_matches_on_group_id"
  end

  create_table "modalities", force: :cascade do |t|
    t.string   "discipline"
    t.string   "gender"
    t.integer  "tournament_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["tournament_id"], name: "index_modalities_on_tournament_id"
  end

  create_table "players", force: :cascade do |t|
    t.integer  "document"
    t.string   "document_type"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "gender"
    t.integer  "age"
    t.integer  "contact_phone"
    t.string   "eps"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "team_players", force: :cascade do |t|
    t.integer  "games_played"
    t.integer  "points_market"
    t.integer  "assist"
    t.integer  "faults"
    t.integer  "player_id"
    t.integer  "team_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["player_id"], name: "index_team_players_on_player_id"
    t.index ["team_id"], name: "index_team_players_on_team_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string   "name"
    t.string   "coach_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tournament_phases", force: :cascade do |t|
    t.string   "phase_type"
    t.integer  "tournament_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["tournament_id"], name: "index_tournament_phases_on_tournament_id"
  end

  create_table "tournaments", force: :cascade do |t|
    t.string   "begin_date"
    t.string   "end_date"
    t.string   "semester"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
