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

ActiveRecord::Schema.define(version: 2018_09_07_062632) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "departments", force: :cascade do |t|
    t.string "departmentName"
    t.string "remark"
    t.integer "active", limit: 2, default: 1
    t.bigint "login_master_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["login_master_id"], name: "index_departments_on_login_master_id"
  end

  create_table "designations", force: :cascade do |t|
    t.string "designationName"
    t.string "remark"
    t.integer "active", limit: 2, default: 1
    t.bigint "login_master_id"
    t.bigint "department_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["department_id"], name: "index_designations_on_department_id"
    t.index ["login_master_id"], name: "index_designations_on_login_master_id"
  end

  create_table "emp_academic_profiles", force: :cascade do |t|
    t.string "course"
    t.date "year"
    t.float "percentage"
    t.string "univercityBorad"
    t.integer "active", limit: 2, default: 1
    t.bigint "login_master_id"
    t.bigint "emp_master_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["emp_master_id"], name: "index_emp_academic_profiles_on_emp_master_id"
    t.index ["login_master_id"], name: "index_emp_academic_profiles_on_login_master_id"
  end

  create_table "emp_accounting_profiles", force: :cascade do |t|
    t.string "pancardNum"
    t.string "adharcardNum"
    t.string "bankAccountNum"
    t.string "ifcc"
    t.string "pfNumber"
    t.string "insuranceReferance"
    t.bigint "login_master_id"
    t.bigint "emp_master_id"
    t.integer "active", limit: 2, default: 1
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["emp_master_id"], name: "index_emp_accounting_profiles_on_emp_master_id"
    t.index ["login_master_id"], name: "index_emp_accounting_profiles_on_login_master_id"
  end

  create_table "emp_addresses", force: :cascade do |t|
    t.text "currentAddress"
    t.string "landmark"
    t.string "city"
    t.string "district"
    t.string "state"
    t.text "perAddress"
    t.string "pLandmark"
    t.string "pcity"
    t.string "pdistrict"
    t.string "pState"
    t.integer "active", limit: 2, default: 1
    t.bigint "login_master_id"
    t.bigint "emp_master_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["emp_master_id"], name: "index_emp_addresses_on_emp_master_id"
    t.index ["login_master_id"], name: "index_emp_addresses_on_login_master_id"
  end

  create_table "emp_experiances", force: :cascade do |t|
    t.string "organizationName"
    t.string "organizationAddress"
    t.float "salary"
    t.bigint "login_master_id"
    t.bigint "emp_master_id"
    t.bigint "department_id"
    t.bigint "designation_id"
    t.date "joiningDate"
    t.date "leavingDate"
    t.string "leavingReason"
    t.integer "active", limit: 2, default: 1
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["department_id"], name: "index_emp_experiances_on_department_id"
    t.index ["designation_id"], name: "index_emp_experiances_on_designation_id"
    t.index ["emp_master_id"], name: "index_emp_experiances_on_emp_master_id"
    t.index ["login_master_id"], name: "index_emp_experiances_on_login_master_id"
  end

  create_table "emp_families", force: :cascade do |t|
    t.string "name"
    t.string "relation"
    t.date "dob"
    t.integer "active", limit: 2, default: 1
    t.bigint "login_master_id"
    t.bigint "emp_master_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["emp_master_id"], name: "index_emp_families_on_emp_master_id"
    t.index ["login_master_id"], name: "index_emp_families_on_login_master_id"
  end

  create_table "emp_masters", force: :cascade do |t|
    t.string "empName"
    t.integer "empGender"
    t.date "dob"
    t.string "contactNumber"
    t.string "email"
    t.date "joinDate"
    t.date "leavindDate"
    t.integer "active", limit: 2, default: 1
    t.bigint "login_master_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["login_master_id"], name: "index_emp_masters_on_login_master_id"
  end

  create_table "emp_oraganization_profiles", force: :cascade do |t|
    t.date "join_post_date"
    t.date "leave_post_date"
    t.float "salary"
    t.integer "active", limit: 2, default: 1
    t.bigint "login_master_id"
    t.bigint "emp_master_id"
    t.bigint "department_id"
    t.bigint "designation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["department_id"], name: "index_emp_oraganization_profiles_on_department_id"
    t.index ["designation_id"], name: "index_emp_oraganization_profiles_on_designation_id"
    t.index ["emp_master_id"], name: "index_emp_oraganization_profiles_on_emp_master_id"
    t.index ["login_master_id"], name: "index_emp_oraganization_profiles_on_login_master_id"
  end

  create_table "emp_payrolls", force: :cascade do |t|
    t.string "monthName"
    t.integer "workingDay", limit: 2
    t.float "overtime"
    t.integer "cl", limit: 2
    t.integer "paidLeave", limit: 2
    t.integer "presentDay", limit: 2
    t.integer "grossSalary"
    t.integer "conveyance"
    t.integer "medicalAllounc"
    t.integer "travalingAllounce"
    t.integer "extraAllowance"
    t.integer "active", limit: 2
    t.bigint "login_master_id"
    t.bigint "emp_master_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["emp_master_id"], name: "index_emp_payrolls_on_emp_master_id"
    t.index ["login_master_id"], name: "index_emp_payrolls_on_login_master_id"
  end

  create_table "emp_work_profiles", force: :cascade do |t|
    t.string "project_name"
    t.date "start_date"
    t.date "end_date"
    t.date "target_date"
    t.string "remark"
    t.string "head"
    t.integer "active", limit: 2, default: 1
    t.bigint "login_master_id"
    t.bigint "emp_master_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["emp_master_id"], name: "index_emp_work_profiles_on_emp_master_id"
    t.index ["login_master_id"], name: "index_emp_work_profiles_on_login_master_id"
  end

  create_table "login_activities", force: :cascade do |t|
    t.datetime "login"
    t.datetime "logout"
    t.string "ipAddress"
    t.bigint "login_master_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["login_master_id"], name: "index_login_activities_on_login_master_id"
  end

  create_table "login_masters", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.integer "role", limit: 2
    t.integer "active", limit: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "departments", "login_masters"
  add_foreign_key "designations", "departments"
  add_foreign_key "designations", "login_masters"
  add_foreign_key "emp_academic_profiles", "emp_masters"
  add_foreign_key "emp_academic_profiles", "login_masters"
  add_foreign_key "emp_accounting_profiles", "emp_masters"
  add_foreign_key "emp_accounting_profiles", "login_masters"
  add_foreign_key "emp_addresses", "emp_masters"
  add_foreign_key "emp_addresses", "login_masters"
  add_foreign_key "emp_experiances", "departments"
  add_foreign_key "emp_experiances", "designations"
  add_foreign_key "emp_experiances", "emp_masters"
  add_foreign_key "emp_experiances", "login_masters"
  add_foreign_key "emp_families", "emp_masters"
  add_foreign_key "emp_families", "login_masters"
  add_foreign_key "emp_masters", "login_masters"
  add_foreign_key "emp_oraganization_profiles", "departments"
  add_foreign_key "emp_oraganization_profiles", "designations"
  add_foreign_key "emp_oraganization_profiles", "emp_masters"
  add_foreign_key "emp_oraganization_profiles", "login_masters"
  add_foreign_key "emp_payrolls", "emp_masters"
  add_foreign_key "emp_payrolls", "login_masters"
  add_foreign_key "emp_work_profiles", "emp_masters"
  add_foreign_key "emp_work_profiles", "login_masters"
  add_foreign_key "login_activities", "login_masters"
end
