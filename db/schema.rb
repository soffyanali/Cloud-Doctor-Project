

ActiveRecord::Schema.define(version: 20170805233242) do

  create_table "doctorprofiles", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "qualification"
    t.string   "clinic"
    t.integer  "user_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "doctorprofiles", ["user_id"], name: "index_doctorprofiles_on_user_id"

  create_table "dtrecords", force: :cascade do |t|
    t.string   "name"
    t.string   "string"
    t.string   "age"
    t.string   "user"
    t.string   "references"
    t.string   "clinic"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "insts", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "manufacturer"
    t.decimal  "cost"
    t.string   "description"
    t.string   "color"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string   "address"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pt_records", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "string"
    t.string   "email"
    t.datetime "birthdate"
    t.string   "infection"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
