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

ActiveRecord::Schema.define(version: 2020_01_31_121717) do

  create_table "cron_runs", primary_key: ["id", "cron_id"], options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPRESSED", force: :cascade do |t|
    t.integer "id", null: false, unsigned: true, auto_increment: true
    t.integer "cron_id", null: false
    t.datetime "start_time", null: false
    t.datetime "end_time"
    t.integer "alert"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float "run_time"
  end

  create_table "crons", primary_key: ["id", "name"], options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPRESSED", force: :cascade do |t|
    t.integer "id", null: false, unsigned: true, auto_increment: true
    t.string "name", limit: 50, null: false
    t.integer "exec_time", null: false
    t.integer "ping_freq", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean "active"
    t.integer "tenant_id"
  end

  create_table "subscribers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "name"
    t.string "slack_id"
    t.string "email_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "subscriptions", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.bigint "subscriber_id"
    t.bigint "cron_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cron_id"], name: "index_subscriptions_on_cron_id"
    t.index ["subscriber_id"], name: "index_subscriptions_on_subscriber_id"
  end

  create_table "tenants", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
