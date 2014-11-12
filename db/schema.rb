

ActiveRecord::Schema.define(version: 20140908160536) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "medications", force: true do |t|
    t.string "name"
  end

  create_table "patients", force: true do |t|
    t.string   "first_name", null: false
    t.string   "last_name",  null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "prescriptions", force: true do |t|
    t.integer  "patient_id"
    t.integer  "medication_id"
    t.string   "dosage"
    t.string   "schedule"
    t.datetime "starts_on"
    t.datetime "ends_on"
  end

  create_table "users", force: true do |t|
    t.string "name",            null: false
    t.string "email",           null: false
    t.string "password_digest", null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

end
