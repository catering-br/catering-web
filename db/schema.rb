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

ActiveRecord::Schema.define(version: 20161104005028) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.integer  "client_id"
    t.string   "cep",             limit: 11
    t.string   "street"
    t.integer  "number"
    t.string   "complement"
    t.string   "neighborhood"
    t.string   "city"
    t.string   "country"
    t.integer  "address_type"
    t.float    "delivery_radius"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "bankings", force: :cascade do |t|
    t.integer  "professional_id"
    t.integer  "bank"
    t.integer  "agency"
    t.integer  "account"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "cart_items", force: :cascade do |t|
    t.integer  "shopping_cart_id"
    t.integer  "product_id"
    t.float    "quantity"
    t.float    "unitary_price"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["shopping_cart_id"], name: "index_cart_items_on_shopping_cart_id", using: :btree
  end

  create_table "category_products", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string   "login"
    t.string   "name"
    t.string   "cpf",                    limit: 14
    t.datetime "created_at",                                     null: false
    t.datetime "updated_at",                                     null: false
    t.string   "email",                             default: "", null: false
    t.string   "encrypted_password",                default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                     default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.index ["email"], name: "index_clients_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_clients_on_reset_password_token", unique: true, using: :btree
  end

  create_table "credit_cards", force: :cascade do |t|
    t.integer  "client_id"
    t.string   "name"
    t.integer  "number"
    t.integer  "digit"
    t.string   "flag"
    t.string   "expiration"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.integer  "client_id"
    t.date     "event_data"
    t.time     "hour"
    t.integer  "attendants"
    t.integer  "address_id"
    t.time     "duration"
    t.decimal  "estimated_price_from"
    t.decimal  "estimated_price_until"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "keywords", force: :cascade do |t|
    t.integer  "product_id"
    t.string   "word"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payments", force: :cascade do |t|
    t.integer  "shopping_cart_id"
    t.integer  "credit_card_id"
    t.integer  "number_quotas"
    t.decimal  "quota_value"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "pictures", force: :cascade do |t|
    t.integer  "product_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "products", force: :cascade do |t|
    t.integer  "professional_id"
    t.integer  "category_product_id"
    t.string   "name"
    t.text     "description"
    t.float    "price"
    t.integer  "rating"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "professionals", force: :cascade do |t|
    t.integer  "client_id"
    t.text     "description"
    t.float    "rating",            default: 0.0
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
  end

  create_table "shopping_carts", force: :cascade do |t|
    t.integer  "client_id"
    t.integer  "status"
    t.float    "fees",               default: 0.0
    t.float    "gain",               default: 0.0
    t.float    "promotion_discount", default: 0.0
    t.float    "total_paid",         default: 0.0
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.index ["client_id"], name: "index_shopping_carts_on_client_id", using: :btree
  end

  create_table "telephones", force: :cascade do |t|
    t.integer  "client_id"
    t.string   "telephone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
