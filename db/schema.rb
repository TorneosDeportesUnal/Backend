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

ActiveRecord::Schema.define(version: 20170505154304) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "availavilities", force: :cascade do |t|
    t.date     "day_of_week"
    t.datetime "begin_hour"
    t.datetime "end_hour"
    t.integer  "team_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["team_id"], name: "index_availavilities_on_team_id", using: :btree
  end

  create_table "groups", force: :cascade do |t|
    t.string   "name"
    t.integer  "winners_number"
    t.boolean  "active"
    t.integer  "tournament_phase_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["tournament_phase_id"], name: "index_groups_on_tournament_phase_id", using: :btree
  end

  create_table "matches", force: :cascade do |t|
    t.string   "game_field_location"
    t.datetime "date"
    t.string   "judges"
    t.string   "observation"
    t.string   "winner_team"
    t.string   "loser_team"
    t.integer  "group_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["group_id"], name: "index_matches_on_group_id", using: :btree
  end

  create_table "players", force: :cascade do |t|
    t.integer  "document"
    t.string   "document_type"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "gender"
    t.string   "semester"
    t.string   "career"
    t.integer  "age"
    t.integer  "contact_phone"
    t.integer  "contact_emergency_phone"
    t.string   "contact_emergency_name"
    t.string   "eps"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "team_groups", force: :cascade do |t|
    t.integer  "position_in_group"
    t.integer  "group_draw"
    t.integer  "group_wins"
    t.integer  "group_loses"
    t.integer  "group_id"
    t.integer  "team_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["group_id"], name: "index_team_groups_on_group_id", using: :btree
    t.index ["team_id"], name: "index_team_groups_on_team_id", using: :btree
  end

  create_table "team_matches", force: :cascade do |t|
    t.integer  "outcome"
    t.integer  "points_gained"
    t.integer  "goals"
    t.integer  "match_id"
    t.integer  "team_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["match_id"], name: "index_team_matches_on_match_id", using: :btree
    t.index ["team_id"], name: "index_team_matches_on_team_id", using: :btree
  end

  create_table "team_players", force: :cascade do |t|
    t.integer  "games_played"
    t.integer  "points_marked"
    t.integer  "assist"
    t.integer  "yellow_cards"
    t.integer  "red_cards"
    t.integer  "white_cards"
    t.integer  "player_id"
    t.integer  "team_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["player_id"], name: "index_team_players_on_player_id", using: :btree
    t.index ["team_id"], name: "index_team_players_on_team_id", using: :btree
  end

  create_table "teams", force: :cascade do |t|
    t.string   "name"
    t.string   "coach_name"
    t.string   "delegate"
    t.string   "captain"
    t.string   "uniform_color"
    t.integer  "goals_against"
    t.integer  "goals_in_favor"
    t.integer  "goals_difference"
    t.integer  "wins"
    t.integer  "loses"
    t.integer  "draws"
    t.boolean  "active"
    t.integer  "tournament_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["tournament_id"], name: "index_teams_on_tournament_id", using: :btree
  end

  create_table "tournament_phases", force: :cascade do |t|
    t.string   "phase_type"
    t.integer  "phase_number"
    t.boolean  "active"
    t.integer  "tournament_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["tournament_id"], name: "index_tournament_phases_on_tournament_id", using: :btree
  end

  create_table "tournaments", force: :cascade do |t|
    t.datetime "begin_date"
    t.datetime "end_date"
    t.string   "gender"
    t.string   "discipline"
    t.string   "name"
    t.boolean  "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "provider",               default: "email", null: false
    t.string   "uid",                    default: "",      null: false
    t.string   "encrypted_password",     default: "",      null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,       null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.string   "name"
    t.string   "nickname"
    t.string   "image"
    t.string   "email"
    t.json     "tokens"
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
    t.index ["uid", "provider"], name: "index_users_on_uid_and_provider", unique: true, using: :btree
  end

  add_foreign_key "availavilities", "teams"
  add_foreign_key "groups", "tournament_phases"
  add_foreign_key "matches", "groups"
  add_foreign_key "team_groups", "groups"
  add_foreign_key "team_groups", "teams"
  add_foreign_key "team_matches", "matches"
  add_foreign_key "team_matches", "teams"
  add_foreign_key "team_players", "players"
  add_foreign_key "team_players", "teams"
  add_foreign_key "teams", "tournaments"
  add_foreign_key "tournament_phases", "tournaments"
end