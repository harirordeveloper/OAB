# encoding: UTF-8
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

ActiveRecord::Schema.define(:version => 20130104185856) do

  create_table "appointments", :force => true do |t|
    t.string   "referral_name"
    t.string   "org_code"
    t.string   "org_location"
    t.string   "registration_id"
    t.integer  "op_number"
    t.string   "mr_no"
    t.date     "book_date",                                                                         :null => false
    t.string   "case_type",            :limit => 250,                                               :null => false
    t.string   "appt_type"
    t.date     "appt_date",                                                                         :null => false
    t.time     "appt_time",                                                                         :null => false
    t.string   "department"
    t.string   "consultant_id"
    t.float    "consultant_fee"
    t.string   "bill_no11"
    t.string   "concession_authority", :limit => 250
    t.decimal  "concession",                          :precision => 10, :scale => 0, :default => 0, :null => false
    t.decimal  "paid_amount",                         :precision => 10, :scale => 0, :default => 0, :null => false
    t.string   "user_id"
    t.string   "patient_type",                                                                      :null => false
    t.string   "status",               :limit => 250,                                               :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "reg_fee"
    t.date     "date",                                                                              :null => false
    t.time     "time",                                                                              :null => false
  end

  create_table "aricles", :force => true do |t|
    t.string   "name"
    t.text     "comment"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "bookappointments", :force => true do |t|
    t.string   "name"
    t.string   "gender"
    t.integer  "age"
    t.text     "address"
    t.integer  "phonenum"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "cities", :force => true do |t|
    t.string    "name",       :limit => 30, :null => false
    t.integer   "country_id",               :null => false
    t.timestamp "created_at",               :null => false
    t.timestamp "updated_at",               :null => false
  end

  add_index "cities", ["country_id"], :name => "index_country_id"

  create_table "clinic_flows", :force => true do |t|
    t.string   "name"
    t.string   "location"
    t.string   "city"
    t.string   "speciality"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "clinic_profile_masters", :force => true do |t|
    t.integer  "clinic_id"
    t.integer  "clinicbranch_id"
    t.text     "about"
    t.text     "services"
    t.text     "packages"
    t.string   "photo1"
    t.string   "photo2"
    t.string   "photo3"
    t.string   "photo4"
    t.string   "photo5"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "clinic_profile_masters", ["clinic_id"], :name => "index_clinic_profile_masters_on_clinic_id"
  add_index "clinic_profile_masters", ["clinicbranch_id"], :name => "index_clinic_profile_masters_on_clinicbranches_id"

  create_table "clinic_timings", :force => true do |t|
    t.integer  "clinic_id"
    t.string   "day"
    t.time     "morning_from"
    t.time     "morning_to"
    t.time     "evening_from"
    t.time     "evening_to"
    t.time     "others_from"
    t.time     "others_to"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "clinicbranch_timings", :force => true do |t|
    t.integer  "clinicbranch_id"
    t.string   "day"
    t.time     "morning_from"
    t.time     "morning_to"
    t.time     "evening_from"
    t.time     "evening_to"
    t.time     "others_from"
    t.time     "others_to"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "clinicbranches", :force => true do |t|
    t.integer  "clinic_id"
    t.string   "name"
    t.string   "displayname"
    t.integer  "branches"
    t.boolean  "discontinue"
    t.date     "expdate"
    t.text     "address1"
    t.text     "address2"
    t.integer  "location_id"
    t.string   "landmarks"
    t.integer  "city_id"
    t.integer  "state_id"
    t.integer  "country_id"
    t.integer  "pin"
    t.integer  "fax"
    t.string   "website"
    t.string   "email"
    t.string   "altemail"
    t.string   "choosefile"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "clinics", :force => true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "displayname"
    t.integer  "branches"
    t.boolean  "discontinue"
    t.date     "expdate"
    t.text     "address1"
    t.text     "address2"
    t.integer  "location_id"
    t.string   "landmarks"
    t.integer  "city_id"
    t.integer  "state_id"
    t.integer  "country_id"
    t.integer  "pin"
    t.integer  "fax"
    t.string   "website"
    t.string   "email"
    t.string   "altemail"
    t.string   "choosefile"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "image"
  end

  create_table "consultant_masters", :force => true do |t|
    t.string   "name"
    t.integer  "doctor_id"
    t.string   "degree"
    t.string   "specialities"
    t.integer  "total_exp"
    t.boolean  "conformation"
    t.float    "charge"
    t.text     "qualifications"
    t.text     "expertise"
    t.text     "professional_exp"
    t.text     "awards_achievments"
    t.integer  "consultant_id"
    t.string   "image"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  add_index "consultant_masters", ["consultant_id"], :name => "index_consultant_masters_on_consultant_id"

  create_table "consultants", :force => true do |t|
    t.string   "name",            :limit => 40
    t.integer  "clinic_id"
    t.integer  "clinicbranch_id"
    t.string   "speciality"
    t.integer  "experience"
    t.string   "workingat"
    t.time     "mrngtime"
    t.time     "evengtime"
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
    t.integer  "location_id",                    :null => false
    t.string   "caption",         :limit => 122
  end

  create_table "countries", :force => true do |t|
    t.string    "name",       :limit => 30, :null => false
    t.timestamp "created_at",               :null => false
    t.timestamp "updated_at",               :null => false
  end

  create_table "degrees", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "demos", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "doctor_assignments", :force => true do |t|
    t.integer  "clinic_id"
    t.integer  "clinicbranch_id"
    t.integer  "consultant_master_id"
    t.string   "doctor_name"
    t.integer  "doctor_id"
    t.float    "doctor_charge"
    t.float    "clinic_charge"
    t.integer  "timing_id"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  add_index "doctor_assignments", ["clinic_id"], :name => "index_doctor_assignments_on_clinic_id"
  add_index "doctor_assignments", ["clinicbranch_id"], :name => "index_doctor_assignments_on_clinicbranch_id"
  add_index "doctor_assignments", ["consultant_master_id"], :name => "index_doctor_assignments_on_consultant_master_id"

  create_table "doctor_educations", :force => true do |t|
    t.string   "degree"
    t.string   "college"
    t.string   "address"
    t.string   "year_of_pass"
    t.integer  "consultant_master_id"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  add_index "doctor_educations", ["consultant_master_id"], :name => "index_doctor_educations_on_consultant_master_id"

  create_table "doctor_flows", :force => true do |t|
    t.string   "name"
    t.string   "location"
    t.string   "city"
    t.string   "speciality"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "doctor_timings", :force => true do |t|
    t.string   "day"
    t.time     "morning_from"
    t.time     "morning_to"
    t.time     "evening_from"
    t.time     "evening_to"
    t.time     "others_from"
    t.time     "others_to"
    t.integer  "consultant_master_id"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
    t.integer  "timing_id"
  end

  add_index "doctor_timings", ["consultant_master_id"], :name => "index_doctor_timings_on_consultant_master_id"

  create_table "locationmaps", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.float    "longitude"
    t.float    "latitude"
    t.boolean  "gmaps"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "locations", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.float    "longitude"
    t.float    "latitude"
    t.boolean  "gmaps"
    t.integer  "city_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "simple_captcha_data", :force => true do |t|
    t.string   "key",        :limit => 40
    t.string   "value",      :limit => 6
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  add_index "simple_captcha_data", ["key"], :name => "idx_key"

  create_table "specalities_masters", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "specalities_masters_specialities", :force => true do |t|
    t.integer  "speciality_id"
    t.integer  "specalities_master_id"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  add_index "specalities_masters_specialities", ["specalities_master_id"], :name => "index_specalities_masters_specialities_on_specality_master_id"
  add_index "specalities_masters_specialities", ["speciality_id"], :name => "index_specalities_masters_specialities_on_specility_id"

  create_table "specialities", :force => true do |t|
    t.integer  "specalities_master_id"
    t.integer  "speciality_id"
    t.string   "speciality_type"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  create_table "sudheers", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "email"
    t.string   "phone"
    t.boolean  "possible"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tests", :force => true do |t|
    t.string   "name"
    t.integer  "clinicbranch_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "tests", ["clinicbranch_id"], :name => "index_tests_on_clinicbranch_id"

  create_table "timings", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "username"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
