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

ActiveRecord::Schema.define(version: 20161001020249) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.integer  "client_id"
    t.integer  "cep"
    t.string   "street"
    t.integer  "number"
    t.string   "complement"
    t.string   "neighborhood"
    t.string   "city"
    t.string   "country"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "bankings", force: :cascade do |t|
    t.integer  "professional_id"
    t.integer  "bank"
    t.integer  "agency"
    t.integer  "account"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string   "login"
    t.string   "name"
    t.string   "cpf",                    limit: 11
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
    t.index ["email"], name: "index_clients_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_clients_on_reset_password_token", unique: true, using: :btree
  end

  create_table "consumers", force: :cascade do |t|
    t.integer  "client_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "credit_cards", force: :cascade do |t|
    t.integer  "consumer_id"
    t.string   "name"
    t.integer  "number"
    t.integer  "digit"
    t.string   "flag"
    t.string   "expiration"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "keywords", force: :cascade do |t|
    t.integer  "product_id"
    t.string   "word"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.integer  "professional_id"
    t.string   "name"
    t.text     "description"
    t.float    "price"
    t.integer  "rating"
    t.integer  "maxQuantity"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "professionals", force: :cascade do |t|
    t.integer  "client_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "telephones", force: :cascade do |t|
    t.integer  "client_id"
    t.integer  "telephone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "transactions", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "consumer_id"
    t.float    "amount"
    t.float    "unitary_price"
    t.float    "total_price"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

end
