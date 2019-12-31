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

ActiveRecord::Schema.define(version: 2019_12_30_061815) do

  create_table "abilities", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.integer "experience", null: false
    t.string "dominant", null: false
    t.integer "serve", null: false
    t.integer "return", null: false
    t.integer "stroke", null: false
    t.integer "footwork", null: false
    t.integer "mental", null: false
    t.integer "average", null: false
    t.integer "total", null: false
    t.integer "communication", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_abilities_on_user_id"
  end

  create_table "likes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "post_id", null: false
    t.index ["post_id"], name: "index_likes_on_post_id"
    t.index ["user_id"], name: "index_likes_on_user_id"
  end

  create_table "participants", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "post_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_participants_on_post_id"
    t.index ["user_id"], name: "index_participants_on_user_id"
  end

  create_table "posts", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "title", null: false
    t.string "place", null: false
    t.string "venue", null: false
    t.string "address", null: false
    t.date "date", null: false
    t.time "start_time", null: false
    t.time "end_time", null: false
    t.date "deadline_date", null: false
    t.time "deadline_time", null: false
    t.text "explanation", null: false
    t.integer "cost"
    t.integer "recruit", null: false
    t.integer "average"
    t.integer "total"
    t.integer "communication"
    t.integer "age"
    t.string "sex"
    t.string "dominant"
    t.bigint "user_id", null: false
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["title"], name: "index_posts_on_title"
    t.index ["user_id"], name: "index_posts_on_user_id"
  end

  create_table "posts_tags", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "tag_id", null: false
    t.index ["tag_id"], name: "index_posts_tags_on_tag_id"
    t.index ["user_id"], name: "index_posts_tags_on_user_id"
  end

  create_table "reputations", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "rater_id", null: false
    t.bigint "target_id", null: false
    t.integer "rate", null: false
    t.text "comment", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["rater_id"], name: "index_reputations_on_rater_id"
    t.index ["target_id"], name: "index_reputations_on_target_id"
  end

  create_table "tags", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nickname", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "image_url", null: false
    t.text "profile"
    t.string "family_name", null: false
    t.string "first_name", null: false
    t.string "sex", null: false
    t.integer "age", null: false
    t.string "address", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "abilities", "users"
  add_foreign_key "likes", "posts"
  add_foreign_key "likes", "users"
  add_foreign_key "participants", "posts"
  add_foreign_key "participants", "users"
  add_foreign_key "posts", "users"
  add_foreign_key "posts_tags", "tags"
  add_foreign_key "posts_tags", "users"
  add_foreign_key "reputations", "users", column: "rater_id"
  add_foreign_key "reputations", "users", column: "target_id"
end
