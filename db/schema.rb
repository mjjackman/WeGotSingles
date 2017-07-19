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

ActiveRecord::Schema.define(version: 20170719155549) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customer_languages", force: :cascade do |t|
    t.bigint "customer_id"
    t.bigint "language_id"
    t.index ["customer_id"], name: "index_customer_languages_on_customer_id"
    t.index ["language_id"], name: "index_customer_languages_on_language_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "fname"
    t.string "lname"
    t.string "username"
    t.text "bio"
    t.integer "religion_id"
    t.boolean "smoker"
    t.boolean "drinker"
    t.integer "education_level"
    t.integer "industry_id"
    t.integer "occupation_id"
    t.string "gender"
  end

  create_table "galleries", force: :cascade do |t|
    t.string "name"
    t.integer "customer_id"
  end

  create_table "images", force: :cascade do |t|
    t.string "image"
    t.integer "gallery_id"
    t.boolean "set_profile"
  end

  create_table "industries", force: :cascade do |t|
    t.string "name"
  end

  create_table "languages", force: :cascade do |t|
    t.string "name"
  end

  create_table "occupations", force: :cascade do |t|
    t.string "title"
    t.integer "industry_id"
  end

  create_table "religions", force: :cascade do |t|
    t.string "name"
  end

end
