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

ActiveRecord::Schema.define(version: 20150408012648) do

  create_table "actors", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "image"
    t.string   "bio"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "movies", force: :cascade do |t|
    t.string   "title"
    t.string   "image"
    t.string   "release_year"
    t.string   "plot"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "parts", force: :cascade do |t|
    t.integer  "movie_id"
    t.integer  "actor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["actor_id"], name: "index_parts_on_actor_id"
    t.index ["movie_id"], name: "index_parts_on_movie_id"
  end

end
