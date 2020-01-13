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

ActiveRecord::Schema.define(version: 20191107134956) do

  create_table "accident_attachments", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "truck_accident_id"
    t.string "image"
    t.string "title"
  end

  create_table "accident_contacts", force: :cascade do |t|
    t.string "company"
    t.string "contact_name"
    t.date "contact_date"
    t.time "contact_time"
    t.string "contact_type"
    t.text "contact_details"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "truck_accident_id"
    t.string "employee"
  end

  create_table "accident_videos", force: :cascade do |t|
    t.integer "truck_accident_id"
    t.string "video"
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "finance_attachments", force: :cascade do |t|
    t.integer "truck_finance_id"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title"
  end

  create_table "finance_documents", force: :cascade do |t|
    t.integer "truck_finance_id"
    t.string "document"
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "logistic_attachments", force: :cascade do |t|
    t.integer "truck_logistic_id"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title"
  end

  create_table "maintenance_contacts", force: :cascade do |t|
    t.string "company"
    t.string "contact_name"
    t.date "contact_date"
    t.time "contact_time"
    t.string "contact_type"
    t.text "contact_details"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "truck_maintenance_id"
    t.string "employee"
  end

  create_table "maintenance_schedules", force: :cascade do |t|
    t.integer "truck_maintenance_id"
    t.date "scheduled_date"
    t.date "actual_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "mileage"
    t.string "maint_type"
    t.date "service_in"
    t.date "service_out"
  end

  create_table "repair_attachments", force: :cascade do |t|
    t.integer "truck_repair_id"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title"
  end

  create_table "repair_contacts", force: :cascade do |t|
    t.integer "truck_repair_id"
    t.string "employee"
    t.string "company"
    t.string "contact_name"
    t.date "contact_date"
    t.time "contact_time"
    t.string "contact_type"
    t.text "contact_details"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "truck_accidents", force: :cascade do |t|
    t.integer "truck_id"
    t.date "accident_date"
    t.string "driver"
    t.boolean "claim"
    t.string "location"
    t.time "accident_time"
    t.text "accident_detail"
    t.boolean "injury"
    t.boolean "dot_recordable"
    t.boolean "towed"
    t.boolean "report_filed"
    t.decimal "damage_estimate"
    t.decimal "costs"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "claim_number"
    t.string "route"
    t.date "claim_date"
    t.string "claim_status"
    t.date "close_date"
    t.string "user_id"
    t.decimal "recovery_amt"
    t.decimal "reserve_amt"
    t.date "reserve_date"
    t.boolean "accident_complete"
    t.date "complete_date"
    t.date "incomplete_date"
  end

  create_table "truck_attachments", force: :cascade do |t|
    t.integer "truck_id"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_type"
  end

  create_table "truck_finances", force: :cascade do |t|
    t.decimal "flat_rate"
    t.decimal "mile_rate"
    t.date "ins_expires"
    t.string "wexcard"
    t.string "ez_pass"
    t.string "contract_type"
    t.date "contract_start"
    t.date "contract_end"
    t.string "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "truck_id"
    t.date "wex_start"
    t.date "wex_end"
    t.boolean "page_complete"
    t.date "complete_date"
    t.date "incomplete_date"
    t.date "wexcard_return"
    t.date "ezpass_return"
    t.date "insurance_cancelled"
    t.boolean "decommissioned"
    t.date "ezstart"
    t.date "ezend"
  end

  create_table "truck_its", force: :cascade do |t|
    t.string "video_status"
    t.string "temp_status"
    t.boolean "camera1"
    t.boolean "camera2"
    t.boolean "camera3"
    t.boolean "dvr"
    t.date "install"
    t.string "install_company"
    t.text "notes"
    t.boolean "temp_verified"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "truck_id"
    t.string "user_id"
    t.boolean "page_complete"
    t.date "complete_date"
    t.date "incomplete_date"
    t.boolean "decommissioned"
    t.date "equipment_removed"
    t.boolean "tablet"
  end

  create_table "truck_logistics", force: :cascade do |t|
    t.date "reg_expires"
    t.string "pre_pass"
    t.string "service_type"
    t.date "hut_expires"
    t.date "ifta_expires"
    t.date "medallion_expires"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "user_id"
    t.integer "truck_id"
    t.date "roadnet"
    t.boolean "page_complete"
    t.date "complete_date"
    t.date "incomplete_date"
    t.date "out_roadnet"
    t.date "out_pre_pass"
    t.boolean "decommissioned"
  end

  create_table "truck_logs", force: :cascade do |t|
    t.string "video_status"
    t.string "temp_status"
    t.boolean "camera1"
    t.boolean "camera2"
    t.boolean "camera3"
    t.boolean "dvr"
    t.date "acquired"
    t.date "disposed"
    t.date "install"
    t.date "deinstall"
    t.string "install_company"
    t.string "location"
    t.text "notes"
    t.string "vehicle_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "truck_id"
    t.integer "vehicle_year"
    t.string "make_model"
    t.string "vin"
    t.string "license"
    t.decimal "flat_rate"
    t.decimal "mile_rate"
    t.string "registered_to"
    t.date "lease_end"
    t.string "truck_number"
    t.decimal "truck_length"
    t.date "reg_expires"
    t.date "ins_expires"
    t.string "wexcard"
    t.string "ez_pass"
    t.string "pre_pass"
    t.boolean "temp_verified"
    t.string "contract_type"
    t.date "contract_start"
    t.date "contract_end"
    t.string "service_type"
    t.integer "start_mileage"
    t.date "hut_expires"
    t.date "ifta_expires"
    t.date "medalion_expires"
  end

  create_table "truck_maintenances", force: :cascade do |t|
    t.integer "truck_id"
    t.date "service_in"
    t.date "service_out"
    t.boolean "service_status"
    t.string "out_reason"
    t.date "maint_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "user_id"
  end

  create_table "truck_repairs", force: :cascade do |t|
    t.integer "truck_id"
    t.date "service_in"
    t.date "service_out"
    t.boolean "service_status"
    t.string "out_reason"
    t.date "maint_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "repair_estimate"
    t.decimal "costs"
    t.string "repair_type"
    t.string "user_id"
  end

  create_table "trucks", force: :cascade do |t|
    t.date "disposed"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "vehicle_type"
    t.integer "vehicle_year"
    t.string "make_model"
    t.string "vin"
    t.string "license"
    t.string "registered_to"
    t.string "truck_number"
    t.integer "truck_id"
    t.integer "start_mileage"
    t.string "user_id"
    t.boolean "truck_active"
    t.date "active_date"
    t.date "inactive_date"
    t.boolean "start_decommission"
    t.boolean "decommission_complete"
    t.string "notes"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "user_dept"
    t.boolean "dept_manager"
    t.integer "sign_in_count"
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
