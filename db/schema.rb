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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20170717134736) do
=======
ActiveRecord::Schema.define(version: 20170717111106) do
>>>>>>> dev

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

<<<<<<< HEAD
  create_table "industries", force: :cascade do |t|
    t.string "name"
  end

  create_table "occupations", force: :cascade do |t|
    t.string "title"
=======
  create_table "customers", force: :cascade do |t|
    t.string "fname"
    t.string "lname"
    t.string "username"
    t.text "bio"
>>>>>>> dev
  end

end
