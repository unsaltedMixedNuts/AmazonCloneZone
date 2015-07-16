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

ActiveRecord::Schema.define(version: 20150716205153) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: :cascade do |t|
    t.string   "body",        null: false
    t.integer  "question_id", null: false
    t.integer  "user_id",     null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "brands", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "carted_items", force: :cascade do |t|
    t.integer  "ord"
    t.integer  "cart_id",    null: false
    t.integer  "product_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "quantity",   null: false
  end

  create_table "carts", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "departments", force: :cascade do |t|
    t.string   "name",           null: false
    t.integer  "parent_dept_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "descriptions", force: :cascade do |t|
    t.string  "body",       null: false
    t.integer "ord"
    t.integer "product_id", null: false
  end

  create_table "images", force: :cascade do |t|
    t.string   "url",            null: false
    t.integer  "ord"
    t.string   "imageable_id",   null: false
    t.string   "imageable_type", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", force: :cascade do |t|
    t.string   "order_number",   null: false
    t.string   "payment_method", null: false
    t.string   "address_line_1", null: false
    t.string   "address_line_2", null: false
    t.integer  "user_id",        null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "full_name",      null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "name",        null: false
    t.decimal  "sales_price", null: false
    t.integer  "quantity",    null: false
    t.integer  "dept_id",     null: false
    t.integer  "brand_id",    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "questions", force: :cascade do |t|
    t.string   "body",       null: false
    t.integer  "product_id", null: false
    t.integer  "user_id",    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reviews", force: :cascade do |t|
    t.string   "title",      null: false
    t.string   "body",       null: false
    t.integer  "stars",      null: false
    t.integer  "user_id",    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "product_id", null: false
  end

  create_table "specifications", force: :cascade do |t|
    t.string   "title",      null: false
    t.string   "body",       null: false
    t.integer  "ord"
    t.integer  "product_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",           null: false
    t.string   "name",            null: false
    t.string   "password_digest", null: false
    t.string   "session_token",   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
