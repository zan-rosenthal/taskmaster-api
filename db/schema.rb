# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_09_16_115511) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "job_tasks", force: :cascade do |t|
    t.bigint "task_id"
    t.bigint "container_id"
    t.string "container_type"
    t.index ["task_id"], name: "index_job_tasks_on_task_id"
  end

  create_table "jobs", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.bigint "container_id"
    t.string "task_type", null: false
    t.jsonb "data"
    t.string "title", null: false
    t.string "prompt"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["container_id"], name: "index_tasks_on_container_id"
  end

end
