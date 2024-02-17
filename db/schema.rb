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

ActiveRecord::Schema[7.1].define(version: 2024_02_17_222459) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "notable_jobs", force: :cascade do |t|
    t.string "note_type"
    t.text "note"
    t.text "job"
    t.string "job_id"
    t.string "queue"
    t.float "runtime"
    t.float "queued_time"
    t.datetime "created_at"
  end

  create_table "notable_requests", force: :cascade do |t|
    t.string "note_type"
    t.text "note"
    t.string "user_type"
    t.bigint "user_id"
    t.text "action"
    t.integer "status"
    t.text "url"
    t.string "request_id"
    t.string "ip"
    t.text "user_agent"
    t.text "referrer"
    t.text "params"
    t.float "request_time"
    t.datetime "created_at"
    t.index ["user_type", "user_id"], name: "index_notable_requests_on_user"
  end

end
