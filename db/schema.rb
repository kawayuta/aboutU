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

ActiveRecord::Schema.define(version: 20170303182606) do

  create_table "abouts", force: :cascade do |t|
    t.integer  "my_id"
    t.integer  "user_id"
    t.integer  "about_id",   default: 0
    t.boolean  "poll_check", default: false, null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "follows", force: :cascade do |t|
    t.string   "follower_type"
    t.integer  "follower_id"
    t.string   "followable_type"
    t.integer  "followable_id"
    t.datetime "created_at"
    t.index ["followable_id", "followable_type"], name: "fk_followables"
    t.index ["follower_id", "follower_type"], name: "fk_follows"
  end

  create_table "friends", force: :cascade do |t|
    t.string   "my_user_id"
    t.string   "friend_name"
    t.string   "friend_name_u"
    t.boolean  "friend_check"
    t.string   "friend_id"
    t.string   "friend_avatar"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "homes", force: :cascade do |t|
    t.string   "home_item_name"
    t.integer  "home_item_number"
    t.string   "home_item_request_teacher"
    t.string   "home_item_request_assistant"
    t.integer  "home_item_days"
    t.string   "home_item_days_start"
    t.string   "home_item_days_end"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "created_by"
    t.integer  "updated_by"
  end

  create_table "items", force: :cascade do |t|
    t.string   "item_name"
    t.integer  "item_number"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.integer  "created_by"
    t.integer  "updated_by"
    t.integer  "item_active_number", default: 0
  end

  create_table "likes", force: :cascade do |t|
    t.string   "liker_type"
    t.integer  "liker_id"
    t.string   "likeable_type"
    t.integer  "likeable_id"
    t.datetime "created_at"
    t.index ["likeable_id", "likeable_type"], name: "fk_likeables"
    t.index ["liker_id", "liker_type"], name: "fk_likes"
  end

  create_table "mentions", force: :cascade do |t|
    t.string   "mentioner_type"
    t.integer  "mentioner_id"
    t.string   "mentionable_type"
    t.integer  "mentionable_id"
    t.datetime "created_at"
    t.index ["mentionable_id", "mentionable_type"], name: "fk_mentionables"
    t.index ["mentioner_id", "mentioner_type"], name: "fk_mentions"
  end

  create_table "sessions", force: :cascade do |t|
    t.string   "session_id", null: false
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["session_id"], name: "index_sessions_on_session_id", unique: true
    t.index ["updated_at"], name: "index_sessions_on_updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.text     "lovemessage"
    t.string   "line"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "followees_count",        default: 0
    t.integer  "followers_count",        default: 0
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "username"
    t.string   "provider"
    t.string   "uid"
    t.string   "token"
    t.string   "secret"
    t.string   "avatar"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
