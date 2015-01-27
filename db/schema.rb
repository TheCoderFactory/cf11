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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150125083108) do

  create_table "course_registrations", force: :cascade do |t|
    t.integer  "course_id"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "city"
    t.string   "country"
    t.text     "reason"
    t.text     "bio"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fast_track_applications", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "city"
    t.string   "country"
    t.string   "email"
    t.integer  "age"
    t.string   "gender"
    t.string   "one_line"
    t.text     "reason"
    t.text     "info"
    t.text     "passion"
    t.text     "experience"
    t.text     "challenge"
    t.text     "special"
    t.text     "links"
    t.string   "referral"
    t.boolean  "visa"
    t.string   "programme_choice"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "nifty_key_value_store", force: :cascade do |t|
    t.integer "parent_id"
    t.string  "parent_type"
    t.string  "group"
    t.string  "name"
    t.string  "value"
  end

  create_table "partners", force: :cascade do |t|
    t.string   "name"
    t.string   "company"
    t.string   "email"
    t.string   "phone"
    t.text     "message"
    t.string   "reason"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string   "title"
    t.string   "lead"
    t.text     "content"
    t.string   "image"
    t.string   "slug"
    t.boolean  "publish"
    t.date     "published_date"
    t.integer  "author_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "impressions_count"
  end

  add_index "posts", ["author_id"], name: "index_posts_on_author_id"

  create_table "shoppe_countries", force: :cascade do |t|
    t.string  "name"
    t.string  "code2"
    t.string  "code3"
    t.string  "continent"
    t.string  "tld"
    t.string  "currency"
    t.boolean "eu_member", default: false
  end

  create_table "shoppe_delivery_service_prices", force: :cascade do |t|
    t.integer  "delivery_service_id"
    t.string   "code"
    t.decimal  "price",               precision: 8, scale: 2
    t.decimal  "cost_price",          precision: 8, scale: 2
    t.integer  "tax_rate_id"
    t.decimal  "min_weight",          precision: 8, scale: 2
    t.decimal  "max_weight",          precision: 8, scale: 2
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "country_ids"
  end

  add_index "shoppe_delivery_service_prices", ["delivery_service_id"], name: "index_shoppe_delivery_service_prices_on_delivery_service_id"
  add_index "shoppe_delivery_service_prices", ["max_weight"], name: "index_shoppe_delivery_service_prices_on_max_weight"
  add_index "shoppe_delivery_service_prices", ["min_weight"], name: "index_shoppe_delivery_service_prices_on_min_weight"
  add_index "shoppe_delivery_service_prices", ["price"], name: "index_shoppe_delivery_service_prices_on_price"

  create_table "shoppe_delivery_services", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.boolean  "default",      default: false
    t.boolean  "active",       default: true
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "courier"
    t.string   "tracking_url"
  end

  add_index "shoppe_delivery_services", ["active"], name: "index_shoppe_delivery_services_on_active"

  create_table "shoppe_locations", force: :cascade do |t|
    t.string   "name"
    t.string   "city"
    t.string   "building"
    t.string   "street"
    t.string   "suburb"
    t.string   "state"
    t.string   "postcode"
    t.string   "website"
    t.string   "map_link"
    t.string   "logo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "shoppe_order_items", force: :cascade do |t|
    t.integer  "order_id"
    t.integer  "ordered_item_id"
    t.string   "ordered_item_type"
    t.integer  "quantity",                                  default: 1
    t.decimal  "unit_price",        precision: 8, scale: 2
    t.decimal  "unit_cost_price",   precision: 8, scale: 2
    t.decimal  "tax_amount",        precision: 8, scale: 2
    t.decimal  "tax_rate",          precision: 8, scale: 2
    t.decimal  "weight",            precision: 8, scale: 3
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "shoppe_order_items", ["order_id"], name: "index_shoppe_order_items_on_order_id"
  add_index "shoppe_order_items", ["ordered_item_id", "ordered_item_type"], name: "index_shoppe_order_items_ordered_item"

  create_table "shoppe_orders", force: :cascade do |t|
    t.string   "token"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "company"
    t.string   "billing_address1"
    t.string   "billing_address2"
    t.string   "billing_address3"
    t.string   "billing_address4"
    t.string   "billing_postcode"
    t.integer  "billing_country_id"
    t.string   "email_address"
    t.string   "phone_number"
    t.string   "status"
    t.datetime "received_at"
    t.datetime "accepted_at"
    t.datetime "shipped_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "delivery_service_id"
    t.decimal  "delivery_price",            precision: 8, scale: 2
    t.decimal  "delivery_cost_price",       precision: 8, scale: 2
    t.decimal  "delivery_tax_rate",         precision: 8, scale: 2
    t.decimal  "delivery_tax_amount",       precision: 8, scale: 2
    t.integer  "accepted_by"
    t.integer  "shipped_by"
    t.string   "consignment_number"
    t.datetime "rejected_at"
    t.integer  "rejected_by"
    t.string   "ip_address"
    t.text     "notes"
    t.boolean  "separate_delivery_address",                         default: false
    t.string   "delivery_name"
    t.string   "delivery_address1"
    t.string   "delivery_address2"
    t.string   "delivery_address3"
    t.string   "delivery_address4"
    t.string   "delivery_postcode"
    t.integer  "delivery_country_id"
    t.decimal  "amount_paid",               precision: 8, scale: 2, default: 0.0
    t.boolean  "exported",                                          default: false
    t.string   "invoice_number"
    t.integer  "promotion_id"
  end

  add_index "shoppe_orders", ["delivery_service_id"], name: "index_shoppe_orders_on_delivery_service_id"
  add_index "shoppe_orders", ["received_at"], name: "index_shoppe_orders_on_received_at"
  add_index "shoppe_orders", ["token"], name: "index_shoppe_orders_on_token"

  create_table "shoppe_payments", force: :cascade do |t|
    t.integer  "order_id"
    t.decimal  "amount",            precision: 8, scale: 2, default: 0.0
    t.string   "reference"
    t.string   "method"
    t.boolean  "confirmed",                                 default: true
    t.boolean  "refundable",                                default: false
    t.decimal  "amount_refunded",   precision: 8, scale: 2, default: 0.0
    t.integer  "parent_payment_id"
    t.boolean  "exported",                                  default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "shoppe_payments", ["order_id"], name: "index_shoppe_payments_on_order_id"
  add_index "shoppe_payments", ["parent_payment_id"], name: "index_shoppe_payments_on_parent_payment_id"

  create_table "shoppe_product_attributes", force: :cascade do |t|
    t.integer  "product_id"
    t.string   "key"
    t.string   "value"
    t.integer  "position",   default: 1
    t.boolean  "searchable", default: true
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "public",     default: true
  end

  add_index "shoppe_product_attributes", ["key"], name: "index_shoppe_product_attributes_on_key"
  add_index "shoppe_product_attributes", ["position"], name: "index_shoppe_product_attributes_on_position"
  add_index "shoppe_product_attributes", ["product_id"], name: "index_shoppe_product_attributes_on_product_id"

  create_table "shoppe_product_categories", force: :cascade do |t|
    t.string   "name"
    t.string   "permalink"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "shoppe_product_categories", ["permalink"], name: "index_shoppe_product_categories_on_permalink"

  create_table "shoppe_products", force: :cascade do |t|
    t.integer  "parent_id"
    t.integer  "product_category_id"
    t.string   "name"
    t.string   "sku"
    t.string   "permalink"
    t.text     "description"
    t.text     "short_description"
    t.boolean  "active",                                      default: true
    t.decimal  "weight",              precision: 8, scale: 3, default: 0.0
    t.decimal  "price",               precision: 8, scale: 2, default: 0.0
    t.decimal  "cost_price",          precision: 8, scale: 2, default: 0.0
    t.integer  "tax_rate_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "featured",                                    default: false
    t.text     "in_the_box"
    t.boolean  "stock_control",                               default: true
    t.boolean  "default",                                     default: false
    t.integer  "location_id"
    t.date     "start_date"
    t.date     "end_date"
    t.time     "start_time"
    t.time     "end_time"
    t.string   "default_image"
    t.string   "data_sheet"
  end

  add_index "shoppe_products", ["parent_id"], name: "index_shoppe_products_on_parent_id"
  add_index "shoppe_products", ["permalink"], name: "index_shoppe_products_on_permalink"
  add_index "shoppe_products", ["product_category_id"], name: "index_shoppe_products_on_product_category_id"
  add_index "shoppe_products", ["sku"], name: "index_shoppe_products_on_sku"

  create_table "shoppe_promotions", force: :cascade do |t|
    t.string  "name"
    t.string  "code"
    t.date    "start_date"
    t.date    "expiry_date"
    t.date    "used_on_date"
    t.integer "user_id"
    t.text    "reason"
    t.integer "value"
    t.integer "usage_limit",  default: 1
    t.integer "number_used"
  end

  create_table "shoppe_settings", force: :cascade do |t|
    t.string "key"
    t.string "value"
    t.string "value_type"
  end

  add_index "shoppe_settings", ["key"], name: "index_shoppe_settings_on_key"

  create_table "shoppe_stock_level_adjustments", force: :cascade do |t|
    t.integer  "item_id"
    t.string   "item_type"
    t.string   "description"
    t.integer  "adjustment",  default: 0
    t.string   "parent_type"
    t.integer  "parent_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "shoppe_stock_level_adjustments", ["item_id", "item_type"], name: "index_shoppe_stock_level_adjustments_items"
  add_index "shoppe_stock_level_adjustments", ["parent_id", "parent_type"], name: "index_shoppe_stock_level_adjustments_parent"

  create_table "shoppe_tax_rates", force: :cascade do |t|
    t.string   "name"
    t.decimal  "rate",         precision: 8, scale: 2
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "country_ids"
    t.string   "address_type"
  end

  create_table "shoppe_users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email_address"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "shoppe_users", ["email_address"], name: "index_shoppe_users_on_email_address"

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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
