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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110725014200) do

  create_table "followings", :force => true do |t|
    t.integer  "followed_person_id"
    t.integer  "follower_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "followings", ["followed_person_id"], :name => "index_followings_on_followed_person_id"
  add_index "followings", ["follower_id"], :name => "index_followings_on_follower_id"

  create_table "languages", :force => true do |t|
    t.string   "code"
    t.string   "english_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "people", :force => true do |t|
    t.string   "name"
    t.integer  "language_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "people", ["language_id"], :name => "index_people_on_language_id"

  create_table "tweets", :force => true do |t|
    t.string   "message"
    t.integer  "person_id"
    t.integer  "language_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tweets", ["language_id"], :name => "index_tweets_on_language_id"
  add_index "tweets", ["person_id"], :name => "index_tweets_on_person_id"

end
