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

ActiveRecord::Schema.define(version: 2021_01_15_185537) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "audios", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "bookings", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "product_id", null: false
    t.datetime "start_date"
    t.datetime "end_date"
    t.string "ship_to_address"
    t.float "total_price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["product_id"], name: "index_bookings_on_product_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "brands", force: :cascade do |t|
    t.string "product_types", array: true
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "cameras", force: :cascade do |t|
    t.string "camera_type"
    t.bigint "mount_type_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["mount_type_id"], name: "index_cameras_on_mount_type_id"
  end

  create_table "drones", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "lenses", force: :cascade do |t|
    t.bigint "mount_type_id", null: false
    t.string "lens_type"
    t.integer "min_focal_length"
    t.integer "max_focal_length"
    t.float "max_aperture"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["mount_type_id"], name: "index_lenses_on_mount_type_id"
  end

  create_table "lights", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "mount_types", force: :cascade do |t|
    t.bigint "brand_id", null: false
    t.string "code"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["brand_id"], name: "index_mount_types_on_brand_id"
  end

  create_table "products", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "productable_type", null: false
    t.bigint "productable_id", null: false
    t.bigint "brand_id", null: false
    t.string "name"
    t.text "description"
    t.float "price_per_day"
    t.string "ship_from_address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["brand_id"], name: "index_products_on_brand_id"
    t.index ["productable_type", "productable_id"], name: "index_products_on_productable_type_and_productable_id"
    t.index ["user_id"], name: "index_products_on_user_id"
  end

  create_table "stabilizers", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tripods", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name"
    t.string "last_name"
    t.string "address"
    t.string "phone_number"
    t.datetime "birth_date"
    t.string "identity_number"
    t.string "issuance_country"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bookings", "products"
  add_foreign_key "bookings", "users"
  add_foreign_key "cameras", "mount_types"
  add_foreign_key "lenses", "mount_types"
  add_foreign_key "mount_types", "brands"
  add_foreign_key "products", "brands"
  add_foreign_key "products", "users"
end
