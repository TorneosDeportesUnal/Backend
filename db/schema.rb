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

ActiveRecord::Schema.define(version: 20170324080705) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "availabilities", force: :cascade do |t|
    t.integer  "team_id"
    t.integer  "day_of_week"
    t.time     "begin_hour"
    t.time     "end_hour"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["team_id"], name: "index_availabilities_on_team_id", using: :btree
  end

  create_table "game_fields", force: :cascade do |t|
    t.string   "location"
    t.string   "discipline"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "groups", force: :cascade do |t|
    t.integer  "tournament_phase_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["tournament_phase_id"], name: "index_groups_on_tournament_phase_id", using: :btree
  end

  create_table "matches", force: :cascade do |t|
    t.datetime "date"
    t.integer  "team_a_score"
    t.integer  "team_b_score"
    t.integer  "game_field_id"
    t.integer  "group_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["game_field_id"], name: "index_matches_on_game_field_id", using: :btree
    t.index ["group_id"], name: "index_matches_on_group_id", using: :btree
  end

  create_table "modalities", force: :cascade do |t|
    t.string   "discipline"
    t.string   "gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.integer  "contact_emergency_phone"
    t.string   "contact_emergency_name"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "team_groups", force: :cascade do |t|
    t.integer  "team_id"
    t.integer  "group_id"
    t.integer  "position_in_group"
    t.integer  "wins"
    t.integer  "loses"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["group_id"], name: "index_team_groups_on_group_id", using: :btree
    t.index ["team_id"], name: "index_team_groups_on_team_id", using: :btree
  end

  create_table "team_matches", force: :cascade do |t|
    t.integer  "team_id"
    t.integer  "match_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["match_id"], name: "index_team_matches_on_match_id", using: :btree
    t.index ["team_id"], name: "index_team_matches_on_team_id", using: :btree
  end

  create_table "team_players", force: :cascade do |t|
    t.integer  "team_id"
    t.integer  "player_id"
    t.integer  "games_played"
    t.integer  "points_marked"
    t.integer  "assists"
    t.integer  "faults"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["player_id"], name: "index_team_players_on_player_id", using: :btree
    t.index ["team_id"], name: "index_team_players_on_team_id", using: :btree
  end

  create_table "teams", force: :cascade do |t|
    t.string   "name"
    t.string   "coach_name"
    t.integer  "tournament_id"
    t.integer  "modality_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["modality_id"], name: "index_teams_on_modality_id", using: :btree
    t.index ["tournament_id"], name: "index_teams_on_tournament_id", using: :btree
  end

  create_table "tournament_phases", force: :cascade do |t|
    t.string   "phase_type"
    t.integer  "tournament_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["tournament_id"], name: "index_tournament_phases_on_tournament_id", using: :btree
  end

  create_table "tournaments", force: :cascade do |t|
    t.date     "begin_date"
    t.date     "end_date"
    t.text     "prize"
    t.integer  "modality_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["modality_id"], name: "index_tournaments_on_modality_id", using: :btree
  end

end
