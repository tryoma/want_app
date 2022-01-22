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

ActiveRecord::Schema.define(version: 2022_01_22_021518) do

  create_table "dids", force: :cascade do |t|
    t.integer "want_id"
    t.string "title"
    t.integer "category"
    t.boolean "active"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["want_id"], name: "index_dids_on_want_id"
  end

  create_table "related_informations", force: :cascade do |t|
    t.integer "want_id"
    t.string "title"
    t.string "detail"
    t.boolean "active"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["want_id"], name: "index_related_informations_on_want_id"
  end

  create_table "schedules", force: :cascade do |t|
    t.integer "want_id"
    t.string "title"
    t.integer "order"
    t.boolean "active"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["want_id"], name: "index_schedules_on_want_id"
  end

  create_table "todos", force: :cascade do |t|
    t.integer "schedule_id"
    t.string "title"
    t.string "detail"
    t.boolean "active"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["schedule_id"], name: "index_todos_on_schedule_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "uid"
    t.string "icon"
    t.boolean "admin"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "wants", force: :cascade do |t|
    t.integer "user_id"
    t.string "title"
    t.boolean "complete"
    t.boolean "active"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_wants_on_user_id"
  end

end
