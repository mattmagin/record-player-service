# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2025_02_04_064543) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  # Custom types defined in this database.
  # Note that some types may not work with other database engines. Be careful if changing database.
  create_enum "record_type", ["track", "album", "artist", "playlist"]

  create_table "sonos_rooms", force: :cascade do |t|
    t.string "name"
  end

  create_table "spotify_records", force: :cascade do |t|
    t.string "uri"
    t.enum "record_type", null: false, enum_type: "record_type"
  end

  create_table "tags", force: :cascade do |t|
    t.string "tag_code"
    t.integer "identifier"
    t.bigint "spotify_record_id"
    t.index ["spotify_record_id"], name: "index_tags_on_spotify_record_id"
  end

  add_foreign_key "tags", "spotify_records"
end
