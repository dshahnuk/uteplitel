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

ActiveRecord::Schema.define(version: 2018_10_11_080057) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "kms_assets", id: :serial, force: :cascade do |t|
    t.string "file"
    t.string "content_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "kms_entries", id: :serial, force: :cascade do |t|
    t.integer "model_id"
    t.jsonb "values"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "slug"
    t.integer "position", default: 0, null: false
    t.index ["model_id"], name: "index_kms_entries_on_model_id"
    t.index ["slug"], name: "index_kms_entries_on_slug", unique: true
  end

  create_table "kms_fields", id: :serial, force: :cascade do |t|
    t.string "name"
    t.string "liquor_name"
    t.string "type"
    t.boolean "required"
    t.integer "model_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "class_name"
    t.integer "position", default: 0, null: false
  end

  create_table "kms_models", id: :serial, force: :cascade do |t|
    t.string "kms_model_name"
    t.string "collection_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "label_field"
    t.boolean "allow_creation_using_form", default: false
    t.text "description"
  end

  create_table "kms_pages", id: :serial, force: :cascade do |t|
    t.string "title"
    t.string "slug"
    t.text "content", default: ""
    t.boolean "published"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "template_id"
    t.string "ancestry"
    t.string "fullpath"
    t.boolean "templatable", default: false
    t.string "templatable_type"
    t.boolean "hidden", default: false
    t.integer "position", default: 0, null: false
    t.index ["ancestry"], name: "index_kms_pages_on_ancestry"
  end

  create_table "kms_settings", id: :serial, force: :cascade do |t|
    t.json "values", default: {}
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "kms_snippets", id: :serial, force: :cascade do |t|
    t.string "name"
    t.string "slug"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "kms_templates", id: :serial, force: :cascade do |t|
    t.string "name"
    t.text "content", default: ""
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "kms_users", id: :serial, force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "role"
    t.index ["email"], name: "index_kms_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_kms_users_on_reset_password_token", unique: true
  end

end
